#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

// === Dummy definitions to simulate FFmpeg types ===
#define AVMEDIA_TYPE_VIDEO 0
#define AVMEDIA_TYPE_AUDIO 1
#define AV_LOG_ERROR 16
#define AV_LOG_DEBUG 8
#define AVERROR(e) (-(e))
#define EAGAIN 11
#define EINVAL 22
#define EIO 5
#define ENOSYS 38

typedef struct AVClass {} AVClass;

typedef struct AVFilter {
    const char *name;
    int (*query_formats)(void *);
} AVFilter;

typedef struct AVFilterContext {
    const char *name;
    AVFilter *filter;
    int nb_inputs;
    struct AVFilterLink **inputs;
} AVFilterContext;

typedef struct AVFilterLink {
    int type;
    AVFilterContext *src;
    AVFilterContext *dst;
    void *in_formats;
    void *out_formats;
    void *in_samplerates;
    void *out_samplerates;
    void *in_channel_layouts;
    void *out_channel_layouts;
} AVFilterLink;

typedef struct AVFilterGraph {
    int nb_filters;
    AVFilterContext **filters;
    const char *scale_sws_opts;
    const char *aresample_swr_opts;
} AVFilterGraph;

// === Dummy helpers ===
void av_log(void *ctx, int level, const char *fmt, ...) {
    va_list args;
    va_start(args, fmt);
    vfprintf(level == AV_LOG_ERROR ? stderr : stdout, fmt, args);
    va_end(args);
}

int formats_declared(AVFilterContext *f) {
    return 0;
}

int filter_query_formats(AVFilterContext *f) {
    return 0;
}

int ff_default_query_formats(AVFilterContext *f) {
    return 0;
}

AVFilter *avfilter_get_by_name(const char *name) {
    static AVFilter dummy = { .name = "dummy" };
    return &dummy;
}

int avfilter_graph_create_filter(AVFilterContext **ctx, AVFilter *filter,
                                 const char *name, const char *args,
                                 void *opaque, AVFilterGraph *graph) {
    *ctx = malloc(sizeof(AVFilterContext));
    (*ctx)->name = strdup(name);
    return 0;
}

int avfilter_insert_filter(AVFilterLink *link, AVFilterContext *convert, int in, int out) {
    return 0;
}

int ff_merge_formats(void *in, void *out, int type) { return 1; }
int ff_merge_samplerates(void *in, void *out) { return 1; }
int ff_merge_channel_layouts(void *in, void *out) { return 1; }

// === Function under test ===
int query_formats(AVFilterGraph *graph, AVClass *log_ctx)
{
    int i, j, ret;
    int scaler_count = 0, resampler_count = 0;
    int count_queried = 0, count_merged = 0, count_already_merged = 0, count_delayed = 0;

    for (i = 0; i < graph->nb_filters; i++) {
        AVFilterContext *f = graph->filters[i];
        if (formats_declared(f))
            continue;
        if (f->filter->query_formats)
            ret = filter_query_formats(f);
        else
            ret = ff_default_query_formats(f);
        if (ret < 0 && ret != AVERROR(EAGAIN))
            return ret;
        count_queried += ret >= 0;
    }

    for (i = 0; i < graph->nb_filters; i++) {
        AVFilterContext *filter = graph->filters[i];
        for (j = 0; j < filter->nb_inputs; j++) {
            AVFilterLink *link = filter->inputs[j];
            int convert_needed = 0;
            if (!link) continue;

#define MERGE_DISPATCH(field, statement) \
    if (!(link->in_ ## field && link->out_ ## field)) { \
        count_delayed++; \
    } else if (link->in_ ## field == link->out_ ## field) { \
        count_already_merged++; \
    } else { \
        count_merged++; \
        statement \
    }

            MERGE_DISPATCH(formats,
                if (!ff_merge_formats(link->in_formats, link->out_formats, link->type)) convert_needed = 1;
            )
            if (link->type == AVMEDIA_TYPE_AUDIO) {
                MERGE_DISPATCH(channel_layouts,
                    if (!ff_merge_channel_layouts(link->in_channel_layouts, link->out_channel_layouts)) convert_needed = 1;
                )
                MERGE_DISPATCH(samplerates,
                    if (!ff_merge_samplerates(link->in_samplerates, link->out_samplerates)) convert_needed = 1;
                )
            }

#undef MERGE_DISPATCH

            if (convert_needed) {
                AVFilterContext *convert;
                AVFilter *filter;
                AVFilterLink *inlink, *outlink;
                char scale_args[256];
                char inst_name[30];

                switch (link->type) {
                case AVMEDIA_TYPE_VIDEO:
                    if (!(filter = avfilter_get_by_name("scale"))) {
                        av_log(log_ctx, AV_LOG_ERROR, "'scale' filter not present\n");
                        return AVERROR(EINVAL);
                    }
                    snprintf(inst_name, sizeof(inst_name), "auto-inserted scaler %d", scaler_count++);
                    snprintf(scale_args, sizeof(scale_args), "0:0");
                    if ((ret = avfilter_graph_create_filter(&convert, filter, inst_name, scale_args, NULL, graph)) < 0)
                        return ret;
                    break;

                case AVMEDIA_TYPE_AUDIO:
                    if (!(filter = avfilter_get_by_name("aresample"))) {
                        av_log(log_ctx, AV_LOG_ERROR, "'aresample' filter not present\n");
                        return AVERROR(EINVAL);
                    }
                    snprintf(inst_name, sizeof(inst_name), "auto-inserted resampler %d", resampler_count++);
                    snprintf(scale_args, sizeof(scale_args), "%s", graph->aresample_swr_opts ? graph->aresample_swr_opts : "");
                    if ((ret = avfilter_graph_create_filter(&convert, filter, inst_name, scale_args, NULL, graph)) < 0)
                        return ret;
                    break;

                default:
                    return AVERROR(EINVAL);
                }

                if ((ret = avfilter_insert_filter(link, convert, 0, 0)) < 0)
                    return ret;

                inlink  = malloc(sizeof(AVFilterLink));
                outlink = malloc(sizeof(AVFilterLink));
                inlink->type = outlink->type = link->type;
                inlink->in_formats = inlink->out_formats = (void*)1;
                outlink->in_formats = outlink->out_formats = (void*)1;

                if (!ff_merge_formats(inlink->in_formats, inlink->out_formats, inlink->type) ||
                    !ff_merge_formats(outlink->in_formats, outlink->out_formats, outlink->type))
                    ret |= AVERROR(ENOSYS);

                if (inlink->type == AVMEDIA_TYPE_AUDIO &&
                    (!ff_merge_samplerates(inlink->in_samplerates, inlink->out_samplerates) ||
                     !ff_merge_channel_layouts(inlink->in_channel_layouts, inlink->out_channel_layouts)))
                    ret |= AVERROR(ENOSYS);

                if (outlink->type == AVMEDIA_TYPE_AUDIO &&
                    (!ff_merge_samplerates(outlink->in_samplerates, outlink->out_samplerates) ||
                     !ff_merge_channel_layouts(outlink->in_channel_layouts, outlink->out_channel_layouts)))
                    ret |= AVERROR(ENOSYS);

                if (ret < 0) {
                    av_log(log_ctx, AV_LOG_ERROR,
                           "Impossible to convert between formats of '%s' and '%s'\n",
                           link->src->name, link->dst->name);
                    return ret;
                }

                free(inlink);
                free(outlink);
            }
        }
    }

    printf("query_formats: %d queried, %d merged, %d already done, %d delayed\n",
           count_queried, count_merged, count_already_merged, count_delayed);

    if (count_delayed) {
        if (count_queried || count_merged)
            return AVERROR(EAGAIN);
        fprintf(stderr, "Some filters could not choose formats\n");
        return AVERROR(EIO);
    }

    return 0;
}

// === MAIN ===
int main() {
    // Create dummy filters and links
    AVFilterContext *f1 = malloc(sizeof(AVFilterContext));
    AVFilterContext *f2 = malloc(sizeof(AVFilterContext));
    AVFilterLink *link = malloc(sizeof(AVFilterLink));
    AVFilter *flt = malloc(sizeof(AVFilter));
    flt->query_formats = NULL;

    f1->name = "source";
    f1->filter = flt;
    f1->nb_inputs = 0;
    f1->inputs = NULL;

    f2->name = "sink";
    f2->filter = flt;
    f2->nb_inputs = 1;
    f2->inputs = malloc(sizeof(AVFilterLink*));
    f2->inputs[0] = link;

    link->type = AVMEDIA_TYPE_VIDEO;
    link->src = f1;
    link->dst = f2;
    link->in_formats = (void*)1;
    link->out_formats = (void*)2;

    AVFilterGraph graph = {
        .nb_filters = 2,
        .filters = malloc(2 * sizeof(AVFilterContext*)),
        .scale_sws_opts = NULL,
        .aresample_swr_opts = NULL
    };
    graph.filters[0] = f1;
    graph.filters[1] = f2;

    int result = query_formats(&graph, NULL);
    printf("query_formats returned: %d\n", result);

    return 0;
}

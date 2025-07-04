; ModuleID = 'transcode_strub.bc'
source_filename = "transcode_strub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputFile = type { i32, i32, i8*, i32 }
%struct.InputStream = type { %struct.AVStream*, i8*, [2 x i8*], i32, i32, i32, i32 }
%struct.AVStream = type { %struct.AVCodecContext*, %struct.AVRational, i32, i32, %struct.AVRational }
%struct.AVCodecContext = type { i32, i32, i32, i32, i32, i32, i8*, i32, %struct.AVRational, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.AVRational, i32, i32, i32, i8*, i8* }
%struct.AVRational = type { i32, i32 }
%struct.OutputStream = type { %struct.AVStream*, %struct.AVCodec*, i32, i32, i32, i32, i32, i32, %struct.AVRational, float, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.AVCodec = type { i8*, %struct.AVRational* }
%struct.FilterGraph = type { i8*, i32 }
%struct.AVFormatContext = type { i32, i8*, %struct.AVOutputFormat*, void ()*, i32, %struct.AVProgram** }
%struct.AVOutputFormat = type { i8*, i32, i8* }
%struct.AVProgram = type { i32, i32, i32* }

@nb_input_files = dso_local local_unnamed_addr global i32 1, align 4
@nb_output_files = dso_local local_unnamed_addr global i32 1, align 4
@nb_filtergraphs = dso_local local_unnamed_addr global i32 1, align 4
@nb_output_streams = dso_local local_unnamed_addr global i32 1, align 4
@nb_input_streams = dso_local local_unnamed_addr global i32 1, align 4
@audio_volume = dso_local local_unnamed_addr global i32 256, align 4
@copy_tb = dso_local local_unnamed_addr global i32 0, align 4
@video_sync_method = dso_local local_unnamed_addr global i32 2, align 4
@pass_logfilename_prefix = dso_local local_unnamed_addr global i8* null, align 8
@input_files = dso_local local_unnamed_addr global [1 x %struct.InputFile*] zeroinitializer, align 8
@input_streams = dso_local local_unnamed_addr global [1 x %struct.InputStream*] zeroinitializer, align 8
@output_streams = dso_local local_unnamed_addr global [1 x %struct.OutputStream*] zeroinitializer, align 8
@filtergraphs = dso_local local_unnamed_addr global [1 x %struct.FilterGraph*] zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias %struct.OutputStream* @get_input_stream(%struct.OutputStream* nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret %struct.OutputStream* null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias %struct.InputStream* @get_input_stream_by_index(i32 noundef %0) local_unnamed_addr #0 {
  ret %struct.InputStream* null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias %struct.OutputStream* @get_output_stream_by_index(i32 noundef %0) local_unnamed_addr #0 {
  ret %struct.OutputStream* null
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias i8* @av_mallocz(i64 noundef %0) local_unnamed_addr #1 {
  %2 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %0) #5
  ret i8* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @av_log(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, ...) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @av_dump_format(%struct.AVFormatContext* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @av_dict_set(i8** nocapture noundef %0, i8* nocapture noundef %1, i8* nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @exit_program(i32 noundef %0) local_unnamed_addr #3 {
  call void @exit(i32 noundef %0) #6
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @assert_codec_experimental(%struct.AVCodecContext* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @assert_avoptions(i8* nocapture noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @av_get_channel_layout_nb_channels(i32 noundef %0) local_unnamed_addr #0 {
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @av_find_nearest_q_idx(i64 %0, %struct.AVRational* nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @av_d2q(double noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret i64 4294967297
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cmdutils_read_file(i8* nocapture noundef readnone %0, i8** nocapture noundef readnone %1, i64* nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @av_gettime() local_unnamed_addr #0 {
  ret i32 123456789
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @avformat_write_header(%struct.AVFormatContext* nocapture noundef readnone %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @avcodec_open2(%struct.AVCodecContext* nocapture noundef readnone %0, %struct.AVCodec* nocapture noundef readnone %1, i8** nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @print_sdp() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @init_input_stream(i32 noundef %0, i8* nocapture noundef readnone %1, i64 noundef %2) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias %struct.FilterGraph* @init_simple_filtergraph(%struct.InputStream* nocapture noundef readnone %0, %struct.OutputStream* nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret %struct.FilterGraph* null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @configure_video_filters(%struct.FilterGraph* nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @choose_sample_rate(%struct.AVStream* nocapture noundef %0, %struct.AVCodec* nocapture noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @choose_sample_fmt(%struct.AVStream* nocapture noundef %0, %struct.AVCodec* nocapture noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias i8* @av_fifo_alloc(i32 noundef %0) local_unnamed_addr #1 {
  %2 = sext i32 %0 to i64
  %3 = call noalias i8* @malloc(i64 noundef %2) #5
  ret i8* %3
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @main() local_unnamed_addr #0 {
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

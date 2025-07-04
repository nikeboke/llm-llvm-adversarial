; ModuleID = 'query_formats.bc'
source_filename = "query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.AVFilter = type { i8*, i32 (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.AVFilterContext = type { i8*, %struct.AVFilter*, i32, %struct.AVFilterLink** }
%struct.AVFilterLink = type { i32, %struct.AVFilterContext*, %struct.AVFilterContext*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.AVFilterGraph = type { i32, %struct.AVFilterContext**, i8*, i8* }
%struct.AVClass = type {}

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@avfilter_get_by_name.dummy = internal global %struct.AVFilter { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (i8*)* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"query_formats: %d queried, %d merged, %d already done, %d delayed\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Some filters could not choose formats\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"sink\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"query_formats returned: %d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @av_log(i8* nocapture noundef readnone %0, i32 noundef %1, i8* nocapture noundef readonly %2, ...) local_unnamed_addr #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #10
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %5)
  %7 = icmp eq i32 %1, 16
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = select i1 %7, %struct._IO_FILE* %8, %struct._IO_FILE* %9
  %11 = call i32 @vfprintf(%struct._IO_FILE* noundef %10, i8* noundef %2, %struct.__va_list_tag* noundef nonnull %6)
  call void @llvm.va_end(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #10
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @vfprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, %struct.__va_list_tag* noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @formats_declared(%struct.AVFilterContext* nocapture readnone %0) local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @filter_query_formats(%struct.AVFilterContext* nocapture readnone %0) local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ff_default_query_formats(%struct.AVFilterContext* nocapture readnone %0) local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local nonnull %struct.AVFilter* @avfilter_get_by_name(i8* nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret %struct.AVFilter* @avfilter_get_by_name.dummy
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local i32 @avfilter_graph_create_filter(%struct.AVFilterContext** nocapture noundef writeonly %0, %struct.AVFilter* nocapture noundef readnone %1, i8* nocapture noundef readonly %2, i8* nocapture noundef readnone %3, i8* nocapture noundef readnone %4, %struct.AVFilterGraph* nocapture noundef readnone %5) local_unnamed_addr #5 {
  %7 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #10
  %8 = bitcast %struct.AVFilterContext** %0 to i8**
  store i8* %7, i8** %8, align 8, !tbaa !3
  %9 = call noalias i8* @strdup(i8* noundef %2) #10
  %10 = bitcast i8* %7 to %struct.AVFilterContext*
  %11 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %10, i64 0, i32 0
  store i8* %9, i8** %11, align 8, !tbaa !7
  ret i32 0
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare dso_local noalias i8* @strdup(i8* nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @avfilter_insert_filter(%struct.AVFilterLink* nocapture noundef readnone %0, %struct.AVFilterContext* nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ff_merge_formats(i8* nocapture readnone %0, i8* nocapture readnone %1, i32 %2) local_unnamed_addr #4 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ff_merge_samplerates(i8* nocapture readnone %0, i8* nocapture readnone %1) local_unnamed_addr #4 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ff_merge_channel_layouts(i8* nocapture readnone %0, i8* nocapture readnone %1) local_unnamed_addr #4 {
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @query_formats(%struct.AVFilterGraph* nocapture noundef readonly %0, %struct.AVClass* nocapture readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.AVFilterGraph, %struct.AVFilterGraph* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !10
  %5 = icmp sgt i32 %4, 0
  %6 = select i1 %5, i32 %4, i32 0
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %109

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.AVFilterGraph, %struct.AVFilterGraph* %0, i64 0, i32 1
  %10 = load %struct.AVFilterContext**, %struct.AVFilterContext*** %9, align 8, !tbaa !12
  %11 = zext i32 %4 to i64
  br label %14

12:                                               ; preds = %102
  %13 = icmp eq i64 %108, %11
  br i1 %13, label %109, label %14, !llvm.loop !13

14:                                               ; preds = %8, %12
  %15 = phi i64 [ 0, %8 ], [ %108, %12 ]
  %16 = phi i32 [ 0, %8 ], [ %105, %12 ]
  %17 = phi i32 [ 0, %8 ], [ %104, %12 ]
  %18 = phi i32 [ 0, %8 ], [ %103, %12 ]
  %19 = getelementptr inbounds %struct.AVFilterContext*, %struct.AVFilterContext** %10, i64 %15
  %20 = load %struct.AVFilterContext*, %struct.AVFilterContext** %19, align 8, !tbaa !3
  %21 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %20, i64 0, i32 2
  %22 = load i32, i32* %21, align 8, !tbaa !16
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %102

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %20, i64 0, i32 3
  %26 = load %struct.AVFilterLink**, %struct.AVFilterLink*** %25, align 8, !tbaa !17
  %27 = zext i32 %22 to i64
  br label %28

28:                                               ; preds = %24, %99
  %29 = phi i64 [ 0, %24 ], [ %100, %99 ]
  %30 = phi i32 [ %16, %24 ], [ %97, %99 ]
  %31 = phi i32 [ %17, %24 ], [ %96, %99 ]
  %32 = phi i32 [ %18, %24 ], [ %95, %99 ]
  %33 = getelementptr inbounds %struct.AVFilterLink*, %struct.AVFilterLink** %26, i64 %29
  %34 = load %struct.AVFilterLink*, %struct.AVFilterLink** %33, align 8, !tbaa !3
  %35 = icmp eq %struct.AVFilterLink* %34, null
  br i1 %35, label %94, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %34, i64 0, i32 3
  %38 = load i8*, i8** %37, align 8, !tbaa !18
  %39 = icmp eq i8* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %34, i64 0, i32 4
  %42 = load i8*, i8** %41, align 8, !tbaa !20
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %36
  %45 = add nsw i32 %30, 1
  br label %52

46:                                               ; preds = %40
  %47 = icmp eq i8* %38, %42
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = add nsw i32 %31, 1
  br label %52

50:                                               ; preds = %46
  %51 = add nsw i32 %32, 1
  br label %52

52:                                               ; preds = %50, %48, %44
  %53 = phi i32 [ %32, %48 ], [ %51, %50 ], [ %32, %44 ]
  %54 = phi i32 [ %49, %48 ], [ %31, %50 ], [ %31, %44 ]
  %55 = phi i32 [ %30, %48 ], [ %30, %50 ], [ %45, %44 ]
  %56 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %34, i64 0, i32 0
  %57 = load i32, i32* %56, align 8, !tbaa !21
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %94

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %34, i64 0, i32 7
  %61 = load i8*, i8** %60, align 8, !tbaa !22
  %62 = icmp eq i8* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %34, i64 0, i32 8
  %65 = load i8*, i8** %64, align 8, !tbaa !23
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %59
  %68 = add nsw i32 %55, 1
  br label %75

69:                                               ; preds = %63
  %70 = icmp eq i8* %61, %65
  br i1 %70, label %71, label %73

71:                                               ; preds = %69
  %72 = add nsw i32 %54, 1
  br label %75

73:                                               ; preds = %69
  %74 = add nsw i32 %53, 1
  br label %75

75:                                               ; preds = %73, %71, %67
  %76 = phi i32 [ %53, %71 ], [ %74, %73 ], [ %53, %67 ]
  %77 = phi i32 [ %72, %71 ], [ %54, %73 ], [ %54, %67 ]
  %78 = phi i32 [ %55, %71 ], [ %55, %73 ], [ %68, %67 ]
  %79 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %34, i64 0, i32 5
  %80 = load i8*, i8** %79, align 8, !tbaa !24
  %81 = icmp eq i8* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %34, i64 0, i32 6
  %84 = load i8*, i8** %83, align 8, !tbaa !25
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %75
  %87 = add nsw i32 %78, 1
  br label %94

88:                                               ; preds = %82
  %89 = icmp eq i8* %80, %84
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  %91 = add nsw i32 %77, 1
  br label %94

92:                                               ; preds = %88
  %93 = add nsw i32 %76, 1
  br label %94

94:                                               ; preds = %92, %86, %90, %52, %28
  %95 = phi i32 [ %32, %28 ], [ %76, %90 ], [ %93, %92 ], [ %76, %86 ], [ %53, %52 ]
  %96 = phi i32 [ %31, %28 ], [ %91, %90 ], [ %77, %92 ], [ %77, %86 ], [ %54, %52 ]
  %97 = phi i32 [ %30, %28 ], [ %78, %90 ], [ %78, %92 ], [ %87, %86 ], [ %55, %52 ]
  %98 = phi i32 [ 10, %28 ], [ 0, %90 ], [ 0, %92 ], [ 0, %86 ], [ 0, %52 ]
  switch i32 %98, label %102 [
    i32 0, label %99
    i32 10, label %99
  ]

99:                                               ; preds = %94, %94
  %100 = add nuw nsw i64 %29, 1
  %101 = icmp eq i64 %100, %27
  br i1 %101, label %102, label %28, !llvm.loop !26

102:                                              ; preds = %94, %99, %14
  %103 = phi i32 [ %18, %14 ], [ %95, %99 ], [ %95, %94 ]
  %104 = phi i32 [ %17, %14 ], [ %96, %99 ], [ %96, %94 ]
  %105 = phi i32 [ %16, %14 ], [ %97, %99 ], [ %97, %94 ]
  %106 = phi i32 [ 0, %14 ], [ %98, %94 ], [ 0, %99 ]
  %107 = icmp eq i32 %106, 0
  %108 = add nuw nsw i64 %15, 1
  br i1 %107, label %12, label %121

109:                                              ; preds = %12, %2
  %110 = phi i32 [ 0, %2 ], [ %103, %12 ]
  %111 = phi i32 [ 0, %2 ], [ %104, %12 ]
  %112 = phi i32 [ 0, %2 ], [ %105, %12 ]
  %113 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0), i32 noundef %6, i32 noundef %110, i32 noundef %111, i32 noundef %112)
  %114 = icmp eq i32 %112, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = or i32 %6, %110
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %120 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %119) #11
  br label %121

121:                                              ; preds = %102, %109, %115, %118
  %122 = phi i32 [ -5, %118 ], [ -11, %115 ], [ 0, %109 ], [ undef, %102 ]
  ret i32 %122
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca %struct.AVFilterGraph, align 8
  %2 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #10
  %3 = bitcast i8* %2 to %struct.AVFilterContext*
  %4 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #10
  %5 = bitcast i8* %4 to %struct.AVFilterContext*
  %6 = call noalias dereferenceable_or_null(72) i8* @malloc(i64 noundef 72) #10
  %7 = bitcast i8* %6 to %struct.AVFilterLink*
  %8 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #10
  %9 = bitcast i8* %8 to %struct.AVFilter*
  %10 = getelementptr inbounds %struct.AVFilter, %struct.AVFilter* %9, i64 0, i32 1
  store i32 (i8*)* null, i32 (i8*)** %10, align 8, !tbaa !27
  %11 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %3, i64 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %11, align 8, !tbaa !7
  %12 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %3, i64 0, i32 1
  %13 = bitcast %struct.AVFilter** %12 to i8**
  store i8* %8, i8** %13, align 8, !tbaa !29
  %14 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %3, i64 0, i32 2
  store i32 0, i32* %14, align 8, !tbaa !16
  %15 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %3, i64 0, i32 3
  store %struct.AVFilterLink** null, %struct.AVFilterLink*** %15, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %5, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %16, align 8, !tbaa !7
  %17 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %5, i64 0, i32 1
  %18 = bitcast %struct.AVFilter** %17 to i8**
  store i8* %8, i8** %18, align 8, !tbaa !29
  %19 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %5, i64 0, i32 2
  store i32 1, i32* %19, align 8, !tbaa !16
  %20 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #10
  %21 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %5, i64 0, i32 3
  %22 = bitcast %struct.AVFilterLink*** %21 to i8**
  store i8* %20, i8** %22, align 8, !tbaa !17
  %23 = bitcast i8* %20 to i8**
  store i8* %6, i8** %23, align 8, !tbaa !3
  %24 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %7, i64 0, i32 0
  store i32 0, i32* %24, align 8, !tbaa !21
  %25 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %7, i64 0, i32 1
  %26 = bitcast %struct.AVFilterContext** %25 to i8**
  store i8* %2, i8** %26, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %7, i64 0, i32 2
  %28 = bitcast %struct.AVFilterContext** %27 to i8**
  store i8* %4, i8** %28, align 8, !tbaa !31
  %29 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %7, i64 0, i32 3
  store i8* inttoptr (i64 1 to i8*), i8** %29, align 8, !tbaa !18
  %30 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %7, i64 0, i32 4
  store i8* inttoptr (i64 2 to i8*), i8** %30, align 8, !tbaa !20
  %31 = bitcast %struct.AVFilterGraph* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %31) #10
  %32 = getelementptr inbounds %struct.AVFilterGraph, %struct.AVFilterGraph* %1, i64 0, i32 0
  store i32 2, i32* %32, align 8, !tbaa !10
  %33 = getelementptr inbounds %struct.AVFilterGraph, %struct.AVFilterGraph* %1, i64 0, i32 1
  %34 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #10
  %35 = bitcast %struct.AVFilterContext*** %33 to i8**
  store i8* %34, i8** %35, align 8, !tbaa !12
  %36 = getelementptr inbounds %struct.AVFilterGraph, %struct.AVFilterGraph* %1, i64 0, i32 2
  %37 = bitcast i8* %34 to i8**
  %38 = bitcast i8** %36 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  store i8* %2, i8** %37, align 8, !tbaa !3
  %39 = bitcast i8* %34 to %struct.AVFilterContext**
  %40 = getelementptr inbounds %struct.AVFilterContext*, %struct.AVFilterContext** %39, i64 1
  %41 = bitcast %struct.AVFilterContext** %40 to i8**
  store i8* %4, i8** %41, align 8, !tbaa !3
  %42 = call i32 @query_formats(%struct.AVFilterGraph* noundef nonnull %1, %struct.AVClass* undef)
  %43 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 noundef %42)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %31) #10
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"AVFilterContext", !4, i64 0, !4, i64 8, !9, i64 16, !4, i64 24}
!9 = !{!"int", !5, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"AVFilterGraph", !9, i64 0, !4, i64 8, !4, i64 16, !4, i64 24}
!12 = !{!11, !4, i64 8}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!8, !9, i64 16}
!17 = !{!8, !4, i64 24}
!18 = !{!19, !4, i64 24}
!19 = !{!"AVFilterLink", !9, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64}
!20 = !{!19, !4, i64 32}
!21 = !{!19, !9, i64 0}
!22 = !{!19, !4, i64 56}
!23 = !{!19, !4, i64 64}
!24 = !{!19, !4, i64 40}
!25 = !{!19, !4, i64 48}
!26 = distinct !{!26, !14, !15}
!27 = !{!28, !4, i64 8}
!28 = !{!"AVFilter", !4, i64 0, !4, i64 8}
!29 = !{!8, !4, i64 8}
!30 = !{!19, !4, i64 8}
!31 = !{!19, !4, i64 16}

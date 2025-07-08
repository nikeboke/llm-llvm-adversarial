; ModuleID = 'av_packet_ref.bc'
source_filename = "av_packet_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVPacket = type { %struct.AVBufferRef*, i32, i8* }
%struct.AVBufferRef = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"hello_ffmpeg_test\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Success! Copied %d bytes: %.*s\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Calling av_packet_ref...\00", align 1
@str.4 = private unnamed_addr constant [28 x i8] c"Failed to reference packet.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @av_packet_copy_props(%struct.AVPacket* nocapture readnone %0, %struct.AVPacket* nocapture readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @av_packet_free_side_data(%struct.AVPacket* nocapture %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias %struct.AVBufferRef* @av_buffer_ref(%struct.AVBufferRef* noundef readonly %0) local_unnamed_addr #1 {
  %2 = icmp eq %struct.AVBufferRef* %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #10
  %5 = bitcast i8* %4 to %struct.AVBufferRef*
  %6 = icmp eq i8* %4, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 8, !tbaa !3
  %10 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %5, i64 0, i32 1
  store i32 %9, i32* %10, align 8, !tbaa !3
  %11 = sext i32 %9 to i64
  %12 = call noalias i8* @malloc(i64 noundef %11) #10
  %13 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %5, i64 0, i32 0
  store i8* %12, i8** %13, align 8, !tbaa !9
  %14 = icmp eq i8* %12, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  call void @free(i8* noundef %4) #10
  br label %19

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %0, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %12, i8* align 1 %18, i64 %11, i1 false)
  br label %19

19:                                               ; preds = %15, %16, %3, %1
  %20 = phi %struct.AVBufferRef* [ null, %1 ], [ %5, %16 ], [ null, %15 ], [ null, %3 ]
  ret %struct.AVBufferRef* %20
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local i32 @packet_alloc(%struct.AVBufferRef** nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #10
  %4 = bitcast %struct.AVBufferRef** %0 to i8**
  store i8* %3, i8** %4, align 8, !tbaa !10
  %5 = icmp eq i8* %3, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = sext i32 %1 to i64
  %8 = call noalias i8* @malloc(i64 noundef %7) #10
  %9 = load %struct.AVBufferRef*, %struct.AVBufferRef** %0, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %9, i64 0, i32 0
  store i8* %8, i8** %10, align 8, !tbaa !9
  %11 = load %struct.AVBufferRef*, %struct.AVBufferRef** %0, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %11, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !9
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = bitcast %struct.AVBufferRef* %11 to i8*
  call void @free(i8* noundef %16) #10
  br label %19

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %11, i64 0, i32 1
  store i32 %1, i32* %18, align 8, !tbaa !3
  br label %19

19:                                               ; preds = %2, %17, %15
  %20 = phi i32 [ 0, %17 ], [ -1, %15 ], [ -1, %2 ]
  ret i32 %20
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local i32 @av_packet_ref(%struct.AVPacket* nocapture noundef %0, %struct.AVPacket* nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %1, i64 0, i32 0
  %4 = load %struct.AVBufferRef*, %struct.AVBufferRef** %3, align 8, !tbaa !11
  %5 = icmp eq %struct.AVBufferRef* %4, null
  br i1 %5, label %6, label %33

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %0, i64 0, i32 0
  %8 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %1, i64 0, i32 1
  %9 = load i32, i32* %8, align 8, !tbaa !13
  %10 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #10
  %11 = bitcast %struct.AVPacket* %0 to i8**
  store i8* %10, i8** %11, align 8, !tbaa !10
  %12 = icmp eq i8* %10, null
  br i1 %12, label %62, label %13

13:                                               ; preds = %6
  %14 = sext i32 %9 to i64
  %15 = call noalias i8* @malloc(i64 noundef %14) #10
  %16 = load %struct.AVBufferRef*, %struct.AVBufferRef** %7, align 8, !tbaa !10
  %17 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %16, i64 0, i32 0
  store i8* %15, i8** %17, align 8, !tbaa !9
  %18 = load %struct.AVBufferRef*, %struct.AVBufferRef** %7, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %18, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !9
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = bitcast %struct.AVBufferRef* %18 to i8*
  call void @free(i8* noundef %23) #10
  br label %62

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %18, i64 0, i32 1
  store i32 %9, i32* %25, align 8, !tbaa !3
  %26 = load %struct.AVBufferRef*, %struct.AVBufferRef** %7, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %26, i64 0, i32 0
  %28 = load i8*, i8** %27, align 8, !tbaa !9
  %29 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %1, i64 0, i32 2
  %30 = load i8*, i8** %29, align 8, !tbaa !14
  %31 = load i32, i32* %8, align 8, !tbaa !13
  %32 = sext i32 %31 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %30, i64 %32, i1 false)
  br label %53

33:                                               ; preds = %2
  %34 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #10
  %35 = bitcast i8* %34 to %struct.AVBufferRef*
  %36 = icmp eq i8* %34, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %4, i64 0, i32 1
  %39 = load i32, i32* %38, align 8, !tbaa !3
  %40 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %35, i64 0, i32 1
  store i32 %39, i32* %40, align 8, !tbaa !3
  %41 = sext i32 %39 to i64
  %42 = call noalias i8* @malloc(i64 noundef %41) #10
  %43 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %35, i64 0, i32 0
  store i8* %42, i8** %43, align 8, !tbaa !9
  %44 = icmp eq i8* %42, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  call void @free(i8* noundef %34) #10
  br label %49

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %4, i64 0, i32 0
  %48 = load i8*, i8** %47, align 8, !tbaa !9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %42, i8* align 1 %48, i64 %41, i1 false) #10
  br label %49

49:                                               ; preds = %33, %45, %46
  %50 = phi %struct.AVBufferRef* [ %35, %46 ], [ null, %45 ], [ null, %33 ]
  %51 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %0, i64 0, i32 0
  store %struct.AVBufferRef* %50, %struct.AVBufferRef** %51, align 8, !tbaa !11
  %52 = icmp eq %struct.AVBufferRef* %50, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %49, %24
  %54 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %1, i64 0, i32 1
  %55 = load i32, i32* %54, align 8, !tbaa !13
  %56 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %0, i64 0, i32 1
  store i32 %55, i32* %56, align 8, !tbaa !13
  %57 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %0, i64 0, i32 0
  %58 = load %struct.AVBufferRef*, %struct.AVBufferRef** %57, align 8, !tbaa !11
  %59 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %58, i64 0, i32 0
  %60 = load i8*, i8** %59, align 8, !tbaa !9
  %61 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %0, i64 0, i32 2
  store i8* %60, i8** %61, align 8, !tbaa !14
  br label %62

62:                                               ; preds = %6, %22, %49, %53
  %63 = phi i32 [ 0, %53 ], [ 0, %49 ], [ -1, %22 ], [ -1, %6 ]
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #6 {
  %1 = alloca %struct.AVPacket, align 8
  %2 = alloca %struct.AVPacket, align 8
  %3 = bitcast %struct.AVPacket* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %4 = bitcast %struct.AVPacket* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %5 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %1, i64 0, i32 1
  store i32 16, i32* %5, align 8, !tbaa !13
  %6 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #10
  %7 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %1, i64 0, i32 2
  store i8* %6, i8** %7, align 8, !tbaa !14
  %8 = icmp eq i8* %6, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %6, i8* noundef nonnull align 1 dereferenceable(16) getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 16, i1 false)
  %10 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0))
  %11 = call i32 @av_packet_ref(%struct.AVPacket* noundef nonnull %2, %struct.AVPacket* noundef nonnull %1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %2, i64 0, i32 1
  %15 = load i32, i32* %14, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %2, i64 0, i32 2
  %17 = load i8*, i8** %16, align 8, !tbaa !14
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 noundef %15, i32 noundef %15, i8* noundef %17)
  br label %21

19:                                               ; preds = %9
  %20 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str.4, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  call void @free(i8* noundef %6) #10
  %22 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %2, i64 0, i32 0
  %23 = load %struct.AVBufferRef*, %struct.AVBufferRef** %22, align 8, !tbaa !11
  %24 = icmp eq %struct.AVBufferRef* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %23, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8, !tbaa !9
  call void @free(i8* noundef %27) #10
  %28 = bitcast %struct.AVPacket* %2 to i8**
  %29 = load i8*, i8** %28, align 8, !tbaa !11
  call void @free(i8* noundef %29) #10
  br label %30

30:                                               ; preds = %21, %25, %0
  %31 = phi i32 [ 1, %0 ], [ 0, %25 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #10
  ret i32 %31
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !8, i64 8}
!4 = !{!"AVBufferRef", !5, i64 0, !8, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !5, i64 0}
!12 = !{!"AVPacket", !5, i64 0, !8, i64 8, !5, i64 16}
!13 = !{!12, !8, i64 8}
!14 = !{!12, !5, i64 16}

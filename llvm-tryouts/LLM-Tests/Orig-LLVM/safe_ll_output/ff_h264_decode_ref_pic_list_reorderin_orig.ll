; ModuleID = 'ff_h264_decode_ref_pic_list_reorderin.bc'
source_filename = "ff_h264_decode_ref_pic_list_reorderin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.H264Context = type { i32, i32, i32, i32, %struct.AVCodecContext*, [16 x %struct.H264Picture*], [32 x %struct.H264Picture*], [16 x i32], [2 x [16 x %struct.H264Ref]] }
%struct.AVCodecContext = type { i32 }
%struct.H264Picture = type { i32, i32, i32, i32, %struct.AVFrame* }
%struct.AVFrame = type { [8 x %struct.AVBufferRef*] }
%struct.AVBufferRef = type { i32 }
%struct.H264Ref = type { %struct.H264Picture*, i32, i32 }
%struct.GetBitContext = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.H264SliceContext = type { i32, [2 x i32], %struct.GetBitContext, [2 x [16 x %struct.H264Ref]] }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [36 x i8] c"Missing reference picture, default\0A\00", align 1
@str = private unnamed_addr constant [10 x i8] c"Compiled.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @print_short_term(%struct.H264Context* nocapture %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @print_long_term(%struct.H264Context* nocapture %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @get_bits1(%struct.GetBitContext* nocapture readnone %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @get_ue_golomb(%struct.GetBitContext* nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @get_ue_golomb_31(%struct.GetBitContext* nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @pic_num_extract(%struct.H264Context* nocapture noundef readnone %0, i32 noundef returned %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #1 {
  store i32 3, i32* %2, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @ref_from_h264pic(%struct.H264Ref* nocapture noundef writeonly %0, %struct.H264Picture* noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.H264Ref, %struct.H264Ref* %0, i64 0, i32 0
  store %struct.H264Picture* %1, %struct.H264Picture** %3, align 8, !tbaa !7
  %4 = getelementptr inbounds %struct.H264Picture, %struct.H264Picture* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.H264Ref, %struct.H264Ref* %0, i64 0, i32 2
  store i32 %5, i32* %6, align 4, !tbaa !12
  %7 = getelementptr inbounds %struct.H264Picture, %struct.H264Picture* %1, i64 0, i32 3
  %8 = load i32, i32* %7, align 4, !tbaa !13
  %9 = getelementptr inbounds %struct.H264Ref, %struct.H264Ref* %0, i64 0, i32 1
  store i32 %8, i32* %9, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @pic_as_field(%struct.H264Ref* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @av_log(i8* nocapture readnone %0, i32 %1, i8* nocapture noundef readonly %2, ...) local_unnamed_addr #3 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #9
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %5)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %8 = call i32 @vfprintf(%struct._IO_FILE* noundef %7, i8* noundef %2, %struct.__va_list_tag* noundef nonnull %6) #10
  call void @llvm.va_end(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #9
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @vfprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, %struct.__va_list_tag* noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @av_buffer_get_ref_count(%struct.AVBufferRef* nocapture readnone %0) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ff_h264_decode_ref_pic_list_reordering(%struct.H264Context* nocapture noundef %0, %struct.H264SliceContext* nocapture noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.H264SliceContext, %struct.H264SliceContext* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !16
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %10, %2
  %7 = getelementptr inbounds %struct.H264SliceContext, %struct.H264SliceContext* %1, i64 0, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !16
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %24, label %60

10:                                               ; preds = %2, %10
  %11 = phi i64 [ %20, %10 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.H264SliceContext, %struct.H264SliceContext* %1, i64 0, i32 3, i64 %11, i64 0
  %13 = bitcast %struct.H264Ref* %12 to i8*
  %14 = getelementptr inbounds %struct.H264Context, %struct.H264Context* %0, i64 0, i32 8, i64 %11, i64 0
  %15 = bitcast %struct.H264Ref* %14 to i8*
  %16 = getelementptr inbounds %struct.H264SliceContext, %struct.H264SliceContext* %1, i64 0, i32 1, i64 %11
  %17 = load i32, i32* %16, align 4, !tbaa !3
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %13, i8* nonnull align 8 %15, i64 %19, i1 false)
  %20 = add nuw nsw i64 %11, 1
  %21 = load i32, i32* %3, align 8, !tbaa !16
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %10, label %6, !llvm.loop !19

24:                                               ; preds = %6, %55
  %25 = phi i64 [ %56, %55 ], [ 0, %6 ]
  %26 = getelementptr inbounds %struct.H264SliceContext, %struct.H264SliceContext* %1, i64 0, i32 1, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !3
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.H264Context, %struct.H264Context* %0, i64 0, i32 8, i64 %25, i64 0
  %31 = getelementptr inbounds %struct.H264Ref, %struct.H264Ref* %30, i64 0, i32 0
  %32 = bitcast %struct.H264Ref* %30 to i8*
  br label %33

33:                                               ; preds = %29, %50
  %34 = phi i64 [ 0, %29 ], [ %51, %50 ]
  %35 = getelementptr inbounds %struct.H264SliceContext, %struct.H264SliceContext* %1, i64 0, i32 3, i64 %25, i64 %34
  %36 = getelementptr inbounds %struct.H264Ref, %struct.H264Ref* %35, i64 0, i32 0
  %37 = load %struct.H264Picture*, %struct.H264Picture** %36, align 8, !tbaa !7
  %38 = icmp eq %struct.H264Picture* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  call void (i8*, i32, i8*, ...) @av_log(i8* undef, i32 undef, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  br label %40

40:                                               ; preds = %39, %40
  %41 = phi i64 [ 0, %39 ], [ %43, %40 ]
  %42 = getelementptr inbounds %struct.H264Context, %struct.H264Context* %0, i64 0, i32 7, i64 %41
  store i32 -2147483648, i32* %42, align 4, !tbaa !3
  %43 = add nuw nsw i64 %41, 1
  %44 = icmp eq i64 %43, 16
  br i1 %44, label %45, label %40, !llvm.loop !22

45:                                               ; preds = %40
  %46 = load %struct.H264Picture*, %struct.H264Picture** %31, align 8, !tbaa !7
  %47 = icmp eq %struct.H264Picture* %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = bitcast %struct.H264Ref* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %49, i8* noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false), !tbaa.struct !23
  br label %50

50:                                               ; preds = %48, %33
  %51 = add nuw nsw i64 %34, 1
  %52 = load i32, i32* %26, align 4, !tbaa !3
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %33, label %55, !llvm.loop !24

55:                                               ; preds = %50, %24
  %56 = add nuw nsw i64 %25, 1
  %57 = load i32, i32* %7, align 8, !tbaa !16
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %24, label %60, !llvm.loop !25

60:                                               ; preds = %55, %45, %6
  %61 = phi i32 [ 0, %6 ], [ -1, %45 ], [ 0, %55 ]
  ret i32 %61
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"H264Ref", !9, i64 0, !4, i64 8, !4, i64 12}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !4, i64 0}
!11 = !{!"H264Picture", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !9, i64 16}
!12 = !{!8, !4, i64 12}
!13 = !{!11, !4, i64 12}
!14 = !{!8, !4, i64 8}
!15 = !{!9, !9, i64 0}
!16 = !{!17, !4, i64 0}
!17 = !{!"H264SliceContext", !4, i64 0, !5, i64 4, !18, i64 12, !5, i64 16}
!18 = !{!"GetBitContext", !4, i64 0}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !20, !21}
!23 = !{i64 0, i64 8, !15, i64 8, i64 4, !3, i64 12, i64 4, !3}
!24 = distinct !{!24, !20, !21}
!25 = distinct !{!25, !20, !21}

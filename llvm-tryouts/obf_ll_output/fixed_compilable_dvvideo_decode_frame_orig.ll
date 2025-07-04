; ModuleID = 'fixed_compilable_dvvideo_decode_frame.bc'
source_filename = "fixed_compilable_dvvideo_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.AVCodecContext = type { i32, %struct.AVRational, i32 (i8*, void ()*, i32, i8*, i32, i32)*, i8*, i8* }
%struct.AVRational = type { i32, i32 }
%struct.DVprofile = type { i32, i32, i32, %struct.AVRational, [2 x i32], i32 }
%struct.DVVideoContext = type { %struct.DVprofile*, i8*, i8*, i8* }
%struct.AVPacket = type { i8*, i32 }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported DV profile\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"decode_frame returned %d, got_frame=%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.DVprofile* @avpriv_dv_frame_profile2(%struct.AVCodecContext* nocapture readnone %0, %struct.DVprofile* noundef readnone returned %1, i8* nocapture readnone %2, i32 %3) local_unnamed_addr #0 {
  ret %struct.DVprofile* %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ff_dv_init_dynamic_tables(%struct.DVVideoContext* nocapture readnone %0, %struct.DVprofile* nocapture readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @av_log(%struct.AVCodecContext* nocapture readnone %0, i32 %1, i8* nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %5 = call i32 @fputs(i8* %2, %struct._IO_FILE* %4) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ff_set_dimensions(%struct.AVCodecContext* nocapture readnone %0, i32 %1, i32 %2) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @ff_set_sar(%struct.AVCodecContext* nocapture %0, i32 %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ff_get_buffer(%struct.AVCodecContext* nocapture readnone %0, i8* nocapture readnone %1, i32 %2) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @dv_decode_video_segment() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @dv_work_pool_size(%struct.DVprofile* nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @emms_c() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @work_function(i8* nocapture noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @decode_frame(%struct.AVCodecContext* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i32* nocapture noundef writeonly %2, %struct.AVPacket* nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.AVCodecContext, %struct.AVCodecContext* %0, i64 0, i32 3
  %6 = bitcast i8** %5 to %struct.DVVideoContext**
  %7 = load %struct.DVVideoContext*, %struct.DVVideoContext** %6, align 8, !tbaa !7
  %8 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %3, i64 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.DVVideoContext, %struct.DVVideoContext* %7, i64 0, i32 2
  store i8* %9, i8** %10, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.DVVideoContext, %struct.DVVideoContext* %7, i64 0, i32 0
  %12 = load %struct.DVprofile*, %struct.DVprofile** %11, align 8, !tbaa !15
  %13 = icmp eq %struct.DVprofile* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %15) #4
  br label %27

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %3, i64 0, i32 1
  %19 = bitcast i8* %1 to i32*
  store i32 1, i32* %19, align 4, !tbaa !16
  %20 = getelementptr inbounds i8, i8* %1, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 1, i32* %21, align 4, !tbaa !18
  %22 = getelementptr inbounds i8, i8* %1, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 0, i32* %23, align 4, !tbaa !19
  %24 = getelementptr inbounds i8, i8* %1, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 4, !tbaa !20
  store i32 1, i32* %2, align 4, !tbaa !21
  %26 = load i32, i32* %18, align 8, !tbaa !22
  br label %27

27:                                               ; preds = %17, %14
  %28 = phi i32 [ %26, %17 ], [ -1, %14 ]
  ret i32 %28
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %1) #5
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 noundef -1, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { cold }
attributes #5 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 24}
!8 = !{!"", !9, i64 0, !10, i64 4, !4, i64 16, !4, i64 24, !4, i64 32}
!9 = !{!"int", !5, i64 0}
!10 = !{!"AVRational", !9, i64 0, !9, i64 4}
!11 = !{!12, !4, i64 0}
!12 = !{!"", !4, i64 0, !9, i64 8}
!13 = !{!14, !4, i64 16}
!14 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24}
!15 = !{!14, !4, i64 0}
!16 = !{!17, !9, i64 0}
!17 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!18 = !{!17, !9, i64 4}
!19 = !{!17, !9, i64 8}
!20 = !{!17, !9, i64 12}
!21 = !{!9, !9, i64 0}
!22 = !{!12, !9, i64 8}

; ModuleID = 'dvvideo_decode_frame.bc'
source_filename = "dvvideo_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.AVCodecContext = type { i32 }
%struct.AVPacket = type { i8*, i32 }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [21 x i8] c"Invalid packet size\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @dvvideo_decode_frame(%struct.AVCodecContext* nocapture noundef readnone %0, i8* nocapture noundef readnone %1, i32* nocapture noundef writeonly %2, %struct.AVPacket* nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %3, i64 0, i32 1
  %6 = load i32, i32* %5, align 8, !tbaa !3
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %9) #2
  br label %12

11:                                               ; preds = %4
  store i32 1, i32* %2, align 4, !tbaa !10
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i32 [ -1, %8 ], [ %6, %11 ]
  ret i32 %13
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !8, i64 8}
!4 = !{!"AVPacket", !5, i64 0, !8, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!8, !8, i64 0}

; ModuleID = 'ff_xvmc_init_bloc.bc'
source_filename = "ff_xvmc_init_bloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MpegEncContext = type { i16*, %struct.Picture }
%struct.Picture = type { [3 x i8*] }
%struct.xvmc_render_state = type { i32, i16*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"render\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ff_xvmc_init_bloc.c\00", align 1
@__PRETTY_FUNCTION__.ff_xvmc_init_block = private unnamed_addr constant [42 x i8] c"void ff_xvmc_init_block(MpegEncContext *)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ff_xvmc_init_block(%struct.MpegEncContext* nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %0, i64 0, i32 1, i32 0, i64 2
  %3 = bitcast i8** %2 to %struct.xvmc_render_state**
  %4 = load %struct.xvmc_render_state*, %struct.xvmc_render_state** %3, align 8, !tbaa !3
  %5 = icmp eq %struct.xvmc_render_state* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.ff_xvmc_init_block, i64 0, i64 0)) #2
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xvmc_render_state, %struct.xvmc_render_state* %4, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !7
  %10 = icmp eq i32 %9, 1447904077
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.ff_xvmc_init_block, i64 0, i64 0)) #2
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.xvmc_render_state, %struct.xvmc_render_state* %4, i64 0, i32 1
  %14 = load i16*, i16** %13, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.xvmc_render_state, %struct.xvmc_render_state* %4, i64 0, i32 2
  %16 = load i32, i32* %15, align 8, !tbaa !11
  %17 = shl nsw i32 %16, 6
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %14, i64 %18
  %20 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %0, i64 0, i32 0
  store i16* %19, i16** %20, align 8, !tbaa !12
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  ret i32 0
}

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"xvmc_render_state", !9, i64 0, !4, i64 8, !9, i64 16}
!9 = !{!"int", !5, i64 0}
!10 = !{!8, !4, i64 8}
!11 = !{!8, !9, i64 16}
!12 = !{!13, !4, i64 0}
!13 = !{!"MpegEncContext", !4, i64 0, !14, i64 8}
!14 = !{!"Picture", !5, i64 0}

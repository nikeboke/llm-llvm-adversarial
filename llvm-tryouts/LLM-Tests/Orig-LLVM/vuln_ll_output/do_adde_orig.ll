; ModuleID = 'do_adde.bc'
source_filename = "do_adde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T0 = dso_local local_unnamed_addr global i32 0, align 4
@T1 = dso_local local_unnamed_addr global i32 0, align 4
@T2 = dso_local local_unnamed_addr global i32 0, align 4
@xer_ca = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"T0 = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"xer_ca = %u\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @do_adde() local_unnamed_addr #0 {
  %1 = load i32, i32* @T0, align 4, !tbaa !3
  store i32 %1, i32* @T2, align 4, !tbaa !3
  %2 = load i32, i32* @T1, align 4, !tbaa !3
  %3 = load i32, i32* @xer_ca, align 4, !tbaa !3
  %4 = add i32 %3, %2
  %5 = add i32 %4, %1
  store i32 %5, i32* @T0, align 4, !tbaa !3
  %6 = icmp ult i32 %5, %1
  %7 = icmp eq i32 %3, 1
  %8 = icmp eq i32 %4, 0
  %9 = select i1 %7, i1 %8, i1 false
  %10 = select i1 %6, i1 true, i1 %9, !prof !7
  %11 = zext i1 %10 to i32
  store i32 %11, i32* @xer_ca, align 4, !tbaa !3
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  store i32 10, i32* @T0, align 4, !tbaa !3
  store i32 20, i32* @T1, align 4, !tbaa !3
  store i32 1, i32* @xer_ca, align 4, !tbaa !3
  store i32 10, i32* @T2, align 4, !tbaa !3
  store i32 31, i32* @T0, align 4, !tbaa !3
  store i32 0, i32* @xer_ca, align 4, !tbaa !3
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 noundef 31)
  %2 = load i32, i32* @xer_ca, align 4, !tbaa !3
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %2)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 2000}

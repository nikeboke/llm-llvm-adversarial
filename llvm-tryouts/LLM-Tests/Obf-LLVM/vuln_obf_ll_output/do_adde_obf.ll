; ModuleID = 'do_adde_obf.bc'
source_filename = "do_adde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T0 = dso_local local_unnamed_addr global i32 0, align 4
@T1 = dso_local local_unnamed_addr global i32 0, align 4
@T2 = dso_local local_unnamed_addr global i32 0, align 4
@xer_ca = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"T0 = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"xer_ca = %u\0A\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @do_adde() local_unnamed_addr #0 {
  %1 = load i32, i32* @T0, align 4, !tbaa !3
  store i32 %1, i32* @T2, align 4, !tbaa !3
  %2 = load i32, i32* @T1, align 4, !tbaa !3
  %3 = load i32, i32* @xer_ca, align 4, !tbaa !3
  %4 = sub i32 0, %3
  %5 = sub i32 0, %2
  %6 = add i32 %4, %5
  %7 = sub i32 0, %6
  %8 = add i32 %3, %2
  %9 = sub i32 0, %7
  br label %.split

.split:                                           ; preds = %0
  %10 = sub i32 0, %1
  %11 = add i32 %9, %10
  %12 = sub i32 0, %11
  %13 = add i32 %7, %1
  store i32 %12, i32* @T0, align 4, !tbaa !3
  br label %.split.split

.split.split:                                     ; preds = %.split
  %14 = icmp ult i32 %12, %1
  %15 = icmp eq i32 %3, 1
  %16 = icmp eq i32 %7, 0
  %17 = select i1 %15, i1 %16, i1 false
  %18 = select i1 %14, i1 true, i1 %17, !prof !7
  %19 = zext i1 %18 to i32
  store i32 %19, i32* @xer_ca, align 4, !tbaa !3
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = load i32, i32* @x.1, align 4
  br label %.split

.split:                                           ; preds = %0
  %2 = load i32, i32* @y.2, align 4
  br label %.split.split

.split.split:                                     ; preds = %.split
  %3 = sub i32 0, 1
  %4 = add i32 %1, %3
  %5 = sub i32 %1, 1
  %6 = mul i32 %1, %4
  %7 = urem i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = icmp slt i32 %2, 10
  %10 = and i1 %8, %9
  %11 = xor i1 %8, %9
  %12 = or i1 %10, %11
  %13 = or i1 %8, %9
  br i1 %12, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  store i32 10, i32* @T0, align 4, !tbaa !3
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  store i32 20, i32* @T1, align 4, !tbaa !3
  store i32 1, i32* @xer_ca, align 4, !tbaa !3
  store i32 10, i32* @T2, align 4, !tbaa !3
  store i32 31, i32* @T0, align 4, !tbaa !3
  store i32 0, i32* @xer_ca, align 4, !tbaa !3
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 noundef 31)
  %15 = load i32, i32* @xer_ca, align 4, !tbaa !3
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15)
  %17 = load i32, i32* @x.1, align 4
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %18 = load i32, i32* @y.2, align 4
  %19 = sub i32 %17, -538712833
  %20 = sub i32 %19, 1
  %21 = add i32 %20, -538712833
  %22 = sub i32 %17, 1
  %23 = mul i32 %17, %21
  %24 = urem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = icmp slt i32 %18, 10
  %27 = and i1 %25, %26
  %28 = xor i1 %25, %26
  %29 = or i1 %27, %28
  %30 = or i1 %25, %26
  br i1 %29, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 0

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  store i32 10, i32* @T0, align 4, !tbaa !3
  store i32 20, i32* @T1, align 4, !tbaa !3
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  store i32 1, i32* @xer_ca, align 4, !tbaa !3
  store i32 10, i32* @T2, align 4, !tbaa !3
  store i32 31, i32* @T0, align 4, !tbaa !3
  store i32 0, i32* @xer_ca, align 4, !tbaa !3
  %31 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 noundef 31)
  %32 = load i32, i32* @xer_ca, align 4, !tbaa !3
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %32)
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB
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

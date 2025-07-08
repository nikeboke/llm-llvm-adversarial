; ModuleID = 'qemu_paio_error_obf.bc'
source_filename = "qemu_paio_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qemu_paiocb = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Error (a1): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Error (a2): %d\0A\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0
@x.3 = common global i32 0
@y.4 = common global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @qemu_paio_return(%struct.qemu_paiocb* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @x, align 4
  %3 = load i32, i32* @y, align 4
  br label %.split

.split:                                           ; preds = %1
  %4 = add i32 %2, -353968852
  %5 = sub i32 %4, 1
  %6 = sub i32 %5, -353968852
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  %12 = xor i1 %10, true
  %13 = xor i1 %11, true
  %14 = xor i1 true, true
  %15 = and i1 %12, true
  %16 = and i1 %10, %14
  br label %.split.split

.split.split:                                     ; preds = %.split
  %17 = and i1 %13, true
  %18 = and i1 %11, %14
  %19 = or i1 %15, %16
  %20 = or i1 %17, %18
  %21 = xor i1 %19, %20
  %22 = or i1 %12, %13
  %23 = xor i1 %22, true
  %24 = or i1 true, %14
  %25 = and i1 %23, %24
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %28 = getelementptr inbounds %struct.qemu_paiocb, %struct.qemu_paiocb* %0, i64 0, i32 0
  %29 = load i32, i32* %28, align 4, !tbaa !3
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* @x, align 4
  %32 = load i32, i32* @y, align 4
  %33 = sub i32 %31, -477695843
  %34 = sub i32 %33, 1
  %35 = add i32 %34, -477695843
  %36 = sub i32 %31, 1
  %37 = mul i32 %31, %35
  %38 = urem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %40 = icmp slt i32 %32, 10
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %41 = and i1 %39, %40
  %42 = xor i1 %39, %40
  %43 = or i1 %41, %42
  %44 = or i1 %39, %40
  br i1 %43, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i64 %30

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %45 = getelementptr inbounds %struct.qemu_paiocb, %struct.qemu_paiocb* %0, i64 0, i32 0
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %46 = load i32, i32* %45, align 4, !tbaa !3
  %47 = sext i32 %46 to i64
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @qemu_paio_error(%struct.qemu_paiocb* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.qemu_paiocb, %struct.qemu_paiocb* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = icmp slt i32 %3, 0
  br label %.split

.split:                                           ; preds = %1
  %5 = add i32 0, 1176558448
  %6 = sub i32 %5, %3
  br label %.split.split

.split.split:                                     ; preds = %.split
  %7 = sub i32 %6, 1176558448
  %8 = sub i32 0, %3
  %9 = select i1 %4, i32 %7, i32 0
  ret i32 %9
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef 5)
  br label %.split

.split:                                           ; preds = %0
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 0)
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"qemu_paiocb", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}

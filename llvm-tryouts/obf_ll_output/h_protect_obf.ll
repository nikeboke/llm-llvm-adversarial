; ModuleID = 'h_protect_obf.bc'
source_filename = "h_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPUPPCState = type { i32 }
%struct.PowerPCCPU = type { %struct.CPUPPCState }

@.str = private unnamed_addr constant [40 x i8] c"[store_hpte] index=%lu v=0x%lx r=0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"[tlb_invalidate] rb=0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"h_protect returned: %lu\0A\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0
@x.3 = common global i32 0
@y.4 = common global i32 0
@x.5 = common global i32 0
@y.6 = common global i32 0
@x.7 = common global i32 0
@y.8 = common global i32 0
@x.9 = common global i32 0
@y.10 = common global i32 0
@x.11 = common global i32 0
@y.12 = common global i32 0
@x.13 = common global i32 0
@y.14 = common global i32 0
@x.15 = common global i32 0
@y.16 = common global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @valid_pte_index(%struct.CPUPPCState* nocapture readnone %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 16
  br label %.split

.split:                                           ; preds = %2
  %4 = zext i1 %3 to i32
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @ppc_hash64_start_access(%struct.PowerPCCPU* nocapture readnone %0, i64 noundef returned %1) local_unnamed_addr #0 {
  ret i64 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @ppc_hash64_load_hpte0(%struct.PowerPCCPU* nocapture readnone %0, i64 noundef %1, i32 %2) local_unnamed_addr #0 {
  %4 = shl i64 %1, 7
  %5 = xor i64 %4, -1
  %6 = xor i64 1, -1
  %7 = xor i64 8720993871087215133, -1
  %8 = and i64 %5, 8720993871087215133
  %9 = and i64 %4, %7
  %10 = and i64 %6, 8720993871087215133
  %11 = and i64 1, %7
  %12 = or i64 %8, %9
  br label %.split

.split:                                           ; preds = %3
  %13 = or i64 %10, %11
  %14 = xor i64 %12, %13
  %15 = or i64 %5, %6
  br label %.split.split

.split.split:                                     ; preds = %.split
  %16 = xor i64 %15, -1
  %17 = or i64 8720993871087215133, %7
  %18 = and i64 %16, %17
  %19 = or i64 %14, %18
  %20 = or i64 %4, 1
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @ppc_hash64_load_hpte1(%struct.PowerPCCPU* nocapture readnone %0, i64 %1, i32 %2) local_unnamed_addr #0 {
  ret i64 1085102592571150095
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @ppc_hash64_stop_access(i64 %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @x.7, align 4
  br label %.split

.split:                                           ; preds = %1
  %3 = load i32, i32* @y.8, align 4
  %4 = sub i32 %2, -1102804456
  %5 = sub i32 %4, 1
  %6 = add i32 %5, -1102804456
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  %12 = and i1 %10, %11
  br label %.split.split

.split.split:                                     ; preds = %.split
  %13 = xor i1 %10, %11
  %14 = or i1 %12, %13
  %15 = or i1 %10, %11
  br i1 %14, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %16 = load i32, i32* @x.7, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %17 = load i32, i32* @y.8, align 4
  %18 = add i32 %16, -1575186427
  %19 = sub i32 %18, 1
  %20 = sub i32 %19, -1575186427
  %21 = sub i32 %16, 1
  %22 = mul i32 %16, %20
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %23 = urem i32 %22, 2
  %24 = icmp eq i32 %23, 0
  %25 = icmp slt i32 %17, 10
  %26 = and i1 %24, %25
  %27 = xor i1 %24, %25
  %28 = or i1 %26, %27
  %29 = or i1 %24, %25
  br i1 %28, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @compute_tlbie_rb(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = xor i64 %1, -1
  %5 = and i64 5424936641919346237, %4
  %6 = xor i64 5424936641919346237, -1
  %7 = and i64 %1, %6
  %8 = xor i64 %0, -1
  br label %.split

.split:                                           ; preds = %3
  %9 = and i64 %8, 5424936641919346237
  %10 = and i64 %0, %6
  %11 = or i64 %5, %7
  %12 = or i64 %9, %10
  %13 = xor i64 %11, %12
  %14 = xor i64 %1, %0
  %15 = xor i64 %13, -1
  %16 = and i64 -8675382331010127625, %15
  %17 = xor i64 -8675382331010127625, -1
  %18 = and i64 %13, %17
  br label %.split.split

.split.split:                                     ; preds = %.split
  %19 = xor i64 %2, -1
  %20 = and i64 %19, -8675382331010127625
  %21 = and i64 %2, %17
  %22 = or i64 %16, %18
  %23 = or i64 %20, %21
  %24 = xor i64 %22, %23
  %25 = xor i64 %13, %2
  ret i64 %24
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @ppc_hash64_store_hpte(%struct.PowerPCCPU* nocapture readnone %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 noundef %1, i64 noundef %2, i64 noundef %3)
  br label %.split

.split:                                           ; preds = %4
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @ppc_tlb_invalidate_one(%struct.CPUPPCState* nocapture readnone %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, i32* @x.13, align 4
  %4 = load i32, i32* @y.14, align 4
  %5 = add i32 %3, -738716654
  %6 = sub i32 %5, 1
  %7 = sub i32 %6, -738716654
  %8 = sub i32 %3, 1
  %9 = mul i32 %3, %7
  br label %.split

.split:                                           ; preds = %2
  %10 = urem i32 %9, 2
  br label %.split.split

.split.split:                                     ; preds = %.split
  %11 = icmp eq i32 %10, 0
  %12 = icmp slt i32 %4, 10
  %13 = and i1 %11, %12
  %14 = xor i1 %11, %12
  %15 = or i1 %13, %14
  %16 = or i1 %11, %12
  br i1 %15, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 noundef %1)
  %18 = load i32, i32* @x.13, align 4
  %19 = load i32, i32* @y.14, align 4
  %20 = sub i32 %18, 662465603
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %21 = sub i32 %20, 1
  %22 = add i32 %21, 662465603
  %23 = sub i32 %18, 1
  %24 = mul i32 %18, %22
  %25 = urem i32 %24, 2
  %26 = icmp eq i32 %25, 0
  %27 = icmp slt i32 %19, 10
  %28 = xor i1 %26, true
  %29 = xor i1 %27, true
  %30 = xor i1 true, true
  %31 = and i1 %28, true
  %32 = and i1 %26, %30
  %33 = and i1 %29, true
  %34 = and i1 %27, %30
  %35 = or i1 %31, %32
  %36 = or i1 %33, %34
  %37 = xor i1 %35, %36
  %38 = or i1 %28, %29
  %39 = xor i1 %38, true
  %40 = or i1 true, %30
  %41 = and i1 %39, %40
  %42 = or i1 %37, %41
  %43 = or i1 %26, %27
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  br i1 %42, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %44 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 noundef %1)
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 noundef 2)
  br label %.split

.split:                                           ; preds = %0
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

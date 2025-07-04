; ModuleID = 'h_protect.bc'
source_filename = "h_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPUPPCState = type { i32 }
%struct.PowerPCCPU = type { %struct.CPUPPCState }

@.str = private unnamed_addr constant [40 x i8] c"[store_hpte] index=%lu v=0x%lx r=0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"[tlb_invalidate] rb=0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"h_protect returned: %lu\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @valid_pte_index(%struct.CPUPPCState* nocapture readnone %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 16
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @ppc_hash64_start_access(%struct.PowerPCCPU* nocapture readnone %0, i64 noundef returned %1) local_unnamed_addr #0 {
  ret i64 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @ppc_hash64_load_hpte0(%struct.PowerPCCPU* nocapture readnone %0, i64 noundef %1, i32 %2) local_unnamed_addr #0 {
  %4 = shl i64 %1, 7
  %5 = or i64 %4, 1
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @ppc_hash64_load_hpte1(%struct.PowerPCCPU* nocapture readnone %0, i64 %1, i32 %2) local_unnamed_addr #0 {
  ret i64 1085102592571150095
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @ppc_hash64_stop_access(i64 %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @compute_tlbie_rb(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = xor i64 %1, %0
  %5 = xor i64 %4, %2
  ret i64 %5
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @ppc_hash64_store_hpte(%struct.PowerPCCPU* nocapture readnone %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 noundef %1, i64 noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @ppc_tlb_invalidate_one(%struct.CPUPPCState* nocapture readnone %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 noundef %1)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 noundef 2)
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

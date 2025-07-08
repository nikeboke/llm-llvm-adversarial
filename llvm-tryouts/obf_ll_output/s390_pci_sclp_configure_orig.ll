; ModuleID = 's390_pci_sclp_configure.bc'
source_filename = "s390_pci_sclp_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S390PCIBusDevice = type { i8, i32 }
%struct.SCCB = type { %struct.SCCBHeader }
%struct.SCCBHeader = type { i16 }

@global_dev = dso_local global %struct.S390PCIBusDevice { i8 0, i32 -559038737 }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Response code: 0x%04X\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"sclp config no dev found\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct.S390PCIBusDevice* @s390_pci_find_dev_by_fid(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 1), align 4, !tbaa !3
  %3 = icmp eq i32 %2, %0
  %4 = select i1 %3, %struct.S390PCIBusDevice* @global_dev, %struct.S390PCIBusDevice* null
  ret %struct.S390PCIBusDevice* %4
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @s390_pci_sclp_configure(%struct.SCCB* nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.SCCB, %struct.SCCB* %0, i64 0, i32 0, i32 0
  %3 = load i16, i16* %2, align 2, !tbaa !9
  %4 = icmp ult i16 %3, 16
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 1), align 4, !tbaa !3
  %7 = getelementptr inbounds %struct.SCCB, %struct.SCCB* %0, i64 2
  %8 = bitcast %struct.SCCB* %7 to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !13
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = load i8, i8* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 0), align 4, !tbaa !15, !range !16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  store i8 1, i8* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 0), align 4, !tbaa !15
  br label %17

15:                                               ; preds = %5
  %16 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %11, %1, %15, %14
  %18 = phi i16 [ 36, %14 ], [ 48, %15 ], [ 16, %1 ], [ 32, %11 ]
  %19 = getelementptr inbounds %struct.SCCB, %struct.SCCB* %0, i64 4, i32 0, i32 0
  store i16 %18, i16* %19, align 4, !tbaa !17
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = load i32, i32* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 1), align 4, !tbaa !3
  %2 = icmp eq i32 %1, -559038737
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i8, i8* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 0), align 4, !tbaa !15, !range !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  store i8 1, i8* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 0), align 4, !tbaa !15
  br label %9

7:                                                ; preds = %0
  %8 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0)) #4
  br label %9

9:                                                ; preds = %3, %6, %7
  %10 = phi i32 [ 36, %6 ], [ 48, %7 ], [ 32, %3 ]
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef %10)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !8, i64 4}
!4 = !{!"", !5, i64 0, !8, i64 4}
!5 = !{!"_Bool", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!10, !12, i64 0}
!10 = !{!"", !11, i64 0}
!11 = !{!"", !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!14, !8, i64 4}
!14 = !{!"", !11, i64 0, !8, i64 4, !11, i64 8}
!15 = !{!4, !5, i64 0}
!16 = !{i8 0, i8 2}
!17 = !{!14, !12, i64 8}

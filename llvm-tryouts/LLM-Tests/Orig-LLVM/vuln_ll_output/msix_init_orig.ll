; ModuleID = 'msix_init.bc'
source_filename = "msix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemoryRegion = type { i64, i8* }
%struct.PCIDevice = type { i8*, %struct.MemoryRegion }

@.str = private unnamed_addr constant [45 x i8] c"Registered BAR %d of size %zu for device %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s-msix\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"virt-pci-dev\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Init result: %d\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @qemu_fls(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %7, %3 ], [ 1, %1 ]
  %5 = phi i32 [ %6, %3 ], [ %0, %1 ]
  %6 = lshr i32 %5, 1
  %7 = add nuw nsw i32 %4, 1
  %8 = icmp ult i32 %5, 4
  br i1 %8, label %9, label %3, !llvm.loop !3

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 1, %1 ], [ %7, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @memory_region_init(%struct.MemoryRegion* nocapture noundef writeonly %0, i8* nocapture readnone %1, i8* nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %0, i64 0, i32 0
  store i64 %3, i64* %5, align 8, !tbaa !6
  %6 = call noalias i8* @strdup(i8* noundef %2) #11
  %7 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %0, i64 0, i32 1
  store i8* %6, i8** %7, align 8, !tbaa !12
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare dso_local noalias i8* @strdup(i8* nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noalias i8* @g_strdup_printf(i8* nocapture noundef readonly %0, i8* noundef %1) local_unnamed_addr #3 {
  %3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef null, i64 noundef 0, i8* noundef %0, i8* noundef %1) #11
  %4 = add nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @malloc(i64 noundef %5) #11
  %7 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %6, i64 noundef %5, i8* noundef %0, i8* noundef %1) #11
  ret i8* %6
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @snprintf(i8* noalias nocapture noundef writeonly, i64 noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @g_free(i8* nocapture noundef %0) local_unnamed_addr #6 {
  call void @free(i8* noundef %0) #11
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @msix_init(%struct.PCIDevice* nocapture readnone %0, i16 zeroext %1, %struct.MemoryRegion* nocapture readnone %2, i8 zeroext %3, i32 %4, %struct.MemoryRegion* nocapture readnone %5, i8 zeroext %6, i32 %7, i32 %8) local_unnamed_addr #8 {
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @pci_register_bar(%struct.PCIDevice* nocapture noundef readonly %0, i8 noundef zeroext %1, i32 %2, %struct.MemoryRegion* nocapture noundef readonly %3) local_unnamed_addr #3 {
  %5 = zext i8 %1 to i32
  %6 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %3, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.PCIDevice, %struct.PCIDevice* %0, i64 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !13
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 noundef %5, i64 noundef %7, i8* noundef %9)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @msix_init_exclusive_bar(%struct.PCIDevice* nocapture noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #9 {
  %4 = zext i16 %1 to i32
  %5 = and i32 %4, 65528
  %6 = add nuw nsw i32 %5, 8
  %7 = icmp ugt i16 %1, 128
  %8 = shl nuw nsw i32 %4, 4
  %9 = select i1 %7, i32 %8, i32 2048
  %10 = add nuw nsw i32 %6, %9
  %11 = icmp ugt i32 %10, 4096
  %12 = select i1 %11, i32 %10, i32 4096
  %13 = call i32 @llvm.ctpop.i32(i32 %12), !range !15
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %23, label %15

15:                                               ; preds = %3, %15
  %16 = phi i32 [ %19, %15 ], [ 1, %3 ]
  %17 = phi i32 [ %18, %15 ], [ %12, %3 ]
  %18 = lshr i32 %17, 1
  %19 = add nuw nsw i32 %16, 1
  %20 = icmp ult i32 %17, 4
  br i1 %20, label %21, label %15, !llvm.loop !3

21:                                               ; preds = %15
  %22 = shl i32 2, %16
  br label %23

23:                                               ; preds = %21, %3
  %24 = phi i32 [ %22, %21 ], [ %12, %3 ]
  %25 = getelementptr inbounds %struct.PCIDevice, %struct.PCIDevice* %0, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !13
  %27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef null, i64 noundef 0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef %26) #11
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = call noalias i8* @malloc(i64 noundef %29) #11
  %31 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %30, i64 noundef %29, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef %26) #11
  %32 = zext i32 %24 to i64
  %33 = getelementptr inbounds %struct.PCIDevice, %struct.PCIDevice* %0, i64 0, i32 1, i32 0
  store i64 %32, i64* %33, align 8, !tbaa !6
  %34 = call noalias i8* @strdup(i8* noundef %30) #11
  %35 = getelementptr inbounds %struct.PCIDevice, %struct.PCIDevice* %0, i64 0, i32 1, i32 1
  store i8* %34, i8** %35, align 8, !tbaa !12
  call void @free(i8* noundef %30) #11
  %36 = zext i8 %2 to i32
  %37 = load i8*, i8** %25, align 8, !tbaa !13
  %38 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 noundef %36, i64 noundef %32, i8* noundef %37) #11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #9 {
  %1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef null, i64 noundef 0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #11
  %2 = add nsw i32 %1, 1
  %3 = sext i32 %2 to i64
  %4 = call noalias i8* @malloc(i64 noundef %3) #11
  %5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %4, i64 noundef %3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #11
  call void @free(i8* noundef %4) #11
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 noundef 2, i64 noundef 4096, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #11
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 noundef 0)
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = distinct !{!3, !4, !5}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"llvm.loop.unroll.disable"}
!6 = !{!7, !8, i64 0}
!7 = !{!"MemoryRegion", !8, i64 0, !11, i64 8}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!7, !11, i64 8}
!13 = !{!14, !11, i64 0}
!14 = !{!"PCIDevice", !11, i64 0, !7, i64 8}
!15 = !{i32 0, i32 33}

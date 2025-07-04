; ModuleID = 'pxa2xx_i2s_init.bc'
source_filename = "pxa2xx_i2s_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.PXA2xxI2SState = type { void (i8*)*, void (i8*)*, void (i8*)*, {}*, %struct.MemoryRegion }
%struct.MemoryRegion = type { i8*, i64, i8* }

@.str.1 = private unnamed_addr constant [40 x i8] c"Mapped '%s' at base 0x%lx (size 0x%lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Registered VM state at base 0x%lx\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"g_malloc0: allocation failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"I2S device initialized at %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"pxa2xx-i2s\00", align 1
@str = private unnamed_addr constant [14 x i8] c"Resetting I2S\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @dummy_irq(i8* nocapture %0) #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @pxa2xx_i2s_data_req(%struct.PXA2xxI2SState* nocapture %0) #0 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @pxa2xx_i2s_reset(%struct.PXA2xxI2SState* nocapture readnone %0) local_unnamed_addr #1 {
  %2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @memory_region_init_io(%struct.MemoryRegion* nocapture noundef writeonly %0, i8* nocapture readnone %1, i8* nocapture readnone %2, i8* noundef %3, i8* noundef %4, i64 noundef %5) local_unnamed_addr #3 {
  %7 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %0, i64 0, i32 0
  store i8* %4, i8** %7, align 8, !tbaa !3
  %8 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %0, i64 0, i32 1
  store i64 %5, i64* %8, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %0, i64 0, i32 2
  store i8* %3, i8** %9, align 8, !tbaa !10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @memory_region_add_subregion(%struct.MemoryRegion* nocapture readnone %0, i64 noundef %1, %struct.MemoryRegion* nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %2, i64 0, i32 0
  %5 = load i8*, i8** %4, align 8, !tbaa !3
  %6 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %2, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !9
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* noundef %5, i64 noundef %1, i64 noundef %7)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @vmstate_register(i8* nocapture readnone %0, i64 noundef %1, i8* nocapture readnone %2, i8* nocapture readnone %3) local_unnamed_addr #1 {
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @g_malloc0(i64 noundef %0) local_unnamed_addr #4 {
  %2 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %0) #9
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %5) #10
  call void @exit(i32 noundef 1) #11
  unreachable

7:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #4 {
  %1 = call noalias dereferenceable_or_null(56) i8* @calloc(i64 noundef 1, i64 noundef 56) #9
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %4) #12
  call void @exit(i32 noundef 1) #11
  unreachable

6:                                                ; preds = %0
  %7 = bitcast i8* %1 to void (i8*)**
  store void (i8*)* @dummy_irq, void (i8*)** %7, align 8, !tbaa !12
  %8 = getelementptr inbounds i8, i8* %1, i64 8
  %9 = bitcast i8* %8 to void (i8*)**
  store void (i8*)* @dummy_irq, void (i8*)** %9, align 8, !tbaa !14
  %10 = getelementptr inbounds i8, i8* %1, i64 16
  %11 = bitcast i8* %10 to void (i8*)**
  store void (i8*)* @dummy_irq, void (i8*)** %11, align 8, !tbaa !15
  %12 = getelementptr inbounds i8, i8* %1, i64 24
  %13 = bitcast i8* %12 to void (%struct.PXA2xxI2SState*)**
  store void (%struct.PXA2xxI2SState*)* @pxa2xx_i2s_data_req, void (%struct.PXA2xxI2SState*)** %13, align 8, !tbaa !16
  %14 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str, i64 0, i64 0)) #9
  %15 = getelementptr inbounds i8, i8* %1, i64 32
  %16 = bitcast i8* %15 to i8**
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8, !tbaa !3
  %17 = getelementptr inbounds i8, i8* %1, i64 40
  %18 = bitcast i8* %17 to i64*
  store i64 1048576, i64* %18, align 8, !tbaa !9
  %19 = getelementptr inbounds i8, i8* %1, i64 48
  %20 = bitcast i8* %19 to i8**
  store i8* %1, i8** %20, align 8, !tbaa !10
  %21 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 noundef 4096, i64 noundef 1048576) #9
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 noundef 4096) #9
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %1)
  call void @free(i8* noundef %1) #9
  ret i32 0
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }
attributes #12 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"MemoryRegion", !5, i64 0, !8, i64 8, !5, i64 16}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = !{!4, !8, i64 8}
!10 = !{!4, !5, i64 16}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"PXA2xxI2SState", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !4, i64 32}
!14 = !{!13, !5, i64 8}
!15 = !{!13, !5, i64 16}
!16 = !{!13, !5, i64 24}

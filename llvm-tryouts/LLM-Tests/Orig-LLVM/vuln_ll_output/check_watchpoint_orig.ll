; ModuleID = 'check_watchpoint.bc'
source_filename = "check_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPUState = type { %struct.CPUWatchpoint*, %struct.CPUWatchpoint*, i64, i32, %struct.CPUArchState* }
%struct.CPUWatchpoint = type { i64, %struct.MemTxAttrs, i32, %struct.CPUWatchpoint* }
%struct.MemTxAttrs = type { i32 }
%struct.CPUArchState = type { i32 }

@global_cpu = dso_local global %struct.CPUState zeroinitializer, align 8
@current_cpu = dso_local local_unnamed_addr global %struct.CPUState* @global_cpu, align 8
@.str = private unnamed_addr constant [37 x i8] c"[cpu_interrupt] Raised interrupt %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"[cpu_loop_exit] Exiting CPU loop with exception %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"[tb_gen_code] Generating code at PC=0x%lx\0A\00", align 1
@main.env = internal global %struct.CPUArchState zeroinitializer, align 4
@main.wp1 = internal global %struct.CPUWatchpoint { i64 0, %struct.MemTxAttrs zeroinitializer, i32 65, %struct.CPUWatchpoint* null }, align 8
@str = private unnamed_addr constant [42 x i8] c"[tb_lock] Translation block lock acquired\00", align 1
@str.7 = private unnamed_addr constant [42 x i8] c"[tb_check_watchpoint] Checking watchpoint\00", align 1
@str.8 = private unnamed_addr constant [57 x i8] c"[cpu_loop_exit_noexc] Exiting CPU loop without exception\00", align 1
@str.9 = private unnamed_addr constant [42 x i8] c"[cpu_get_tb_cpu_state] Returning dummy PC\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cpu_watchpoint_address_matches(%struct.CPUWatchpoint* nocapture readnone %0, i64 %1, i32 %2) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @cpu_interrupt(%struct.CPUState* nocapture readnone %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef %1)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @tb_lock() local_unnamed_addr #1 {
  %1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @tb_check_watchpoint(%struct.CPUState* nocapture readnone %0) local_unnamed_addr #1 {
  %2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.7, i64 0, i64 0))
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @cpu_loop_exit(%struct.CPUState* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.CPUState, %struct.CPUState* %0, i64 0, i32 3
  %3 = load i32, i32* %2, align 8, !tbaa !3
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 noundef %3)
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local void @cpu_loop_exit_noexc(%struct.CPUState* nocapture readnone %0) local_unnamed_addr #3 {
  %2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([57 x i8], [57 x i8]* @str.8, i64 0, i64 0))
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @cpu_get_tb_cpu_state(%struct.CPUArchState* nocapture readnone %0, i64* nocapture noundef writeonly %1, i64* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3) local_unnamed_addr #1 {
  store i64 4096, i64* %1, align 8, !tbaa !10
  store i64 0, i64* %2, align 8, !tbaa !10
  store i32 0, i32* %3, align 4, !tbaa !11
  %5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.9, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @tb_gen_code(%struct.CPUState* nocapture readnone %0, i64 noundef %1, i64 %2, i32 %3, i32 %4) local_unnamed_addr #1 {
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @dummy_adjust_watchpoint_address(i8* nocapture readnone %0, i64 noundef returned %1, i32 %2) local_unnamed_addr #0 {
  ret i64 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @dummy_debug_check_watchpoint(i8* nocapture readnone %0, %struct.CPUWatchpoint* nocapture readnone %1) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #5 {
  store %struct.CPUArchState* @main.env, %struct.CPUArchState** getelementptr inbounds (%struct.CPUState, %struct.CPUState* @global_cpu, i64 0, i32 4), align 8, !tbaa !12
  store %struct.CPUWatchpoint* @main.wp1, %struct.CPUWatchpoint** getelementptr inbounds (%struct.CPUState, %struct.CPUState* @global_cpu, i64 0, i32 0), align 8, !tbaa !13
  store i64 305418240, i64* getelementptr inbounds (%struct.CPUState, %struct.CPUState* @global_cpu, i64 0, i32 2), align 8, !tbaa !14
  %1 = load %struct.CPUState*, %struct.CPUState** @current_cpu, align 8, !tbaa !15
  %2 = getelementptr inbounds %struct.CPUState, %struct.CPUState* %1, i64 0, i32 1
  %3 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %2, align 8, !tbaa !16
  %4 = icmp eq %struct.CPUWatchpoint* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 1) #8
  br label %46

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.CPUState, %struct.CPUState* %1, i64 0, i32 2
  %9 = load i64, i64* %8, align 8, !tbaa !14
  %10 = and i64 %9, 4294963200
  %11 = or i64 %10, 16
  %12 = getelementptr inbounds %struct.CPUState, %struct.CPUState* %1, i64 0, i32 0
  %13 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %12, align 8, !tbaa !15
  %14 = icmp eq %struct.CPUWatchpoint* %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %7, %42
  %16 = phi %struct.CPUWatchpoint* [ %44, %42 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.CPUWatchpoint, %struct.CPUWatchpoint* %16, i64 0, i32 2
  %18 = load i32, i32* %17, align 4, !tbaa !17
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %15
  %22 = or i32 %18, 16
  store i32 %22, i32* %17, align 4, !tbaa !17
  %23 = getelementptr inbounds %struct.CPUWatchpoint, %struct.CPUWatchpoint* %16, i64 0, i32 0
  store i64 %11, i64* %23, align 8, !tbaa !20
  %24 = getelementptr inbounds %struct.CPUWatchpoint, %struct.CPUWatchpoint* %16, i64 0, i32 1, i32 0
  store i32 0, i32* %24, align 8, !tbaa.struct !21
  %25 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %2, align 8, !tbaa !16
  %26 = icmp eq %struct.CPUWatchpoint* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  store %struct.CPUWatchpoint* %16, %struct.CPUWatchpoint** %2, align 8, !tbaa !16
  %28 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str, i64 0, i64 0)) #8
  %29 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.7, i64 0, i64 0)) #8
  %30 = load i32, i32* %17, align 4, !tbaa !17
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.CPUState, %struct.CPUState* %1, i64 0, i32 3
  store i32 123, i32* %34, align 8, !tbaa !3
  %35 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 noundef 123) #8
  call void @exit(i32 noundef 0) #7
  unreachable

36:                                               ; preds = %27
  %37 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.9, i64 0, i64 0)) #8
  %38 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 noundef 4096) #8
  %39 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([57 x i8], [57 x i8]* @str.8, i64 0, i64 0)) #8
  call void @exit(i32 noundef 0) #7
  unreachable

40:                                               ; preds = %15
  %41 = and i32 %18, -257
  store i32 %41, i32* %17, align 4, !tbaa !17
  br label %42

42:                                               ; preds = %40, %21
  %43 = getelementptr inbounds %struct.CPUWatchpoint, %struct.CPUWatchpoint* %16, i64 0, i32 3
  %44 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %43, align 8, !tbaa !15
  %45 = icmp eq %struct.CPUWatchpoint* %44, null
  br i1 %45, label %46, label %15, !llvm.loop !22

46:                                               ; preds = %42, %5, %7
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !9, i64 24}
!4 = !{!"CPUState", !5, i64 0, !5, i64 8, !8, i64 16, !9, i64 24, !5, i64 32}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!8, !8, i64 0}
!11 = !{!9, !9, i64 0}
!12 = !{!4, !5, i64 32}
!13 = !{!4, !5, i64 0}
!14 = !{!4, !8, i64 16}
!15 = !{!5, !5, i64 0}
!16 = !{!4, !5, i64 8}
!17 = !{!18, !9, i64 12}
!18 = !{!"CPUWatchpoint", !8, i64 0, !19, i64 8, !9, i64 12, !5, i64 16}
!19 = !{!"", !9, i64 0}
!20 = !{!18, !8, i64 0}
!21 = !{i64 0, i64 4, !11}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}

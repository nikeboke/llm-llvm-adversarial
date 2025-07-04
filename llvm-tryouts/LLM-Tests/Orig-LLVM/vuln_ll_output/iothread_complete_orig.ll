; ModuleID = 'iothread_complete.bc'
source_filename = "iothread_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AioContext = type { i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%union.pthread_condattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.IOThread = type { i8, %struct.AioContext*, i32, i64, %union.pthread_mutex_t, %union.pthread_cond_t }

@.str = private unnamed_addr constant [32 x i8] c"Thread initialized with ID: %d\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.AioContext* @aio_context_new() local_unnamed_addr #0 {
  %1 = call noalias dereferenceable_or_null(4) i8* @malloc(i64 noundef 4) #9
  %2 = bitcast i8* %1 to %struct.AioContext*
  %3 = getelementptr inbounds %struct.AioContext, %struct.AioContext* %2, i64 0, i32 0
  store i32 1, i32* %3, align 4, !tbaa !3
  ret %struct.AioContext* %2
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @qemu_mutex_init(%union.pthread_mutex_t* noundef %0) local_unnamed_addr #3 {
  %2 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef %0, %union.pthread_mutexattr_t* noundef null) #9
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef, %union.pthread_mutexattr_t* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @qemu_cond_init(%union.pthread_cond_t* noundef %0) local_unnamed_addr #3 {
  %2 = call i32 @pthread_cond_init(%union.pthread_cond_t* noundef %0, %union.pthread_condattr_t* noundef null) #9
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_init(%union.pthread_cond_t* noundef, %union.pthread_condattr_t* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @qemu_mutex_lock(%union.pthread_mutex_t* noundef %0) local_unnamed_addr #3 {
  %2 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %0) #9
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @qemu_mutex_unlock(%union.pthread_mutex_t* noundef %0) local_unnamed_addr #3 {
  %2 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %0) #9
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @qemu_cond_wait(%union.pthread_cond_t* noundef %0, %union.pthread_mutex_t* noundef %1) local_unnamed_addr #3 {
  %3 = call i32 @pthread_cond_wait(%union.pthread_cond_t* noundef %0, %union.pthread_mutex_t* noundef %1) #9
  ret void
}

declare dso_local i32 @pthread_cond_wait(%union.pthread_cond_t* noundef, %union.pthread_mutex_t* noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @iothread_run(i8* noundef %0) #3 {
  %2 = call i32 @sleep(i32 noundef 1) #9
  %3 = getelementptr inbounds i8, i8* %0, i64 32
  %4 = bitcast i8* %3 to %union.pthread_mutex_t*
  %5 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %4) #9
  %6 = getelementptr inbounds i8, i8* %0, i64 16
  %7 = bitcast i8* %6 to i32*
  store i32 42, i32* %7, align 8, !tbaa !8
  %8 = getelementptr inbounds i8, i8* %0, i64 72
  %9 = bitcast i8* %8 to %union.pthread_cond_t*
  %10 = call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull %9) #9
  %11 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %4) #9
  %12 = load i8, i8* %0, align 8, !tbaa !13, !range !14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1, %14
  %15 = call i32 @sleep(i32 noundef 1) #9
  %16 = load i8, i8* %0, align 8, !tbaa !13, !range !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %14, label %18, !llvm.loop !15

18:                                               ; preds = %14, %1
  ret i8* null
}

declare dso_local i32 @sleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_signal(%union.pthread_cond_t* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @qemu_thread_create(i64* noundef %0, i8* nocapture readnone %1, i8* (i8*)* noundef %2, i8* noundef %3, i32 %4) local_unnamed_addr #3 {
  %6 = call i32 @pthread_create(i64* noundef %0, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef %2, i8* noundef %3) #9
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %1 = alloca %struct.IOThread, align 8
  %2 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %2) #9
  %3 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 0
  %4 = call noalias dereferenceable_or_null(4) i8* @malloc(i64 noundef 4) #9
  %5 = bitcast i8* %4 to %struct.AioContext*
  %6 = getelementptr inbounds %struct.AioContext, %struct.AioContext* %5, i64 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(120) %3, i8 0, i64 120, i1 false)
  store i32 1, i32* %6, align 4, !tbaa !3
  %7 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 1
  %8 = bitcast %struct.AioContext** %7 to i8**
  store i8* %4, i8** %8, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 2
  store i32 -1, i32* %9, align 8, !tbaa !8
  %10 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 4
  %11 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull %10, %union.pthread_mutexattr_t* noundef null) #9
  %12 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 5
  %13 = call i32 @pthread_cond_init(%union.pthread_cond_t* noundef nonnull %12, %union.pthread_condattr_t* noundef null) #9
  %14 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 3
  %15 = call i32 @pthread_create(i64* noundef nonnull %14, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @iothread_run, i8* noundef nonnull %3) #9
  %16 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %10) #9
  %17 = load i32, i32* %9, align 8, !tbaa !8
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %0, %19
  %20 = call i32 @pthread_cond_wait(%union.pthread_cond_t* noundef nonnull %12, %union.pthread_mutex_t* noundef nonnull %10) #9
  %21 = load i32, i32* %9, align 8, !tbaa !8
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %19, label %23, !llvm.loop !19

23:                                               ; preds = %19, %0
  %24 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %10) #9
  %25 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 2
  %26 = load i32, i32* %25, align 8, !tbaa !8
  %27 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %26)
  store i8 1, i8* %2, align 8, !tbaa !13
  %28 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 3
  %29 = load i64, i64* %28, align 8, !tbaa !20
  %30 = call i32 @pthread_join(i64 noundef %29, i8** noundef null) #9
  %31 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 1
  %32 = bitcast %struct.AioContext** %31 to i8**
  %33 = load i8*, i8** %32, align 8, !tbaa !18
  call void @free(i8* noundef %33) #9
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %2) #9
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

declare dso_local i32 @pthread_join(i64 noundef, i8** noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"AioContext", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 16}
!9 = !{!"IOThread", !10, i64 0, !11, i64 8, !5, i64 16, !12, i64 24, !6, i64 32, !6, i64 72}
!10 = !{!"_Bool", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !10, i64 0}
!14 = !{i8 0, i8 2}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!9, !11, i64 8}
!19 = distinct !{!19, !16, !17}
!20 = !{!9, !12, i64 24}

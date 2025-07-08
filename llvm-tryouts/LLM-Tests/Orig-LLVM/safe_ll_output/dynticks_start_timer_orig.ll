; ModuleID = 'dynticks_start_timer.bc'
source_filename = "dynticks_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigevent = type { %union.sigval, i32, i32, %union.anon }
%union.sigval = type { i8* }
%union.anon = type { %struct.anon, [32 x i8] }
%struct.anon = type { void (i8*)*, %union.pthread_attr_t* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.sigaction = type { %union.anon.0, %struct.__sigset_t, i32, void ()* }
%union.anon.0 = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }

@.str.1 = private unnamed_addr constant [13 x i8] c"timer_create\00", align 1
@str = private unnamed_addr constant [28 x i8] c"Timer started successfully.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @qemu_signalfd_available() local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @qemu_get_thread_id() local_unnamed_addr #1 {
  %1 = call i32 (...) @getpid() #8
  ret i32 %1
}

declare dso_local i32 @getpid(...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @host_alarm_handler(i32 %0) #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = alloca %struct.sigevent, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sigaction, align 8
  %4 = bitcast %struct.sigevent* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #8
  %5 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8
  %6 = bitcast %struct.sigaction* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %6) #8
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i64 0, i32 1
  %8 = call i32 @sigfillset(%struct.__sigset_t* noundef nonnull %7) #8
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i64 0, i32 2
  store i32 0, i32* %9, align 8, !tbaa !3
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i64 0, i32 0, i32 0
  store void (i32)* @host_alarm_handler, void (i32)** %10, align 8, !tbaa !10
  %11 = call i32 @sigaction(i32 noundef 14, %struct.sigaction* noundef nonnull %3, %struct.sigaction* noundef null) #8
  %12 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %1, i64 0, i32 2
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false) #8
  store i32 4, i32* %12, align 4, !tbaa !11
  %13 = call i32 (...) @getpid() #8
  %14 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %1, i64 0, i32 3
  %15 = bitcast %union.anon* %14 to i32*
  store i32 %13, i32* %15, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %1, i64 0, i32 1
  store i32 14, i32* %16, align 8, !tbaa !13
  %17 = call i32 @timer_create(i32 noundef 0, %struct.sigevent* noundef nonnull %1, i8** noundef nonnull %2) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %0
  call void @perror(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #9
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %6) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #8
  br label %22

20:                                               ; preds = %0
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %6) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #8
  %21 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %20
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare dso_local i32 @sigfillset(%struct.__sigset_t* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @sigaction(i32 noundef, %struct.sigaction* noundef, %struct.sigaction* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i32 @timer_create(i32 noundef, %struct.sigevent* noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: cold nofree nounwind
declare dso_local void @perror(i8* nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !8, i64 136}
!4 = !{!"sigaction", !5, i64 0, !7, i64 8, !8, i64 136, !9, i64 144}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"", !5, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !8, i64 12}
!12 = !{!"sigevent", !5, i64 0, !8, i64 8, !8, i64 12, !5, i64 16}
!13 = !{!12, !8, i64 8}

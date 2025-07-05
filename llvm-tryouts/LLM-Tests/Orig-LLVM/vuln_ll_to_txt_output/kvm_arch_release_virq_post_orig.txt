; ModuleID = 'kvm_arch_release_virq_post.bc'
source_filename = "kvm_arch_release_virq_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_route_head = type { %struct.MSIRouteEntry* }
%struct.MSIRouteEntry = type { i32, %struct.anon }
%struct.anon = type { %struct.MSIRouteEntry*, %struct.MSIRouteEntry** }

@msi_route_list = dso_local global %struct.msi_route_head zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"Removed VIRQ %d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @trace_kvm_x86_remove_msi_route(i32 noundef %0) local_unnamed_addr #0 {
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @kvm_arch_release_virq_post(i32 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi %struct.MSIRouteEntry** [ getelementptr inbounds (%struct.msi_route_head, %struct.msi_route_head* @msi_route_list, i64 0, i32 0), %1 ], [ %7, %6 ]
  %4 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %3, align 8, !tbaa !3
  %5 = icmp eq %struct.MSIRouteEntry* %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %4, i64 0, i32 1, i32 0
  %8 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %4, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !7
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %2, !llvm.loop !11

11:                                               ; preds = %6
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef %0) #3
  %13 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %7, align 8, !tbaa !14
  %14 = icmp eq %struct.MSIRouteEntry* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %4, i64 0, i32 1, i32 1
  %17 = load %struct.MSIRouteEntry**, %struct.MSIRouteEntry*** %16, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %13, i64 0, i32 1, i32 1
  store %struct.MSIRouteEntry** %17, %struct.MSIRouteEntry*** %18, align 8, !tbaa !15
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %4, i64 0, i32 1, i32 1
  %21 = load %struct.MSIRouteEntry**, %struct.MSIRouteEntry*** %20, align 8, !tbaa !15
  store %struct.MSIRouteEntry* %13, %struct.MSIRouteEntry** %21, align 8, !tbaa !3
  br label %22

22:                                               ; preds = %2, %19
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #3
  %2 = bitcast i8* %1 to %struct.MSIRouteEntry*
  %3 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %2, i64 0, i32 0
  store i32 5, i32* %3, align 8, !tbaa !7
  %4 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %2, i64 0, i32 1, i32 0
  store %struct.MSIRouteEntry* null, %struct.MSIRouteEntry** %4, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %2, i64 0, i32 1, i32 1
  store %struct.MSIRouteEntry** getelementptr inbounds (%struct.msi_route_head, %struct.msi_route_head* @msi_route_list, i64 0, i32 0), %struct.MSIRouteEntry*** %5, align 8, !tbaa !15
  store i8* %1, i8** bitcast (%struct.msi_route_head* @msi_route_list to i8**), align 8, !tbaa !16
  br label %6

6:                                                ; preds = %10, %0
  %7 = phi %struct.MSIRouteEntry** [ getelementptr inbounds (%struct.msi_route_head, %struct.msi_route_head* @msi_route_list, i64 0, i32 0), %0 ], [ %11, %10 ]
  %8 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %7, align 8, !tbaa !3
  %9 = icmp eq %struct.MSIRouteEntry* %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %8, i64 0, i32 1, i32 0
  %12 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %8, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !7
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %15, label %6, !llvm.loop !11

15:                                               ; preds = %10
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #3
  %17 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %11, align 8, !tbaa !14
  %18 = icmp eq %struct.MSIRouteEntry* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %8, i64 0, i32 1, i32 1
  %21 = load %struct.MSIRouteEntry**, %struct.MSIRouteEntry*** %20, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %17, i64 0, i32 1, i32 1
  store %struct.MSIRouteEntry** %21, %struct.MSIRouteEntry*** %22, align 8, !tbaa !15
  br label %23

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %8, i64 0, i32 1, i32 1
  %25 = load %struct.MSIRouteEntry**, %struct.MSIRouteEntry*** %24, align 8, !tbaa !15
  store %struct.MSIRouteEntry* %17, %struct.MSIRouteEntry** %25, align 8, !tbaa !3
  br label %26

26:                                               ; preds = %6, %23
  ret i32 0
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"MSIRouteEntry", !9, i64 0, !10, i64 8}
!9 = !{!"int", !5, i64 0}
!10 = !{!"", !4, i64 0, !4, i64 8}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!8, !4, i64 8}
!15 = !{!8, !4, i64 16}
!16 = !{!17, !4, i64 0}
!17 = !{!"msi_route_head", !4, i64 0}

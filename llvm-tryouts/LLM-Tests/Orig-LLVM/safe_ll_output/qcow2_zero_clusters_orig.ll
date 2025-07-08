; ModuleID = 'qcow2_zero_clusters.bc'
source_filename = "qcow2_zero_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BDRVQcow2State = type { i32, i8, i64 }
%struct.BlockDriverState = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"Result: %d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @size_to_clusters(%struct.BDRVQcow2State* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.BDRVQcow2State, %struct.BDRVQcow2State* %0, i64 0, i32 2
  %5 = load i64, i64* %4, align 8, !tbaa !3
  %6 = udiv i64 %3, %5
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @zero_single_l2(%struct.BlockDriverState* nocapture readnone %0, i64 %1, i32 noundef returned %2) local_unnamed_addr #1 {
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @qcow2_process_discards(%struct.BlockDriverState* nocapture %0, i32 %1) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i32 @qcow2_zero_clusters(%struct.BlockDriverState* nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = bitcast %struct.BlockDriverState* %0 to %struct.BDRVQcow2State**
  %5 = load %struct.BDRVQcow2State*, %struct.BDRVQcow2State** %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.BDRVQcow2State, %struct.BDRVQcow2State* %5, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !13
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  %10 = shl i32 %2, 9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.BDRVQcow2State, %struct.BDRVQcow2State* %5, i64 0, i32 2
  %13 = load i64, i64* %12, align 8, !tbaa !3
  %14 = udiv i64 %11, %13
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.BDRVQcow2State, %struct.BDRVQcow2State* %5, i64 0, i32 1
  store i8 1, i8* %16, align 4, !tbaa !14
  br label %17

17:                                               ; preds = %20, %9
  %18 = phi i32 [ %15, %9 ], [ 0, %20 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = icmp slt i32 %18, 0
  br i1 %21, label %22, label %17, !llvm.loop !15

22:                                               ; preds = %17, %20
  %23 = phi i32 [ %18, %20 ], [ 0, %17 ]
  store i8 0, i8* %16, align 4, !tbaa !14
  br label %24

24:                                               ; preds = %3, %22
  %25 = phi i32 [ %23, %22 ], [ -95, %3 ]
  ret i32 %25
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 0)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !9, i64 8}
!4 = !{!"BDRVQcow2State", !5, i64 0, !8, i64 4, !9, i64 8}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"_Bool", !6, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"BlockDriverState", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!4, !5, i64 0}
!14 = !{!4, !8, i64 4}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}

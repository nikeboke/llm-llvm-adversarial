; ModuleID = 'qcow2_alloc.bc'
source_filename = "qcow2_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BDRVQcowState = type { i32, i32, i32, %struct.QCowL2Meta* }
%struct.QCowL2Meta = type { i64, i32, i32, i32, %struct.QCowL2Meta*, %struct.QCowL2Meta* }
%struct.BlockDriverState = type { i8* }

@get_cluster_table.dummy_table = internal global [1024 x i64] zeroinitializer, align 16
@__const.main.state = private unnamed_addr constant %struct.BDRVQcowState { i32 512, i32 9, i32 1024, %struct.QCowL2Meta* null }, align 8
@.str = private unnamed_addr constant [32 x i8] c"Cluster offset: 0x%lx, num: %d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @get_cluster_table(%struct.BlockDriverState* nocapture readnone %0, i64 %1, i64** nocapture noundef writeonly %2, i64* nocapture noundef writeonly %3, i32* nocapture noundef writeonly %4) local_unnamed_addr #0 {
  store i64* getelementptr inbounds ([1024 x i64], [1024 x i64]* @get_cluster_table.dummy_table, i64 0, i64 0), i64** %2, align 8, !tbaa !3
  store i64 0, i64* %3, align 8, !tbaa !7
  store i32 0, i32* %4, align 4, !tbaa !9
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @size_to_clusters(%struct.BDRVQcowState* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !11
  %5 = sdiv i32 %1, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @be64_to_cpu(i64 noundef returned %0) local_unnamed_addr #2 {
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @count_contiguous_clusters(i32 noundef returned %0, i32 %1, i64* nocapture readnone %2, i32 %3, i32 %4) local_unnamed_addr #2 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @count_contiguous_free_clusters(i32 noundef returned %0, i64* nocapture readnone %1) local_unnamed_addr #2 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @qcow2_alloc_clusters(%struct.BlockDriverState* nocapture readnone %0, i32 %1) local_unnamed_addr #2 {
  ret i64 1048576
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @QLIST_INSERT_HEAD(%struct.QCowL2Meta** nocapture noundef %0, %struct.QCowL2Meta* noundef %1, i32 %2) local_unnamed_addr #3 {
  %4 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %0, align 8, !tbaa !3
  %5 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %1, i64 0, i32 5
  store %struct.QCowL2Meta* %4, %struct.QCowL2Meta** %5, align 8, !tbaa !13
  store %struct.QCowL2Meta* %1, %struct.QCowL2Meta** %0, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.QCowL2Meta* @QLIST_FOREACH(%struct.QCowL2Meta* noundef readnone returned %0, i8* nocapture noundef readnone %1, i8* nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret %struct.QCowL2Meta* %0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @qcow2_alloc_cluster_offset(%struct.BlockDriverState* nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32* nocapture noundef writeonly %4, %struct.QCowL2Meta* noundef %5) local_unnamed_addr #4 {
  %7 = bitcast %struct.BlockDriverState* %0 to %struct.BDRVQcowState**
  %8 = load %struct.BDRVQcowState*, %struct.BDRVQcowState** %7, align 8, !tbaa !15
  %9 = shl i32 %3, 9
  %10 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %8, i64 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !11
  %12 = sdiv i32 %9, %11
  %13 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %8, i64 0, i32 2
  %14 = load i32, i32* %13, align 8, !tbaa !17
  %15 = icmp slt i32 %12, %14
  %16 = select i1 %15, i32 %12, i32 %14
  %17 = load i64, i64* getelementptr inbounds ([1024 x i64], [1024 x i64]* @get_cluster_table.dummy_table, i64 0, i64 0), align 16, !tbaa !7
  %18 = icmp sgt i64 %17, -1
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = and i64 %17, 9223372036854775807
  br label %87

21:                                               ; preds = %6
  %22 = and i64 %17, 4611686018427387904
  %23 = icmp eq i64 %22, 0
  %24 = select i1 %23, i32 %16, i32 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1024 x i64], [1024 x i64]* @get_cluster_table.dummy_table, i64 0, i64 %25
  br label %27

27:                                               ; preds = %30, %21
  %28 = phi i32 [ 0, %21 ], [ %24, %30 ]
  %29 = icmp sgt i32 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* %26, align 8, !tbaa !7
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %27, label %33, !llvm.loop !18

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %24, %30 ], [ %28, %27 ]
  %35 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %8, i64 0, i32 3
  %36 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %35, align 8, !tbaa !3
  %37 = icmp eq %struct.QCowL2Meta* %36, null
  br i1 %37, label %78, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %8, i64 0, i32 1
  %40 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 4
  %41 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 2
  br label %42

42:                                               ; preds = %38, %74
  %43 = phi %struct.QCowL2Meta* [ %36, %38 ], [ %76, %74 ]
  %44 = phi i32 [ %34, %38 ], [ %73, %74 ]
  %45 = load i32, i32* %10, align 8, !tbaa !11
  %46 = mul nsw i32 %45, %44
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, %1
  %49 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %43, i64 0, i32 0
  %50 = load i64, i64* %49, align 8, !tbaa !21
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %71, label %52

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %43, i64 0, i32 2
  %54 = load i32, i32* %53, align 4, !tbaa !22
  %55 = mul nsw i32 %54, %45
  %56 = sext i32 %55 to i64
  %57 = add i64 %50, %56
  %58 = icmp ult i64 %57, %1
  br i1 %58, label %71, label %59

59:                                               ; preds = %52
  %60 = icmp ugt i64 %50, %1
  br i1 %60, label %61, label %67

61:                                               ; preds = %59
  %62 = sub i64 %50, %1
  %63 = load i32, i32* %39, align 4, !tbaa !23
  %64 = zext i32 %63 to i64
  %65 = lshr i64 %62, %64
  %66 = trunc i64 %65 to i32
  br label %67

67:                                               ; preds = %59, %61
  %68 = phi i32 [ %66, %61 ], [ 0, %59 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store %struct.QCowL2Meta* %43, %struct.QCowL2Meta** %40, align 8, !tbaa !24
  store i32 0, i32* %41, align 4, !tbaa !22
  store i32 0, i32* %4, align 4, !tbaa !9
  br label %71

71:                                               ; preds = %67, %42, %52, %70
  %72 = phi i32 [ 1, %70 ], [ 7, %52 ], [ 7, %42 ], [ 0, %67 ]
  %73 = phi i32 [ 0, %70 ], [ %44, %52 ], [ %44, %42 ], [ %68, %67 ]
  switch i32 %72, label %100 [
    i32 0, label %74
    i32 7, label %74
  ]

74:                                               ; preds = %71, %71
  %75 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %43, i64 0, i32 5
  %76 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %75, align 8, !tbaa !3
  %77 = icmp eq %struct.QCowL2Meta* %76, null
  br i1 %77, label %78, label %42, !llvm.loop !25

78:                                               ; preds = %74, %33
  %79 = phi i32 [ %34, %33 ], [ %73, %74 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  call void @abort() #10
  unreachable

82:                                               ; preds = %78
  %83 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %35, align 8, !tbaa !3
  %84 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 5
  store %struct.QCowL2Meta* %83, %struct.QCowL2Meta** %84, align 8, !tbaa !13
  store %struct.QCowL2Meta* %5, %struct.QCowL2Meta** %35, align 8, !tbaa !3
  %85 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 0
  store i64 %1, i64* %85, align 8, !tbaa !21
  %86 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 1
  store i32 %2, i32* %86, align 8, !tbaa !26
  br label %87

87:                                               ; preds = %82, %19
  %88 = phi i32 [ %79, %82 ], [ 0, %19 ]
  %89 = phi i32 [ %79, %82 ], [ %16, %19 ]
  %90 = phi i64 [ 1048576, %82 ], [ %20, %19 ]
  %91 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 2
  store i32 %88, i32* %91, align 4, !tbaa !22
  %92 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %8, i64 0, i32 1
  %93 = load i32, i32* %92, align 4, !tbaa !23
  %94 = add nsw i32 %93, -9
  %95 = shl i32 %89, %94
  %96 = icmp slt i32 %95, %3
  %97 = select i1 %96, i32 %95, i32 %3
  %98 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 3
  store i32 %97, i32* %98, align 8, !tbaa !27
  %99 = sub nsw i32 %97, %2
  store i32 %99, i32* %4, align 4, !tbaa !9
  br label %100

100:                                              ; preds = %71, %87
  %101 = phi i64 [ %90, %87 ], [ 0, %71 ]
  ret i64 %101
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #4 {
  %1 = alloca %struct.BDRVQcowState, align 8
  %2 = alloca %struct.BlockDriverState, align 8
  %3 = alloca %struct.QCowL2Meta, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.BDRVQcowState* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %5, i8* noundef nonnull align 8 dereferenceable(24) bitcast (%struct.BDRVQcowState* @__const.main.state to i8*), i64 24, i1 false)
  %6 = bitcast %struct.BlockDriverState* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #11
  %7 = bitcast %struct.BlockDriverState* %2 to %struct.BDRVQcowState**
  store %struct.BDRVQcowState* %1, %struct.BDRVQcowState** %7, align 8, !tbaa !15
  %8 = bitcast %struct.QCowL2Meta* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #11
  %10 = call i64 @qcow2_alloc_cluster_offset(%struct.BlockDriverState* noundef nonnull %2, i64 noundef 4096, i32 noundef 0, i32 noundef 16, i32* noundef nonnull %4, %struct.QCowL2Meta* noundef nonnull %3)
  %11 = load i32, i32* %4, align 4, !tbaa !9
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 noundef %10, i32 noundef %11)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #11
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #11
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"BDRVQcowState", !10, i64 0, !10, i64 4, !10, i64 8, !4, i64 16}
!13 = !{!14, !4, i64 32}
!14 = !{!"QCowL2Meta", !8, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !4, i64 24, !4, i64 32}
!15 = !{!16, !4, i64 0}
!16 = !{!"BlockDriverState", !4, i64 0}
!17 = !{!12, !10, i64 8}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!14, !8, i64 0}
!22 = !{!14, !10, i64 12}
!23 = !{!12, !10, i64 4}
!24 = !{!14, !4, i64 24}
!25 = distinct !{!25, !19, !20}
!26 = !{!14, !10, i64 8}
!27 = !{!14, !10, i64 16}

; ModuleID = 'mov_write_uuidprof_tag.bc'
source_filename = "mov_write_uuidprof_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MadContext = type { %struct.MpegEncContext, [64 x i32], %struct.anon }
%struct.MpegEncContext = type { i32, i32, %struct.DSPContext, %struct.GetBitContext }
%struct.DSPContext = type { void (i32*)* }
%struct.GetBitContext = type { i32 }
%struct.anon = type { [1 x i8*] }

@.str = private unnamed_addr constant [62 x i8] c"comp_block(mb_x=%d, mb_y=%d, j=%d, mv_x=%d, mv_y=%d, add=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"idct_put(mb_x=%d, mb_y=%d, j=%d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca %struct.MadContext, align 8
  %2 = bitcast %struct.MadContext* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %2) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(288) %2, i8 0, i64 288, i1 false)
  %3 = getelementptr inbounds %struct.MadContext, %struct.MadContext* %1, i64 0, i32 2, i32 0, i64 0
  store i8* inttoptr (i64 1 to i8*), i8** %3, align 8, !tbaa !3
  %4 = getelementptr inbounds %struct.MadContext, %struct.MadContext* %1, i64 0, i32 0, i32 2, i32 0
  store void (i32*)* @clear_block_impl, void (i32*)** %4, align 8, !tbaa !7
  %5 = call i32 @rand() #6
  %6 = and i32 %5, 3
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %21

8:                                                ; preds = %0
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = call i32 @rand() #6
  %12 = and i32 %11, 63
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ %12, %10 ], [ 63, %8 ]
  %15 = call i32 @rand() #6
  %16 = and i32 %15, 63
  %17 = add nsw i32 %16, -32
  %18 = call i32 @rand() #6
  %19 = and i32 %18, 63
  %20 = add nsw i32 %19, -32
  br label %21

21:                                               ; preds = %13, %0
  %22 = phi i32 [ %20, %13 ], [ 0, %0 ]
  %23 = phi i32 [ %17, %13 ], [ 0, %0 ]
  %24 = phi i32 [ %14, %13 ], [ 0, %0 ]
  %25 = getelementptr inbounds %struct.MadContext, %struct.MadContext* %1, i64 0, i32 0, i32 0
  %26 = getelementptr inbounds %struct.MadContext, %struct.MadContext* %1, i64 0, i32 0, i32 1
  %27 = getelementptr inbounds %struct.MadContext, %struct.MadContext* %1, i64 0, i32 1, i64 0
  %28 = bitcast i32* %27 to i8*
  br label %29

29:                                               ; preds = %50, %21
  %30 = phi i32 [ 0, %21 ], [ %51, %50 ]
  %31 = shl i32 1, %30
  %32 = and i32 %31, %24
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = call i32 @rand() #6
  %36 = load i8*, i8** %3, align 8, !tbaa !3
  %37 = icmp eq i8* %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = shl i32 %35, 1
  %40 = and i32 %39, 126
  %41 = add nsw i32 %40, -64
  %42 = load i32, i32* %25, align 8, !tbaa !14
  %43 = load i32, i32* %26, align 4, !tbaa !15
  %44 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 noundef %42, i32 noundef %43, i32 noundef %30, i32 noundef %23, i32 noundef %22, i32 noundef %41) #6
  br label %50

45:                                               ; preds = %29
  %46 = load void (i32*)*, void (i32*)** %4, align 8, !tbaa !16
  call void %46(i32* noundef nonnull %27) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(256) %28, i8 0, i64 256, i1 false) #6, !tbaa !17
  %47 = load i32, i32* %25, align 8, !tbaa !14
  %48 = load i32, i32* %26, align 4, !tbaa !15
  %49 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 noundef %47, i32 noundef %48, i32 noundef %30) #6
  br label %50

50:                                               ; preds = %45, %38, %34
  %51 = add nuw nsw i32 %30, 1
  %52 = icmp eq i32 %51, 6
  br i1 %52, label %53, label %29, !llvm.loop !18

53:                                               ; preds = %50
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %2) #6
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn writeonly
define internal void @clear_block_impl(i32* nocapture noundef writeonly %0) #3 {
  %2 = bitcast i32* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(256) %2, i8 0, i64 256, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 8}
!8 = !{!"", !9, i64 0, !5, i64 24, !13, i64 280}
!9 = !{!"", !10, i64 0, !10, i64 4, !11, i64 8, !12, i64 16}
!10 = !{!"int", !5, i64 0}
!11 = !{!"", !4, i64 0}
!12 = !{!"", !10, i64 0}
!13 = !{!"", !5, i64 0}
!14 = !{!9, !10, i64 0}
!15 = !{!9, !10, i64 4}
!16 = !{!9, !4, i64 8}
!17 = !{!10, !10, i64 0}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unroll.disable"}

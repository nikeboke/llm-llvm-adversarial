; ModuleID = 'subtle_overflow.bc'
source_filename = "subtle_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Cleaned input: %s\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @analyze_input(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #5
  %4 = load i8, i8* %0, align 1, !tbaa !3
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i16** @__ctype_b_loc() #6
  br label %13

8:                                                ; preds = %27, %1
  %9 = phi i32 [ 0, %1 ], [ %28, %27 ]
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 %10
  store i8 0, i8* %11, align 1, !tbaa !3
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #5
  ret void

13:                                               ; preds = %6, %27
  %14 = phi i8 [ %4, %6 ], [ %31, %27 ]
  %15 = phi i64 [ 0, %6 ], [ %29, %27 ]
  %16 = phi i32 [ 0, %6 ], [ %28, %27 ]
  %17 = load i16*, i16** %7, align 8, !tbaa !6
  %18 = zext i8 %14 to i64
  %19 = getelementptr inbounds i16, i16* %17, i64 %18
  %20 = load i16, i16* %19, align 2, !tbaa !8
  %21 = and i16 %20, 8
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %13
  %24 = add nsw i32 %16, 1
  %25 = sext i32 %16 to i64
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 %25
  store i8 %14, i8* %26, align 1, !tbaa !3
  br label %27

27:                                               ; preds = %13, %23
  %28 = phi i32 [ %24, %23 ], [ %16, %13 ]
  %29 = add i64 %15, 1
  %30 = getelementptr inbounds i8, i8* %0, i64 %29
  %31 = load i8, i8* %30, align 1, !tbaa !3
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %8, label %13, !llvm.loop !10
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca [100 x i8], align 16
  %3 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %3) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(99) %3, i8 66, i64 99, i1 false)
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 99
  store i8 0, i8* %4, align 1, !tbaa !3
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #5
  %6 = load i8, i8* %3, align 16, !tbaa !3
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %0
  %9 = call i16** @__ctype_b_loc() #6
  br label %10

10:                                               ; preds = %24, %8
  %11 = phi i8 [ %6, %8 ], [ %28, %24 ]
  %12 = phi i64 [ 0, %8 ], [ %26, %24 ]
  %13 = phi i32 [ 0, %8 ], [ %25, %24 ]
  %14 = load i16*, i16** %9, align 8, !tbaa !6
  %15 = zext i8 %11 to i64
  %16 = getelementptr inbounds i16, i16* %14, i64 %15
  %17 = load i16, i16* %16, align 2, !tbaa !8
  %18 = and i16 %17, 8
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %10
  %21 = add nsw i32 %13, 1
  %22 = sext i32 %13 to i64
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 %22
  store i8 %11, i8* %23, align 1, !tbaa !3
  br label %24

24:                                               ; preds = %20, %10
  %25 = phi i32 [ %21, %20 ], [ %13, %10 ]
  %26 = add i64 %12, 1
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !3
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %10, !llvm.loop !10

30:                                               ; preds = %24, %0
  %31 = phi i32 [ 0, %0 ], [ %25, %24 ]
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 %32
  store i8 0, i8* %33, align 1, !tbaa !3
  %34 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !4, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}

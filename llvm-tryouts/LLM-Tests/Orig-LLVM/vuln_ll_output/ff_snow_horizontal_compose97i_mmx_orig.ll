; ModuleID = 'ff_snow_horizontal_compose97i_mmx.bc'
source_filename = "ff_snow_horizontal_compose97i_mmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @snow_horizontal_compose_lift_lead_out(i32 %0, i16* nocapture %1, i16* nocapture %2, i16* nocapture %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @snow_horizontal_compose_liftS_lead_out(i32 %0, i16* nocapture %1, i16* nocapture %2, i16* nocapture %3, i32 %4, i32 %5) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @snow_interleave_line_header(i32* nocapture noundef writeonly %0, i32 noundef %1, i16* nocapture readnone %2, i16* nocapture readnone %3) local_unnamed_addr #1 {
  %5 = add nsw i32 %1, -2
  store i32 %5, i32* %0, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ff_snow_horizontal_compose97i_mmx(i16* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add nsw i32 %1, 1
  %4 = ashr i32 %3, 1
  %5 = ashr i32 %1, 1
  %6 = zext i32 %5 to i64
  %7 = alloca i16, i64 %6, align 16
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds i16, i16* %0, i64 %8
  %10 = getelementptr inbounds i16, i16* %9, i64 -1
  %11 = load i16, i16* %0, align 2, !tbaa !7
  %12 = getelementptr inbounds i16, i16* %10, i64 1
  %13 = load i16, i16* %12, align 2, !tbaa !7
  %14 = sub i16 %11, %13
  store i16 %14, i16* %0, align 2, !tbaa !7
  call void asm sideeffect "pcmpeqw %mm7, %mm7\0A\09psllw $$15, %mm7\0A\09psrlw $$14, %mm7\0A\09", "~{mm7},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !9
  %15 = add nsw i32 %5, -7
  %16 = icmp sgt i32 %1, 17
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = sext i32 %15 to i64
  br label %24

19:                                               ; preds = %24, %2
  %20 = add nsw i32 %4, -8
  %21 = icmp sgt i32 %1, 16
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = sext i32 %20 to i64
  br label %30

24:                                               ; preds = %17, %24
  %25 = phi i64 [ 1, %17 ], [ %28, %24 ]
  %26 = getelementptr inbounds i16, i16* %0, i64 %25
  %27 = getelementptr inbounds i16, i16* %10, i64 %25
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %26, i16* nonnull %27) #6, !srcloc !10
  %28 = add nuw nsw i64 %25, 8
  %29 = icmp slt i64 %28, %18
  br i1 %29, label %24, label %19, !llvm.loop !11

30:                                               ; preds = %22, %30
  %31 = phi i64 [ 0, %22 ], [ %34, %30 ]
  %32 = getelementptr inbounds i16, i16* %9, i64 %31
  %33 = getelementptr inbounds i16, i16* %0, i64 %31
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %32, i16* nonnull %33) #6, !srcloc !14
  %34 = add nuw nsw i64 %31, 8
  %35 = icmp slt i64 %34, %23
  br i1 %35, label %30, label %36, !llvm.loop !15

36:                                               ; preds = %30, %19
  %37 = load i16, i16* %0, align 2, !tbaa !7
  %38 = sext i16 %37 to i32
  %39 = load i16, i16* %12, align 2, !tbaa !7
  %40 = sext i16 %39 to i32
  %41 = shl nsw i32 %40, 1
  %42 = shl nsw i32 %38, 2
  %43 = or i32 %42, 1
  %44 = add nsw i32 %43, %41
  %45 = lshr i32 %44, 3
  %46 = trunc i32 %45 to i16
  %47 = add i16 %37, %46
  store i16 %47, i16* %0, align 2, !tbaa !7
  call void asm sideeffect "psllw $$2, %mm7\0A\09", "~{mm7},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !16
  %48 = icmp sgt i32 %1, 17
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = sext i32 %15 to i64
  br label %55

51:                                               ; preds = %55, %36
  %52 = icmp sgt i32 %1, 16
  br i1 %52, label %53, label %61

53:                                               ; preds = %51
  %54 = sext i32 %20 to i64
  br label %67

55:                                               ; preds = %49, %55
  %56 = phi i64 [ 1, %49 ], [ %59, %55 ]
  %57 = getelementptr inbounds i16, i16* %0, i64 %56
  %58 = getelementptr inbounds i16, i16* %10, i64 %56
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %57, i16* nonnull %58) #6, !srcloc !17
  %59 = add nuw nsw i64 %56, 8
  %60 = icmp slt i64 %59, %50
  br i1 %60, label %55, label %51, !llvm.loop !18

61:                                               ; preds = %67, %51
  %62 = add i32 %1, -2
  %63 = and i32 %62, 30
  %64 = icmp eq i32 %63, 30
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  %66 = sext i32 %62 to i64
  br label %81

67:                                               ; preds = %53, %67
  %68 = phi i64 [ 0, %53 ], [ %72, %67 ]
  %69 = getelementptr inbounds i16, i16* %9, i64 %68
  %70 = getelementptr inbounds i16, i16* %0, i64 %68
  %71 = getelementptr inbounds i16, i16* %7, i64 %68
  call void asm sideeffect "", "r,r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %69, i16* nonnull %70, i16* nonnull %71) #6, !srcloc !19
  %72 = add nuw nsw i64 %68, 8
  %73 = icmp slt i64 %72, %54
  br i1 %73, label %67, label %61, !llvm.loop !20

74:                                               ; preds = %81
  %75 = trunc i64 %82 to i32
  br label %76

76:                                               ; preds = %74, %61
  %77 = phi i32 [ %1, %61 ], [ %75, %74 ]
  %78 = icmp sgt i32 %77, 31
  br i1 %78, label %79, label %109

79:                                               ; preds = %76
  %80 = sext i32 %77 to i64
  br label %99

81:                                               ; preds = %65, %81
  %82 = phi i64 [ %66, %65 ], [ %95, %81 ]
  %83 = phi i32 [ %1, %65 ], [ %98, %81 ]
  %84 = trunc i64 %82 to i32
  %85 = ashr i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i16, i16* %7, i64 %86
  %88 = load i16, i16* %87, align 2, !tbaa !7
  %89 = add nsw i32 %83, -1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16, i16* %0, i64 %90
  store i16 %88, i16* %91, align 2, !tbaa !7
  %92 = getelementptr inbounds i16, i16* %0, i64 %86
  %93 = load i16, i16* %92, align 2, !tbaa !7
  %94 = getelementptr inbounds i16, i16* %0, i64 %82
  store i16 %93, i16* %94, align 2, !tbaa !7
  %95 = add i64 %82, -2
  %96 = and i64 %95, 30
  %97 = icmp eq i64 %96, 30
  %98 = trunc i64 %82 to i32
  br i1 %97, label %74, label %81, !llvm.loop !21

99:                                               ; preds = %79, %99
  %100 = phi i64 [ %80, %79 ], [ %101, %99 ]
  %101 = add nsw i64 %100, -32
  %102 = getelementptr inbounds i16, i16* %0, i64 %101
  %103 = trunc i64 %101 to i32
  %104 = ashr i32 %103, 1
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i16, i16* %0, i64 %105
  %107 = getelementptr inbounds i16, i16* %7, i64 %105
  call void asm sideeffect "", "r,r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %102, i16* nonnull %106, i16* nonnull %107) #6, !srcloc !22
  %108 = icmp sgt i64 %100, 63
  br i1 %108, label %99, label %109, !llvm.loop !23

109:                                              ; preds = %99, %76
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = alloca [32 x i16], align 16
  %2 = alloca [64 x i16], align 16
  %3 = bitcast [64 x i16]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) %3, i8 0, i64 128, i1 false)
  %4 = getelementptr inbounds [64 x i16], [64 x i16]* %2, i64 0, i64 0
  %5 = call i8* @llvm.stacksave()
  %6 = bitcast [32 x i16]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6)
  %7 = getelementptr inbounds [64 x i16], [64 x i16]* %2, i64 0, i64 31
  %8 = load i16, i16* %4, align 16, !tbaa !7
  %9 = getelementptr inbounds [64 x i16], [64 x i16]* %2, i64 0, i64 32
  %10 = load i16, i16* %9, align 16, !tbaa !7
  %11 = sub i16 %8, %10
  store i16 %11, i16* %4, align 16, !tbaa !7
  call void asm sideeffect "pcmpeqw %mm7, %mm7\0A\09psllw $$15, %mm7\0A\09psrlw $$14, %mm7\0A\09", "~{mm7},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !9
  br label %12

12:                                               ; preds = %12, %0
  %13 = phi i64 [ 1, %0 ], [ %16, %12 ]
  %14 = getelementptr inbounds [64 x i16], [64 x i16]* %2, i64 0, i64 %13
  %15 = getelementptr inbounds i16, i16* %7, i64 %13
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %14, i16* nonnull %15) #6, !srcloc !10
  %16 = add nuw nsw i64 %13, 8
  %17 = icmp ult i64 %13, 17
  br i1 %17, label %12, label %18, !llvm.loop !11

18:                                               ; preds = %12
  %19 = getelementptr inbounds [64 x i16], [64 x i16]* %2, i64 0, i64 32
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ %24, %20 ], [ 0, %18 ]
  %22 = getelementptr inbounds i16, i16* %19, i64 %21
  %23 = getelementptr inbounds [64 x i16], [64 x i16]* %2, i64 0, i64 %21
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %22, i16* nonnull %23) #6, !srcloc !14
  %24 = add nuw nsw i64 %21, 8
  %25 = icmp ult i64 %21, 16
  br i1 %25, label %20, label %26, !llvm.loop !15

26:                                               ; preds = %20
  %27 = load i16, i16* %4, align 16, !tbaa !7
  %28 = sext i16 %27 to i32
  %29 = load i16, i16* %9, align 16, !tbaa !7
  %30 = sext i16 %29 to i32
  %31 = shl nsw i32 %30, 1
  %32 = shl nsw i32 %28, 2
  %33 = or i32 %32, 1
  %34 = add nsw i32 %33, %31
  %35 = lshr i32 %34, 3
  %36 = trunc i32 %35 to i16
  %37 = add i16 %27, %36
  store i16 %37, i16* %4, align 16, !tbaa !7
  call void asm sideeffect "psllw $$2, %mm7\0A\09", "~{mm7},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !16
  br label %38

38:                                               ; preds = %38, %26
  %39 = phi i64 [ 1, %26 ], [ %42, %38 ]
  %40 = getelementptr inbounds [64 x i16], [64 x i16]* %2, i64 0, i64 %39
  %41 = getelementptr inbounds i16, i16* %7, i64 %39
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %40, i16* nonnull %41) #6, !srcloc !17
  %42 = add nuw nsw i64 %39, 8
  %43 = icmp ult i64 %39, 17
  br i1 %43, label %38, label %44, !llvm.loop !18

44:                                               ; preds = %38, %44
  %45 = phi i64 [ %49, %44 ], [ 0, %38 ]
  %46 = getelementptr inbounds i16, i16* %19, i64 %45
  %47 = getelementptr inbounds [64 x i16], [64 x i16]* %2, i64 0, i64 %45
  %48 = getelementptr inbounds [32 x i16], [32 x i16]* %1, i64 0, i64 %45
  call void asm sideeffect "", "r,r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %46, i16* nonnull %47, i16* nonnull %48) #6, !srcloc !19
  %49 = add nuw nsw i64 %45, 8
  %50 = icmp ult i64 %45, 16
  br i1 %50, label %44, label %51, !llvm.loop !20

51:                                               ; preds = %44, %51
  %52 = phi i64 [ %53, %51 ], [ 64, %44 ]
  %53 = add nsw i64 %52, -32
  %54 = getelementptr inbounds [64 x i16], [64 x i16]* %2, i64 0, i64 %53
  %55 = trunc i64 %53 to i32
  %56 = ashr exact i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [64 x i16], [64 x i16]* %2, i64 0, i64 %57
  %59 = getelementptr inbounds [32 x i16], [32 x i16]* %1, i64 0, i64 %57
  call void asm sideeffect "", "r,r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %54, i16* nonnull %58, i16* nonnull %59) #6, !srcloc !22
  %60 = icmp ugt i64 %52, 63
  br i1 %60, label %51, label %61, !llvm.loop !23

61:                                               ; preds = %51
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6)
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{i64 1224, i64 1247, i64 1282, i64 1317}
!10 = !{i64 1499}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{i64 1807}
!15 = distinct !{!15, !12, !13}
!16 = !{i64 2127, i64 2145}
!17 = !{i64 2241}
!18 = distinct !{!18, !12, !13}
!19 = !{i64 2529}
!20 = distinct !{!20, !12, !13}
!21 = distinct !{!21, !12, !13}
!22 = !{i64 2991}
!23 = distinct !{!23, !12, !13}

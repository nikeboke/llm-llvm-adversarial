; ModuleID = 'gen_op_arith_subf_obf.bc'
source_filename = "gen_op_arith_subf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCGv = type { i8*, i32 }
%struct.DisasContext = type { i32 }

@tcg_temp_local_new.counter = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"MOV %s(%d) <- %s(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"MOVI %s <- %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ADD %s = %s(%d) + %s(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"SUB %s = %s(%d) - %s(%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"NOT %s = ~%s(%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Compute CA from %s(%d), sub = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Compute OV from %s(%d), %s(%d), sub = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Set Rc0 based on result: %s(%d)\0A\00", align 1
@cpu_ca = dso_local local_unnamed_addr global %struct.TCGv* null, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@cpu_ov = dso_local local_unnamed_addr global %struct.TCGv* null, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"OV\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"arg2\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Final result in %s = %d\0A\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0
@x.3 = common global i32 0
@y.4 = common global i32 0
@x.5 = common global i32 0
@y.6 = common global i32 0
@x.7 = common global i32 0
@y.8 = common global i32 0
@x.9 = common global i32 0
@y.10 = common global i32 0
@x.11 = common global i32 0
@y.12 = common global i32 0
@x.13 = common global i32 0
@y.14 = common global i32 0
@x.15 = common global i32 0
@y.16 = common global i32 0
@x.17 = common global i32 0
@y.18 = common global i32 0
@x.19 = common global i32 0
@y.20 = common global i32 0
@x.21 = common global i32 0
@y.22 = common global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @Rc(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @x, align 4
  %3 = load i32, i32* @y, align 4
  %4 = add i32 %2, -854511839
  %5 = sub i32 %4, 1
  %6 = sub i32 %5, -854511839
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  %12 = xor i1 %10, true
  %13 = xor i1 %11, true
  br label %.split

.split:                                           ; preds = %1
  %14 = xor i1 true, true
  %15 = and i1 %12, true
  %16 = and i1 %10, %14
  %17 = and i1 %13, true
  %18 = and i1 %11, %14
  %19 = or i1 %15, %16
  %20 = or i1 %17, %18
  %21 = xor i1 %19, %20
  %22 = or i1 %12, %13
  %23 = xor i1 %22, true
  %24 = or i1 true, %14
  %25 = and i1 %23, %24
  br label %.split.split

.split.split:                                     ; preds = %.split
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %28 = xor i32 1, -1
  %29 = xor i32 %0, %28
  %30 = and i32 %29, %0
  %31 = and i32 %0, 1
  %32 = load i32, i32* @x, align 4
  %33 = load i32, i32* @y, align 4
  %34 = sub i32 %32, 1248096772
  %35 = sub i32 %34, 1
  %36 = add i32 %35, 1248096772
  %37 = sub i32 %32, 1
  %38 = mul i32 %32, %36
  %39 = urem i32 %38, 2
  %40 = icmp eq i32 %39, 0
  %41 = icmp slt i32 %33, 10
  %42 = xor i1 %40, true
  %43 = xor i1 %41, true
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %44 = xor i1 true, true
  %45 = and i1 %42, true
  %46 = and i1 %40, %44
  %47 = and i1 %43, true
  %48 = and i1 %41, %44
  %49 = or i1 %45, %46
  %50 = or i1 %47, %48
  %51 = xor i1 %49, %50
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %52 = or i1 %42, %43
  %53 = xor i1 %52, true
  %54 = or i1 true, %44
  %55 = and i1 %53, %54
  %56 = or i1 %51, %55
  %57 = or i1 %40, %41
  br i1 %56, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 %30

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %58 = sub i32 0, 1
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %59 = add i32 %0, %58
  %_ = sub i32 %0, 1
  %gen = mul i32 %59, 1
  %_1 = shl i32 %0, 1
  %_2 = shl i32 %0, 1
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  %60 = xor i32 1, -1
  %61 = xor i32 %0, %60
  %62 = and i32 %61, %0
  %63 = and i32 %0, 1
  br label %originalBB
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.TCGv* @tcg_temp_local_new() local_unnamed_addr #1 {
  %1 = load i32, i32* @x.1, align 4
  %2 = load i32, i32* @y.2, align 4
  br label %.split

.split:                                           ; preds = %0
  %3 = sub i32 %1, -714752404
  %4 = sub i32 %3, 1
  %5 = add i32 %4, -714752404
  %6 = sub i32 %1, 1
  %7 = mul i32 %1, %5
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %2, 10
  %11 = and i1 %9, %10
  %12 = xor i1 %9, %10
  %13 = or i1 %11, %12
  br label %.split.split

.split.split:                                     ; preds = %.split
  %14 = or i1 %9, %10
  br i1 %13, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %15 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  %16 = bitcast i8* %15 to %struct.TCGv*
  %17 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %16, i64 0, i32 0
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %17, align 8, !tbaa !3
  %18 = load i32, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %19 = sub i32 0, %18
  %20 = sub i32 0, 1
  %21 = add i32 %19, %20
  %22 = sub i32 0, %21
  %23 = add nsw i32 %18, 1
  store i32 %22, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %24 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %16, i64 0, i32 1
  store i32 %22, i32* %24, align 8, !tbaa !10
  %25 = load i32, i32* @x.1, align 4
  %26 = load i32, i32* @y.2, align 4
  %27 = sub i32 %25, -1959236890
  %28 = sub i32 %27, 1
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %29 = add i32 %28, -1959236890
  %30 = sub i32 %25, 1
  %31 = mul i32 %25, %29
  %32 = urem i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = icmp slt i32 %26, 10
  %35 = and i1 %33, %34
  %36 = xor i1 %33, %34
  %37 = or i1 %35, %36
  %38 = or i1 %33, %34
  br i1 %37, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret %struct.TCGv* %16

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %39 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  %40 = bitcast i8* %39 to %struct.TCGv*
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %41 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %40, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %41, align 8, !tbaa !3
  %42 = load i32, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %43 = sub i32 0, 1
  %44 = add i32 %42, %43
  %_ = sub i32 %42, 1
  %gen = mul i32 %44, 1
  %45 = sub i32 0, -1344723298
  %46 = sub i32 %45, %42
  %47 = add i32 %46, -1344723298
  %_1 = sub i32 0, %42
  %48 = add i32 %47, -336383682
  %49 = add i32 %48, 1
  %50 = sub i32 %49, -336383682
  %gen2 = add i32 %47, 1
  %51 = sub i32 %42, -224860672
  %52 = sub i32 %51, 1
  %53 = add i32 %52, -224860672
  %_3 = sub i32 %42, 1
  %gen4 = mul i32 %53, 1
  %54 = sub i32 0, 1
  %55 = add i32 %42, %54
  %_5 = sub i32 %42, 1
  %gen6 = mul i32 %55, 1
  %56 = sub i32 %42, -1298214357
  %57 = sub i32 %56, 1
  %58 = add i32 %57, -1298214357
  %_7 = sub i32 %42, 1
  %gen8 = mul i32 %58, 1
  %59 = sub i32 0, %42
  %60 = add i32 0, %59
  %_9 = sub i32 0, %42
  %61 = sub i32 0, %60
  %62 = sub i32 0, 1
  %63 = add i32 %61, %62
  %64 = sub i32 0, %63
  %gen10 = add i32 %60, 1
  %65 = add i32 %42, 1858353367
  %66 = add i32 %65, 1
  %67 = sub i32 %66, 1858353367
  %68 = add nsw i32 %42, 1
  store i32 %67, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %69 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %40, i64 0, i32 1
  store i32 %67, i32* %69, align 8, !tbaa !10
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @tcg_temp_free(%struct.TCGv* nocapture noundef %0) local_unnamed_addr #3 {
  %2 = bitcast %struct.TCGv* %0 to i8*
  br label %.split

.split:                                           ; preds = %1
  call void @free(i8* noundef %2) #8
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local void @tcg_gen_mov_tl(%struct.TCGv* nocapture noundef readonly %0, %struct.TCGv* nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !3
  %5 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 8, !tbaa !10
  br label %.split

.split:                                           ; preds = %2
  %7 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 0
  br label %.split.split

.split.split:                                     ; preds = %.split
  %8 = load i8*, i8** %7, align 8, !tbaa !3
  %9 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 1
  %10 = load i32, i32* %9, align 8, !tbaa !10
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* noundef %4, i32 noundef %6, i8* noundef %8, i32 noundef %10)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local void @tcg_gen_movi_tl(%struct.TCGv* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = load i32, i32* @x.7, align 4
  %4 = load i32, i32* @y.8, align 4
  %5 = sub i32 0, 1
  br label %.split

.split:                                           ; preds = %2
  %6 = add i32 %3, %5
  %7 = sub i32 %3, 1
  %8 = mul i32 %3, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %4, 10
  %12 = and i1 %10, %11
  %13 = xor i1 %10, %11
  br label %.split.split

.split.split:                                     ; preds = %.split
  %14 = or i1 %12, %13
  %15 = or i1 %10, %11
  br i1 %14, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %16 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8, !tbaa !3
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %17, i32 noundef %1)
  %19 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 1
  store i32 %1, i32* %19, align 8, !tbaa !10
  %20 = load i32, i32* @x.7, align 4
  %21 = load i32, i32* @y.8, align 4
  %22 = add i32 %20, 156903499
  %23 = sub i32 %22, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %24 = sub i32 %23, 156903499
  %25 = sub i32 %20, 1
  %26 = mul i32 %20, %24
  %27 = urem i32 %26, 2
  %28 = icmp eq i32 %27, 0
  %29 = icmp slt i32 %21, 10
  %30 = xor i1 %28, true
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %31 = xor i1 %29, true
  %32 = xor i1 true, true
  %33 = and i1 %30, true
  %34 = and i1 %28, %32
  %35 = and i1 %31, true
  %36 = and i1 %29, %32
  %37 = or i1 %33, %34
  %38 = or i1 %35, %36
  %39 = xor i1 %37, %38
  %40 = or i1 %30, %31
  %41 = xor i1 %40, true
  %42 = or i1 true, %32
  %43 = and i1 %41, %42
  %44 = or i1 %39, %43
  %45 = or i1 %28, %29
  br i1 %44, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %46 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 0
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %47 = load i8*, i8** %46, align 8, !tbaa !3
  %48 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %47, i32 noundef %1)
  %49 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 1
  store i32 %1, i32* %49, align 8, !tbaa !10
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @tcg_gen_add_tl(%struct.TCGv* nocapture noundef %0, %struct.TCGv* nocapture noundef readonly %1, %struct.TCGv* nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 1
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 1
  %7 = load i32, i32* %6, align 8, !tbaa !10
  %8 = sub i32 0, %7
  br label %.split

.split:                                           ; preds = %3
  %9 = sub i32 0, %5
  %10 = add i32 %8, %9
  %11 = sub i32 0, %10
  %12 = add nsw i32 %7, %5
  %13 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 1
  store i32 %11, i32* %13, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !3
  %16 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8, !tbaa !3
  %18 = load i32, i32* %4, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 0
  br label %.split.split

.split.split:                                     ; preds = %.split
  %20 = load i8*, i8** %19, align 8, !tbaa !3
  %21 = load i32, i32* %6, align 8, !tbaa !10
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef %15, i8* noundef %17, i32 noundef %18, i8* noundef %20, i32 noundef %21)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @tcg_gen_sub_tl(%struct.TCGv* nocapture noundef %0, %struct.TCGv* nocapture noundef readonly %1, %struct.TCGv* nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 1
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 1
  %7 = load i32, i32* %6, align 8, !tbaa !10
  %8 = sub i32 0, %7
  %9 = add i32 %5, %8
  %10 = sub nsw i32 %5, %7
  br label %.split

.split:                                           ; preds = %3
  %11 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 1
  store i32 %9, i32* %11, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !3
  br label %.split.split

.split.split:                                     ; preds = %.split
  %14 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !3
  %16 = load i32, i32* %4, align 8, !tbaa !10
  %17 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !3
  %19 = load i32, i32* %6, align 8, !tbaa !10
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef %13, i8* noundef %15, i32 noundef %16, i8* noundef %18, i32 noundef %19)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @tcg_gen_not_tl(%struct.TCGv* nocapture noundef %0, %struct.TCGv* nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !10
  %5 = xor i32 %4, -1
  br label %.split

.split:                                           ; preds = %2
  %6 = and i32 -1, %5
  %7 = xor i32 -1, -1
  %8 = and i32 %4, %7
  %9 = or i32 %6, %8
  %10 = xor i32 %4, -1
  %11 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 1
  store i32 %9, i32* %11, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !3
  br label %.split.split

.split.split:                                     ; preds = %.split
  %14 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !3
  %16 = load i32, i32* %3, align 8, !tbaa !10
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* noundef %13, i8* noundef %15, i32 noundef %16)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @gen_op_arith_compute_ca(%struct.DisasContext* nocapture readnone %0, %struct.TCGv* nocapture readnone %1, %struct.TCGv* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = load i32, i32* @x.15, align 4
  %6 = load i32, i32* @y.16, align 4
  %7 = add i32 %5, -185779290
  %8 = sub i32 %7, 1
  %9 = sub i32 %8, -185779290
  %10 = sub i32 %5, 1
  br label %.split

.split:                                           ; preds = %4
  %11 = mul i32 %5, %9
  %12 = urem i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br label %.split.split

.split.split:                                     ; preds = %.split
  %14 = icmp slt i32 %6, 10
  %15 = xor i1 %13, true
  %16 = xor i1 %14, true
  %17 = xor i1 false, true
  %18 = and i1 %15, false
  %19 = and i1 %13, %17
  %20 = and i1 %16, false
  %21 = and i1 %14, %17
  %22 = or i1 %18, %19
  %23 = or i1 %20, %21
  %24 = xor i1 %22, %23
  %25 = or i1 %15, %16
  %26 = xor i1 %25, true
  %27 = or i1 false, %17
  %28 = and i1 %26, %27
  %29 = or i1 %24, %28
  %30 = or i1 %13, %14
  br i1 %29, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %31 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 0
  %32 = load i8*, i8** %31, align 8, !tbaa !3
  %33 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 1
  %34 = load i32, i32* %33, align 8, !tbaa !10
  %35 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* noundef %32, i32 noundef %34, i32 noundef %3)
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %36 = load i32, i32* @x.15, align 4
  %37 = load i32, i32* @y.16, align 4
  %38 = sub i32 0, 1
  %39 = add i32 %36, %38
  %40 = sub i32 %36, 1
  %41 = mul i32 %36, %39
  %42 = urem i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %44 = icmp slt i32 %37, 10
  %45 = and i1 %43, %44
  %46 = xor i1 %43, %44
  %47 = or i1 %45, %46
  %48 = or i1 %43, %44
  br i1 %47, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %49 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 0
  %50 = load i8*, i8** %49, align 8, !tbaa !3
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %51 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 1
  %52 = load i32, i32* %51, align 8, !tbaa !10
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* noundef %50, i32 noundef %52, i32 noundef %3)
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @gen_op_arith_compute_ov(%struct.DisasContext* nocapture readnone %0, %struct.TCGv* nocapture readnone %1, %struct.TCGv* nocapture noundef readonly %2, %struct.TCGv* nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !3
  %8 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 1
  %9 = load i32, i32* %8, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %3, i64 0, i32 0
  br label %.split

.split:                                           ; preds = %5
  %11 = load i8*, i8** %10, align 8, !tbaa !3
  %12 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %3, i64 0, i32 1
  %13 = load i32, i32* %12, align 8, !tbaa !10
  br label %.split.split

.split.split:                                     ; preds = %.split
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* noundef %7, i32 noundef %9, i8* noundef %11, i32 noundef %13, i32 noundef %4)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @gen_set_Rc0(%struct.DisasContext* nocapture readnone %0, %struct.TCGv* nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !3
  br label %.split

.split:                                           ; preds = %2
  %5 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 1
  %6 = load i32, i32* %5, align 8, !tbaa !10
  br label %.split.split

.split.split:                                     ; preds = %.split
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* noundef %4, i32 noundef %6)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #7 {
  %.reload84.reg2mem = alloca %struct.TCGv*, align 8
  %.reg2mem77 = alloca i8**, align 8
  %.reg2mem69 = alloca i32*, align 8
  %.reg2mem67 = alloca i1, align 1
  %.reg2mem65 = alloca i1, align 1
  %.reg2mem59 = alloca i32*, align 8
  %.reg2mem53 = alloca i8**, align 8
  %.reg2mem49 = alloca i8*, align 8
  %.reg2mem44 = alloca i32*, align 8
  %.reg2mem39 = alloca i8**, align 8
  %.reg2mem35 = alloca i8*, align 8
  %.reg2mem30 = alloca i32*, align 8
  %.reg2mem25 = alloca i8**, align 8
  %.reg2mem20 = alloca %struct.TCGv*, align 8
  %.reg2mem15 = alloca i8*, align 8
  %.reg2mem11 = alloca i32*, align 8
  %.reg2mem4 = alloca i32, align 4
  %.reg2mem = alloca i8**, align 8
  %1 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  %2 = bitcast i8* %1 to %struct.TCGv*
  %3 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 0
  store i8** %3, i8*** %.reg2mem, align 8
  %.reload3 = load i8**, i8*** %.reg2mem, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %.reload3, align 8, !tbaa !3
  %4 = load i32, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  store i32 %4, i32* %.reg2mem4, align 4
  %.reload10 = load i32, i32* %.reg2mem4, align 4
  %5 = sub i32 0, 1
  %6 = sub i32 %.reload10, %5
  %7 = add nsw i32 %.reload10, 1
  store i32 %6, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %8 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 1
  store i32* %8, i32** %.reg2mem11, align 8
  %.reload14 = load i32*, i32** %.reg2mem11, align 8
  store i32 %6, i32* %.reload14, align 8, !tbaa !10
  store i8* %1, i8** bitcast (%struct.TCGv** @cpu_ca to i8**), align 8, !tbaa !11
  %.reload2 = load i8**, i8*** %.reg2mem, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %.reload2, align 8, !tbaa !3
  %.reload13 = load i32*, i32** %.reg2mem11, align 8
  store i32 1, i32* %.reload13, align 8, !tbaa !10
  %9 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  %10 = bitcast i8* %9 to %struct.TCGv*
  %11 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %10, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11, align 8, !tbaa !3
  %.reload9 = load i32, i32* %.reg2mem4, align 4
  %12 = sub i32 %.reload9, 1217386052
  %13 = add i32 %12, 2
  %14 = add i32 %13, 1217386052
  br label %.split

.split:                                           ; preds = %0
  %15 = add nsw i32 %.reload9, 2
  store i32 %14, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %16 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %10, i64 0, i32 1
  store i32 %14, i32* %16, align 8, !tbaa !10
  store i8* %9, i8** bitcast (%struct.TCGv** @cpu_ov to i8**), align 8, !tbaa !11
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %11, align 8, !tbaa !3
  store i32 0, i32* %16, align 8, !tbaa !10
  %17 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  store i8* %17, i8** %.reg2mem15, align 8
  %.reload19 = load i8*, i8** %.reg2mem15, align 8
  %18 = bitcast i8* %.reload19 to %struct.TCGv*
  store %struct.TCGv* %18, %struct.TCGv** %.reg2mem20, align 8
  %.reload24 = load %struct.TCGv*, %struct.TCGv** %.reg2mem20, align 8
  %19 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %.reload24, i64 0, i32 0
  store i8** %19, i8*** %.reg2mem25, align 8
  %.reload29 = load i8**, i8*** %.reg2mem25, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %.reload29, align 8, !tbaa !3
  %.reload8 = load i32, i32* %.reg2mem4, align 4
  %20 = sub i32 %.reload8, 732392576
  %21 = add i32 %20, 3
  %22 = add i32 %21, 732392576
  %23 = add nsw i32 %.reload8, 3
  store i32 %22, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %.reload23 = load %struct.TCGv*, %struct.TCGv** %.reg2mem20, align 8
  %24 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %.reload23, i64 0, i32 1
  store i32* %24, i32** %.reg2mem30, align 8
  %.reload34 = load i32*, i32** %.reg2mem30, align 8
  store i32 %22, i32* %.reload34, align 8, !tbaa !10
  %.reload27 = load i8**, i8*** %.reg2mem25, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %.reload27, align 8, !tbaa !3
  %.reload32 = load i32*, i32** %.reg2mem30, align 8
  store i32 0, i32* %.reload32, align 8, !tbaa !10
  %25 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  store i8* %25, i8** %.reg2mem35, align 8
  %.reload38 = load i8*, i8** %.reg2mem35, align 8
  %26 = bitcast i8* %.reload38 to %struct.TCGv*
  %27 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %26, i64 0, i32 0
  store i8** %27, i8*** %.reg2mem39, align 8
  %.reload43 = load i8**, i8*** %.reg2mem39, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %.reload43, align 8, !tbaa !3
  %.reload7 = load i32, i32* %.reg2mem4, align 4
  %28 = sub i32 0, 4
  %29 = sub i32 %.reload7, %28
  %30 = add nsw i32 %.reload7, 4
  store i32 %29, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %31 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %26, i64 0, i32 1
  store i32* %31, i32** %.reg2mem44, align 8
  %.reload48 = load i32*, i32** %.reg2mem44, align 8
  store i32 %29, i32* %.reload48, align 8, !tbaa !10
  %.reload42 = load i8**, i8*** %.reg2mem39, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %.reload42, align 8, !tbaa !3
  %.reload47 = load i32*, i32** %.reg2mem44, align 8
  store i32 5, i32* %.reload47, align 8, !tbaa !10
  %32 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  store i8* %32, i8** %.reg2mem49, align 8
  %.reload52 = load i8*, i8** %.reg2mem49, align 8
  %33 = bitcast i8* %.reload52 to %struct.TCGv*
  %34 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %33, i64 0, i32 0
  store i8** %34, i8*** %.reg2mem53, align 8
  %.reload58 = load i8**, i8*** %.reg2mem53, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %.reload58, align 8, !tbaa !3
  %.reload6 = load i32, i32* %.reg2mem4, align 4
  %35 = add i32 %.reload6, 1080691032
  %36 = add i32 %35, 5
  %37 = sub i32 %36, 1080691032
  %38 = add nsw i32 %.reload6, 5
  store i32 %37, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %39 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %33, i64 0, i32 1
  store i32* %39, i32** %.reg2mem59, align 8
  br label %.split.split

.split.split:                                     ; preds = %.split
  %.reload64 = load i32*, i32** %.reg2mem59, align 8
  store i32 %37, i32* %.reload64, align 8, !tbaa !10
  %.reload57 = load i8**, i8*** %.reg2mem53, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %.reload57, align 8, !tbaa !3
  %.reload63 = load i32*, i32** %.reg2mem59, align 8
  store i32 10, i32* %.reload63, align 8, !tbaa !10
  %.reload17 = load i8*, i8** %.reg2mem15, align 8
  %.reload36 = load i8*, i8** %.reg2mem35, align 8
  %40 = icmp eq i8* %.reload17, %.reload36
  store i1 %40, i1* %.reg2mem65, align 1
  %.reload16 = load i8*, i8** %.reg2mem15, align 8
  %.reload50 = load i8*, i8** %.reg2mem49, align 8
  %41 = icmp eq i8* %.reload16, %.reload50
  store i1 %41, i1* %.reg2mem67, align 1
  %switchVar = alloca i32, align 4
  store i32 1076109466, i32* %switchVar, align 4
  %.reg2mem83 = alloca %struct.TCGv*, align 8
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 1076109466, label %first
    i32 -642211240, label %75
    i32 1887948731, label %84
    i32 389741296, label %175
    i32 -1387343462, label %182
  ]

switchDefault:                                    ; preds = %loopEntry.split
  %42 = load i32, i32* @x.21, align 4
  %43 = load i32, i32* @y.22, align 4
  %44 = add i32 %42, 158482094
  %45 = sub i32 %44, 1
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %46 = sub i32 %45, 158482094
  %47 = sub i32 %42, 1
  %48 = mul i32 %42, %46
  %49 = urem i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %51 = icmp slt i32 %43, 10
  %52 = and i1 %50, %51
  %53 = xor i1 %50, %51
  %54 = or i1 %52, %53
  %55 = or i1 %50, %51
  br i1 %54, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %switchDefault.split.split, %originalBBalteredBB
  %56 = load i32, i32* @x.21, align 4
  %57 = load i32, i32* @y.22, align 4
  %58 = sub i32 %56, 442188329
  %59 = sub i32 %58, 1
  %60 = add i32 %59, 442188329
  %61 = sub i32 %56, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %62 = mul i32 %56, %60
  %63 = urem i32 %62, 2
  %64 = icmp eq i32 %63, 0
  %65 = icmp slt i32 %57, 10
  %66 = and i1 %64, %65
  %67 = xor i1 %64, %65
  %68 = or i1 %66, %67
  %69 = or i1 %64, %65
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  br i1 %68, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload66 = load i1, i1* %.reg2mem65, align 1
  %.reload68 = load i1, i1* %.reg2mem67, align 1
  %70 = and i1 %.reload66, %.reload68
  br label %first.split

first.split:                                      ; preds = %first
  %71 = xor i1 %.reload66, %.reload68
  %72 = or i1 %70, %71
  %73 = or i1 %.reload66, %.reload68
  %74 = select i1 %72, i32 -642211240, i32 1887948731
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  store i32 %74, i32* %switchVar, align 4
  %.reload21 = load %struct.TCGv*, %struct.TCGv** %.reg2mem20, align 8
  store %struct.TCGv* %.reload21, %struct.TCGv** %.reg2mem83, align 8
  br label %loopEnd

75:                                               ; preds = %loopEntry.split
  %76 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  br label %.split118

.split118:                                        ; preds = %75
  %77 = bitcast i8* %76 to %struct.TCGv*
  %78 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %77, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %78, align 8, !tbaa !3
  %.reload5 = load i32, i32* %.reg2mem4, align 4
  br label %.split118.split

.split118.split:                                  ; preds = %.split118
  %79 = add i32 %.reload5, -652904257
  %80 = add i32 %79, 6
  %81 = sub i32 %80, -652904257
  %82 = add nsw i32 %.reload5, 6
  store i32 %81, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %83 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %77, i64 0, i32 1
  store i32 %81, i32* %83, align 8, !tbaa !10
  store i32 1887948731, i32* %switchVar, align 4
  store %struct.TCGv* %77, %struct.TCGv** %.reg2mem83, align 8
  br label %loopEnd

84:                                               ; preds = %loopEntry.split
  %85 = load i32, i32* @x.21, align 4
  %86 = load i32, i32* @y.22, align 4
  %87 = add i32 %85, 651717107
  %88 = sub i32 %87, 1
  %89 = sub i32 %88, 651717107
  %90 = sub i32 %85, 1
  %91 = mul i32 %85, %89
  %92 = urem i32 %91, 2
  %93 = icmp eq i32 %92, 0
  %94 = icmp slt i32 %86, 10
  %95 = and i1 %93, %94
  %96 = xor i1 %93, %94
  br label %.split119

.split119:                                        ; preds = %84
  %97 = or i1 %95, %96
  %98 = or i1 %93, %94
  br label %.split119.split

.split119.split:                                  ; preds = %.split119
  br i1 %97, label %originalBB88, label %originalBB88alteredBB

originalBB88:                                     ; preds = %.split119.split, %originalBB88alteredBB.split.split
  %.reload84 = load %struct.TCGv*, %struct.TCGv** %.reg2mem83, align 8
  store %struct.TCGv* %.reload84, %struct.TCGv** %.reload84.reg2mem, align 8
  %99 = load i32, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %100 = sub i32 0, 1
  %101 = sub i32 %99, %100
  %102 = add nsw i32 %99, 1
  store i32 %101, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %.reload = load i8**, i8*** %.reg2mem, align 8
  %103 = load i8*, i8** %.reload, align 8, !tbaa !3
  %.reload12 = load i32*, i32** %.reg2mem11, align 8
  %104 = load i32, i32* %.reload12, align 8, !tbaa !10
  %105 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %101, i8* noundef %103, i32 noundef %104) #8
  %106 = load %struct.TCGv*, %struct.TCGv** @cpu_ca, align 8, !tbaa !11
  %107 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %106, i64 0, i32 0
  %108 = load i8*, i8** %107, align 8, !tbaa !3
  %109 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %108, i32 noundef 0) #8
  %110 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %106, i64 0, i32 1
  store i32 0, i32* %110, align 8, !tbaa !10
  %111 = load %struct.TCGv*, %struct.TCGv** @cpu_ov, align 8, !tbaa !11
  %112 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %111, i64 0, i32 0
  %113 = load i8*, i8** %112, align 8, !tbaa !3
  %114 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %113, i32 noundef 0) #8
  %115 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %111, i64 0, i32 1
  store i32 0, i32* %115, align 8, !tbaa !10
  %.reload45 = load i32*, i32** %.reg2mem44, align 8
  %116 = load i32, i32* %.reload45, align 8, !tbaa !10
  %117 = xor i32 %116, -1
  %118 = and i32 -896425081, %117
  %119 = xor i32 -896425081, -1
  %120 = and i32 %116, %119
  %121 = xor i32 -1, -1
  %122 = and i32 %121, -896425081
  %123 = and i32 -1, %119
  %124 = or i32 %118, %120
  %125 = or i32 %122, %123
  %126 = xor i32 %124, %125
  %127 = xor i32 %116, -1
  %.reload84.reload = load %struct.TCGv*, %struct.TCGv** %.reload84.reg2mem, align 8
  %128 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %.reload84.reload, i64 0, i32 1
  store i32* %128, i32** %.reg2mem69, align 8
  br label %originalBB88.split

originalBB88.split:                               ; preds = %originalBB88
  %.reload76 = load i32*, i32** %.reg2mem69, align 8
  store i32 %126, i32* %.reload76, align 8, !tbaa !10
  %.reload84.reload85 = load %struct.TCGv*, %struct.TCGv** %.reload84.reg2mem, align 8
  %129 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %.reload84.reload85, i64 0, i32 0
  store i8** %129, i8*** %.reg2mem77, align 8
  %.reload82 = load i8**, i8*** %.reg2mem77, align 8
  %130 = load i8*, i8** %.reload82, align 8, !tbaa !3
  %.reload40 = load i8**, i8*** %.reg2mem39, align 8
  %131 = load i8*, i8** %.reload40, align 8, !tbaa !3
  %132 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* noundef %130, i8* noundef %131, i32 noundef %116) #8
  %.reload75 = load i32*, i32** %.reg2mem69, align 8
  %133 = load i32, i32* %.reload75, align 8, !tbaa !10
  %.reload60 = load i32*, i32** %.reg2mem59, align 8
  %134 = load i32, i32* %.reload60, align 8, !tbaa !10
  %135 = sub i32 0, %133
  %136 = sub i32 %134, %135
  %137 = add nsw i32 %134, %133
  %.reload74 = load i32*, i32** %.reg2mem69, align 8
  store i32 %136, i32* %.reload74, align 8, !tbaa !10
  %.reload81 = load i8**, i8*** %.reg2mem77, align 8
  %138 = load i8*, i8** %.reload81, align 8, !tbaa !3
  %.reload54 = load i8**, i8*** %.reg2mem53, align 8
  %139 = load i8*, i8** %.reload54, align 8, !tbaa !3
  %140 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef %138, i8* noundef %138, i32 noundef %136, i8* noundef %139, i32 noundef %134) #8
  %.reload55 = load i8**, i8*** %.reg2mem53, align 8
  %141 = load i8*, i8** %.reload55, align 8, !tbaa !3
  %.reload61 = load i32*, i32** %.reg2mem59, align 8
  %142 = load i32, i32* %.reload61, align 8, !tbaa !10
  %143 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* noundef %141, i32 noundef %142, i32 noundef 0) #8
  %.reload73 = load i32*, i32** %.reg2mem69, align 8
  %144 = load i32, i32* %.reload73, align 8, !tbaa !10
  %145 = sub i32 0, %101
  %146 = sub i32 %144, %145
  %147 = add nsw i32 %144, %101
  %.reload72 = load i32*, i32** %.reg2mem69, align 8
  store i32 %146, i32* %.reload72, align 8, !tbaa !10
  %.reload80 = load i8**, i8*** %.reg2mem77, align 8
  %148 = load i8*, i8** %.reload80, align 8, !tbaa !3
  %149 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef %148, i8* noundef %148, i32 noundef %146, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %101) #8
  %150 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %101, i32 noundef 0) #8
  %.reload41 = load i8**, i8*** %.reg2mem39, align 8
  %151 = load i8*, i8** %.reload41, align 8, !tbaa !3
  %.reload46 = load i32*, i32** %.reg2mem44, align 8
  %152 = load i32, i32* %.reload46, align 8, !tbaa !10
  %.reload56 = load i8**, i8*** %.reg2mem53, align 8
  %153 = load i8*, i8** %.reload56, align 8, !tbaa !3
  %.reload62 = load i32*, i32** %.reg2mem59, align 8
  %154 = load i32, i32* %.reload62, align 8, !tbaa !10
  %155 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* noundef %151, i32 noundef %152, i8* noundef %153, i32 noundef %154, i32 noundef 1) #8
  %.reload79 = load i8**, i8*** %.reg2mem77, align 8
  %156 = load i8*, i8** %.reload79, align 8, !tbaa !3
  %.reload71 = load i32*, i32** %.reg2mem69, align 8
  %157 = load i32, i32* %.reload71, align 8, !tbaa !10
  %158 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* noundef %156, i32 noundef %157) #8
  %.reload22 = load %struct.TCGv*, %struct.TCGv** %.reg2mem20, align 8
  %.reload84.reload86 = load %struct.TCGv*, %struct.TCGv** %.reload84.reg2mem, align 8
  %159 = icmp eq %struct.TCGv* %.reload84.reload86, %.reload22
  %160 = select i1 %159, i32 -1387343462, i32 389741296
  store i32 %160, i32* %switchVar, align 4
  %161 = load i32, i32* @x.21, align 4
  %162 = load i32, i32* @y.22, align 4
  %163 = sub i32 %161, -2024993349
  %164 = sub i32 %163, 1
  %165 = add i32 %164, -2024993349
  %166 = sub i32 %161, 1
  %167 = mul i32 %161, %165
  %168 = urem i32 %167, 2
  %169 = icmp eq i32 %168, 0
  %170 = icmp slt i32 %162, 10
  br label %originalBB88.split.split

originalBB88.split.split:                         ; preds = %originalBB88.split
  %171 = and i1 %169, %170
  %172 = xor i1 %169, %170
  %173 = or i1 %171, %172
  %174 = or i1 %169, %170
  br i1 %173, label %originalBBpart2116, label %originalBB88alteredBB

originalBBpart2116:                               ; preds = %originalBB88.split.split
  br label %loopEnd

175:                                              ; preds = %loopEntry.split
  %.reload26 = load i8**, i8*** %.reg2mem25, align 8
  br label %.split120

.split120:                                        ; preds = %175
  %176 = load i8*, i8** %.reload26, align 8, !tbaa !3
  %.reload31 = load i32*, i32** %.reg2mem30, align 8
  %177 = load i32, i32* %.reload31, align 8, !tbaa !10
  %.reload78 = load i8**, i8*** %.reg2mem77, align 8
  %178 = load i8*, i8** %.reload78, align 8, !tbaa !3
  %.reload70 = load i32*, i32** %.reg2mem69, align 8
  %179 = load i32, i32* %.reload70, align 8, !tbaa !10
  %180 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* noundef %176, i32 noundef %177, i8* noundef %178, i32 noundef %179) #8
  %.reload84.reload87 = load %struct.TCGv*, %struct.TCGv** %.reload84.reg2mem, align 8
  %181 = bitcast %struct.TCGv* %.reload84.reload87 to i8*
  call void @free(i8* noundef %181) #8
  br label %.split120.split

.split120.split:                                  ; preds = %.split120
  store i32 -1387343462, i32* %switchVar, align 4
  br label %loopEnd

182:                                              ; preds = %loopEntry.split
  %.reload28 = load i8**, i8*** %.reg2mem25, align 8
  %183 = load i8*, i8** %.reload28, align 8, !tbaa !3
  %.reload33 = load i32*, i32** %.reg2mem30, align 8
  %184 = load i32, i32* %.reload33, align 8, !tbaa !10
  %185 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* noundef %183, i32 noundef %184)
  %186 = load i8*, i8** bitcast (%struct.TCGv** @cpu_ca to i8**), align 8, !tbaa !11
  call void @free(i8* noundef %186) #8
  %187 = load i8*, i8** bitcast (%struct.TCGv** @cpu_ov to i8**), align 8, !tbaa !11
  br label %.split121

.split121:                                        ; preds = %182
  call void @free(i8* noundef %187) #8
  br label %.split121.split

.split121.split:                                  ; preds = %.split121
  %.reload18 = load i8*, i8** %.reg2mem15, align 8
  call void @free(i8* noundef %.reload18) #8
  %.reload37 = load i8*, i8** %.reg2mem35, align 8
  call void @free(i8* noundef %.reload37) #8
  %.reload51 = load i8*, i8** %.reg2mem49, align 8
  call void @free(i8* noundef %.reload51) #8
  ret i32 0

loopEnd:                                          ; preds = %.split120.split, %originalBBpart2116, %.split118.split, %first.split.split, %originalBBpart2
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %switchDefault.split.split
  br label %originalBB

originalBB88alteredBB:                            ; preds = %originalBB88.split.split, %.split119.split
  %.reload84alteredBB = load %struct.TCGv*, %struct.TCGv** %.reg2mem83, align 8
  store %struct.TCGv* %.reload84alteredBB, %struct.TCGv** %.reload84.reg2mem, align 8
  %188 = load i32, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %189 = sub i32 0, -264873663
  %190 = sub i32 %189, %188
  %191 = add i32 %190, -264873663
  %_ = sub i32 0, %188
  %192 = sub i32 %191, -584641677
  %193 = add i32 %192, 1
  %194 = add i32 %193, -584641677
  %gen = add i32 %191, 1
  %_89 = shl i32 %188, 1
  %195 = add i32 %188, 82994491
  %196 = sub i32 %195, 1
  %197 = sub i32 %196, 82994491
  %_90 = sub i32 %188, 1
  %gen91 = mul i32 %197, 1
  %198 = sub i32 0, %188
  %199 = add i32 0, %198
  %_92 = sub i32 0, %188
  %200 = add i32 %199, -1570243778
  %201 = add i32 %200, 1
  %202 = sub i32 %201, -1570243778
  %gen93 = add i32 %199, 1
  %_94 = shl i32 %188, 1
  %203 = sub i32 0, 1
  %204 = add i32 %188, %203
  %_95 = sub i32 %188, 1
  %gen96 = mul i32 %204, 1
  %_97 = shl i32 %188, 1
  %205 = sub i32 0, 1
  %206 = sub i32 %188, %205
  %207 = add nsw i32 %188, 1
  store i32 %206, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %.reloadalteredBB = load i8**, i8*** %.reg2mem, align 8
  %208 = load i8*, i8** %.reloadalteredBB, align 8, !tbaa !3
  %.reload12alteredBB = load i32*, i32** %.reg2mem11, align 8
  %209 = load i32, i32* %.reload12alteredBB, align 8, !tbaa !10
  %210 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %206, i8* noundef %208, i32 noundef %209) #8
  %211 = load %struct.TCGv*, %struct.TCGv** @cpu_ca, align 8, !tbaa !11
  %212 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %211, i64 0, i32 0
  %213 = load i8*, i8** %212, align 8, !tbaa !3
  %214 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %213, i32 noundef 0) #8
  %215 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %211, i64 0, i32 1
  store i32 0, i32* %215, align 8, !tbaa !10
  %216 = load %struct.TCGv*, %struct.TCGv** @cpu_ov, align 8, !tbaa !11
  %217 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %216, i64 0, i32 0
  %218 = load i8*, i8** %217, align 8, !tbaa !3
  %219 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %218, i32 noundef 0) #8
  %220 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %216, i64 0, i32 1
  store i32 0, i32* %220, align 8, !tbaa !10
  %.reload45alteredBB = load i32*, i32** %.reg2mem44, align 8
  %221 = load i32, i32* %.reload45alteredBB, align 8, !tbaa !10
  %222 = sub i32 0, %221
  %223 = add i32 0, %222
  %_98 = sub i32 0, %221
  %224 = sub i32 0, %223
  %225 = sub i32 0, -1
  %226 = add i32 %224, %225
  %227 = sub i32 0, %226
  %gen99 = add i32 %223, -1
  %228 = add i32 %221, 1440008643
  %229 = sub i32 %228, -1
  %230 = sub i32 %229, 1440008643
  %_100 = sub i32 %221, -1
  %gen101 = mul i32 %230, -1
  %_102 = shl i32 %221, -1
  %231 = sub i32 0, -1
  %232 = add i32 %221, %231
  %_103 = sub i32 %221, -1
  %gen104 = mul i32 %232, -1
  %233 = sub i32 0, -1
  %234 = add i32 %221, %233
  %_105 = sub i32 %221, -1
  %gen106 = mul i32 %234, -1
  %_107 = shl i32 %221, -1
  %235 = add i32 0, 506425740
  %236 = sub i32 %235, %221
  %237 = sub i32 %236, 506425740
  %_108 = sub i32 0, %221
  %238 = sub i32 %237, 72124457
  %239 = add i32 %238, -1
  %240 = add i32 %239, 72124457
  %gen109 = add i32 %237, -1
  %241 = xor i32 %221, -1
  %242 = and i32 1476828212, %241
  %243 = xor i32 1476828212, -1
  %244 = and i32 %221, %243
  %245 = xor i32 -1, -1
  %246 = and i32 %245, 1476828212
  %247 = and i32 -1, %243
  %248 = or i32 %242, %244
  %249 = or i32 %246, %247
  %250 = xor i32 %248, %249
  %251 = xor i32 %221, -1
  %.reload84.reloadalteredBB = load %struct.TCGv*, %struct.TCGv** %.reload84.reg2mem, align 8
  %252 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %.reload84.reloadalteredBB, i64 0, i32 1
  store i32* %252, i32** %.reg2mem69, align 8
  %.reload76alteredBB = load i32*, i32** %.reg2mem69, align 8
  store i32 %250, i32* %.reload76alteredBB, align 8, !tbaa !10
  %.reload84.reload85alteredBB = load %struct.TCGv*, %struct.TCGv** %.reload84.reg2mem, align 8
  %253 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %.reload84.reload85alteredBB, i64 0, i32 0
  store i8** %253, i8*** %.reg2mem77, align 8
  br label %originalBB88alteredBB.split

originalBB88alteredBB.split:                      ; preds = %originalBB88alteredBB
  %.reload82alteredBB = load i8**, i8*** %.reg2mem77, align 8
  %254 = load i8*, i8** %.reload82alteredBB, align 8, !tbaa !3
  %.reload40alteredBB = load i8**, i8*** %.reg2mem39, align 8
  %255 = load i8*, i8** %.reload40alteredBB, align 8, !tbaa !3
  %256 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* noundef %254, i8* noundef %255, i32 noundef %221) #8
  %.reload75alteredBB = load i32*, i32** %.reg2mem69, align 8
  %257 = load i32, i32* %.reload75alteredBB, align 8, !tbaa !10
  %.reload60alteredBB = load i32*, i32** %.reg2mem59, align 8
  %258 = load i32, i32* %.reload60alteredBB, align 8, !tbaa !10
  %259 = add i32 0, -1891135491
  %260 = sub i32 %259, %258
  %261 = sub i32 %260, -1891135491
  %_110 = sub i32 0, %258
  %262 = sub i32 0, %257
  %263 = sub i32 %261, %262
  %gen111 = add i32 %261, %257
  %264 = add i32 %258, -69338275
  %265 = add i32 %264, %257
  %266 = sub i32 %265, -69338275
  %267 = add nsw i32 %258, %257
  %.reload74alteredBB = load i32*, i32** %.reg2mem69, align 8
  store i32 %266, i32* %.reload74alteredBB, align 8, !tbaa !10
  %.reload81alteredBB = load i8**, i8*** %.reg2mem77, align 8
  %268 = load i8*, i8** %.reload81alteredBB, align 8, !tbaa !3
  %.reload54alteredBB = load i8**, i8*** %.reg2mem53, align 8
  %269 = load i8*, i8** %.reload54alteredBB, align 8, !tbaa !3
  %270 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef %268, i8* noundef %268, i32 noundef %266, i8* noundef %269, i32 noundef %258) #8
  %.reload55alteredBB = load i8**, i8*** %.reg2mem53, align 8
  %271 = load i8*, i8** %.reload55alteredBB, align 8, !tbaa !3
  %.reload61alteredBB = load i32*, i32** %.reg2mem59, align 8
  %272 = load i32, i32* %.reload61alteredBB, align 8, !tbaa !10
  %273 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* noundef %271, i32 noundef %272, i32 noundef 0) #8
  %.reload73alteredBB = load i32*, i32** %.reg2mem69, align 8
  %274 = load i32, i32* %.reload73alteredBB, align 8, !tbaa !10
  %_112 = shl i32 %274, %206
  %275 = sub i32 0, %206
  %276 = add i32 %274, %275
  %_113 = sub i32 %274, %206
  %gen114 = mul i32 %276, %206
  %277 = sub i32 0, %206
  %278 = sub i32 %274, %277
  %279 = add nsw i32 %274, %206
  %.reload72alteredBB = load i32*, i32** %.reg2mem69, align 8
  store i32 %278, i32* %.reload72alteredBB, align 8, !tbaa !10
  %.reload80alteredBB = load i8**, i8*** %.reg2mem77, align 8
  %280 = load i8*, i8** %.reload80alteredBB, align 8, !tbaa !3
  %281 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef %280, i8* noundef %280, i32 noundef %278, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %206) #8
  br label %originalBB88alteredBB.split.split

originalBB88alteredBB.split.split:                ; preds = %originalBB88alteredBB.split
  %282 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %206, i32 noundef 0) #8
  %.reload41alteredBB = load i8**, i8*** %.reg2mem39, align 8
  %283 = load i8*, i8** %.reload41alteredBB, align 8, !tbaa !3
  %.reload46alteredBB = load i32*, i32** %.reg2mem44, align 8
  %284 = load i32, i32* %.reload46alteredBB, align 8, !tbaa !10
  %.reload56alteredBB = load i8**, i8*** %.reg2mem53, align 8
  %285 = load i8*, i8** %.reload56alteredBB, align 8, !tbaa !3
  %.reload62alteredBB = load i32*, i32** %.reg2mem59, align 8
  %286 = load i32, i32* %.reload62alteredBB, align 8, !tbaa !10
  %287 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* noundef %283, i32 noundef %284, i8* noundef %285, i32 noundef %286, i32 noundef 1) #8
  %.reload79alteredBB = load i8**, i8*** %.reg2mem77, align 8
  %288 = load i8*, i8** %.reload79alteredBB, align 8, !tbaa !3
  %.reload71alteredBB = load i32*, i32** %.reg2mem69, align 8
  %289 = load i32, i32* %.reload71alteredBB, align 8, !tbaa !10
  %290 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* noundef %288, i32 noundef %289) #8
  %.reload22alteredBB = load %struct.TCGv*, %struct.TCGv** %.reg2mem20, align 8
  %.reload84.reload86alteredBB = load %struct.TCGv*, %struct.TCGv** %.reload84.reg2mem, align 8
  %291 = icmp eq %struct.TCGv* %.reload84.reload86alteredBB, %.reload22alteredBB
  %292 = select i1 %291, i32 -1387343462, i32 389741296
  store i32 %292, i32* %switchVar, align 4
  br label %originalBB88
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0, !8, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!4, !8, i64 8}
!11 = !{!5, !5, i64 0}

; ModuleID = 'gen_op_arith_subf.bc'
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @Rc(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 1
  ret i32 %2
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.TCGv* @tcg_temp_local_new() local_unnamed_addr #1 {
  %1 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  %2 = bitcast i8* %1 to %struct.TCGv*
  %3 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8, !tbaa !3
  %4 = load i32, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %6 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 1
  store i32 %5, i32* %6, align 8, !tbaa !10
  ret %struct.TCGv* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @tcg_temp_free(%struct.TCGv* nocapture noundef %0) local_unnamed_addr #3 {
  %2 = bitcast %struct.TCGv* %0 to i8*
  call void @free(i8* noundef %2) #8
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
  %7 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 0
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
  %3 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !3
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %4, i32 noundef %1)
  %6 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 1
  store i32 %1, i32* %6, align 8, !tbaa !10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @tcg_gen_add_tl(%struct.TCGv* nocapture noundef %0, %struct.TCGv* nocapture noundef readonly %1, %struct.TCGv* nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 1
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 1
  %7 = load i32, i32* %6, align 8, !tbaa !10
  %8 = add nsw i32 %7, %5
  %9 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 1
  store i32 %8, i32* %9, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !tbaa !3
  %12 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !3
  %14 = load i32, i32* %4, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !3
  %17 = load i32, i32* %6, align 8, !tbaa !10
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef %11, i8* noundef %13, i32 noundef %14, i8* noundef %16, i32 noundef %17)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @tcg_gen_sub_tl(%struct.TCGv* nocapture noundef %0, %struct.TCGv* nocapture noundef readonly %1, %struct.TCGv* nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 1
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 1
  %7 = load i32, i32* %6, align 8, !tbaa !10
  %8 = sub nsw i32 %5, %7
  %9 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 1
  store i32 %8, i32* %9, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !tbaa !3
  %12 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !3
  %14 = load i32, i32* %4, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !3
  %17 = load i32, i32* %6, align 8, !tbaa !10
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef %11, i8* noundef %13, i32 noundef %14, i8* noundef %16, i32 noundef %17)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @tcg_gen_not_tl(%struct.TCGv* nocapture noundef %0, %struct.TCGv* nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !10
  %5 = xor i32 %4, -1
  %6 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 1
  store i32 %5, i32* %6, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %0, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !3
  %9 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !3
  %11 = load i32, i32* %3, align 8, !tbaa !10
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* noundef %8, i8* noundef %10, i32 noundef %11)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @gen_op_arith_compute_ca(%struct.DisasContext* nocapture readnone %0, %struct.TCGv* nocapture readnone %1, %struct.TCGv* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8, !tbaa !3
  %7 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 1
  %8 = load i32, i32* %7, align 8, !tbaa !10
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* noundef %6, i32 noundef %8, i32 noundef %3)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @gen_op_arith_compute_ov(%struct.DisasContext* nocapture readnone %0, %struct.TCGv* nocapture readnone %1, %struct.TCGv* nocapture noundef readonly %2, %struct.TCGv* nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !3
  %8 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 1
  %9 = load i32, i32* %8, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %3, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !tbaa !3
  %12 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %3, i64 0, i32 1
  %13 = load i32, i32* %12, align 8, !tbaa !10
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* noundef %7, i32 noundef %9, i8* noundef %11, i32 noundef %13, i32 noundef %4)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @gen_set_Rc0(%struct.DisasContext* nocapture readnone %0, %struct.TCGv* nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !3
  %5 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %1, i64 0, i32 1
  %6 = load i32, i32* %5, align 8, !tbaa !10
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* noundef %4, i32 noundef %6)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #7 {
  %1 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  %2 = bitcast i8* %1 to %struct.TCGv*
  %3 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8, !tbaa !3
  %4 = load i32, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %6 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %2, i64 0, i32 1
  store i32 %5, i32* %6, align 8, !tbaa !10
  store i8* %1, i8** bitcast (%struct.TCGv** @cpu_ca to i8**), align 8, !tbaa !11
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8, !tbaa !3
  store i32 1, i32* %6, align 8, !tbaa !10
  %7 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  %8 = bitcast i8* %7 to %struct.TCGv*
  %9 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %8, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %9, align 8, !tbaa !3
  %10 = add nsw i32 %4, 2
  store i32 %10, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %11 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %8, i64 0, i32 1
  store i32 %10, i32* %11, align 8, !tbaa !10
  store i8* %7, i8** bitcast (%struct.TCGv** @cpu_ov to i8**), align 8, !tbaa !11
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8, !tbaa !3
  store i32 0, i32* %11, align 8, !tbaa !10
  %12 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  %13 = bitcast i8* %12 to %struct.TCGv*
  %14 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %13, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %14, align 8, !tbaa !3
  %15 = add nsw i32 %4, 3
  store i32 %15, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %16 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %13, i64 0, i32 1
  store i32 %15, i32* %16, align 8, !tbaa !10
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %14, align 8, !tbaa !3
  store i32 0, i32* %16, align 8, !tbaa !10
  %17 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  %18 = bitcast i8* %17 to %struct.TCGv*
  %19 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %18, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %19, align 8, !tbaa !3
  %20 = add nsw i32 %4, 4
  store i32 %20, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %21 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %18, i64 0, i32 1
  store i32 %20, i32* %21, align 8, !tbaa !10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %19, align 8, !tbaa !3
  store i32 5, i32* %21, align 8, !tbaa !10
  %22 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  %23 = bitcast i8* %22 to %struct.TCGv*
  %24 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %23, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %24, align 8, !tbaa !3
  %25 = add nsw i32 %4, 5
  store i32 %25, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %26 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %23, i64 0, i32 1
  store i32 %25, i32* %26, align 8, !tbaa !10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %24, align 8, !tbaa !3
  store i32 10, i32* %26, align 8, !tbaa !10
  %27 = icmp eq i8* %12, %17
  %28 = icmp eq i8* %12, %22
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %0
  %31 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #8
  %32 = bitcast i8* %31 to %struct.TCGv*
  %33 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %32, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %33, align 8, !tbaa !3
  %34 = add nsw i32 %4, 6
  store i32 %34, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %35 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %32, i64 0, i32 1
  store i32 %34, i32* %35, align 8, !tbaa !10
  br label %36

36:                                               ; preds = %30, %0
  %37 = phi %struct.TCGv* [ %32, %30 ], [ %13, %0 ]
  %38 = load i32, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @tcg_temp_local_new.counter, align 4, !tbaa !9
  %40 = load i8*, i8** %3, align 8, !tbaa !3
  %41 = load i32, i32* %6, align 8, !tbaa !10
  %42 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %39, i8* noundef %40, i32 noundef %41) #8
  %43 = load %struct.TCGv*, %struct.TCGv** @cpu_ca, align 8, !tbaa !11
  %44 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %43, i64 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !3
  %46 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %45, i32 noundef 0) #8
  %47 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %43, i64 0, i32 1
  store i32 0, i32* %47, align 8, !tbaa !10
  %48 = load %struct.TCGv*, %struct.TCGv** @cpu_ov, align 8, !tbaa !11
  %49 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %48, i64 0, i32 0
  %50 = load i8*, i8** %49, align 8, !tbaa !3
  %51 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %50, i32 noundef 0) #8
  %52 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %48, i64 0, i32 1
  store i32 0, i32* %52, align 8, !tbaa !10
  %53 = load i32, i32* %21, align 8, !tbaa !10
  %54 = xor i32 %53, -1
  %55 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %37, i64 0, i32 1
  store i32 %54, i32* %55, align 8, !tbaa !10
  %56 = getelementptr inbounds %struct.TCGv, %struct.TCGv* %37, i64 0, i32 0
  %57 = load i8*, i8** %56, align 8, !tbaa !3
  %58 = load i8*, i8** %19, align 8, !tbaa !3
  %59 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* noundef %57, i8* noundef %58, i32 noundef %53) #8
  %60 = load i32, i32* %55, align 8, !tbaa !10
  %61 = load i32, i32* %26, align 8, !tbaa !10
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %55, align 8, !tbaa !10
  %63 = load i8*, i8** %56, align 8, !tbaa !3
  %64 = load i8*, i8** %24, align 8, !tbaa !3
  %65 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef %63, i8* noundef %63, i32 noundef %62, i8* noundef %64, i32 noundef %61) #8
  %66 = load i8*, i8** %24, align 8, !tbaa !3
  %67 = load i32, i32* %26, align 8, !tbaa !10
  %68 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* noundef %66, i32 noundef %67, i32 noundef 0) #8
  %69 = load i32, i32* %55, align 8, !tbaa !10
  %70 = add nsw i32 %69, %39
  store i32 %70, i32* %55, align 8, !tbaa !10
  %71 = load i8*, i8** %56, align 8, !tbaa !3
  %72 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef %71, i8* noundef %71, i32 noundef %70, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %39) #8
  %73 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %39, i32 noundef 0) #8
  %74 = load i8*, i8** %19, align 8, !tbaa !3
  %75 = load i32, i32* %21, align 8, !tbaa !10
  %76 = load i8*, i8** %24, align 8, !tbaa !3
  %77 = load i32, i32* %26, align 8, !tbaa !10
  %78 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* noundef %74, i32 noundef %75, i8* noundef %76, i32 noundef %77, i32 noundef 1) #8
  %79 = load i8*, i8** %56, align 8, !tbaa !3
  %80 = load i32, i32* %55, align 8, !tbaa !10
  %81 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* noundef %79, i32 noundef %80) #8
  %82 = icmp eq %struct.TCGv* %37, %13
  br i1 %82, label %90, label %83

83:                                               ; preds = %36
  %84 = load i8*, i8** %14, align 8, !tbaa !3
  %85 = load i32, i32* %16, align 8, !tbaa !10
  %86 = load i8*, i8** %56, align 8, !tbaa !3
  %87 = load i32, i32* %55, align 8, !tbaa !10
  %88 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* noundef %84, i32 noundef %85, i8* noundef %86, i32 noundef %87) #8
  %89 = bitcast %struct.TCGv* %37 to i8*
  call void @free(i8* noundef %89) #8
  br label %90

90:                                               ; preds = %36, %83
  %91 = load i8*, i8** %14, align 8, !tbaa !3
  %92 = load i32, i32* %16, align 8, !tbaa !10
  %93 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* noundef %91, i32 noundef %92)
  %94 = load i8*, i8** bitcast (%struct.TCGv** @cpu_ca to i8**), align 8, !tbaa !11
  call void @free(i8* noundef %94) #8
  %95 = load i8*, i8** bitcast (%struct.TCGv** @cpu_ov to i8**), align 8, !tbaa !11
  call void @free(i8* noundef %95) #8
  call void @free(i8* noundef %12) #8
  call void @free(i8* noundef %17) #8
  call void @free(i8* noundef %22) #8
  ret i32 0
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

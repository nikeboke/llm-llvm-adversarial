; ModuleID = 'dec_move_rp_obf.bc'
source_filename = "dec_move_rp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DisasContext = type { i32, i32, i32, i32 }

@tcg_temp_new.temp_id = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ANDI: t%d = t%d & 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"OR: t%d = t%d | t%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Move reg %d into t%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Move t%d into preg %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Update CC op: %d (size=%d)\0A\00", align 1
@cpu_PR = dso_local local_unnamed_addr global [16 x i32] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [12 x i8] c"Return: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"move $r%u, $p%u\0A\00", align 1
@str = private unnamed_addr constant [20 x i8] c"Evaluating flags...\00", align 1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @tcg_temp_new() local_unnamed_addr #0 {
  %1 = load i32, i32* @tcg_temp_new.temp_id, align 4, !tbaa !3
  %2 = sub i32 %1, -316731385
  %3 = add i32 %2, 1
  br label %.split

.split:                                           ; preds = %0
  %4 = add i32 %3, -316731385
  %5 = add nsw i32 %1, 1
  br label %.split.split

.split.split:                                     ; preds = %.split
  store i32 %4, i32* @tcg_temp_new.temp_id, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @tcg_temp_free(i32 %0) local_unnamed_addr #1 {
  %2 = load i32, i32* @x.1, align 4
  br label %.split

.split:                                           ; preds = %1
  %3 = load i32, i32* @y.2, align 4
  %4 = sub i32 0, 1
  %5 = add i32 %2, %4
  %6 = sub i32 %2, 1
  %7 = mul i32 %2, %5
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %3, 10
  %11 = xor i1 %9, true
  %12 = xor i1 %10, true
  %13 = xor i1 false, true
  %14 = and i1 %11, false
  %15 = and i1 %9, %13
  %16 = and i1 %12, false
  %17 = and i1 %10, %13
  %18 = or i1 %14, %15
  %19 = or i1 %16, %17
  %20 = xor i1 %18, %19
  %21 = or i1 %11, %12
  %22 = xor i1 %21, true
  br label %.split.split

.split.split:                                     ; preds = %.split
  %23 = or i1 false, %13
  %24 = and i1 %22, %23
  %25 = or i1 %20, %24
  %26 = or i1 %9, %10
  br i1 %25, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %27 = load i32, i32* @x.1, align 4
  %28 = load i32, i32* @y.2, align 4
  %29 = sub i32 %27, 1011100783
  %30 = sub i32 %29, 1
  %31 = add i32 %30, 1011100783
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %32 = sub i32 %27, 1
  %33 = mul i32 %27, %31
  %34 = urem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = icmp slt i32 %28, 10
  %37 = and i1 %35, %36
  %38 = xor i1 %35, %36
  %39 = or i1 %37, %38
  %40 = or i1 %35, %36
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  br i1 %39, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @tcg_gen_andi_tl(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load i32, i32* @x.3, align 4
  %5 = load i32, i32* @y.4, align 4
  %6 = sub i32 %4, 1465511025
  %7 = sub i32 %6, 1
  %8 = add i32 %7, 1465511025
  br label %.split

.split:                                           ; preds = %3
  %9 = sub i32 %4, 1
  %10 = mul i32 %4, %8
  %11 = urem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = icmp slt i32 %5, 10
  %14 = and i1 %12, %13
  %15 = xor i1 %12, %13
  %16 = or i1 %14, %15
  br label %.split.split

.split.split:                                     ; preds = %.split
  %17 = or i1 %12, %13
  br i1 %16, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %0, i32 noundef %1, i32 noundef %2)
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %19 = load i32, i32* @x.3, align 4
  %20 = load i32, i32* @y.4, align 4
  %21 = sub i32 %19, 634828662
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %22 = sub i32 %21, 1
  %23 = add i32 %22, 634828662
  %24 = sub i32 %19, 1
  %25 = mul i32 %19, %23
  %26 = urem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = icmp slt i32 %20, 10
  %29 = xor i1 %27, true
  %30 = xor i1 %28, true
  %31 = xor i1 false, true
  %32 = and i1 %29, false
  %33 = and i1 %27, %31
  %34 = and i1 %30, false
  %35 = and i1 %28, %31
  %36 = or i1 %32, %33
  %37 = or i1 %34, %35
  %38 = xor i1 %36, %37
  %39 = or i1 %29, %30
  %40 = xor i1 %39, true
  %41 = or i1 false, %31
  %42 = and i1 %40, %41
  %43 = or i1 %38, %42
  %44 = or i1 %27, %28
  br i1 %43, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %45 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %0, i32 noundef %1, i32 noundef %2)
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @tcg_gen_or_tl(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load i32, i32* @x.5, align 4
  %5 = load i32, i32* @y.6, align 4
  %6 = add i32 %4, -104353390
  %7 = sub i32 %6, 1
  %8 = sub i32 %7, -104353390
  %9 = sub i32 %4, 1
  %10 = mul i32 %4, %8
  %11 = urem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = icmp slt i32 %5, 10
  %14 = and i1 %12, %13
  %15 = xor i1 %12, %13
  %16 = or i1 %14, %15
  br label %.split

.split:                                           ; preds = %3
  %17 = or i1 %12, %13
  br label %.split.split

.split.split:                                     ; preds = %.split
  br i1 %16, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef %0, i32 noundef %1, i32 noundef %2)
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %19 = load i32, i32* @x.5, align 4
  %20 = load i32, i32* @y.6, align 4
  %21 = sub i32 %19, 1397410272
  %22 = sub i32 %21, 1
  %23 = add i32 %22, 1397410272
  %24 = sub i32 %19, 1
  %25 = mul i32 %19, %23
  %26 = urem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = icmp slt i32 %20, 10
  %29 = and i1 %27, %28
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %30 = xor i1 %27, %28
  %31 = or i1 %29, %30
  %32 = or i1 %27, %28
  br i1 %31, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef %0, i32 noundef %1, i32 noundef %2)
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @cris_cc_mask(%struct.DisasContext* nocapture %0, i32 %1) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @cris_evaluate_flags(%struct.DisasContext* nocapture readnone %0) local_unnamed_addr #2 {
  %2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str, i64 0, i64 0))
  br label %.split

.split:                                           ; preds = %1
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @t_gen_mov_TN_reg(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 noundef %1, i32 noundef %0)
  br label %.split

.split:                                           ; preds = %2
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @t_gen_mov_preg_TN(%struct.DisasContext* nocapture readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 noundef %2, i32 noundef %1)
  br label %.split

.split:                                           ; preds = %3
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @cris_update_cc_op(%struct.DisasContext* nocapture readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 noundef %1, i32 noundef %2)
  br label %.split

.split:                                           ; preds = %3
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  store i32 65535, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @cpu_PR, i64 0, i64 0), align 16, !tbaa !3
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 noundef 3, i32 noundef 0) #5
  %2 = load i32, i32* @tcg_temp_new.temp_id, align 4, !tbaa !3
  br label %.split

.split:                                           ; preds = %0
  %3 = sub i32 %2, -774330958
  %4 = add i32 %3, 1
  %5 = add i32 %4, -774330958
  br label %.split.split

.split.split:                                     ; preds = %.split
  %6 = add nsw i32 %2, 1
  store i32 %5, i32* @tcg_temp_new.temp_id, align 4, !tbaa !3
  %7 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str, i64 0, i64 0)) #5
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 noundef 3, i32 noundef %2) #5
  %9 = load i32, i32* @tcg_temp_new.temp_id, align 4, !tbaa !3
  %10 = sub i32 0, 1
  %11 = sub i32 %9, %10
  %12 = add nsw i32 %9, 1
  store i32 %11, i32* @tcg_temp_new.temp_id, align 4, !tbaa !3
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %2, i32 noundef %2, i32 noundef 927) #5
  %14 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @cpu_PR, i64 0, i64 0), align 16, !tbaa !3
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %9, i32 noundef %14, i32 noundef -928) #5
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef %2, i32 noundef %9, i32 noundef %2) #5
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 noundef %2, i32 noundef 0) #5
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 noundef 4, i32 noundef 4) #5
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 noundef 2)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}

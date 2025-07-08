; ModuleID = 'dec_move_rp.bc'
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @tcg_temp_new() local_unnamed_addr #0 {
  %1 = load i32, i32* @tcg_temp_new.temp_id, align 4, !tbaa !3
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @tcg_temp_new.temp_id, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @tcg_temp_free(i32 %0) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @tcg_gen_andi_tl(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %0, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @tcg_gen_or_tl(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef %0, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @cris_cc_mask(%struct.DisasContext* nocapture %0, i32 %1) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @cris_evaluate_flags(%struct.DisasContext* nocapture readnone %0) local_unnamed_addr #2 {
  %2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @t_gen_mov_TN_reg(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 noundef %1, i32 noundef %0)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @t_gen_mov_preg_TN(%struct.DisasContext* nocapture readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 noundef %2, i32 noundef %1)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @cris_update_cc_op(%struct.DisasContext* nocapture readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  store i32 65535, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @cpu_PR, i64 0, i64 0), align 16, !tbaa !3
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 noundef 3, i32 noundef 0) #5
  %2 = load i32, i32* @tcg_temp_new.temp_id, align 4, !tbaa !3
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @tcg_temp_new.temp_id, align 4, !tbaa !3
  %4 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str, i64 0, i64 0)) #5
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 noundef 3, i32 noundef %2) #5
  %6 = load i32, i32* @tcg_temp_new.temp_id, align 4, !tbaa !3
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @tcg_temp_new.temp_id, align 4, !tbaa !3
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %2, i32 noundef %2, i32 noundef 927) #5
  %9 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @cpu_PR, i64 0, i64 0), align 16, !tbaa !3
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %6, i32 noundef %9, i32 noundef -928) #5
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef %2, i32 noundef %6, i32 noundef %2) #5
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 noundef %2, i32 noundef 0) #5
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 noundef 4, i32 noundef 4) #5
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 noundef 2)
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

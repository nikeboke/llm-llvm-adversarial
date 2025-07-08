; ModuleID = 'cpu_ppc_store_decr.bc'
source_filename = "cpu_ppc_store_decr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PowerPCCPU = type { %struct.CPUEnv }
%struct.CPUEnv = type { %struct.ppc_tb_t* }
%struct.ppc_tb_t = type { i32, i32 }

@.str.1 = private unnamed_addr constant [45 x i8] c"Storing DECR: decr=%u, value=%u, is_excp=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Final decr_next: %u\0A\00", align 1
@str = private unnamed_addr constant [33 x i8] c"Decrementer exception triggered.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @cpu_ppc_decr_excp() local_unnamed_addr #0 align 8 {
  %1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @__cpu_ppc_store_decr(%struct.PowerPCCPU* nocapture readnone %0, i32* nocapture noundef writeonly %1, i32 %2, void ()** noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
  store i32 %5, i32* %1, align 4, !tbaa !3
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 noundef %4, i32 noundef %5, i32 noundef %6)
  %9 = icmp ne i32 %6, 0
  %10 = icmp ne void ()** %3, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load void ()*, void ()** %3, align 8, !tbaa !7
  call void %13() #4
  br label %14

14:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1, i32 noundef 456, i32 noundef 1) #4
  %2 = load void ()*, void ()** bitcast (void ()* @cpu_ppc_decr_excp to void ()**), align 8, !tbaa !7
  call void %2() #4
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2, i32 noundef 789, i32 noundef 0) #4
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 789)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
!8 = !{!"any pointer", !5, i64 0}

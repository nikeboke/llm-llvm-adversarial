; ModuleID = 'cpu_ppc_store_decr_obf.bc'
source_filename = "cpu_ppc_store_decr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PowerPCCPU = type { %struct.CPUEnv }
%struct.CPUEnv = type { %struct.ppc_tb_t* }
%struct.ppc_tb_t = type { i32, i32 }

@.str.1 = private unnamed_addr constant [45 x i8] c"Storing DECR: decr=%u, value=%u, is_excp=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Final decr_next: %u\0A\00", align 1
@str = private unnamed_addr constant [33 x i8] c"Decrementer exception triggered.\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0
@x.3 = common global i32 0
@y.4 = common global i32 0

; Function Attrs: nofree nounwind uwtable
define dso_local void @cpu_ppc_decr_excp() local_unnamed_addr #0 align 8 {
  %1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str, i64 0, i64 0))
  br label %.split

.split:                                           ; preds = %0
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @__cpu_ppc_store_decr(%struct.PowerPCCPU* nocapture readnone %0, i32* nocapture noundef writeonly %1, i32 %2, void ()** noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
  %.reg2mem2 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  store i32 %5, i32* %1, align 4, !tbaa !3
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 noundef %4, i32 noundef %5, i32 noundef %6)
  br label %.split

.split:                                           ; preds = %7
  %9 = icmp ne i32 %6, 0
  store i1 %9, i1* %.reg2mem, align 1
  %10 = icmp ne void ()** %3, null
  store i1 %10, i1* %.reg2mem2, align 1
  %switchVar = alloca i32, align 4
  store i32 140121131, i32* %switchVar, align 4
  br label %.split.split

.split.split:                                     ; preds = %.split
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %11 = load i32, i32* @x.1, align 4
  %12 = load i32, i32* @y.2, align 4
  %13 = add i32 %11, -326107266
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  %14 = sub i32 %13, 1
  %15 = sub i32 %14, -326107266
  %16 = sub i32 %11, 1
  %17 = mul i32 %11, %15
  %18 = urem i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = icmp slt i32 %12, 10
  %21 = xor i1 %19, true
  %22 = xor i1 %20, true
  %23 = xor i1 false, true
  %24 = and i1 %21, false
  %25 = and i1 %19, %23
  %26 = and i1 %22, false
  %27 = and i1 %20, %23
  %28 = or i1 %24, %25
  %29 = or i1 %26, %27
  %30 = xor i1 %28, %29
  %31 = or i1 %21, %22
  br label %loopEntry.split.split

loopEntry.split.split:                            ; preds = %loopEntry.split
  %32 = xor i1 %31, true
  %33 = or i1 false, %23
  %34 = and i1 %32, %33
  %35 = or i1 %30, %34
  %36 = or i1 %19, %20
  br i1 %35, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %loopEntry.split.split, %originalBBalteredBB.split
  %switchVar1 = load i32, i32* %switchVar, align 4
  %37 = load i32, i32* @x.1, align 4
  %38 = load i32, i32* @y.2, align 4
  %39 = sub i32 0, 1
  %40 = add i32 %37, %39
  %41 = sub i32 %37, 1
  %42 = mul i32 %37, %40
  %43 = urem i32 %42, 2
  %44 = icmp eq i32 %43, 0
  %45 = icmp slt i32 %38, 10
  %46 = xor i1 %44, true
  %47 = xor i1 %45, true
  %48 = xor i1 true, true
  %49 = and i1 %46, true
  %50 = and i1 %44, %48
  %51 = and i1 %47, true
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %52 = and i1 %45, %48
  %53 = or i1 %49, %50
  %54 = or i1 %51, %52
  %55 = xor i1 %53, %54
  %56 = or i1 %46, %47
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %57 = xor i1 %56, true
  %58 = or i1 true, %48
  %59 = and i1 %57, %58
  %60 = or i1 %55, %59
  %61 = or i1 %44, %45
  br i1 %60, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  switch i32 %switchVar1, label %switchDefault [
    i32 140121131, label %first
    i32 1791306601, label %67
    i32 -1243838629, label %69
  ]

switchDefault:                                    ; preds = %originalBBpart2
  br label %loopEnd

first:                                            ; preds = %originalBBpart2
  %.reload = load i1, i1* %.reg2mem, align 1
  %.reload3 = load i1, i1* %.reg2mem2, align 1
  %62 = xor i1 %.reload, true
  %63 = xor i1 %.reload3, %62
  %64 = and i1 %63, %.reload3
  %65 = and i1 %.reload3, %.reload
  br label %first.split

first.split:                                      ; preds = %first
  %66 = select i1 %64, i32 1791306601, i32 -1243838629
  store i32 %66, i32* %switchVar, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br label %loopEnd

67:                                               ; preds = %originalBBpart2
  %68 = load void ()*, void ()** %3, align 8, !tbaa !7
  br label %.split4

.split4:                                          ; preds = %67
  call void %68() #4
  br label %.split4.split

.split4.split:                                    ; preds = %.split4
  store i32 -1243838629, i32* %switchVar, align 4
  br label %loopEnd

69:                                               ; preds = %originalBBpart2
  ret void

loopEnd:                                          ; preds = %.split4.split, %first.split.split, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %loopEntry.split.split
  %switchVar1alteredBB = load i32, i32* %switchVar, align 4
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1, i32 noundef 456, i32 noundef 1) #4
  br label %.split

.split:                                           ; preds = %0
  %2 = load void ()*, void ()** bitcast (void ()* @cpu_ppc_decr_excp to void ()**), align 8, !tbaa !7
  call void %2() #4
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2, i32 noundef 789, i32 noundef 0) #4
  br label %.split.split

.split.split:                                     ; preds = %.split
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

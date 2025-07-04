; ModuleID = 'check_watchpoint_obf.bc'
source_filename = "check_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPUState = type { %struct.CPUWatchpoint*, %struct.CPUWatchpoint*, i64, i32, %struct.CPUArchState* }
%struct.CPUWatchpoint = type { i64, %struct.MemTxAttrs, i32, %struct.CPUWatchpoint* }
%struct.MemTxAttrs = type { i32 }
%struct.CPUArchState = type { i32 }

@global_cpu = dso_local global %struct.CPUState zeroinitializer, align 8
@current_cpu = dso_local local_unnamed_addr global %struct.CPUState* @global_cpu, align 8
@.str = private unnamed_addr constant [37 x i8] c"[cpu_interrupt] Raised interrupt %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"[cpu_loop_exit] Exiting CPU loop with exception %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"[tb_gen_code] Generating code at PC=0x%lx\0A\00", align 1
@main.env = internal global %struct.CPUArchState zeroinitializer, align 4
@main.wp1 = internal global %struct.CPUWatchpoint { i64 0, %struct.MemTxAttrs zeroinitializer, i32 65, %struct.CPUWatchpoint* null }, align 8
@str = private unnamed_addr constant [42 x i8] c"[tb_lock] Translation block lock acquired\00", align 1
@str.7 = private unnamed_addr constant [42 x i8] c"[tb_check_watchpoint] Checking watchpoint\00", align 1
@str.8 = private unnamed_addr constant [57 x i8] c"[cpu_loop_exit_noexc] Exiting CPU loop without exception\00", align 1
@str.9 = private unnamed_addr constant [42 x i8] c"[cpu_get_tb_cpu_state] Returning dummy PC\00", align 1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cpu_watchpoint_address_matches(%struct.CPUWatchpoint* nocapture readnone %0, i64 %1, i32 %2) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @cpu_interrupt(%struct.CPUState* nocapture readnone %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef %1)
  br label %.split

.split:                                           ; preds = %2
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @tb_lock() local_unnamed_addr #1 {
  %1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str, i64 0, i64 0))
  br label %.split

.split:                                           ; preds = %0
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @tb_check_watchpoint(%struct.CPUState* nocapture readnone %0) local_unnamed_addr #1 {
  %2 = load i32, i32* @x.5, align 4
  %3 = load i32, i32* @y.6, align 4
  %4 = add i32 %2, 1234149351
  %5 = sub i32 %4, 1
  br label %.split

.split:                                           ; preds = %1
  %6 = sub i32 %5, 1234149351
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  br label %.split.split

.split.split:                                     ; preds = %.split
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  %12 = and i1 %10, %11
  %13 = xor i1 %10, %11
  %14 = or i1 %12, %13
  %15 = or i1 %10, %11
  br i1 %14, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split
  %16 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.7, i64 0, i64 0))
  %17 = load i32, i32* @x.5, align 4
  %18 = load i32, i32* @y.6, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %19 = sub i32 0, 1
  %20 = add i32 %17, %19
  %21 = sub i32 %17, 1
  %22 = mul i32 %17, %20
  %23 = urem i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %25 = icmp slt i32 %18, 10
  %26 = and i1 %24, %25
  %27 = xor i1 %24, %25
  %28 = or i1 %26, %27
  %29 = or i1 %24, %25
  br i1 %28, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %30 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.7, i64 0, i64 0))
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @cpu_loop_exit(%struct.CPUState* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.CPUState, %struct.CPUState* %0, i64 0, i32 3
  %3 = load i32, i32* %2, align 8, !tbaa !3
  br label %.split

.split:                                           ; preds = %1
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 noundef %3)
  br label %.split.split

.split.split:                                     ; preds = %.split
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local void @cpu_loop_exit_noexc(%struct.CPUState* nocapture readnone %0) local_unnamed_addr #3 {
  %2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([57 x i8], [57 x i8]* @str.8, i64 0, i64 0))
  br label %.split

.split:                                           ; preds = %1
  call void @exit(i32 noundef 0) #7
  br label %.split.split

.split.split:                                     ; preds = %.split
  unreachable
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @cpu_get_tb_cpu_state(%struct.CPUArchState* nocapture readnone %0, i64* nocapture noundef writeonly %1, i64* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = load i32, i32* @x.11, align 4
  %6 = load i32, i32* @y.12, align 4
  %7 = sub i32 %5, -1804130587
  %8 = sub i32 %7, 1
  %9 = add i32 %8, -1804130587
  %10 = sub i32 %5, 1
  %11 = mul i32 %5, %9
  %12 = urem i32 %11, 2
  %13 = icmp eq i32 %12, 0
  %14 = icmp slt i32 %6, 10
  %15 = xor i1 %13, true
  %16 = xor i1 %14, true
  br label %.split

.split:                                           ; preds = %4
  %17 = xor i1 false, true
  %18 = and i1 %15, false
  %19 = and i1 %13, %17
  %20 = and i1 %16, false
  br label %.split.split

.split.split:                                     ; preds = %.split
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
  store i64 4096, i64* %1, align 8, !tbaa !10
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  store i64 0, i64* %2, align 8, !tbaa !10
  store i32 0, i32* %3, align 4, !tbaa !11
  %31 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.9, i64 0, i64 0))
  %32 = load i32, i32* @x.11, align 4
  %33 = load i32, i32* @y.12, align 4
  %34 = sub i32 0, 1
  %35 = add i32 %32, %34
  %36 = sub i32 %32, 1
  %37 = mul i32 %32, %35
  %38 = urem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = icmp slt i32 %33, 10
  %41 = and i1 %39, %40
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %42 = xor i1 %39, %40
  %43 = or i1 %41, %42
  %44 = or i1 %39, %40
  br i1 %43, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  store i64 4096, i64* %1, align 8, !tbaa !10
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  store i64 0, i64* %2, align 8, !tbaa !10
  store i32 0, i32* %3, align 4, !tbaa !11
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  %45 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.9, i64 0, i64 0))
  br label %originalBB
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @tb_gen_code(%struct.CPUState* nocapture readnone %0, i64 noundef %1, i64 %2, i32 %3, i32 %4) local_unnamed_addr #1 {
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 noundef %1)
  br label %.split

.split:                                           ; preds = %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @dummy_adjust_watchpoint_address(i8* nocapture readnone %0, i64 noundef returned %1, i32 %2) local_unnamed_addr #0 {
  %4 = load i32, i32* @x.15, align 4
  %5 = load i32, i32* @y.16, align 4
  %6 = add i32 %4, 1285782912
  br label %.split

.split:                                           ; preds = %3
  %7 = sub i32 %6, 1
  %8 = sub i32 %7, 1285782912
  %9 = sub i32 %4, 1
  %10 = mul i32 %4, %8
  %11 = urem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = icmp slt i32 %5, 10
  %14 = and i1 %12, %13
  %15 = xor i1 %12, %13
  %16 = or i1 %14, %15
  %17 = or i1 %12, %13
  br label %.split.split

.split.split:                                     ; preds = %.split
  br i1 %16, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %18 = load i32, i32* @x.15, align 4
  %19 = load i32, i32* @y.16, align 4
  %20 = sub i32 0, 1
  %21 = add i32 %18, %20
  %22 = sub i32 %18, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %23 = mul i32 %18, %21
  %24 = urem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %26 = icmp slt i32 %19, 10
  %27 = xor i1 %25, true
  %28 = xor i1 %26, true
  %29 = xor i1 true, true
  %30 = and i1 %27, true
  %31 = and i1 %25, %29
  %32 = and i1 %28, true
  %33 = and i1 %26, %29
  %34 = or i1 %30, %31
  %35 = or i1 %32, %33
  %36 = xor i1 %34, %35
  %37 = or i1 %27, %28
  %38 = xor i1 %37, true
  %39 = or i1 true, %29
  %40 = and i1 %38, %39
  %41 = or i1 %36, %40
  %42 = or i1 %25, %26
  br i1 %41, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i64 %1

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @dummy_debug_check_watchpoint(i8* nocapture readnone %0, %struct.CPUWatchpoint* nocapture readnone %1) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #5 {
  %.reload23.reg2mem = alloca %struct.CPUWatchpoint*, align 8
  br label %.split

.split:                                           ; preds = %0
  %.reg2mem18 = alloca i32, align 4
  %.reg2mem13 = alloca i32*, align 8
  %.reg2mem11 = alloca i64, align 8
  %.reg2mem9 = alloca %struct.CPUWatchpoint*, align 8
  %.reg2mem5 = alloca %struct.CPUWatchpoint**, align 8
  %.reg2mem = alloca %struct.CPUState*, align 8
  store %struct.CPUArchState* @main.env, %struct.CPUArchState** getelementptr inbounds (%struct.CPUState, %struct.CPUState* @global_cpu, i64 0, i32 4), align 8, !tbaa !12
  store %struct.CPUWatchpoint* @main.wp1, %struct.CPUWatchpoint** getelementptr inbounds (%struct.CPUState, %struct.CPUState* @global_cpu, i64 0, i32 0), align 8, !tbaa !13
  store i64 305418240, i64* getelementptr inbounds (%struct.CPUState, %struct.CPUState* @global_cpu, i64 0, i32 2), align 8, !tbaa !14
  br label %.split.split

.split.split:                                     ; preds = %.split
  %1 = load %struct.CPUState*, %struct.CPUState** @current_cpu, align 8, !tbaa !15
  store %struct.CPUState* %1, %struct.CPUState** %.reg2mem, align 8
  %.reload4 = load %struct.CPUState*, %struct.CPUState** %.reg2mem, align 8
  %2 = getelementptr inbounds %struct.CPUState, %struct.CPUState* %.reload4, i64 0, i32 1
  store %struct.CPUWatchpoint** %2, %struct.CPUWatchpoint*** %.reg2mem5, align 8
  %.reload8 = load %struct.CPUWatchpoint**, %struct.CPUWatchpoint*** %.reg2mem5, align 8
  %3 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %.reload8, align 8, !tbaa !16
  store %struct.CPUWatchpoint* %3, %struct.CPUWatchpoint** %.reg2mem9, align 8
  %switchVar = alloca i32, align 4
  store i32 534564903, i32* %switchVar, align 4
  %.reg2mem22 = alloca %struct.CPUWatchpoint*, align 8
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %originalBBpart271
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 534564903, label %first
    i32 -525087922, label %46
    i32 2123621310, label %48
    i32 29202997, label %118
    i32 -631325117, label %166
    i32 -610658312, label %176
    i32 1619239782, label %190
    i32 -2048555828, label %193
    i32 -829701273, label %248
    i32 -881890935, label %309
    i32 -1489188382, label %314
  ]

switchDefault:                                    ; preds = %loopEntry.split
  %4 = load i32, i32* @x.19, align 4
  %5 = load i32, i32* @y.20, align 4
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %6 = add i32 %4, -1850186808
  %7 = sub i32 %6, 1
  %8 = sub i32 %7, -1850186808
  %9 = sub i32 %4, 1
  %10 = mul i32 %4, %8
  %11 = urem i32 %10, 2
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %12 = icmp eq i32 %11, 0
  %13 = icmp slt i32 %5, 10
  %14 = and i1 %12, %13
  %15 = xor i1 %12, %13
  %16 = or i1 %14, %15
  %17 = or i1 %12, %13
  br i1 %16, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %switchDefault.split.split, %originalBBalteredBB
  %18 = load i32, i32* @x.19, align 4
  %19 = load i32, i32* @y.20, align 4
  %20 = sub i32 %18, 885070157
  %21 = sub i32 %20, 1
  %22 = add i32 %21, 885070157
  %23 = sub i32 %18, 1
  %24 = mul i32 %18, %22
  %25 = urem i32 %24, 2
  %26 = icmp eq i32 %25, 0
  %27 = icmp slt i32 %19, 10
  %28 = xor i1 %26, true
  %29 = xor i1 %27, true
  %30 = xor i1 true, true
  %31 = and i1 %28, true
  %32 = and i1 %26, %30
  %33 = and i1 %29, true
  %34 = and i1 %27, %30
  %35 = or i1 %31, %32
  %36 = or i1 %33, %34
  %37 = xor i1 %35, %36
  %38 = or i1 %28, %29
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %39 = xor i1 %38, true
  %40 = or i1 true, %30
  %41 = and i1 %39, %40
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %42 = or i1 %37, %41
  %43 = or i1 %26, %27
  br i1 %42, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload10 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %.reg2mem9, align 8
  br label %first.split

first.split:                                      ; preds = %first
  %44 = icmp eq %struct.CPUWatchpoint* %.reload10, null
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  %45 = select i1 %44, i32 2123621310, i32 -525087922
  store i32 %45, i32* %switchVar, align 4
  br label %loopEnd

46:                                               ; preds = %loopEntry.split
  %47 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 1) #8
  br label %.split73

.split73:                                         ; preds = %46
  store i32 -1489188382, i32* %switchVar, align 4
  br label %.split73.split

.split73.split:                                   ; preds = %.split73
  br label %loopEnd

48:                                               ; preds = %loopEntry.split
  %49 = load i32, i32* @x.19, align 4
  %50 = load i32, i32* @y.20, align 4
  %51 = add i32 %49, 87870063
  br label %.split74

.split74:                                         ; preds = %48
  %52 = sub i32 %51, 1
  %53 = sub i32 %52, 87870063
  %54 = sub i32 %49, 1
  %55 = mul i32 %49, %53
  %56 = urem i32 %55, 2
  %57 = icmp eq i32 %56, 0
  %58 = icmp slt i32 %50, 10
  %59 = and i1 %57, %58
  br label %.split74.split

.split74.split:                                   ; preds = %.split74
  %60 = xor i1 %57, %58
  %61 = or i1 %59, %60
  %62 = or i1 %57, %58
  br i1 %61, label %originalBB28, label %originalBB28alteredBB

originalBB28:                                     ; preds = %.split74.split, %originalBB28alteredBB.split.split
  %.reload3 = load %struct.CPUState*, %struct.CPUState** %.reg2mem, align 8
  %63 = getelementptr inbounds %struct.CPUState, %struct.CPUState* %.reload3, i64 0, i32 2
  %64 = load i64, i64* %63, align 8, !tbaa !14
  %65 = xor i64 %64, -1
  %66 = xor i64 4294963200, -1
  %67 = xor i64 4701381508157982252, -1
  %68 = or i64 %65, %66
  %69 = or i64 4701381508157982252, %67
  %70 = xor i64 %68, -1
  %71 = and i64 %70, %69
  %72 = and i64 %64, 4294963200
  %73 = xor i64 %71, -1
  %74 = xor i64 16, -1
  %75 = xor i64 1120150726671604343, -1
  %76 = and i64 %73, 1120150726671604343
  %77 = and i64 %71, %75
  %78 = and i64 %74, 1120150726671604343
  %79 = and i64 16, %75
  %80 = or i64 %76, %77
  %81 = or i64 %78, %79
  %82 = xor i64 %80, %81
  %83 = or i64 %73, %74
  %84 = xor i64 %83, -1
  %85 = or i64 1120150726671604343, %75
  br label %originalBB28.split

originalBB28.split:                               ; preds = %originalBB28
  %86 = and i64 %84, %85
  %87 = or i64 %82, %86
  %88 = or i64 %71, 16
  store i64 %87, i64* %.reg2mem11, align 8
  %.reload2 = load %struct.CPUState*, %struct.CPUState** %.reg2mem, align 8
  %89 = getelementptr inbounds %struct.CPUState, %struct.CPUState* %.reload2, i64 0, i32 0
  %90 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %89, align 8, !tbaa !15
  %91 = icmp eq %struct.CPUWatchpoint* %90, null
  %92 = select i1 %91, i32 -1489188382, i32 29202997
  store i32 %92, i32* %switchVar, align 4
  store %struct.CPUWatchpoint* %90, %struct.CPUWatchpoint** %.reg2mem22, align 8
  %93 = load i32, i32* @x.19, align 4
  %94 = load i32, i32* @y.20, align 4
  %95 = sub i32 0, 1
  %96 = add i32 %93, %95
  %97 = sub i32 %93, 1
  %98 = mul i32 %93, %96
  %99 = urem i32 %98, 2
  %100 = icmp eq i32 %99, 0
  %101 = icmp slt i32 %94, 10
  %102 = xor i1 %100, true
  %103 = xor i1 %101, true
  %104 = xor i1 false, true
  %105 = and i1 %102, false
  %106 = and i1 %100, %104
  %107 = and i1 %103, false
  %108 = and i1 %101, %104
  %109 = or i1 %105, %106
  %110 = or i1 %107, %108
  %111 = xor i1 %109, %110
  br label %originalBB28.split.split

originalBB28.split.split:                         ; preds = %originalBB28.split
  %112 = or i1 %102, %103
  %113 = xor i1 %112, true
  %114 = or i1 false, %104
  %115 = and i1 %113, %114
  %116 = or i1 %111, %115
  %117 = or i1 %100, %101
  br i1 %116, label %originalBBpart244, label %originalBB28alteredBB

originalBBpart244:                                ; preds = %originalBB28.split.split
  br label %loopEnd

118:                                              ; preds = %loopEntry.split
  %119 = load i32, i32* @x.19, align 4
  %120 = load i32, i32* @y.20, align 4
  %121 = sub i32 %119, -2024399032
  %122 = sub i32 %121, 1
  %123 = add i32 %122, -2024399032
  br label %.split75

.split75:                                         ; preds = %118
  %124 = sub i32 %119, 1
  %125 = mul i32 %119, %123
  br label %.split75.split

.split75.split:                                   ; preds = %.split75
  %126 = urem i32 %125, 2
  %127 = icmp eq i32 %126, 0
  %128 = icmp slt i32 %120, 10
  %129 = xor i1 %127, true
  %130 = xor i1 %128, true
  %131 = xor i1 true, true
  %132 = and i1 %129, true
  %133 = and i1 %127, %131
  %134 = and i1 %130, true
  %135 = and i1 %128, %131
  %136 = or i1 %132, %133
  %137 = or i1 %134, %135
  %138 = xor i1 %136, %137
  %139 = or i1 %129, %130
  %140 = xor i1 %139, true
  %141 = or i1 true, %131
  %142 = and i1 %140, %141
  %143 = or i1 %138, %142
  %144 = or i1 %127, %128
  br i1 %143, label %originalBB46, label %originalBB46alteredBB

originalBB46:                                     ; preds = %.split75.split, %originalBB46alteredBB.split.split
  %.reload23 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %.reg2mem22, align 8
  br label %originalBB46.split

originalBB46.split:                               ; preds = %originalBB46
  store %struct.CPUWatchpoint* %.reload23, %struct.CPUWatchpoint** %.reload23.reg2mem, align 8
  %.reload23.reload = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %.reload23.reg2mem, align 8
  %145 = getelementptr inbounds %struct.CPUWatchpoint, %struct.CPUWatchpoint* %.reload23.reload, i64 0, i32 2
  store i32* %145, i32** %.reg2mem13, align 8
  %.reload17 = load i32*, i32** %.reg2mem13, align 8
  %146 = load i32, i32* %.reload17, align 4, !tbaa !17
  store i32 %146, i32* %.reg2mem18, align 4
  %.reload21 = load i32, i32* %.reg2mem18, align 4
  %147 = xor i32 1, -1
  %148 = xor i32 %.reload21, %147
  %149 = and i32 %148, %.reload21
  %150 = and i32 %.reload21, 1
  %151 = icmp eq i32 %149, 0
  %152 = select i1 %151, i32 -829701273, i32 -631325117
  store i32 %152, i32* %switchVar, align 4
  %153 = load i32, i32* @x.19, align 4
  %154 = load i32, i32* @y.20, align 4
  %155 = sub i32 0, 1
  %156 = add i32 %153, %155
  %157 = sub i32 %153, 1
  %158 = mul i32 %153, %156
  %159 = urem i32 %158, 2
  %160 = icmp eq i32 %159, 0
  %161 = icmp slt i32 %154, 10
  %162 = and i1 %160, %161
  %163 = xor i1 %160, %161
  br label %originalBB46.split.split

originalBB46.split.split:                         ; preds = %originalBB46.split
  %164 = or i1 %162, %163
  %165 = or i1 %160, %161
  br i1 %164, label %originalBBpart257, label %originalBB46alteredBB

originalBBpart257:                                ; preds = %originalBB46.split.split
  br label %loopEnd

166:                                              ; preds = %loopEntry.split
  %.reload20 = load i32, i32* %.reg2mem18, align 4
  %167 = and i32 %.reload20, 16
  %168 = xor i32 %.reload20, 16
  %169 = or i32 %167, %168
  br label %.split76

.split76:                                         ; preds = %166
  %170 = or i32 %.reload20, 16
  %.reload16 = load i32*, i32** %.reg2mem13, align 8
  store i32 %169, i32* %.reload16, align 4, !tbaa !17
  %.reload23.reload24 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %.reload23.reg2mem, align 8
  %171 = getelementptr inbounds %struct.CPUWatchpoint, %struct.CPUWatchpoint* %.reload23.reload24, i64 0, i32 0
  %.reload12 = load i64, i64* %.reg2mem11, align 8
  store i64 %.reload12, i64* %171, align 8, !tbaa !20
  %.reload23.reload25 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %.reload23.reg2mem, align 8
  br label %.split76.split

.split76.split:                                   ; preds = %.split76
  %172 = getelementptr inbounds %struct.CPUWatchpoint, %struct.CPUWatchpoint* %.reload23.reload25, i64 0, i32 1, i32 0
  store i32 0, i32* %172, align 8, !tbaa.struct !21
  %.reload7 = load %struct.CPUWatchpoint**, %struct.CPUWatchpoint*** %.reg2mem5, align 8
  %173 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %.reload7, align 8, !tbaa !16
  %174 = icmp eq %struct.CPUWatchpoint* %173, null
  %175 = select i1 %174, i32 -610658312, i32 -881890935
  store i32 %175, i32* %switchVar, align 4
  br label %loopEnd

176:                                              ; preds = %loopEntry.split
  %.reload6 = load %struct.CPUWatchpoint**, %struct.CPUWatchpoint*** %.reg2mem5, align 8
  br label %.split77

.split77:                                         ; preds = %176
  %.reload23.reload27 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %.reload23.reg2mem, align 8
  store %struct.CPUWatchpoint* %.reload23.reload27, %struct.CPUWatchpoint** %.reload6, align 8, !tbaa !16
  %177 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str, i64 0, i64 0)) #8
  %178 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.7, i64 0, i64 0)) #8
  %.reload14 = load i32*, i32** %.reg2mem13, align 8
  %179 = load i32, i32* %.reload14, align 4, !tbaa !17
  %180 = xor i32 %179, -1
  %181 = xor i32 128, -1
  %182 = xor i32 -772006327, -1
  br label %.split77.split

.split77.split:                                   ; preds = %.split77
  %183 = or i32 %180, %181
  %184 = or i32 -772006327, %182
  %185 = xor i32 %183, -1
  %186 = and i32 %185, %184
  %187 = and i32 %179, 128
  %188 = icmp eq i32 %186, 0
  %189 = select i1 %188, i32 -2048555828, i32 1619239782
  store i32 %189, i32* %switchVar, align 4
  br label %loopEnd

190:                                              ; preds = %loopEntry.split
  %.reload = load %struct.CPUState*, %struct.CPUState** %.reg2mem, align 8
  %191 = getelementptr inbounds %struct.CPUState, %struct.CPUState* %.reload, i64 0, i32 3
  store i32 123, i32* %191, align 8, !tbaa !3
  br label %.split78

.split78:                                         ; preds = %190
  %192 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 noundef 123) #8
  br label %.split78.split

.split78.split:                                   ; preds = %.split78
  call void @exit(i32 noundef 0) #7
  unreachable

193:                                              ; preds = %loopEntry.split
  %194 = load i32, i32* @x.19, align 4
  %195 = load i32, i32* @y.20, align 4
  %196 = sub i32 %194, -1770532836
  %197 = sub i32 %196, 1
  %198 = add i32 %197, -1770532836
  %199 = sub i32 %194, 1
  %200 = mul i32 %194, %198
  br label %.split79

.split79:                                         ; preds = %193
  %201 = urem i32 %200, 2
  %202 = icmp eq i32 %201, 0
  br label %.split79.split

.split79.split:                                   ; preds = %.split79
  %203 = icmp slt i32 %195, 10
  %204 = xor i1 %202, true
  %205 = xor i1 %203, true
  %206 = xor i1 true, true
  %207 = and i1 %204, true
  %208 = and i1 %202, %206
  %209 = and i1 %205, true
  %210 = and i1 %203, %206
  %211 = or i1 %207, %208
  %212 = or i1 %209, %210
  %213 = xor i1 %211, %212
  %214 = or i1 %204, %205
  %215 = xor i1 %214, true
  %216 = or i1 true, %206
  %217 = and i1 %215, %216
  %218 = or i1 %213, %217
  %219 = or i1 %202, %203
  br i1 %218, label %originalBB59, label %originalBB59alteredBB

originalBB59:                                     ; preds = %.split79.split, %originalBB59alteredBB.split.split
  %220 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.9, i64 0, i64 0)) #8
  %221 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 noundef 4096) #8
  %222 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([57 x i8], [57 x i8]* @str.8, i64 0, i64 0)) #8
  call void @exit(i32 noundef 0) #7
  %223 = load i32, i32* @x.19, align 4
  %224 = load i32, i32* @y.20, align 4
  %225 = sub i32 0, 1
  %226 = add i32 %223, %225
  br label %originalBB59.split

originalBB59.split:                               ; preds = %originalBB59
  %227 = sub i32 %223, 1
  %228 = mul i32 %223, %226
  %229 = urem i32 %228, 2
  %230 = icmp eq i32 %229, 0
  %231 = icmp slt i32 %224, 10
  %232 = xor i1 %230, true
  %233 = xor i1 %231, true
  %234 = xor i1 true, true
  %235 = and i1 %232, true
  %236 = and i1 %230, %234
  %237 = and i1 %233, true
  %238 = and i1 %231, %234
  br label %originalBB59.split.split

originalBB59.split.split:                         ; preds = %originalBB59.split
  %239 = or i1 %235, %236
  %240 = or i1 %237, %238
  %241 = xor i1 %239, %240
  %242 = or i1 %232, %233
  %243 = xor i1 %242, true
  %244 = or i1 true, %234
  %245 = and i1 %243, %244
  %246 = or i1 %241, %245
  %247 = or i1 %230, %231
  br i1 %246, label %originalBBpart261, label %originalBB59alteredBB

originalBBpart261:                                ; preds = %originalBB59.split.split
  unreachable

248:                                              ; preds = %loopEntry.split
  %249 = load i32, i32* @x.19, align 4
  %250 = load i32, i32* @y.20, align 4
  %251 = add i32 %249, 356900669
  %252 = sub i32 %251, 1
  %253 = sub i32 %252, 356900669
  %254 = sub i32 %249, 1
  %255 = mul i32 %249, %253
  br label %.split80

.split80:                                         ; preds = %248
  %256 = urem i32 %255, 2
  %257 = icmp eq i32 %256, 0
  %258 = icmp slt i32 %250, 10
  %259 = xor i1 %257, true
  %260 = xor i1 %258, true
  %261 = xor i1 true, true
  %262 = and i1 %259, true
  br label %.split80.split

.split80.split:                                   ; preds = %.split80
  %263 = and i1 %257, %261
  %264 = and i1 %260, true
  %265 = and i1 %258, %261
  %266 = or i1 %262, %263
  %267 = or i1 %264, %265
  %268 = xor i1 %266, %267
  %269 = or i1 %259, %260
  %270 = xor i1 %269, true
  %271 = or i1 true, %261
  %272 = and i1 %270, %271
  %273 = or i1 %268, %272
  %274 = or i1 %257, %258
  br i1 %273, label %originalBB63, label %originalBB63alteredBB

originalBB63:                                     ; preds = %.split80.split, %originalBB63alteredBB.split.split
  %.reload19 = load i32, i32* %.reg2mem18, align 4
  %275 = xor i32 %.reload19, -1
  %276 = xor i32 -257, -1
  %277 = xor i32 575277536, -1
  %278 = or i32 %275, %276
  %279 = or i32 575277536, %277
  %280 = xor i32 %278, -1
  %281 = and i32 %280, %279
  %282 = and i32 %.reload19, -257
  %.reload15 = load i32*, i32** %.reg2mem13, align 8
  store i32 %281, i32* %.reload15, align 4, !tbaa !17
  br label %originalBB63.split

originalBB63.split:                               ; preds = %originalBB63
  store i32 -881890935, i32* %switchVar, align 4
  %283 = load i32, i32* @x.19, align 4
  %284 = load i32, i32* @y.20, align 4
  %285 = sub i32 %283, -798091313
  %286 = sub i32 %285, 1
  br label %originalBB63.split.split

originalBB63.split.split:                         ; preds = %originalBB63.split
  %287 = add i32 %286, -798091313
  %288 = sub i32 %283, 1
  %289 = mul i32 %283, %287
  %290 = urem i32 %289, 2
  %291 = icmp eq i32 %290, 0
  %292 = icmp slt i32 %284, 10
  %293 = xor i1 %291, true
  %294 = xor i1 %292, true
  %295 = xor i1 true, true
  %296 = and i1 %293, true
  %297 = and i1 %291, %295
  %298 = and i1 %294, true
  %299 = and i1 %292, %295
  %300 = or i1 %296, %297
  %301 = or i1 %298, %299
  %302 = xor i1 %300, %301
  %303 = or i1 %293, %294
  %304 = xor i1 %303, true
  %305 = or i1 true, %295
  %306 = and i1 %304, %305
  %307 = or i1 %302, %306
  %308 = or i1 %291, %292
  br i1 %307, label %originalBBpart267, label %originalBB63alteredBB

originalBBpart267:                                ; preds = %originalBB63.split.split
  br label %loopEnd

309:                                              ; preds = %loopEntry.split
  %.reload23.reload26 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %.reload23.reg2mem, align 8
  %310 = getelementptr inbounds %struct.CPUWatchpoint, %struct.CPUWatchpoint* %.reload23.reload26, i64 0, i32 3
  %311 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %310, align 8, !tbaa !15
  %312 = icmp eq %struct.CPUWatchpoint* %311, null
  %313 = select i1 %312, i32 -1489188382, i32 29202997
  br label %.split81

.split81:                                         ; preds = %309
  store i32 %313, i32* %switchVar, align 4
  store %struct.CPUWatchpoint* %311, %struct.CPUWatchpoint** %.reg2mem22, align 8
  br label %.split81.split

.split81.split:                                   ; preds = %.split81
  br label %loopEnd

314:                                              ; preds = %loopEntry.split
  ret i32 0

loopEnd:                                          ; preds = %.split81.split, %originalBBpart267, %.split77.split, %.split76.split, %originalBBpart257, %originalBBpart244, %.split73.split, %first.split.split, %originalBBpart2
  %315 = load i32, i32* @x.19, align 4
  %316 = load i32, i32* @y.20, align 4
  %317 = add i32 %315, -1312523981
  %318 = sub i32 %317, 1
  %319 = sub i32 %318, -1312523981
  %320 = sub i32 %315, 1
  %321 = mul i32 %315, %319
  %322 = urem i32 %321, 2
  br label %loopEnd.split

loopEnd.split:                                    ; preds = %loopEnd
  %323 = icmp eq i32 %322, 0
  %324 = icmp slt i32 %316, 10
  br label %loopEnd.split.split

loopEnd.split.split:                              ; preds = %loopEnd.split
  %325 = and i1 %323, %324
  %326 = xor i1 %323, %324
  %327 = or i1 %325, %326
  %328 = or i1 %323, %324
  br i1 %327, label %originalBB69, label %originalBB69alteredBB

originalBB69:                                     ; preds = %loopEnd.split.split, %originalBB69alteredBB
  %329 = load i32, i32* @x.19, align 4
  br label %originalBB69.split

originalBB69.split:                               ; preds = %originalBB69
  %330 = load i32, i32* @y.20, align 4
  br label %originalBB69.split.split

originalBB69.split.split:                         ; preds = %originalBB69.split
  %331 = add i32 %329, -1300919459
  %332 = sub i32 %331, 1
  %333 = sub i32 %332, -1300919459
  %334 = sub i32 %329, 1
  %335 = mul i32 %329, %333
  %336 = urem i32 %335, 2
  %337 = icmp eq i32 %336, 0
  %338 = icmp slt i32 %330, 10
  %339 = xor i1 %337, true
  %340 = xor i1 %338, true
  %341 = xor i1 true, true
  %342 = and i1 %339, true
  %343 = and i1 %337, %341
  %344 = and i1 %340, true
  %345 = and i1 %338, %341
  %346 = or i1 %342, %343
  %347 = or i1 %344, %345
  %348 = xor i1 %346, %347
  %349 = or i1 %339, %340
  %350 = xor i1 %349, true
  %351 = or i1 true, %341
  %352 = and i1 %350, %351
  %353 = or i1 %348, %352
  %354 = or i1 %337, %338
  br i1 %353, label %originalBBpart271, label %originalBB69alteredBB

originalBBpart271:                                ; preds = %originalBB69.split.split
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %switchDefault.split.split
  br label %originalBB

originalBB28alteredBB:                            ; preds = %originalBB28.split.split, %.split74.split
  %.reload3alteredBB = load %struct.CPUState*, %struct.CPUState** %.reg2mem, align 8
  %355 = getelementptr inbounds %struct.CPUState, %struct.CPUState* %.reload3alteredBB, i64 0, i32 2
  %356 = load i64, i64* %355, align 8, !tbaa !14
  %357 = sub i64 0, -1271085508547190623
  %358 = sub i64 %357, %356
  %359 = add i64 %358, -1271085508547190623
  %_ = sub i64 0, %356
  %360 = sub i64 %359, -536421196921892962
  %361 = add i64 %360, 4294963200
  %362 = add i64 %361, -536421196921892962
  %gen = add i64 %359, 4294963200
  %_29 = shl i64 %356, 4294963200
  %363 = sub i64 0, -2538108495628250842
  %364 = sub i64 %363, %356
  %365 = add i64 %364, -2538108495628250842
  %_30 = sub i64 0, %356
  %366 = sub i64 0, 4294963200
  %367 = sub i64 %365, %366
  %gen31 = add i64 %365, 4294963200
  %_32 = shl i64 %356, 4294963200
  %368 = add i64 0, -6953958939681469713
  %369 = sub i64 %368, %356
  %370 = sub i64 %369, -6953958939681469713
  %_33 = sub i64 0, %356
  %371 = sub i64 %370, 9070537499033265721
  %372 = add i64 %371, 4294963200
  %373 = add i64 %372, 9070537499033265721
  %gen34 = add i64 %370, 4294963200
  %374 = xor i64 %356, -1
  %375 = xor i64 4294963200, -1
  %376 = xor i64 4962870270908137950, -1
  br label %originalBB28alteredBB.split

originalBB28alteredBB.split:                      ; preds = %originalBB28alteredBB
  %377 = or i64 %374, %375
  %378 = or i64 4962870270908137950, %376
  %379 = xor i64 %377, -1
  %380 = and i64 %379, %378
  %381 = and i64 %356, 4294963200
  %382 = sub i64 0, %380
  %383 = add i64 0, %382
  %_35 = sub i64 0, %380
  %384 = add i64 %383, -2720433238452398764
  %385 = add i64 %384, 16
  %386 = sub i64 %385, -2720433238452398764
  %gen36 = add i64 %383, 16
  %_37 = shl i64 %380, 16
  %_38 = shl i64 %380, 16
  %387 = sub i64 0, %380
  %388 = add i64 0, %387
  %_39 = sub i64 0, %380
  %389 = add i64 %388, -192544273571139320
  %390 = add i64 %389, 16
  %391 = sub i64 %390, -192544273571139320
  %gen40 = add i64 %388, 16
  %392 = sub i64 0, -1908332193628098611
  %393 = sub i64 %392, %380
  %394 = add i64 %393, -1908332193628098611
  %_41 = sub i64 0, %380
  %395 = sub i64 0, 16
  %396 = sub i64 %394, %395
  %gen42 = add i64 %394, 16
  %397 = xor i64 %380, -1
  %398 = xor i64 16, -1
  %399 = xor i64 8318830423243822453, -1
  %400 = and i64 %397, 8318830423243822453
  %401 = and i64 %380, %399
  %402 = and i64 %398, 8318830423243822453
  %403 = and i64 16, %399
  br label %originalBB28alteredBB.split.split

originalBB28alteredBB.split.split:                ; preds = %originalBB28alteredBB.split
  %404 = or i64 %400, %401
  %405 = or i64 %402, %403
  %406 = xor i64 %404, %405
  %407 = or i64 %397, %398
  %408 = xor i64 %407, -1
  %409 = or i64 8318830423243822453, %399
  %410 = and i64 %408, %409
  %411 = or i64 %406, %410
  %412 = or i64 %380, 16
  store i64 %411, i64* %.reg2mem11, align 8
  %.reload2alteredBB = load %struct.CPUState*, %struct.CPUState** %.reg2mem, align 8
  %413 = getelementptr inbounds %struct.CPUState, %struct.CPUState* %.reload2alteredBB, i64 0, i32 0
  %414 = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %413, align 8, !tbaa !15
  %415 = icmp eq %struct.CPUWatchpoint* %414, null
  %416 = select i1 %415, i32 -1489188382, i32 29202997
  store i32 %416, i32* %switchVar, align 4
  store %struct.CPUWatchpoint* %414, %struct.CPUWatchpoint** %.reg2mem22, align 8
  br label %originalBB28

originalBB46alteredBB:                            ; preds = %originalBB46.split.split, %.split75.split
  %.reload23alteredBB = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %.reg2mem22, align 8
  store %struct.CPUWatchpoint* %.reload23alteredBB, %struct.CPUWatchpoint** %.reload23.reg2mem, align 8
  %.reload23.reloadalteredBB = load %struct.CPUWatchpoint*, %struct.CPUWatchpoint** %.reload23.reg2mem, align 8
  %417 = getelementptr inbounds %struct.CPUWatchpoint, %struct.CPUWatchpoint* %.reload23.reloadalteredBB, i64 0, i32 2
  store i32* %417, i32** %.reg2mem13, align 8
  %.reload17alteredBB = load i32*, i32** %.reg2mem13, align 8
  %418 = load i32, i32* %.reload17alteredBB, align 4, !tbaa !17
  store i32 %418, i32* %.reg2mem18, align 4
  %.reload21alteredBB = load i32, i32* %.reg2mem18, align 4
  %419 = sub i32 %.reload21alteredBB, 1422673922
  %420 = sub i32 %419, 1
  br label %originalBB46alteredBB.split

originalBB46alteredBB.split:                      ; preds = %originalBB46alteredBB
  %421 = add i32 %420, 1422673922
  %_47 = sub i32 %.reload21alteredBB, 1
  %gen48 = mul i32 %421, 1
  %422 = add i32 0, 758373872
  %423 = sub i32 %422, %.reload21alteredBB
  %424 = sub i32 %423, 758373872
  %_49 = sub i32 0, %.reload21alteredBB
  %425 = sub i32 0, 1
  %426 = sub i32 %424, %425
  %gen50 = add i32 %424, 1
  %_51 = shl i32 %.reload21alteredBB, 1
  %427 = add i32 0, 1773649781
  %428 = sub i32 %427, %.reload21alteredBB
  %429 = sub i32 %428, 1773649781
  %_52 = sub i32 0, %.reload21alteredBB
  %430 = sub i32 0, %429
  %431 = sub i32 0, 1
  %432 = add i32 %430, %431
  %433 = sub i32 0, %432
  %gen53 = add i32 %429, 1
  %434 = add i32 0, 1722834219
  %435 = sub i32 %434, %.reload21alteredBB
  %436 = sub i32 %435, 1722834219
  %_54 = sub i32 0, %.reload21alteredBB
  %437 = sub i32 0, %436
  %438 = sub i32 0, 1
  %439 = add i32 %437, %438
  %440 = sub i32 0, %439
  %gen55 = add i32 %436, 1
  %441 = xor i32 %.reload21alteredBB, -1
  %442 = xor i32 1, -1
  %443 = xor i32 1548060202, -1
  %444 = or i32 %441, %442
  br label %originalBB46alteredBB.split.split

originalBB46alteredBB.split.split:                ; preds = %originalBB46alteredBB.split
  %445 = or i32 1548060202, %443
  %446 = xor i32 %444, -1
  %447 = and i32 %446, %445
  %448 = and i32 %.reload21alteredBB, 1
  %449 = icmp eq i32 %447, 0
  %450 = select i1 %449, i32 -829701273, i32 -631325117
  store i32 %450, i32* %switchVar, align 4
  br label %originalBB46

originalBB59alteredBB:                            ; preds = %originalBB59.split.split, %.split79.split
  %451 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.9, i64 0, i64 0)) #8
  %452 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 noundef 4096) #8
  br label %originalBB59alteredBB.split

originalBB59alteredBB.split:                      ; preds = %originalBB59alteredBB
  %453 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([57 x i8], [57 x i8]* @str.8, i64 0, i64 0)) #8
  br label %originalBB59alteredBB.split.split

originalBB59alteredBB.split.split:                ; preds = %originalBB59alteredBB.split
  call void @exit(i32 noundef 0) #7
  br label %originalBB59

originalBB63alteredBB:                            ; preds = %originalBB63.split.split, %.split80.split
  %.reload19alteredBB = load i32, i32* %.reg2mem18, align 4
  %_64 = shl i32 %.reload19alteredBB, -257
  br label %originalBB63alteredBB.split

originalBB63alteredBB.split:                      ; preds = %originalBB63alteredBB
  %_65 = shl i32 %.reload19alteredBB, -257
  %454 = xor i32 %.reload19alteredBB, -1
  %455 = xor i32 -257, -1
  %456 = xor i32 1608781301, -1
  %457 = or i32 %454, %455
  %458 = or i32 1608781301, %456
  %459 = xor i32 %457, -1
  %460 = and i32 %459, %458
  %461 = and i32 %.reload19alteredBB, -257
  br label %originalBB63alteredBB.split.split

originalBB63alteredBB.split.split:                ; preds = %originalBB63alteredBB.split
  %.reload15alteredBB = load i32*, i32** %.reg2mem13, align 8
  store i32 %460, i32* %.reload15alteredBB, align 4, !tbaa !17
  store i32 -881890935, i32* %switchVar, align 4
  br label %originalBB63

originalBB69alteredBB:                            ; preds = %originalBB69.split.split, %loopEnd.split.split
  br label %originalBB69
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !9, i64 24}
!4 = !{!"CPUState", !5, i64 0, !5, i64 8, !8, i64 16, !9, i64 24, !5, i64 32}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!8, !8, i64 0}
!11 = !{!9, !9, i64 0}
!12 = !{!4, !5, i64 32}
!13 = !{!4, !5, i64 0}
!14 = !{!4, !8, i64 16}
!15 = !{!5, !5, i64 0}
!16 = !{!4, !5, i64 8}
!17 = !{!18, !9, i64 12}
!18 = !{!"CPUWatchpoint", !8, i64 0, !19, i64 8, !9, i64 12, !5, i64 16}
!19 = !{!"", !9, i64 0}
!20 = !{!18, !8, i64 0}
!21 = !{i64 0, i64 4, !11}

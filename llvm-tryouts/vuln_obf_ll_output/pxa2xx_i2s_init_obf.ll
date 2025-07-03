; ModuleID = 'pxa2xx_i2s_init_obf.bc'
source_filename = "pxa2xx_i2s_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.PXA2xxI2SState = type { void (i8*)*, void (i8*)*, void (i8*)*, {}*, %struct.MemoryRegion }
%struct.MemoryRegion = type { i8*, i64, i8* }

@.str.1 = private unnamed_addr constant [40 x i8] c"Mapped '%s' at base 0x%lx (size 0x%lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Registered VM state at base 0x%lx\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"g_malloc0: allocation failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"I2S device initialized at %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"pxa2xx-i2s\00", align 1
@str = private unnamed_addr constant [14 x i8] c"Resetting I2S\00", align 1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @dummy_irq(i8* nocapture %0) #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @pxa2xx_i2s_data_req(%struct.PXA2xxI2SState* nocapture %0) #0 {
  %2 = load i32, i32* @x.1, align 4
  %3 = load i32, i32* @y.2, align 4
  %4 = sub i32 %2, -1941379488
  %5 = sub i32 %4, 1
  %6 = add i32 %5, -1941379488
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  %12 = xor i1 %10, true
  %13 = xor i1 %11, true
  %14 = xor i1 false, true
  %15 = and i1 %12, false
  %16 = and i1 %10, %14
  br label %.split

.split:                                           ; preds = %1
  %17 = and i1 %13, false
  %18 = and i1 %11, %14
  %19 = or i1 %15, %16
  %20 = or i1 %17, %18
  %21 = xor i1 %19, %20
  %22 = or i1 %12, %13
  %23 = xor i1 %22, true
  %24 = or i1 false, %14
  %25 = and i1 %23, %24
  br label %.split.split

.split.split:                                     ; preds = %.split
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %28 = load i32, i32* @x.1, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %29 = load i32, i32* @y.2, align 4
  %30 = sub i32 0, 1
  %31 = add i32 %28, %30
  %32 = sub i32 %28, 1
  %33 = mul i32 %28, %31
  %34 = urem i32 %33, 2
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %35 = icmp eq i32 %34, 0
  %36 = icmp slt i32 %29, 10
  %37 = and i1 %35, %36
  %38 = xor i1 %35, %36
  %39 = or i1 %37, %38
  %40 = or i1 %35, %36
  br i1 %39, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @pxa2xx_i2s_reset(%struct.PXA2xxI2SState* nocapture readnone %0) local_unnamed_addr #1 {
  %2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str, i64 0, i64 0))
  br label %.split

.split:                                           ; preds = %1
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @memory_region_init_io(%struct.MemoryRegion* nocapture noundef writeonly %0, i8* nocapture readnone %1, i8* nocapture readnone %2, i8* noundef %3, i8* noundef %4, i64 noundef %5) local_unnamed_addr #3 {
  %7 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %0, i64 0, i32 0
  store i8* %4, i8** %7, align 8, !tbaa !3
  br label %.split

.split:                                           ; preds = %6
  %8 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %0, i64 0, i32 1
  br label %.split.split

.split.split:                                     ; preds = %.split
  store i64 %5, i64* %8, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %0, i64 0, i32 2
  store i8* %3, i8** %9, align 8, !tbaa !10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @memory_region_add_subregion(%struct.MemoryRegion* nocapture readnone %0, i64 noundef %1, %struct.MemoryRegion* nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %2, i64 0, i32 0
  br label %.split

.split:                                           ; preds = %3
  %5 = load i8*, i8** %4, align 8, !tbaa !3
  %6 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %2, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !9
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* noundef %5, i64 noundef %1, i64 noundef %7)
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @vmstate_register(i8* nocapture readnone %0, i64 noundef %1, i8* nocapture readnone %2, i8* nocapture readnone %3) local_unnamed_addr #1 {
  %5 = load i32, i32* @x.9, align 4
  %6 = load i32, i32* @y.10, align 4
  %7 = sub i32 0, 1
  %8 = add i32 %5, %7
  %9 = sub i32 %5, 1
  %10 = mul i32 %5, %8
  %11 = urem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = icmp slt i32 %6, 10
  br label %.split

.split:                                           ; preds = %4
  %14 = and i1 %12, %13
  %15 = xor i1 %12, %13
  %16 = or i1 %14, %15
  %17 = or i1 %12, %13
  br label %.split.split

.split.split:                                     ; preds = %.split
  br i1 %16, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 noundef %1)
  %19 = load i32, i32* @x.9, align 4
  %20 = load i32, i32* @y.10, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %21 = sub i32 0, 1
  %22 = add i32 %19, %21
  %23 = sub i32 %19, 1
  %24 = mul i32 %19, %22
  %25 = urem i32 %24, 2
  %26 = icmp eq i32 %25, 0
  %27 = icmp slt i32 %20, 10
  %28 = xor i1 %26, true
  %29 = xor i1 %27, true
  %30 = xor i1 false, true
  %31 = and i1 %28, false
  %32 = and i1 %26, %30
  %33 = and i1 %29, false
  %34 = and i1 %27, %30
  %35 = or i1 %31, %32
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %36 = or i1 %33, %34
  %37 = xor i1 %35, %36
  %38 = or i1 %28, %29
  %39 = xor i1 %38, true
  %40 = or i1 false, %30
  %41 = and i1 %39, %40
  %42 = or i1 %37, %41
  %43 = or i1 %26, %27
  br i1 %42, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %44 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 noundef %1)
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB
}

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @g_malloc0(i64 noundef %0) local_unnamed_addr #4 {
  %.reg2mem = alloca i8*, align 8
  br label %.split

.split:                                           ; preds = %1
  %2 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %0) #9
  store i8* %2, i8** %.reg2mem, align 8
  %switchVar = alloca i32, align 4
  store i32 -1715232385, i32* %switchVar, align 4
  br label %.split.split

.split.split:                                     ; preds = %.split
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 -1715232385, label %first
    i32 -506194017, label %45
    i32 -1000891074, label %87
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %3 = load i32, i32* @x.11, align 4
  %4 = load i32, i32* @y.12, align 4
  br label %first.split

first.split:                                      ; preds = %first
  %5 = add i32 %3, 985833814
  %6 = sub i32 %5, 1
  %7 = sub i32 %6, 985833814
  %8 = sub i32 %3, 1
  %9 = mul i32 %3, %7
  %10 = urem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = icmp slt i32 %4, 10
  %13 = xor i1 %11, true
  %14 = xor i1 %12, true
  %15 = xor i1 false, true
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  %16 = and i1 %13, false
  %17 = and i1 %11, %15
  %18 = and i1 %14, false
  %19 = and i1 %12, %15
  %20 = or i1 %16, %17
  %21 = or i1 %18, %19
  %22 = xor i1 %20, %21
  %23 = or i1 %13, %14
  %24 = xor i1 %23, true
  %25 = or i1 false, %15
  %26 = and i1 %24, %25
  %27 = or i1 %22, %26
  %28 = or i1 %11, %12
  br i1 %27, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %first.split.split, %originalBBalteredBB.split.split
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %29 = icmp eq i8* %.reload2, null
  %30 = select i1 %29, i32 -506194017, i32 -1000891074
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  store i32 %30, i32* %switchVar, align 4
  %31 = load i32, i32* @x.11, align 4
  %32 = load i32, i32* @y.12, align 4
  %33 = add i32 %31, -1435205869
  %34 = sub i32 %33, 1
  %35 = sub i32 %34, -1435205869
  %36 = sub i32 %31, 1
  %37 = mul i32 %31, %35
  %38 = urem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = icmp slt i32 %32, 10
  %41 = and i1 %39, %40
  %42 = xor i1 %39, %40
  %43 = or i1 %41, %42
  %44 = or i1 %39, %40
  br i1 %43, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

45:                                               ; preds = %loopEntry.split
  %46 = load i32, i32* @x.11, align 4
  %47 = load i32, i32* @y.12, align 4
  %48 = sub i32 0, 1
  %49 = add i32 %46, %48
  %50 = sub i32 %46, 1
  %51 = mul i32 %46, %49
  %52 = urem i32 %51, 2
  br label %.split7

.split7:                                          ; preds = %45
  %53 = icmp eq i32 %52, 0
  br label %.split7.split

.split7.split:                                    ; preds = %.split7
  %54 = icmp slt i32 %47, 10
  %55 = and i1 %53, %54
  %56 = xor i1 %53, %54
  %57 = or i1 %55, %56
  %58 = or i1 %53, %54
  br i1 %57, label %originalBB3, label %originalBB3alteredBB

originalBB3:                                      ; preds = %.split7.split, %originalBB3alteredBB.split.split
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  br label %originalBB3.split

originalBB3.split:                                ; preds = %originalBB3
  %60 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %59) #10
  call void @exit(i32 noundef 1) #11
  %61 = load i32, i32* @x.11, align 4
  %62 = load i32, i32* @y.12, align 4
  %63 = add i32 %61, 1750513613
  %64 = sub i32 %63, 1
  %65 = sub i32 %64, 1750513613
  %66 = sub i32 %61, 1
  %67 = mul i32 %61, %65
  %68 = urem i32 %67, 2
  %69 = icmp eq i32 %68, 0
  %70 = icmp slt i32 %62, 10
  %71 = xor i1 %69, true
  %72 = xor i1 %70, true
  %73 = xor i1 true, true
  %74 = and i1 %71, true
  %75 = and i1 %69, %73
  %76 = and i1 %72, true
  %77 = and i1 %70, %73
  %78 = or i1 %74, %75
  %79 = or i1 %76, %77
  %80 = xor i1 %78, %79
  %81 = or i1 %71, %72
  %82 = xor i1 %81, true
  %83 = or i1 true, %73
  %84 = and i1 %82, %83
  %85 = or i1 %80, %84
  br label %originalBB3.split.split

originalBB3.split.split:                          ; preds = %originalBB3.split
  %86 = or i1 %69, %70
  br i1 %85, label %originalBBpart25, label %originalBB3alteredBB

originalBBpart25:                                 ; preds = %originalBB3.split.split
  unreachable

87:                                               ; preds = %loopEntry.split
  %.reload = load i8*, i8** %.reg2mem, align 8
  br label %.split8

.split8:                                          ; preds = %87
  ret i8* %.reload

loopEnd:                                          ; preds = %originalBBpart2, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %first.split.split
  %.reload2alteredBB = load i8*, i8** %.reg2mem, align 8
  %88 = icmp eq i8* %.reload2alteredBB, null
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %89 = select i1 %88, i32 -506194017, i32 -1000891074
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  store i32 %89, i32* %switchVar, align 4
  br label %originalBB

originalBB3alteredBB:                             ; preds = %originalBB3.split.split, %.split7.split
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  br label %originalBB3alteredBB.split

originalBB3alteredBB.split:                       ; preds = %originalBB3alteredBB
  %91 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %90) #10
  br label %originalBB3alteredBB.split.split

originalBB3alteredBB.split.split:                 ; preds = %originalBB3alteredBB.split
  call void @exit(i32 noundef 1) #11
  br label %originalBB3
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #4 {
  %.reg2mem = alloca i8*, align 8
  br label %.split

.split:                                           ; preds = %0
  %1 = call noalias dereferenceable_or_null(56) i8* @calloc(i64 noundef 1, i64 noundef 56) #9
  br label %.split.split

.split.split:                                     ; preds = %.split
  store i8* %1, i8** %.reg2mem, align 8
  %switchVar = alloca i32, align 4
  store i32 -337455617, i32* %switchVar, align 4
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 -337455617, label %first
    i32 -962622913, label %32
    i32 -499384092, label %74
  ]

switchDefault:                                    ; preds = %loopEntry.split
  %2 = load i32, i32* @x.13, align 4
  %3 = load i32, i32* @y.14, align 4
  %4 = add i32 %2, 1967781326
  %5 = sub i32 %4, 1
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %6 = sub i32 %5, 1967781326
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  %12 = and i1 %10, %11
  %13 = xor i1 %10, %11
  %14 = or i1 %12, %13
  %15 = or i1 %10, %11
  br i1 %14, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %switchDefault.split.split, %originalBBalteredBB
  %16 = load i32, i32* @x.13, align 4
  %17 = load i32, i32* @y.14, align 4
  %18 = sub i32 %16, -1477621617
  %19 = sub i32 %18, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %20 = add i32 %19, -1477621617
  %21 = sub i32 %16, 1
  %22 = mul i32 %16, %20
  %23 = urem i32 %22, 2
  %24 = icmp eq i32 %23, 0
  %25 = icmp slt i32 %17, 10
  %26 = and i1 %24, %25
  %27 = xor i1 %24, %25
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %28 = or i1 %26, %27
  %29 = or i1 %24, %25
  br i1 %28, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload11 = load i8*, i8** %.reg2mem, align 8
  %30 = icmp eq i8* %.reload11, null
  %31 = select i1 %30, i32 -962622913, i32 -499384092
  br label %first.split

first.split:                                      ; preds = %first
  store i32 %31, i32* %switchVar, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br label %loopEnd

32:                                               ; preds = %loopEntry.split
  %33 = load i32, i32* @x.13, align 4
  %34 = load i32, i32* @y.14, align 4
  %35 = add i32 %33, 544568604
  %36 = sub i32 %35, 1
  %37 = sub i32 %36, 544568604
  %38 = sub i32 %33, 1
  %39 = mul i32 %33, %37
  %40 = urem i32 %39, 2
  %41 = icmp eq i32 %40, 0
  %42 = icmp slt i32 %34, 10
  %43 = xor i1 %41, true
  %44 = xor i1 %42, true
  %45 = xor i1 false, true
  %46 = and i1 %43, false
  %47 = and i1 %41, %45
  %48 = and i1 %44, false
  %49 = and i1 %42, %45
  %50 = or i1 %46, %47
  %51 = or i1 %48, %49
  %52 = xor i1 %50, %51
  br label %.split20

.split20:                                         ; preds = %32
  %53 = or i1 %43, %44
  %54 = xor i1 %53, true
  %55 = or i1 false, %45
  %56 = and i1 %54, %55
  br label %.split20.split

.split20.split:                                   ; preds = %.split20
  %57 = or i1 %52, %56
  %58 = or i1 %41, %42
  br i1 %57, label %originalBB12, label %originalBB12alteredBB

originalBB12:                                     ; preds = %.split20.split, %originalBB12alteredBB.split.split
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %60 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %59) #12
  call void @exit(i32 noundef 1) #11
  %61 = load i32, i32* @x.13, align 4
  %62 = load i32, i32* @y.14, align 4
  %63 = sub i32 0, 1
  %64 = add i32 %61, %63
  %65 = sub i32 %61, 1
  %66 = mul i32 %61, %64
  %67 = urem i32 %66, 2
  %68 = icmp eq i32 %67, 0
  %69 = icmp slt i32 %62, 10
  %70 = and i1 %68, %69
  %71 = xor i1 %68, %69
  br label %originalBB12.split

originalBB12.split:                               ; preds = %originalBB12
  %72 = or i1 %70, %71
  br label %originalBB12.split.split

originalBB12.split.split:                         ; preds = %originalBB12.split
  %73 = or i1 %68, %69
  br i1 %72, label %originalBBpart214, label %originalBB12alteredBB

originalBBpart214:                                ; preds = %originalBB12.split.split
  unreachable

74:                                               ; preds = %loopEntry.split
  %75 = load i32, i32* @x.13, align 4
  br label %.split21

.split21:                                         ; preds = %74
  %76 = load i32, i32* @y.14, align 4
  %77 = add i32 %75, -636974763
  %78 = sub i32 %77, 1
  %79 = sub i32 %78, -636974763
  %80 = sub i32 %75, 1
  %81 = mul i32 %75, %79
  br label %.split21.split

.split21.split:                                   ; preds = %.split21
  %82 = urem i32 %81, 2
  %83 = icmp eq i32 %82, 0
  %84 = icmp slt i32 %76, 10
  %85 = and i1 %83, %84
  %86 = xor i1 %83, %84
  %87 = or i1 %85, %86
  %88 = or i1 %83, %84
  br i1 %87, label %originalBB16, label %originalBB16alteredBB

originalBB16:                                     ; preds = %.split21.split, %originalBB16alteredBB.split.split
  %.reload10 = load i8*, i8** %.reg2mem, align 8
  %89 = bitcast i8* %.reload10 to void (i8*)**
  store void (i8*)* @dummy_irq, void (i8*)** %89, align 8, !tbaa !12
  %.reload9 = load i8*, i8** %.reg2mem, align 8
  %90 = getelementptr inbounds i8, i8* %.reload9, i64 8
  %91 = bitcast i8* %90 to void (i8*)**
  store void (i8*)* @dummy_irq, void (i8*)** %91, align 8, !tbaa !14
  %.reload8 = load i8*, i8** %.reg2mem, align 8
  %92 = getelementptr inbounds i8, i8* %.reload8, i64 16
  %93 = bitcast i8* %92 to void (i8*)**
  store void (i8*)* @dummy_irq, void (i8*)** %93, align 8, !tbaa !15
  %.reload7 = load i8*, i8** %.reg2mem, align 8
  %94 = getelementptr inbounds i8, i8* %.reload7, i64 24
  %95 = bitcast i8* %94 to void (%struct.PXA2xxI2SState*)**
  br label %originalBB16.split

originalBB16.split:                               ; preds = %originalBB16
  store void (%struct.PXA2xxI2SState*)* @pxa2xx_i2s_data_req, void (%struct.PXA2xxI2SState*)** %95, align 8, !tbaa !16
  %96 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str, i64 0, i64 0)) #9
  %.reload6 = load i8*, i8** %.reg2mem, align 8
  %97 = getelementptr inbounds i8, i8* %.reload6, i64 32
  %98 = bitcast i8* %97 to i8**
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %98, align 8, !tbaa !3
  %.reload5 = load i8*, i8** %.reg2mem, align 8
  %99 = getelementptr inbounds i8, i8* %.reload5, i64 40
  %100 = bitcast i8* %99 to i64*
  store i64 1048576, i64* %100, align 8, !tbaa !9
  %.reload4 = load i8*, i8** %.reg2mem, align 8
  %101 = getelementptr inbounds i8, i8* %.reload4, i64 48
  %102 = bitcast i8* %101 to i8**
  %.reload3 = load i8*, i8** %.reg2mem, align 8
  store i8* %.reload3, i8** %102, align 8, !tbaa !10
  %103 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 noundef 4096, i64 noundef 1048576) #9
  %104 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 noundef 4096) #9
  %.reload = load i8*, i8** %.reg2mem, align 8
  %105 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %.reload)
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  call void @free(i8* noundef %.reload2) #9
  %106 = load i32, i32* @x.13, align 4
  %107 = load i32, i32* @y.14, align 4
  %108 = add i32 %106, 647522828
  %109 = sub i32 %108, 1
  %110 = sub i32 %109, 647522828
  %111 = sub i32 %106, 1
  %112 = mul i32 %106, %110
  %113 = urem i32 %112, 2
  %114 = icmp eq i32 %113, 0
  %115 = icmp slt i32 %107, 10
  %116 = xor i1 %114, true
  %117 = xor i1 %115, true
  %118 = xor i1 true, true
  %119 = and i1 %116, true
  %120 = and i1 %114, %118
  br label %originalBB16.split.split

originalBB16.split.split:                         ; preds = %originalBB16.split
  %121 = and i1 %117, true
  %122 = and i1 %115, %118
  %123 = or i1 %119, %120
  %124 = or i1 %121, %122
  %125 = xor i1 %123, %124
  %126 = or i1 %116, %117
  %127 = xor i1 %126, true
  %128 = or i1 true, %118
  %129 = and i1 %127, %128
  %130 = or i1 %125, %129
  %131 = or i1 %114, %115
  br i1 %130, label %originalBBpart218, label %originalBB16alteredBB

originalBBpart218:                                ; preds = %originalBB16.split.split
  ret i32 0

loopEnd:                                          ; preds = %first.split.split, %originalBBpart2
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %switchDefault.split.split
  br label %originalBB

originalBB12alteredBB:                            ; preds = %originalBB12.split.split, %.split20.split
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  br label %originalBB12alteredBB.split

originalBB12alteredBB.split:                      ; preds = %originalBB12alteredBB
  %133 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %132) #12
  br label %originalBB12alteredBB.split.split

originalBB12alteredBB.split.split:                ; preds = %originalBB12alteredBB.split
  call void @exit(i32 noundef 1) #11
  br label %originalBB12

originalBB16alteredBB:                            ; preds = %originalBB16.split.split, %.split21.split
  %.reload10alteredBB = load i8*, i8** %.reg2mem, align 8
  %134 = bitcast i8* %.reload10alteredBB to void (i8*)**
  store void (i8*)* @dummy_irq, void (i8*)** %134, align 8, !tbaa !12
  %.reload9alteredBB = load i8*, i8** %.reg2mem, align 8
  %135 = getelementptr inbounds i8, i8* %.reload9alteredBB, i64 8
  %136 = bitcast i8* %135 to void (i8*)**
  br label %originalBB16alteredBB.split

originalBB16alteredBB.split:                      ; preds = %originalBB16alteredBB
  store void (i8*)* @dummy_irq, void (i8*)** %136, align 8, !tbaa !14
  %.reload8alteredBB = load i8*, i8** %.reg2mem, align 8
  %137 = getelementptr inbounds i8, i8* %.reload8alteredBB, i64 16
  %138 = bitcast i8* %137 to void (i8*)**
  store void (i8*)* @dummy_irq, void (i8*)** %138, align 8, !tbaa !15
  %.reload7alteredBB = load i8*, i8** %.reg2mem, align 8
  %139 = getelementptr inbounds i8, i8* %.reload7alteredBB, i64 24
  %140 = bitcast i8* %139 to void (%struct.PXA2xxI2SState*)**
  store void (%struct.PXA2xxI2SState*)* @pxa2xx_i2s_data_req, void (%struct.PXA2xxI2SState*)** %140, align 8, !tbaa !16
  %141 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str, i64 0, i64 0)) #9
  br label %originalBB16alteredBB.split.split

originalBB16alteredBB.split.split:                ; preds = %originalBB16alteredBB.split
  %.reload6alteredBB = load i8*, i8** %.reg2mem, align 8
  %142 = getelementptr inbounds i8, i8* %.reload6alteredBB, i64 32
  %143 = bitcast i8* %142 to i8**
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %143, align 8, !tbaa !3
  %.reload5alteredBB = load i8*, i8** %.reg2mem, align 8
  %144 = getelementptr inbounds i8, i8* %.reload5alteredBB, i64 40
  %145 = bitcast i8* %144 to i64*
  store i64 1048576, i64* %145, align 8, !tbaa !9
  %.reload4alteredBB = load i8*, i8** %.reg2mem, align 8
  %146 = getelementptr inbounds i8, i8* %.reload4alteredBB, i64 48
  %147 = bitcast i8* %146 to i8**
  %.reload3alteredBB = load i8*, i8** %.reg2mem, align 8
  store i8* %.reload3alteredBB, i8** %147, align 8, !tbaa !10
  %148 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 noundef 4096, i64 noundef 1048576) #9
  %149 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 noundef 4096) #9
  %.reloadalteredBB = load i8*, i8** %.reg2mem, align 8
  %150 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %.reloadalteredBB)
  %.reload2alteredBB = load i8*, i8** %.reg2mem, align 8
  call void @free(i8* noundef %.reload2alteredBB) #9
  br label %originalBB16
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }
attributes #12 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"MemoryRegion", !5, i64 0, !8, i64 8, !5, i64 16}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = !{!4, !8, i64 8}
!10 = !{!4, !5, i64 16}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"PXA2xxI2SState", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !4, i64 32}
!14 = !{!13, !5, i64 8}
!15 = !{!13, !5, i64 16}
!16 = !{!13, !5, i64 24}

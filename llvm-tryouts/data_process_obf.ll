; ModuleID = 'data_process_obf.bc'
source_filename = "data_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = private unnamed_addr constant [20 x i8] c"Usage: %s <number>\0A\00", align 1
@str = private unnamed_addr constant [6 x i8] c"Done.\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0

; Function Attrs: nofree nounwind uwtable
define dso_local void @process_flag(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %.reg2mem8 = alloca i64, align 8
  %.reg2mem6 = alloca i64, align 8
  %.reg2mem3 = alloca i64, align 8
  %.reg2mem = alloca i8*, align 8
  br label %.split

.split:                                           ; preds = %1
  %2 = alloca [28 x i8], align 16
  %3 = getelementptr inbounds [28 x i8], [28 x i8]* %2, i64 0, i64 0
  store i8* %3, i8** %.reg2mem, align 8
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %.reload2) #5
  %4 = call i64 @strtol(i8* nocapture noundef nonnull %0, i8** noundef null, i32 noundef 10) #5
  store i64 %4, i64* %.reg2mem3, align 8
  %.reload5 = load i64, i64* %.reg2mem3, align 8
  %5 = xor i64 2147483648, -1
  %6 = xor i64 %.reload5, %5
  %7 = and i64 %6, %.reload5
  %8 = and i64 %.reload5, 2147483648
  store i64 %7, i64* %.reg2mem6, align 8
  %switchVar = alloca i32, align 4
  store i32 1478710425, i32* %switchVar, align 4
  %.reg2mem10 = alloca i64, align 8
  br label %.split.split

.split.split:                                     ; preds = %.split
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 1478710425, label %first
    i32 -1827472140, label %51
    i32 -568994561, label %61
    i32 1699369100, label %115
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %9 = load i32, i32* @x, align 4
  %10 = load i32, i32* @y, align 4
  %11 = add i32 %9, -954088541
  br label %first.split

first.split:                                      ; preds = %first
  %12 = sub i32 %11, 1
  %13 = sub i32 %12, -954088541
  %14 = sub i32 %9, 1
  %15 = mul i32 %9, %13
  %16 = urem i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = icmp slt i32 %10, 10
  %19 = xor i1 %17, true
  %20 = xor i1 %18, true
  %21 = xor i1 false, true
  %22 = and i1 %19, false
  %23 = and i1 %17, %21
  %24 = and i1 %20, false
  %25 = and i1 %18, %21
  %26 = or i1 %22, %23
  %27 = or i1 %24, %25
  %28 = xor i1 %26, %27
  %29 = or i1 %19, %20
  %30 = xor i1 %29, true
  %31 = or i1 false, %21
  %32 = and i1 %30, %31
  %33 = or i1 %28, %32
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  %34 = or i1 %17, %18
  br i1 %33, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %first.split.split, %originalBBalteredBB.split.split
  %.reload7 = load i64, i64* %.reg2mem6, align 8
  %35 = icmp eq i64 %.reload7, 0
  %36 = select i1 %35, i32 -1827472140, i32 -568994561
  store i32 %36, i32* %switchVar, align 4
  %37 = load i32, i32* @x, align 4
  %38 = load i32, i32* @y, align 4
  %39 = add i32 %37, 321820067
  %40 = sub i32 %39, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %41 = sub i32 %40, 321820067
  %42 = sub i32 %37, 1
  %43 = mul i32 %37, %41
  %44 = urem i32 %43, 2
  %45 = icmp eq i32 %44, 0
  %46 = icmp slt i32 %38, 10
  %47 = and i1 %45, %46
  %48 = xor i1 %45, %46
  %49 = or i1 %47, %48
  %50 = or i1 %45, %46
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  br i1 %49, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

51:                                               ; preds = %loopEntry.split
  %.reload4 = load i64, i64* %.reg2mem3, align 8
  br label %.split16

.split16:                                         ; preds = %51
  %52 = sub i64 0, %.reload4
  %53 = sub i64 0, 1
  %54 = add i64 %52, %53
  %55 = sub i64 0, %54
  %56 = add i64 %.reload4, 1
  %57 = xor i64 4294967295, -1
  %58 = xor i64 %55, %57
  %59 = and i64 %58, %55
  %60 = and i64 %55, 4294967295
  store i64 %59, i64* %.reg2mem8, align 8
  br label %.split16.split

.split16.split:                                   ; preds = %.split16
  store i32 1699369100, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem10, align 8
  br label %loopEnd

61:                                               ; preds = %loopEntry.split
  %62 = load i32, i32* @x, align 4
  %63 = load i32, i32* @y, align 4
  %64 = sub i32 %62, -1246259237
  %65 = sub i32 %64, 1
  %66 = add i32 %65, -1246259237
  %67 = sub i32 %62, 1
  %68 = mul i32 %62, %66
  %69 = urem i32 %68, 2
  %70 = icmp eq i32 %69, 0
  %71 = icmp slt i32 %63, 10
  %72 = xor i1 %70, true
  %73 = xor i1 %71, true
  %74 = xor i1 true, true
  %75 = and i1 %72, true
  br label %.split17

.split17:                                         ; preds = %61
  %76 = and i1 %70, %74
  %77 = and i1 %73, true
  %78 = and i1 %71, %74
  %79 = or i1 %75, %76
  %80 = or i1 %77, %78
  %81 = xor i1 %79, %80
  %82 = or i1 %72, %73
  %83 = xor i1 %82, true
  %84 = or i1 true, %74
  %85 = and i1 %83, %84
  br label %.split17.split

.split17.split:                                   ; preds = %.split17
  %86 = or i1 %81, %85
  %87 = or i1 %70, %71
  br i1 %86, label %originalBB12, label %originalBB12alteredBB

originalBB12:                                     ; preds = %.split17.split, %originalBB12alteredBB.split.split
  %88 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @str, i64 0, i64 0))
  %.reload = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %.reload) #5
  %89 = load i32, i32* @x, align 4
  %90 = load i32, i32* @y, align 4
  %91 = sub i32 %89, 1018267389
  %92 = sub i32 %91, 1
  br label %originalBB12.split

originalBB12.split:                               ; preds = %originalBB12
  %93 = add i32 %92, 1018267389
  %94 = sub i32 %89, 1
  %95 = mul i32 %89, %93
  %96 = urem i32 %95, 2
  %97 = icmp eq i32 %96, 0
  %98 = icmp slt i32 %90, 10
  %99 = xor i1 %97, true
  %100 = xor i1 %98, true
  %101 = xor i1 true, true
  %102 = and i1 %99, true
  %103 = and i1 %97, %101
  br label %originalBB12.split.split

originalBB12.split.split:                         ; preds = %originalBB12.split
  %104 = and i1 %100, true
  %105 = and i1 %98, %101
  %106 = or i1 %102, %103
  %107 = or i1 %104, %105
  %108 = xor i1 %106, %107
  %109 = or i1 %99, %100
  %110 = xor i1 %109, true
  %111 = or i1 true, %101
  %112 = and i1 %110, %111
  %113 = or i1 %108, %112
  %114 = or i1 %97, %98
  br i1 %113, label %originalBBpart214, label %originalBB12alteredBB

originalBBpart214:                                ; preds = %originalBB12.split.split
  ret void

115:                                              ; preds = %loopEntry.split
  %.reload11 = load i64, i64* %.reg2mem10, align 8
  br label %.split18

.split18:                                         ; preds = %115
  %116 = getelementptr inbounds [28 x i8], [28 x i8]* %2, i64 0, i64 %.reload11
  store volatile i8 88, i8* %116, align 1, !tbaa !3
  %117 = sub i64 0, %.reload11
  %118 = sub i64 0, 1
  %119 = add i64 %117, %118
  %120 = sub i64 0, %119
  %121 = add nuw nsw i64 %.reload11, 1
  %.reload9 = load i64, i64* %.reg2mem8, align 8
  %122 = icmp eq i64 %120, %.reload9
  br label %.split18.split

.split18.split:                                   ; preds = %.split18
  %123 = select i1 %122, i32 -568994561, i32 1699369100
  store i32 %123, i32* %switchVar, align 4
  store i64 %120, i64* %.reg2mem10, align 8
  br label %loopEnd

loopEnd:                                          ; preds = %.split18.split, %.split16.split, %originalBBpart2, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %first.split.split
  %.reload7alteredBB = load i64, i64* %.reg2mem6, align 8
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %124 = icmp eq i64 %.reload7alteredBB, 0
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  %125 = select i1 %124, i32 -1827472140, i32 -568994561
  store i32 %125, i32* %switchVar, align 4
  br label %originalBB

originalBB12alteredBB:                            ; preds = %originalBB12.split.split, %.split17.split
  %126 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @str, i64 0, i64 0))
  %.reloadalteredBB = load i8*, i8** %.reg2mem, align 8
  br label %originalBB12alteredBB.split

originalBB12alteredBB.split:                      ; preds = %originalBB12alteredBB
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %.reloadalteredBB) #5
  br label %originalBB12alteredBB.split.split

originalBB12alteredBB.split.split:                ; preds = %originalBB12alteredBB.split
  br label %originalBB12
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #0 {
  %.reg2mem6 = alloca i64, align 8
  %.reg2mem3 = alloca i64, align 8
  %.reg2mem = alloca i8*, align 8
  br label %.split

.split:                                           ; preds = %2
  %3 = alloca [28 x i8], align 16
  %switchVar = alloca i32, align 4
  br label %.split.split

.split.split:                                     ; preds = %.split
  store i32 1113242929, i32* %switchVar, align 4
  %.reg2mem8 = alloca i64, align 8
  %.reg2mem10 = alloca i32, align 4
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %originalBBpart228
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 1113242929, label %first
    i32 -986497153, label %57
    i32 -1994146307, label %60
    i32 -1606276096, label %114
    i32 1054837907, label %126
    i32 -1544417215, label %134
    i32 576282970, label %136
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %4 = load i32, i32* @x.1, align 4
  %5 = load i32, i32* @y.2, align 4
  %6 = sub i32 0, 1
  %7 = add i32 %4, %6
  %8 = sub i32 %4, 1
  br label %first.split

first.split:                                      ; preds = %first
  %9 = mul i32 %4, %7
  %10 = urem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = icmp slt i32 %5, 10
  %13 = xor i1 %11, true
  %14 = xor i1 %12, true
  %15 = xor i1 false, true
  %16 = and i1 %13, false
  %17 = and i1 %11, %15
  %18 = and i1 %14, false
  %19 = and i1 %12, %15
  %20 = or i1 %16, %17
  br label %first.split.split

first.split.split:                                ; preds = %first.split
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
  %29 = icmp eq i32 %0, 2
  %30 = select i1 %29, i32 -1994146307, i32 -986497153
  store i32 %30, i32* %switchVar, align 4
  %31 = load i32, i32* @x.1, align 4
  %32 = load i32, i32* @y.2, align 4
  %33 = sub i32 %31, 1044542011
  %34 = sub i32 %33, 1
  %35 = add i32 %34, 1044542011
  %36 = sub i32 %31, 1
  %37 = mul i32 %31, %35
  %38 = urem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = icmp slt i32 %32, 10
  %41 = xor i1 %39, true
  %42 = xor i1 %40, true
  %43 = xor i1 false, true
  %44 = and i1 %41, false
  %45 = and i1 %39, %43
  %46 = and i1 %42, false
  %47 = and i1 %40, %43
  %48 = or i1 %44, %45
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %49 = or i1 %46, %47
  %50 = xor i1 %48, %49
  %51 = or i1 %41, %42
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %52 = xor i1 %51, true
  %53 = or i1 false, %43
  %54 = and i1 %52, %53
  %55 = or i1 %50, %54
  %56 = or i1 %39, %40
  br i1 %55, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

57:                                               ; preds = %loopEntry.split
  %58 = load i8*, i8** %1, align 8, !tbaa !6
  br label %.split30

.split30:                                         ; preds = %57
  %59 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* noundef %58)
  br label %.split30.split

.split30.split:                                   ; preds = %.split30
  store i32 576282970, i32* %switchVar, align 4
  store i32 1, i32* %.reg2mem10, align 4
  br label %loopEnd

60:                                               ; preds = %loopEntry.split
  %61 = load i32, i32* @x.1, align 4
  %62 = load i32, i32* @y.2, align 4
  %63 = sub i32 0, 1
  %64 = add i32 %61, %63
  %65 = sub i32 %61, 1
  %66 = mul i32 %61, %64
  %67 = urem i32 %66, 2
  %68 = icmp eq i32 %67, 0
  %69 = icmp slt i32 %62, 10
  %70 = xor i1 %68, true
  %71 = xor i1 %69, true
  %72 = xor i1 true, true
  %73 = and i1 %70, true
  %74 = and i1 %68, %72
  %75 = and i1 %71, true
  %76 = and i1 %69, %72
  br label %.split31

.split31:                                         ; preds = %60
  %77 = or i1 %73, %74
  %78 = or i1 %75, %76
  %79 = xor i1 %77, %78
  br label %.split31.split

.split31.split:                                   ; preds = %.split31
  %80 = or i1 %70, %71
  %81 = xor i1 %80, true
  %82 = or i1 true, %72
  %83 = and i1 %81, %82
  %84 = or i1 %79, %83
  %85 = or i1 %68, %69
  br i1 %84, label %originalBB12, label %originalBB12alteredBB

originalBB12:                                     ; preds = %.split31.split, %originalBB12alteredBB.split.split
  %86 = getelementptr inbounds i8*, i8** %1, i64 1
  %87 = load i8*, i8** %86, align 8, !tbaa !6
  %88 = getelementptr inbounds [28 x i8], [28 x i8]* %3, i64 0, i64 0
  store i8* %88, i8** %.reg2mem, align 8
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %.reload2) #5
  %89 = call i64 @strtol(i8* nocapture noundef nonnull %87, i8** noundef null, i32 noundef 10) #5
  store i64 %89, i64* %.reg2mem3, align 8
  %.reload5 = load i64, i64* %.reg2mem3, align 8
  br label %originalBB12.split

originalBB12.split:                               ; preds = %originalBB12
  %90 = xor i64 %.reload5, -1
  %91 = xor i64 2147483648, -1
  %92 = xor i64 2785210411598096, -1
  %93 = or i64 %90, %91
  %94 = or i64 2785210411598096, %92
  %95 = xor i64 %93, -1
  %96 = and i64 %95, %94
  %97 = and i64 %.reload5, 2147483648
  %98 = icmp eq i64 %96, 0
  %99 = select i1 %98, i32 -1606276096, i32 -1544417215
  store i32 %99, i32* %switchVar, align 4
  %100 = load i32, i32* @x.1, align 4
  %101 = load i32, i32* @y.2, align 4
  br label %originalBB12.split.split

originalBB12.split.split:                         ; preds = %originalBB12.split
  %102 = sub i32 %100, -624370020
  %103 = sub i32 %102, 1
  %104 = add i32 %103, -624370020
  %105 = sub i32 %100, 1
  %106 = mul i32 %100, %104
  %107 = urem i32 %106, 2
  %108 = icmp eq i32 %107, 0
  %109 = icmp slt i32 %101, 10
  %110 = and i1 %108, %109
  %111 = xor i1 %108, %109
  %112 = or i1 %110, %111
  %113 = or i1 %108, %109
  br i1 %112, label %originalBBpart220, label %originalBB12alteredBB

originalBBpart220:                                ; preds = %originalBB12.split.split
  br label %loopEnd

114:                                              ; preds = %loopEntry.split
  %.reload4 = load i64, i64* %.reg2mem3, align 8
  %115 = sub i64 0, 1
  %116 = sub i64 %.reload4, %115
  %117 = add i64 %.reload4, 1
  %118 = xor i64 %116, -1
  %119 = xor i64 4294967295, -1
  %120 = xor i64 752840550243974864, -1
  %121 = or i64 %118, %119
  %122 = or i64 752840550243974864, %120
  %123 = xor i64 %121, -1
  %124 = and i64 %123, %122
  br label %.split32

.split32:                                         ; preds = %114
  %125 = and i64 %116, 4294967295
  store i64 %124, i64* %.reg2mem6, align 8
  br label %.split32.split

.split32.split:                                   ; preds = %.split32
  store i32 1054837907, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem8, align 8
  br label %loopEnd

126:                                              ; preds = %loopEntry.split
  %.reload9 = load i64, i64* %.reg2mem8, align 8
  %127 = getelementptr inbounds [28 x i8], [28 x i8]* %3, i64 0, i64 %.reload9
  store volatile i8 88, i8* %127, align 1, !tbaa !3
  %128 = sub i64 %.reload9, -8290611017888872226
  %129 = add i64 %128, 1
  br label %.split33

.split33:                                         ; preds = %126
  %130 = add i64 %129, -8290611017888872226
  %131 = add nuw nsw i64 %.reload9, 1
  br label %.split33.split

.split33.split:                                   ; preds = %.split33
  %.reload7 = load i64, i64* %.reg2mem6, align 8
  %132 = icmp eq i64 %130, %.reload7
  %133 = select i1 %132, i32 -1544417215, i32 1054837907
  store i32 %133, i32* %switchVar, align 4
  store i64 %130, i64* %.reg2mem8, align 8
  br label %loopEnd

134:                                              ; preds = %loopEntry.split
  %135 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @str, i64 0, i64 0)) #5
  br label %.split34

.split34:                                         ; preds = %134
  %.reload = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %.reload) #5
  store i32 576282970, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem10, align 4
  br label %.split34.split

.split34.split:                                   ; preds = %.split34
  br label %loopEnd

136:                                              ; preds = %loopEntry.split
  %137 = load i32, i32* @x.1, align 4
  %138 = load i32, i32* @y.2, align 4
  %139 = sub i32 %137, -1030141966
  %140 = sub i32 %139, 1
  %141 = add i32 %140, -1030141966
  %142 = sub i32 %137, 1
  br label %.split35

.split35:                                         ; preds = %136
  %143 = mul i32 %137, %141
  %144 = urem i32 %143, 2
  %145 = icmp eq i32 %144, 0
  %146 = icmp slt i32 %138, 10
  %147 = and i1 %145, %146
  %148 = xor i1 %145, %146
  %149 = or i1 %147, %148
  br label %.split35.split

.split35.split:                                   ; preds = %.split35
  %150 = or i1 %145, %146
  br i1 %149, label %originalBB22, label %originalBB22alteredBB

originalBB22:                                     ; preds = %.split35.split, %originalBB22alteredBB.split
  %.reload11 = load i32, i32* %.reg2mem10, align 4
  %151 = load i32, i32* @x.1, align 4
  %152 = load i32, i32* @y.2, align 4
  %153 = sub i32 %151, 1340116659
  br label %originalBB22.split

originalBB22.split:                               ; preds = %originalBB22
  %154 = sub i32 %153, 1
  %155 = add i32 %154, 1340116659
  br label %originalBB22.split.split

originalBB22.split.split:                         ; preds = %originalBB22.split
  %156 = sub i32 %151, 1
  %157 = mul i32 %151, %155
  %158 = urem i32 %157, 2
  %159 = icmp eq i32 %158, 0
  %160 = icmp slt i32 %152, 10
  %161 = and i1 %159, %160
  %162 = xor i1 %159, %160
  %163 = or i1 %161, %162
  %164 = or i1 %159, %160
  br i1 %163, label %originalBBpart224, label %originalBB22alteredBB

originalBBpart224:                                ; preds = %originalBB22.split.split
  ret i32 %.reload11

loopEnd:                                          ; preds = %.split34.split, %.split33.split, %.split32.split, %originalBBpart220, %.split30.split, %originalBBpart2, %switchDefault
  %165 = load i32, i32* @x.1, align 4
  %166 = load i32, i32* @y.2, align 4
  %167 = add i32 %165, -301571503
  %168 = sub i32 %167, 1
  br label %loopEnd.split

loopEnd.split:                                    ; preds = %loopEnd
  %169 = sub i32 %168, -301571503
  %170 = sub i32 %165, 1
  %171 = mul i32 %165, %169
  %172 = urem i32 %171, 2
  %173 = icmp eq i32 %172, 0
  %174 = icmp slt i32 %166, 10
  %175 = and i1 %173, %174
  br label %loopEnd.split.split

loopEnd.split.split:                              ; preds = %loopEnd.split
  %176 = xor i1 %173, %174
  %177 = or i1 %175, %176
  %178 = or i1 %173, %174
  br i1 %177, label %originalBB26, label %originalBB26alteredBB

originalBB26:                                     ; preds = %loopEnd.split.split, %originalBB26alteredBB
  %179 = load i32, i32* @x.1, align 4
  %180 = load i32, i32* @y.2, align 4
  %181 = sub i32 %179, -1136666043
  %182 = sub i32 %181, 1
  %183 = add i32 %182, -1136666043
  %184 = sub i32 %179, 1
  %185 = mul i32 %179, %183
  %186 = urem i32 %185, 2
  %187 = icmp eq i32 %186, 0
  %188 = icmp slt i32 %180, 10
  br label %originalBB26.split

originalBB26.split:                               ; preds = %originalBB26
  %189 = xor i1 %187, true
  %190 = xor i1 %188, true
  %191 = xor i1 false, true
  %192 = and i1 %189, false
  %193 = and i1 %187, %191
  %194 = and i1 %190, false
  %195 = and i1 %188, %191
  %196 = or i1 %192, %193
  %197 = or i1 %194, %195
  %198 = xor i1 %196, %197
  %199 = or i1 %189, %190
  %200 = xor i1 %199, true
  %201 = or i1 false, %191
  %202 = and i1 %200, %201
  %203 = or i1 %198, %202
  %204 = or i1 %187, %188
  br label %originalBB26.split.split

originalBB26.split.split:                         ; preds = %originalBB26.split
  br i1 %203, label %originalBBpart228, label %originalBB26alteredBB

originalBBpart228:                                ; preds = %originalBB26.split.split
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %first.split.split
  %205 = icmp eq i32 %0, 2
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %206 = select i1 %205, i32 -1994146307, i32 -986497153
  store i32 %206, i32* %switchVar, align 4
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB

originalBB12alteredBB:                            ; preds = %originalBB12.split.split, %.split31.split
  %207 = getelementptr inbounds i8*, i8** %1, i64 1
  %208 = load i8*, i8** %207, align 8, !tbaa !6
  %209 = getelementptr inbounds [28 x i8], [28 x i8]* %3, i64 0, i64 0
  store i8* %209, i8** %.reg2mem, align 8
  %.reload2alteredBB = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %.reload2alteredBB) #5
  %210 = call i64 @strtol(i8* nocapture noundef nonnull %208, i8** noundef null, i32 noundef 10) #5
  br label %originalBB12alteredBB.split

originalBB12alteredBB.split:                      ; preds = %originalBB12alteredBB
  store i64 %210, i64* %.reg2mem3, align 8
  %.reload5alteredBB = load i64, i64* %.reg2mem3, align 8
  %_ = shl i64 %.reload5alteredBB, 2147483648
  %211 = add i64 0, 1604714032689249810
  %212 = sub i64 %211, %.reload5alteredBB
  %213 = sub i64 %212, 1604714032689249810
  %_13 = sub i64 0, %.reload5alteredBB
  %214 = sub i64 0, %213
  %215 = sub i64 0, 2147483648
  %216 = add i64 %214, %215
  %217 = sub i64 0, %216
  %gen = add i64 %213, 2147483648
  %218 = add i64 %.reload5alteredBB, -1534722741194082800
  %219 = sub i64 %218, 2147483648
  %220 = sub i64 %219, -1534722741194082800
  %_14 = sub i64 %.reload5alteredBB, 2147483648
  %gen15 = mul i64 %220, 2147483648
  %_16 = shl i64 %.reload5alteredBB, 2147483648
  %221 = add i64 0, 3862347578241531914
  %222 = sub i64 %221, %.reload5alteredBB
  %223 = sub i64 %222, 3862347578241531914
  br label %originalBB12alteredBB.split.split

originalBB12alteredBB.split.split:                ; preds = %originalBB12alteredBB.split
  %_17 = sub i64 0, %.reload5alteredBB
  %224 = sub i64 0, 2147483648
  %225 = sub i64 %223, %224
  %gen18 = add i64 %223, 2147483648
  %226 = xor i64 2147483648, -1
  %227 = xor i64 %.reload5alteredBB, %226
  %228 = and i64 %227, %.reload5alteredBB
  %229 = and i64 %.reload5alteredBB, 2147483648
  %230 = icmp eq i64 %228, 0
  %231 = select i1 %230, i32 -1606276096, i32 -1544417215
  store i32 %231, i32* %switchVar, align 4
  br label %originalBB12

originalBB22alteredBB:                            ; preds = %originalBB22.split.split, %.split35.split
  %.reload11alteredBB = load i32, i32* %.reg2mem10, align 4
  br label %originalBB22alteredBB.split

originalBB22alteredBB.split:                      ; preds = %originalBB22alteredBB
  br label %originalBB22

originalBB26alteredBB:                            ; preds = %originalBB26.split.split, %loopEnd.split.split
  br label %originalBB26
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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

; ModuleID = 'subtle_overflow_obf.bc'
source_filename = "subtle_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Cleaned input: %s\0A\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0

; Function Attrs: nofree nounwind uwtable
define dso_local void @analyze_input(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %.reload12.reg2mem = alloca i8, align 1
  %.reload14.reg2mem = alloca i64, align 8
  %.reload16.reg2mem = alloca i32, align 4
  br label %.split

.split:                                           ; preds = %1
  %.reg2mem7 = alloca i16**, align 8
  %.reg2mem4 = alloca i8, align 1
  %.reg2mem = alloca i8*, align 8
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  br label %.split.split

.split.split:                                     ; preds = %.split
  store i8* %3, i8** %.reg2mem, align 8
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %.reload2) #5
  %4 = load i8, i8* %0, align 1, !tbaa !3
  store i8 %4, i8* %.reg2mem4, align 1
  %switchVar = alloca i32, align 4
  store i32 57741436, i32* %switchVar, align 4
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem11 = alloca i8, align 1
  %.reg2mem13 = alloca i64, align 8
  %.reg2mem15 = alloca i32, align 4
  %.reg2mem17 = alloca i32, align 4
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 57741436, label %first
    i32 -1510869145, label %7
    i32 1132596741, label %9
    i32 -1400811711, label %13
    i32 -1254549883, label %24
    i32 738627559, label %31
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload6 = load i8, i8* %.reg2mem4, align 1
  %5 = icmp eq i8 %.reload6, 0
  br label %first.split

first.split:                                      ; preds = %first
  %6 = select i1 %5, i32 1132596741, i32 -1510869145
  store i32 %6, i32* %switchVar, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  store i32 0, i32* %.reg2mem9, align 4
  br label %loopEnd

7:                                                ; preds = %loopEntry.split
  %8 = call i16** @__ctype_b_loc() #6
  br label %.split22

.split22:                                         ; preds = %7
  store i16** %8, i16*** %.reg2mem7, align 8
  br label %.split22.split

.split22.split:                                   ; preds = %.split22
  store i32 -1400811711, i32* %switchVar, align 4
  %.reload5 = load i8, i8* %.reg2mem4, align 1
  store i8 %.reload5, i8* %.reg2mem11, align 1
  store i64 0, i64* %.reg2mem13, align 8
  store i32 0, i32* %.reg2mem15, align 4
  br label %loopEnd

9:                                                ; preds = %loopEntry.split
  %.reload10 = load i32, i32* %.reg2mem9, align 4
  %10 = sext i32 %.reload10 to i64
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 %10
  store i8 0, i8* %11, align 1, !tbaa !3
  %.reload = load i8*, i8** %.reg2mem, align 8
  br label %.split23

.split23:                                         ; preds = %9
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %.reload)
  br label %.split23.split

.split23.split:                                   ; preds = %.split23
  %.reload3 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %.reload3) #5
  ret void

13:                                               ; preds = %loopEntry.split
  %.reload16 = load i32, i32* %.reg2mem15, align 4
  br label %.split24

.split24:                                         ; preds = %13
  store i32 %.reload16, i32* %.reload16.reg2mem, align 4
  %.reload14 = load i64, i64* %.reg2mem13, align 8
  store i64 %.reload14, i64* %.reload14.reg2mem, align 8
  %.reload12 = load i8, i8* %.reg2mem11, align 1
  store i8 %.reload12, i8* %.reload12.reg2mem, align 1
  %.reload8 = load i16**, i16*** %.reg2mem7, align 8
  %14 = load i16*, i16** %.reload8, align 8, !tbaa !6
  %.reload12.reload = load i8, i8* %.reload12.reg2mem, align 1
  %15 = zext i8 %.reload12.reload to i64
  %16 = getelementptr inbounds i16, i16* %14, i64 %15
  %17 = load i16, i16* %16, align 2, !tbaa !8
  %18 = xor i16 8, -1
  %19 = xor i16 %17, %18
  %20 = and i16 %19, %17
  %21 = and i16 %17, 8
  %22 = icmp eq i16 %20, 0
  %23 = select i1 %22, i32 738627559, i32 -1254549883
  store i32 %23, i32* %switchVar, align 4
  br label %.split24.split

.split24.split:                                   ; preds = %.split24
  %.reload16.reload = load i32, i32* %.reload16.reg2mem, align 4
  store i32 %.reload16.reload, i32* %.reg2mem17, align 4
  br label %loopEnd

24:                                               ; preds = %loopEntry.split
  %.reload16.reload20 = load i32, i32* %.reload16.reg2mem, align 4
  %25 = sub i32 %.reload16.reload20, -1571681916
  %26 = add i32 %25, 1
  %27 = add i32 %26, -1571681916
  %28 = add nsw i32 %.reload16.reload20, 1
  %.reload16.reload19 = load i32, i32* %.reload16.reg2mem, align 4
  %29 = sext i32 %.reload16.reload19 to i64
  br label %.split25

.split25:                                         ; preds = %24
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 %29
  %.reload12.reload21 = load i8, i8* %.reload12.reg2mem, align 1
  store i8 %.reload12.reload21, i8* %30, align 1, !tbaa !3
  store i32 738627559, i32* %switchVar, align 4
  br label %.split25.split

.split25.split:                                   ; preds = %.split25
  store i32 %27, i32* %.reg2mem17, align 4
  br label %loopEnd

31:                                               ; preds = %loopEntry.split
  %.reload18 = load i32, i32* %.reg2mem17, align 4
  %.reload14.reload = load i64, i64* %.reload14.reg2mem, align 8
  %32 = sub i64 %.reload14.reload, -5518429451707973072
  %33 = add i64 %32, 1
  %34 = add i64 %33, -5518429451707973072
  %35 = add i64 %.reload14.reload, 1
  %36 = getelementptr inbounds i8, i8* %0, i64 %34
  %37 = load i8, i8* %36, align 1, !tbaa !3
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i32 1132596741, i32 -1400811711
  store i32 %39, i32* %switchVar, align 4
  br label %.split26

.split26:                                         ; preds = %31
  store i32 %.reload18, i32* %.reg2mem9, align 4
  store i8 %37, i8* %.reg2mem11, align 1
  store i64 %34, i64* %.reg2mem13, align 8
  store i32 %.reload18, i32* %.reg2mem15, align 4
  br label %.split26.split

.split26.split:                                   ; preds = %.split26
  br label %loopEnd

loopEnd:                                          ; preds = %.split26.split, %.split25.split, %.split24.split, %.split22.split, %first.split.split, %switchDefault
  br label %loopEntry
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = load i32, i32* @x.1, align 4
  %2 = load i32, i32* @y.2, align 4
  %3 = sub i32 %1, 934751373
  %4 = sub i32 %3, 1
  %5 = add i32 %4, 934751373
  %6 = sub i32 %1, 1
  %7 = mul i32 %1, %5
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %2, 10
  br label %.split

.split:                                           ; preds = %0
  %11 = xor i1 %9, true
  %12 = xor i1 %10, true
  %13 = xor i1 true, true
  %14 = and i1 %11, true
  %15 = and i1 %9, %13
  %16 = and i1 %12, true
  %17 = and i1 %10, %13
  %18 = or i1 %14, %15
  br label %.split.split

.split.split:                                     ; preds = %.split
  %19 = or i1 %16, %17
  %20 = xor i1 %18, %19
  %21 = or i1 %11, %12
  %22 = xor i1 %21, true
  %23 = or i1 true, %13
  %24 = and i1 %22, %23
  %25 = or i1 %20, %24
  %26 = or i1 %9, %10
  br i1 %25, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %.reload15.reg2mem = alloca i8, align 1
  %.reload17.reg2mem = alloca i64, align 8
  %.reload19.reg2mem = alloca i32, align 4
  %.reg2mem12 = alloca i16**, align 8
  %.reg2mem9 = alloca i8, align 1
  %.reg2mem5 = alloca i8*, align 8
  %.reg2mem = alloca i8*, align 8
  %27 = alloca [64 x i8], align 16
  %28 = alloca [100 x i8], align 16
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %28, i64 0, i64 0
  store i8* %29, i8** %.reg2mem, align 8
  %.reload3 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %.reload3) #5
  %.reload = load i8*, i8** %.reg2mem, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(99) %.reload, i8 66, i64 99, i1 false)
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %28, i64 0, i64 99
  store i8 0, i8* %30, align 1, !tbaa !3
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %27, i64 0, i64 0
  store i8* %31, i8** %.reg2mem5, align 8
  %.reload8 = load i8*, i8** %.reg2mem5, align 8
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %.reload8) #5
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  %32 = load i8, i8* %.reload2, align 16, !tbaa !3
  store i8 %32, i8* %.reg2mem9, align 1
  %switchVar = alloca i32, align 4
  store i32 1690091051, i32* %switchVar, align 4
  %.reg2mem14 = alloca i8, align 1
  %.reg2mem16 = alloca i64, align 8
  %.reg2mem18 = alloca i32, align 4
  %.reg2mem20 = alloca i32, align 4
  %.reg2mem22 = alloca i32, align 4
  %33 = load i32, i32* @x.1, align 4
  %34 = load i32, i32* @y.2, align 4
  %35 = sub i32 %33, 1218323588
  %36 = sub i32 %35, 1
  %37 = add i32 %36, 1218323588
  %38 = sub i32 %33, 1
  %39 = mul i32 %33, %37
  %40 = urem i32 %39, 2
  %41 = icmp eq i32 %40, 0
  %42 = icmp slt i32 %34, 10
  %43 = xor i1 %41, true
  %44 = xor i1 %42, true
  %45 = xor i1 true, true
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %46 = and i1 %43, true
  %47 = and i1 %41, %45
  %48 = and i1 %44, true
  %49 = and i1 %42, %45
  %50 = or i1 %46, %47
  %51 = or i1 %48, %49
  %52 = xor i1 %50, %51
  %53 = or i1 %43, %44
  %54 = xor i1 %53, true
  %55 = or i1 true, %45
  %56 = and i1 %54, %55
  %57 = or i1 %52, %56
  %58 = or i1 %41, %42
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  br i1 %57, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 1690091051, label %first
    i32 -1659817899, label %100
    i32 -1409678251, label %129
    i32 -2083381134, label %140
    i32 938802867, label %147
    i32 1120787543, label %156
  ]

switchDefault:                                    ; preds = %loopEntry.split
  %59 = load i32, i32* @x.1, align 4
  %60 = load i32, i32* @y.2, align 4
  %61 = sub i32 %59, 588511343
  %62 = sub i32 %61, 1
  %63 = add i32 %62, 588511343
  %64 = sub i32 %59, 1
  %65 = mul i32 %59, %63
  %66 = urem i32 %65, 2
  %67 = icmp eq i32 %66, 0
  %68 = icmp slt i32 %60, 10
  %69 = xor i1 %67, true
  %70 = xor i1 %68, true
  %71 = xor i1 true, true
  %72 = and i1 %69, true
  %73 = and i1 %67, %71
  %74 = and i1 %70, true
  %75 = and i1 %68, %71
  %76 = or i1 %72, %73
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %77 = or i1 %74, %75
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %78 = xor i1 %76, %77
  %79 = or i1 %69, %70
  %80 = xor i1 %79, true
  %81 = or i1 true, %71
  %82 = and i1 %80, %81
  %83 = or i1 %78, %82
  %84 = or i1 %67, %68
  br i1 %83, label %originalBB27, label %originalBB27alteredBB

originalBB27:                                     ; preds = %switchDefault.split.split, %originalBB27alteredBB
  %85 = load i32, i32* @x.1, align 4
  br label %originalBB27.split

originalBB27.split:                               ; preds = %originalBB27
  %86 = load i32, i32* @y.2, align 4
  %87 = sub i32 0, 1
  %88 = add i32 %85, %87
  %89 = sub i32 %85, 1
  %90 = mul i32 %85, %88
  %91 = urem i32 %90, 2
  %92 = icmp eq i32 %91, 0
  %93 = icmp slt i32 %86, 10
  %94 = and i1 %92, %93
  %95 = xor i1 %92, %93
  %96 = or i1 %94, %95
  %97 = or i1 %92, %93
  br label %originalBB27.split.split

originalBB27.split.split:                         ; preds = %originalBB27.split
  br i1 %96, label %originalBBpart229, label %originalBB27alteredBB

originalBBpart229:                                ; preds = %originalBB27.split.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload11 = load i8, i8* %.reg2mem9, align 1
  %98 = icmp eq i8 %.reload11, 0
  %99 = select i1 %98, i32 1120787543, i32 -1659817899
  br label %first.split

first.split:                                      ; preds = %first
  store i32 %99, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem22, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br label %loopEnd

100:                                              ; preds = %loopEntry.split
  %101 = load i32, i32* @x.1, align 4
  %102 = load i32, i32* @y.2, align 4
  %103 = sub i32 %101, 1188385430
  %104 = sub i32 %103, 1
  %105 = add i32 %104, 1188385430
  %106 = sub i32 %101, 1
  %107 = mul i32 %101, %105
  %108 = urem i32 %107, 2
  %109 = icmp eq i32 %108, 0
  %110 = icmp slt i32 %102, 10
  %111 = and i1 %109, %110
  br label %.split35

.split35:                                         ; preds = %100
  %112 = xor i1 %109, %110
  %113 = or i1 %111, %112
  %114 = or i1 %109, %110
  br label %.split35.split

.split35.split:                                   ; preds = %.split35
  br i1 %113, label %originalBB31, label %originalBB31alteredBB

originalBB31:                                     ; preds = %.split35.split, %originalBB31alteredBB.split.split
  %115 = call i16** @__ctype_b_loc() #6
  store i16** %115, i16*** %.reg2mem12, align 8
  store i32 -1409678251, i32* %switchVar, align 4
  %.reload10 = load i8, i8* %.reg2mem9, align 1
  store i8 %.reload10, i8* %.reg2mem14, align 1
  store i64 0, i64* %.reg2mem16, align 8
  store i32 0, i32* %.reg2mem18, align 4
  %116 = load i32, i32* @x.1, align 4
  %117 = load i32, i32* @y.2, align 4
  br label %originalBB31.split

originalBB31.split:                               ; preds = %originalBB31
  %118 = sub i32 0, 1
  %119 = add i32 %116, %118
  %120 = sub i32 %116, 1
  br label %originalBB31.split.split

originalBB31.split.split:                         ; preds = %originalBB31.split
  %121 = mul i32 %116, %119
  %122 = urem i32 %121, 2
  %123 = icmp eq i32 %122, 0
  %124 = icmp slt i32 %117, 10
  %125 = and i1 %123, %124
  %126 = xor i1 %123, %124
  %127 = or i1 %125, %126
  %128 = or i1 %123, %124
  br i1 %127, label %originalBBpart233, label %originalBB31alteredBB

originalBBpart233:                                ; preds = %originalBB31.split.split
  br label %loopEnd

129:                                              ; preds = %loopEntry.split
  %.reload19 = load i32, i32* %.reg2mem18, align 4
  br label %.split36

.split36:                                         ; preds = %129
  store i32 %.reload19, i32* %.reload19.reg2mem, align 4
  br label %.split36.split

.split36.split:                                   ; preds = %.split36
  %.reload17 = load i64, i64* %.reg2mem16, align 8
  store i64 %.reload17, i64* %.reload17.reg2mem, align 8
  %.reload15 = load i8, i8* %.reg2mem14, align 1
  store i8 %.reload15, i8* %.reload15.reg2mem, align 1
  %.reload13 = load i16**, i16*** %.reg2mem12, align 8
  %130 = load i16*, i16** %.reload13, align 8, !tbaa !6
  %.reload15.reload = load i8, i8* %.reload15.reg2mem, align 1
  %131 = zext i8 %.reload15.reload to i64
  %132 = getelementptr inbounds i16, i16* %130, i64 %131
  %133 = load i16, i16* %132, align 2, !tbaa !8
  %134 = xor i16 8, -1
  %135 = xor i16 %133, %134
  %136 = and i16 %135, %133
  %137 = and i16 %133, 8
  %138 = icmp eq i16 %136, 0
  %139 = select i1 %138, i32 938802867, i32 -2083381134
  store i32 %139, i32* %switchVar, align 4
  %.reload19.reload = load i32, i32* %.reload19.reg2mem, align 4
  store i32 %.reload19.reload, i32* %.reg2mem20, align 4
  br label %loopEnd

140:                                              ; preds = %loopEntry.split
  %.reload19.reload24 = load i32, i32* %.reload19.reg2mem, align 4
  br label %.split37

.split37:                                         ; preds = %140
  %141 = sub i32 %.reload19.reload24, -1701400699
  %142 = add i32 %141, 1
  %143 = add i32 %142, -1701400699
  %144 = add nsw i32 %.reload19.reload24, 1
  %.reload19.reload25 = load i32, i32* %.reload19.reg2mem, align 4
  %145 = sext i32 %.reload19.reload25 to i64
  %146 = getelementptr inbounds [64 x i8], [64 x i8]* %27, i64 0, i64 %145
  %.reload15.reload26 = load i8, i8* %.reload15.reg2mem, align 1
  br label %.split37.split

.split37.split:                                   ; preds = %.split37
  store i8 %.reload15.reload26, i8* %146, align 1, !tbaa !3
  store i32 938802867, i32* %switchVar, align 4
  store i32 %143, i32* %.reg2mem20, align 4
  br label %loopEnd

147:                                              ; preds = %loopEntry.split
  %.reload21 = load i32, i32* %.reg2mem20, align 4
  %.reload17.reload = load i64, i64* %.reload17.reg2mem, align 8
  %148 = add i64 %.reload17.reload, 5730153216355799140
  br label %.split38

.split38:                                         ; preds = %147
  %149 = add i64 %148, 1
  %150 = sub i64 %149, 5730153216355799140
  %151 = add i64 %.reload17.reload, 1
  %152 = getelementptr inbounds [100 x i8], [100 x i8]* %28, i64 0, i64 %150
  %153 = load i8, i8* %152, align 1, !tbaa !3
  %154 = icmp eq i8 %153, 0
  %155 = select i1 %154, i32 1120787543, i32 -1409678251
  store i32 %155, i32* %switchVar, align 4
  br label %.split38.split

.split38.split:                                   ; preds = %.split38
  store i8 %153, i8* %.reg2mem14, align 1
  store i64 %150, i64* %.reg2mem16, align 8
  store i32 %.reload21, i32* %.reg2mem18, align 4
  store i32 %.reload21, i32* %.reg2mem22, align 4
  br label %loopEnd

156:                                              ; preds = %loopEntry.split
  %.reload23 = load i32, i32* %.reg2mem22, align 4
  %157 = sext i32 %.reload23 to i64
  %158 = getelementptr inbounds [64 x i8], [64 x i8]* %27, i64 0, i64 %157
  store i8 0, i8* %158, align 1, !tbaa !3
  %.reload7 = load i8*, i8** %.reg2mem5, align 8
  br label %.split39

.split39:                                         ; preds = %156
  %159 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %.reload7) #5
  %.reload6 = load i8*, i8** %.reg2mem5, align 8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %.reload6) #5
  br label %.split39.split

.split39.split:                                   ; preds = %.split39
  %.reload4 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %.reload4) #5
  ret i32 0

loopEnd:                                          ; preds = %.split38.split, %.split37.split, %.split36.split, %originalBBpart233, %first.split.split, %originalBBpart229
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %.reload15.reg2memalteredBB = alloca i8, align 1
  %.reload17.reg2memalteredBB = alloca i64, align 8
  %.reload19.reg2memalteredBB = alloca i32, align 4
  %.reg2mem12alteredBB = alloca i16**, align 8
  %.reg2mem9alteredBB = alloca i8, align 1
  %.reg2mem5alteredBB = alloca i8*, align 8
  %.reg2memalteredBB = alloca i8*, align 8
  %160 = alloca [64 x i8], align 16
  %161 = alloca [100 x i8], align 16
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %162 = getelementptr inbounds [100 x i8], [100 x i8]* %161, i64 0, i64 0
  store i8* %162, i8** %.reg2memalteredBB, align 8
  %.reload3alteredBB = load i8*, i8** %.reg2memalteredBB, align 8
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %.reload3alteredBB) #5
  %.reloadalteredBB = load i8*, i8** %.reg2memalteredBB, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(99) %.reloadalteredBB, i8 66, i64 99, i1 false)
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  %163 = getelementptr inbounds [100 x i8], [100 x i8]* %161, i64 0, i64 99
  store i8 0, i8* %163, align 1, !tbaa !3
  %164 = getelementptr inbounds [64 x i8], [64 x i8]* %160, i64 0, i64 0
  store i8* %164, i8** %.reg2mem5alteredBB, align 8
  %.reload8alteredBB = load i8*, i8** %.reg2mem5alteredBB, align 8
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %.reload8alteredBB) #5
  %.reload2alteredBB = load i8*, i8** %.reg2memalteredBB, align 8
  %165 = load i8, i8* %.reload2alteredBB, align 16, !tbaa !3
  store i8 %165, i8* %.reg2mem9alteredBB, align 1
  %switchVaralteredBB = alloca i32, align 4
  store i32 1690091051, i32* %switchVaralteredBB, align 4
  %.reg2mem14alteredBB = alloca i8, align 1
  %.reg2mem16alteredBB = alloca i64, align 8
  %.reg2mem18alteredBB = alloca i32, align 4
  %.reg2mem20alteredBB = alloca i32, align 4
  %.reg2mem22alteredBB = alloca i32, align 4
  br label %originalBB

originalBB27alteredBB:                            ; preds = %originalBB27.split.split, %switchDefault.split.split
  br label %originalBB27

originalBB31alteredBB:                            ; preds = %originalBB31.split.split, %.split35.split
  %166 = call i16** @__ctype_b_loc() #6
  store i16** %166, i16*** %.reg2mem12, align 8
  br label %originalBB31alteredBB.split

originalBB31alteredBB.split:                      ; preds = %originalBB31alteredBB
  store i32 -1409678251, i32* %switchVar, align 4
  %.reload10alteredBB = load i8, i8* %.reg2mem9, align 1
  br label %originalBB31alteredBB.split.split

originalBB31alteredBB.split.split:                ; preds = %originalBB31alteredBB.split
  store i8 %.reload10alteredBB, i8* %.reg2mem14, align 1
  store i64 0, i64* %.reg2mem16, align 8
  store i32 0, i32* %.reg2mem18, align 4
  br label %originalBB31
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !4, i64 0}

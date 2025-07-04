; ModuleID = 'ff_snow_horizontal_compose97i_mmx_obf.bc'
source_filename = "ff_snow_horizontal_compose97i_mmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @snow_horizontal_compose_lift_lead_out(i32 %0, i16* nocapture %1, i16* nocapture %2, i16* nocapture %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) local_unnamed_addr #0 {
  %11 = load i32, i32* @x, align 4
  %12 = load i32, i32* @y, align 4
  %13 = add i32 %11, -934961830
  %14 = sub i32 %13, 1
  %15 = sub i32 %14, -934961830
  %16 = sub i32 %11, 1
  %17 = mul i32 %11, %15
  %18 = urem i32 %17, 2
  br label %.split

.split:                                           ; preds = %10
  %19 = icmp eq i32 %18, 0
  %20 = icmp slt i32 %12, 10
  %21 = and i1 %19, %20
  %22 = xor i1 %19, %20
  br label %.split.split

.split.split:                                     ; preds = %.split
  %23 = or i1 %21, %22
  %24 = or i1 %19, %20
  br i1 %23, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %25 = load i32, i32* @x, align 4
  %26 = load i32, i32* @y, align 4
  %27 = sub i32 %25, 1387980888
  %28 = sub i32 %27, 1
  %29 = add i32 %28, 1387980888
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %30 = sub i32 %25, 1
  %31 = mul i32 %25, %29
  %32 = urem i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = icmp slt i32 %26, 10
  %35 = xor i1 %33, true
  %36 = xor i1 %34, true
  %37 = xor i1 true, true
  %38 = and i1 %35, true
  %39 = and i1 %33, %37
  %40 = and i1 %36, true
  %41 = and i1 %34, %37
  %42 = or i1 %38, %39
  %43 = or i1 %40, %41
  %44 = xor i1 %42, %43
  %45 = or i1 %35, %36
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %46 = xor i1 %45, true
  %47 = or i1 true, %37
  %48 = and i1 %46, %47
  %49 = or i1 %44, %48
  %50 = or i1 %33, %34
  br i1 %49, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @snow_horizontal_compose_liftS_lead_out(i32 %0, i16* nocapture %1, i16* nocapture %2, i16* nocapture %3, i32 %4, i32 %5) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @snow_interleave_line_header(i32* nocapture noundef writeonly %0, i32 noundef %1, i16* nocapture readnone %2, i16* nocapture readnone %3) local_unnamed_addr #1 {
  %5 = sub i32 %1, -1355837517
  br label %.split

.split:                                           ; preds = %4
  %6 = add i32 %5, -2
  %7 = add i32 %6, -1355837517
  %8 = add nsw i32 %1, -2
  store i32 %7, i32* %0, align 4, !tbaa !3
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ff_snow_horizontal_compose97i_mmx(i16* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %.reload42.reg2mem = alloca i64, align 8
  %.reload40.reg2mem = alloca i32, align 4
  %.reg2mem28 = alloca i32, align 4
  %.reg2mem26 = alloca i64, align 8
  %.reg2mem24 = alloca i64, align 8
  %.reg2mem22 = alloca i64, align 8
  %.reg2mem19 = alloca i32, align 4
  %.reg2mem17 = alloca i64, align 8
  %.reg2mem14 = alloca i32, align 4
  %.reg2mem11 = alloca i16*, align 8
  %.reg2mem7 = alloca i16*, align 8
  %.reg2mem3 = alloca i16*, align 8
  %.reg2mem = alloca i32, align 4
  %3 = sub i32 0, %1
  %4 = sub i32 0, 1
  %5 = add i32 %3, %4
  %6 = sub i32 0, %5
  %7 = add nsw i32 %1, 1
  %8 = ashr i32 %6, 1
  store i32 %8, i32* %.reg2mem, align 4
  %9 = ashr i32 %1, 1
  %10 = zext i32 %9 to i64
  %11 = alloca i16, i64 %10, align 16
  br label %.split

.split:                                           ; preds = %2
  %.reload2 = load i32, i32* %.reg2mem, align 4
  %12 = sext i32 %.reload2 to i64
  %13 = getelementptr inbounds i16, i16* %0, i64 %12
  store i16* %13, i16** %.reg2mem3, align 8
  %.reload6 = load i16*, i16** %.reg2mem3, align 8
  %14 = getelementptr inbounds i16, i16* %.reload6, i64 -1
  store i16* %14, i16** %.reg2mem7, align 8
  %15 = load i16, i16* %0, align 2, !tbaa !7
  %.reload9 = load i16*, i16** %.reg2mem7, align 8
  %16 = getelementptr inbounds i16, i16* %.reload9, i64 1
  store i16* %16, i16** %.reg2mem11, align 8
  %.reload13 = load i16*, i16** %.reg2mem11, align 8
  %17 = load i16, i16* %.reload13, align 2, !tbaa !7
  %18 = add i16 %15, -20781
  %19 = sub i16 %18, %17
  %20 = sub i16 %19, -20781
  %21 = sub i16 %15, %17
  store i16 %20, i16* %0, align 2, !tbaa !7
  call void asm sideeffect "pcmpeqw %mm7, %mm7\0A\09psllw $$15, %mm7\0A\09psrlw $$14, %mm7\0A\09", "~{mm7},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !9
  %22 = sub i32 %9, -90692623
  %23 = add i32 %22, -7
  %24 = add i32 %23, -90692623
  %25 = add nsw i32 %9, -7
  store i32 %24, i32* %.reg2mem14, align 4
  %switchVar = alloca i32, align 4
  store i32 294702585, i32* %switchVar, align 4
  %.reg2mem31 = alloca i64, align 8
  %.reg2mem33 = alloca i64, align 8
  %.reg2mem35 = alloca i64, align 8
  br label %.split.split

.split.split:                                     ; preds = %.split
  %.reg2mem37 = alloca i64, align 8
  %.reg2mem39 = alloca i32, align 4
  %.reg2mem41 = alloca i64, align 8
  %.reg2mem43 = alloca i32, align 4
  %.reg2mem45 = alloca i64, align 8
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 294702585, label %first
    i32 -101811790, label %95
    i32 1351010222, label %97
    i32 -313208407, label %142
    i32 1162873694, label %184
    i32 -1163468494, label %220
    i32 -1446836176, label %228
    i32 -367650915, label %251
    i32 1832830881, label %253
    i32 -2074270601, label %256
    i32 1357789238, label %258
    i32 -1992095595, label %306
    i32 -1204716010, label %321
    i32 908557362, label %323
    i32 988909519, label %332
    i32 -1242599881, label %334
    i32 855097908, label %389
    i32 -1639675470, label %391
    i32 1759143695, label %415
    i32 -311351349, label %428
  ]

switchDefault:                                    ; preds = %loopEntry.split
  %26 = load i32, i32* @x.5, align 4
  %27 = load i32, i32* @y.6, align 4
  %28 = sub i32 %26, 911575730
  %29 = sub i32 %28, 1
  %30 = add i32 %29, 911575730
  %31 = sub i32 %26, 1
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %32 = mul i32 %26, %30
  %33 = urem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  %35 = icmp slt i32 %27, 10
  %36 = and i1 %34, %35
  %37 = xor i1 %34, %35
  %38 = or i1 %36, %37
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %39 = or i1 %34, %35
  br i1 %38, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %switchDefault.split.split, %originalBBalteredBB
  %40 = load i32, i32* @x.5, align 4
  %41 = load i32, i32* @y.6, align 4
  %42 = sub i32 %40, 1449318219
  %43 = sub i32 %42, 1
  %44 = add i32 %43, 1449318219
  %45 = sub i32 %40, 1
  %46 = mul i32 %40, %44
  %47 = urem i32 %46, 2
  %48 = icmp eq i32 %47, 0
  %49 = icmp slt i32 %41, 10
  %50 = xor i1 %48, true
  %51 = xor i1 %49, true
  %52 = xor i1 true, true
  %53 = and i1 %50, true
  %54 = and i1 %48, %52
  %55 = and i1 %51, true
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %56 = and i1 %49, %52
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %57 = or i1 %53, %54
  %58 = or i1 %55, %56
  %59 = xor i1 %57, %58
  %60 = or i1 %50, %51
  %61 = xor i1 %60, true
  %62 = or i1 true, %52
  %63 = and i1 %61, %62
  %64 = or i1 %59, %63
  %65 = or i1 %48, %49
  br i1 %64, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %66 = load i32, i32* @x.5, align 4
  br label %first.split

first.split:                                      ; preds = %first
  %67 = load i32, i32* @y.6, align 4
  %68 = sub i32 0, 1
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  %69 = add i32 %66, %68
  %70 = sub i32 %66, 1
  %71 = mul i32 %66, %69
  %72 = urem i32 %71, 2
  %73 = icmp eq i32 %72, 0
  %74 = icmp slt i32 %67, 10
  %75 = and i1 %73, %74
  %76 = xor i1 %73, %74
  %77 = or i1 %75, %76
  %78 = or i1 %73, %74
  br i1 %77, label %originalBB52, label %originalBB52alteredBB

originalBB52:                                     ; preds = %first.split.split, %originalBB52alteredBB.split.split
  %79 = icmp sgt i32 %1, 17
  %80 = select i1 %79, i32 -101811790, i32 1351010222
  store i32 %80, i32* %switchVar, align 4
  %81 = load i32, i32* @x.5, align 4
  %82 = load i32, i32* @y.6, align 4
  %83 = sub i32 %81, -1820546320
  %84 = sub i32 %83, 1
  %85 = add i32 %84, -1820546320
  %86 = sub i32 %81, 1
  %87 = mul i32 %81, %85
  %88 = urem i32 %87, 2
  %89 = icmp eq i32 %88, 0
  %90 = icmp slt i32 %82, 10
  %91 = and i1 %89, %90
  br label %originalBB52.split

originalBB52.split:                               ; preds = %originalBB52
  %92 = xor i1 %89, %90
  br label %originalBB52.split.split

originalBB52.split.split:                         ; preds = %originalBB52.split
  %93 = or i1 %91, %92
  %94 = or i1 %89, %90
  br i1 %93, label %originalBBpart254, label %originalBB52alteredBB

originalBBpart254:                                ; preds = %originalBB52.split.split
  br label %loopEnd

95:                                               ; preds = %loopEntry.split
  %.reload16 = load i32, i32* %.reg2mem14, align 4
  br label %.split102

.split102:                                        ; preds = %95
  %96 = sext i32 %.reload16 to i64
  store i64 %96, i64* %.reg2mem17, align 8
  store i32 1162873694, i32* %switchVar, align 4
  br label %.split102.split

.split102.split:                                  ; preds = %.split102
  store i64 1, i64* %.reg2mem31, align 8
  br label %loopEnd

97:                                               ; preds = %loopEntry.split
  %98 = load i32, i32* @x.5, align 4
  %99 = load i32, i32* @y.6, align 4
  %100 = sub i32 0, 1
  %101 = add i32 %98, %100
  br label %.split103

.split103:                                        ; preds = %97
  %102 = sub i32 %98, 1
  %103 = mul i32 %98, %101
  %104 = urem i32 %103, 2
  %105 = icmp eq i32 %104, 0
  %106 = icmp slt i32 %99, 10
  %107 = xor i1 %105, true
  %108 = xor i1 %106, true
  %109 = xor i1 true, true
  %110 = and i1 %107, true
  %111 = and i1 %105, %109
  %112 = and i1 %108, true
  %113 = and i1 %106, %109
  %114 = or i1 %110, %111
  %115 = or i1 %112, %113
  %116 = xor i1 %114, %115
  %117 = or i1 %107, %108
  %118 = xor i1 %117, true
  %119 = or i1 true, %109
  br label %.split103.split

.split103.split:                                  ; preds = %.split103
  %120 = and i1 %118, %119
  %121 = or i1 %116, %120
  %122 = or i1 %105, %106
  br i1 %121, label %originalBB56, label %originalBB56alteredBB

originalBB56:                                     ; preds = %.split103.split, %originalBB56alteredBB.split.split
  %.reload = load i32, i32* %.reg2mem, align 4
  %123 = add i32 %.reload, 1341618968
  %124 = add i32 %123, -8
  %125 = sub i32 %124, 1341618968
  %126 = add nsw i32 %.reload, -8
  store i32 %125, i32* %.reg2mem19, align 4
  %127 = icmp sgt i32 %1, 16
  %128 = select i1 %127, i32 -313208407, i32 -1446836176
  store i32 %128, i32* %switchVar, align 4
  %129 = load i32, i32* @x.5, align 4
  %130 = load i32, i32* @y.6, align 4
  %131 = sub i32 0, 1
  %132 = add i32 %129, %131
  %133 = sub i32 %129, 1
  %134 = mul i32 %129, %132
  %135 = urem i32 %134, 2
  %136 = icmp eq i32 %135, 0
  br label %originalBB56.split

originalBB56.split:                               ; preds = %originalBB56
  %137 = icmp slt i32 %130, 10
  %138 = and i1 %136, %137
  %139 = xor i1 %136, %137
  %140 = or i1 %138, %139
  br label %originalBB56.split.split

originalBB56.split.split:                         ; preds = %originalBB56.split
  %141 = or i1 %136, %137
  br i1 %140, label %originalBBpart267, label %originalBB56alteredBB

originalBBpart267:                                ; preds = %originalBB56.split.split
  br label %loopEnd

142:                                              ; preds = %loopEntry.split
  %143 = load i32, i32* @x.5, align 4
  %144 = load i32, i32* @y.6, align 4
  %145 = sub i32 %143, -2052518304
  %146 = sub i32 %145, 1
  %147 = add i32 %146, -2052518304
  %148 = sub i32 %143, 1
  %149 = mul i32 %143, %147
  %150 = urem i32 %149, 2
  br label %.split104

.split104:                                        ; preds = %142
  %151 = icmp eq i32 %150, 0
  br label %.split104.split

.split104.split:                                  ; preds = %.split104
  %152 = icmp slt i32 %144, 10
  %153 = xor i1 %151, true
  %154 = xor i1 %152, true
  %155 = xor i1 false, true
  %156 = and i1 %153, false
  %157 = and i1 %151, %155
  %158 = and i1 %154, false
  %159 = and i1 %152, %155
  %160 = or i1 %156, %157
  %161 = or i1 %158, %159
  %162 = xor i1 %160, %161
  %163 = or i1 %153, %154
  %164 = xor i1 %163, true
  %165 = or i1 false, %155
  %166 = and i1 %164, %165
  %167 = or i1 %162, %166
  %168 = or i1 %151, %152
  br i1 %167, label %originalBB69, label %originalBB69alteredBB

originalBB69:                                     ; preds = %.split104.split, %originalBB69alteredBB.split.split
  %.reload21 = load i32, i32* %.reg2mem19, align 4
  %169 = sext i32 %.reload21 to i64
  store i64 %169, i64* %.reg2mem22, align 8
  store i32 -1163468494, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem33, align 8
  %170 = load i32, i32* @x.5, align 4
  %171 = load i32, i32* @y.6, align 4
  %172 = sub i32 %170, -1977553527
  %173 = sub i32 %172, 1
  br label %originalBB69.split

originalBB69.split:                               ; preds = %originalBB69
  %174 = add i32 %173, -1977553527
  %175 = sub i32 %170, 1
  %176 = mul i32 %170, %174
  %177 = urem i32 %176, 2
  br label %originalBB69.split.split

originalBB69.split.split:                         ; preds = %originalBB69.split
  %178 = icmp eq i32 %177, 0
  %179 = icmp slt i32 %171, 10
  %180 = and i1 %178, %179
  %181 = xor i1 %178, %179
  %182 = or i1 %180, %181
  %183 = or i1 %178, %179
  br i1 %182, label %originalBBpart271, label %originalBB69alteredBB

originalBBpart271:                                ; preds = %originalBB69.split.split
  br label %loopEnd

184:                                              ; preds = %loopEntry.split
  %185 = load i32, i32* @x.5, align 4
  %186 = load i32, i32* @y.6, align 4
  %187 = add i32 %185, -1366642843
  %188 = sub i32 %187, 1
  %189 = sub i32 %188, -1366642843
  %190 = sub i32 %185, 1
  %191 = mul i32 %185, %189
  %192 = urem i32 %191, 2
  %193 = icmp eq i32 %192, 0
  br label %.split105

.split105:                                        ; preds = %184
  %194 = icmp slt i32 %186, 10
  %195 = and i1 %193, %194
  %196 = xor i1 %193, %194
  %197 = or i1 %195, %196
  %198 = or i1 %193, %194
  br label %.split105.split

.split105.split:                                  ; preds = %.split105
  br i1 %197, label %originalBB73, label %originalBB73alteredBB

originalBB73:                                     ; preds = %.split105.split, %originalBB73alteredBB.split.split
  %.reload32 = load i64, i64* %.reg2mem31, align 8
  %199 = getelementptr inbounds i16, i16* %0, i64 %.reload32
  %.reload10 = load i16*, i16** %.reg2mem7, align 8
  %200 = getelementptr inbounds i16, i16* %.reload10, i64 %.reload32
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %199, i16* nonnull %200) #6, !srcloc !10
  %201 = sub i64 0, 8
  %202 = sub i64 %.reload32, %201
  br label %originalBB73.split

originalBB73.split:                               ; preds = %originalBB73
  %203 = add nuw nsw i64 %.reload32, 8
  %.reload18 = load i64, i64* %.reg2mem17, align 8
  %204 = icmp slt i64 %202, %.reload18
  %205 = select i1 %204, i32 1162873694, i32 1351010222
  store i32 %205, i32* %switchVar, align 4
  store i64 %202, i64* %.reg2mem31, align 8
  %206 = load i32, i32* @x.5, align 4
  %207 = load i32, i32* @y.6, align 4
  %208 = add i32 %206, 230796607
  %209 = sub i32 %208, 1
  %210 = sub i32 %209, 230796607
  %211 = sub i32 %206, 1
  %212 = mul i32 %206, %210
  %213 = urem i32 %212, 2
  %214 = icmp eq i32 %213, 0
  %215 = icmp slt i32 %207, 10
  %216 = and i1 %214, %215
  %217 = xor i1 %214, %215
  %218 = or i1 %216, %217
  %219 = or i1 %214, %215
  br label %originalBB73.split.split

originalBB73.split.split:                         ; preds = %originalBB73.split
  br i1 %218, label %originalBBpart281, label %originalBB73alteredBB

originalBBpart281:                                ; preds = %originalBB73.split.split
  br label %loopEnd

220:                                              ; preds = %loopEntry.split
  %.reload34 = load i64, i64* %.reg2mem33, align 8
  %.reload5 = load i16*, i16** %.reg2mem3, align 8
  %221 = getelementptr inbounds i16, i16* %.reload5, i64 %.reload34
  br label %.split106

.split106:                                        ; preds = %220
  %222 = getelementptr inbounds i16, i16* %0, i64 %.reload34
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %221, i16* nonnull %222) #6, !srcloc !11
  br label %.split106.split

.split106.split:                                  ; preds = %.split106
  %223 = sub i64 0, 8
  %224 = sub i64 %.reload34, %223
  %225 = add nuw nsw i64 %.reload34, 8
  %.reload23 = load i64, i64* %.reg2mem22, align 8
  %226 = icmp slt i64 %224, %.reload23
  %227 = select i1 %226, i32 -1163468494, i32 -1446836176
  store i32 %227, i32* %switchVar, align 4
  store i64 %224, i64* %.reg2mem33, align 8
  br label %loopEnd

228:                                              ; preds = %loopEntry.split
  %229 = load i16, i16* %0, align 2, !tbaa !7
  %230 = sext i16 %229 to i32
  %.reload12 = load i16*, i16** %.reg2mem11, align 8
  %231 = load i16, i16* %.reload12, align 2, !tbaa !7
  br label %.split107

.split107:                                        ; preds = %228
  %232 = sext i16 %231 to i32
  %233 = shl nsw i32 %232, 1
  %234 = shl nsw i32 %230, 2
  %235 = and i32 %234, 1
  %236 = xor i32 %234, 1
  %237 = or i32 %235, %236
  %238 = or i32 %234, 1
  %239 = sub i32 %237, -111050174
  %240 = add i32 %239, %233
  %241 = add i32 %240, -111050174
  %242 = add nsw i32 %237, %233
  %243 = lshr i32 %241, 3
  %244 = trunc i32 %243 to i16
  %245 = sub i16 %229, -5529
  %246 = add i16 %245, %244
  %247 = add i16 %246, -5529
  %248 = add i16 %229, %244
  store i16 %247, i16* %0, align 2, !tbaa !7
  call void asm sideeffect "psllw $$2, %mm7\0A\09", "~{mm7},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !12
  %249 = icmp sgt i32 %1, 17
  br label %.split107.split

.split107.split:                                  ; preds = %.split107
  %250 = select i1 %249, i32 -367650915, i32 1832830881
  store i32 %250, i32* %switchVar, align 4
  br label %loopEnd

251:                                              ; preds = %loopEntry.split
  %.reload15 = load i32, i32* %.reg2mem14, align 4
  %252 = sext i32 %.reload15 to i64
  br label %.split108

.split108:                                        ; preds = %251
  store i64 %252, i64* %.reg2mem24, align 8
  store i32 1357789238, i32* %switchVar, align 4
  store i64 1, i64* %.reg2mem35, align 8
  br label %.split108.split

.split108.split:                                  ; preds = %.split108
  br label %loopEnd

253:                                              ; preds = %loopEntry.split
  %254 = icmp sgt i32 %1, 16
  %255 = select i1 %254, i32 -2074270601, i32 -1992095595
  br label %.split109

.split109:                                        ; preds = %253
  store i32 %255, i32* %switchVar, align 4
  br label %.split109.split

.split109.split:                                  ; preds = %.split109
  br label %loopEnd

256:                                              ; preds = %loopEntry.split
  %.reload20 = load i32, i32* %.reg2mem19, align 4
  br label %.split110

.split110:                                        ; preds = %256
  %257 = sext i32 %.reload20 to i64
  br label %.split110.split

.split110.split:                                  ; preds = %.split110
  store i64 %257, i64* %.reg2mem26, align 8
  store i32 908557362, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem37, align 8
  br label %loopEnd

258:                                              ; preds = %loopEntry.split
  %259 = load i32, i32* @x.5, align 4
  %260 = load i32, i32* @y.6, align 4
  %261 = sub i32 0, 1
  %262 = add i32 %259, %261
  %263 = sub i32 %259, 1
  %264 = mul i32 %259, %262
  br label %.split111

.split111:                                        ; preds = %258
  %265 = urem i32 %264, 2
  %266 = icmp eq i32 %265, 0
  %267 = icmp slt i32 %260, 10
  %268 = and i1 %266, %267
  %269 = xor i1 %266, %267
  br label %.split111.split

.split111.split:                                  ; preds = %.split111
  %270 = or i1 %268, %269
  %271 = or i1 %266, %267
  br i1 %270, label %originalBB83, label %originalBB83alteredBB

originalBB83:                                     ; preds = %.split111.split, %originalBB83alteredBB.split.split
  %.reload36 = load i64, i64* %.reg2mem35, align 8
  %272 = getelementptr inbounds i16, i16* %0, i64 %.reload36
  %.reload8 = load i16*, i16** %.reg2mem7, align 8
  %273 = getelementptr inbounds i16, i16* %.reload8, i64 %.reload36
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %272, i16* nonnull %273) #6, !srcloc !13
  %274 = add i64 %.reload36, -5274575545504656346
  %275 = add i64 %274, 8
  %276 = sub i64 %275, -5274575545504656346
  %277 = add nuw nsw i64 %.reload36, 8
  %.reload25 = load i64, i64* %.reg2mem24, align 8
  %278 = icmp slt i64 %276, %.reload25
  %279 = select i1 %278, i32 1357789238, i32 1832830881
  store i32 %279, i32* %switchVar, align 4
  store i64 %276, i64* %.reg2mem35, align 8
  %280 = load i32, i32* @x.5, align 4
  %281 = load i32, i32* @y.6, align 4
  %282 = add i32 %280, 612864655
  %283 = sub i32 %282, 1
  %284 = sub i32 %283, 612864655
  %285 = sub i32 %280, 1
  %286 = mul i32 %280, %284
  %287 = urem i32 %286, 2
  %288 = icmp eq i32 %287, 0
  %289 = icmp slt i32 %281, 10
  br label %originalBB83.split

originalBB83.split:                               ; preds = %originalBB83
  %290 = xor i1 %288, true
  %291 = xor i1 %289, true
  %292 = xor i1 false, true
  %293 = and i1 %290, false
  %294 = and i1 %288, %292
  %295 = and i1 %291, false
  %296 = and i1 %289, %292
  %297 = or i1 %293, %294
  %298 = or i1 %295, %296
  br label %originalBB83.split.split

originalBB83.split.split:                         ; preds = %originalBB83.split
  %299 = xor i1 %297, %298
  %300 = or i1 %290, %291
  %301 = xor i1 %300, true
  %302 = or i1 false, %292
  %303 = and i1 %301, %302
  %304 = or i1 %299, %303
  %305 = or i1 %288, %289
  br i1 %304, label %originalBBpart296, label %originalBB83alteredBB

originalBBpart296:                                ; preds = %originalBB83.split.split
  br label %loopEnd

306:                                              ; preds = %loopEntry.split
  %307 = sub i32 %1, 882519013
  br label %.split112

.split112:                                        ; preds = %306
  %308 = add i32 %307, -2
  %309 = add i32 %308, 882519013
  %310 = add i32 %1, -2
  store i32 %309, i32* %.reg2mem28, align 4
  %.reload30 = load i32, i32* %.reg2mem28, align 4
  %311 = xor i32 %.reload30, -1
  %312 = xor i32 30, -1
  %313 = xor i32 -162380838, -1
  %314 = or i32 %311, %312
  br label %.split112.split

.split112.split:                                  ; preds = %.split112
  %315 = or i32 -162380838, %313
  %316 = xor i32 %314, -1
  %317 = and i32 %316, %315
  %318 = and i32 %.reload30, 30
  %319 = icmp eq i32 %317, 30
  %320 = select i1 %319, i32 -1242599881, i32 -1204716010
  store i32 %320, i32* %switchVar, align 4
  store i32 %1, i32* %.reg2mem39, align 4
  br label %loopEnd

321:                                              ; preds = %loopEntry.split
  %.reload29 = load i32, i32* %.reg2mem28, align 4
  br label %.split113

.split113:                                        ; preds = %321
  %322 = sext i32 %.reload29 to i64
  br label %.split113.split

.split113.split:                                  ; preds = %.split113
  store i32 -1639675470, i32* %switchVar, align 4
  store i64 %322, i64* %.reg2mem41, align 8
  store i32 %1, i32* %.reg2mem43, align 4
  br label %loopEnd

323:                                              ; preds = %loopEntry.split
  %.reload38 = load i64, i64* %.reg2mem37, align 8
  br label %.split114

.split114:                                        ; preds = %323
  %.reload4 = load i16*, i16** %.reg2mem3, align 8
  %324 = getelementptr inbounds i16, i16* %.reload4, i64 %.reload38
  %325 = getelementptr inbounds i16, i16* %0, i64 %.reload38
  %326 = getelementptr inbounds i16, i16* %11, i64 %.reload38
  call void asm sideeffect "", "r,r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %324, i16* nonnull %325, i16* nonnull %326) #6, !srcloc !14
  %327 = sub i64 0, 8
  %328 = sub i64 %.reload38, %327
  %329 = add nuw nsw i64 %.reload38, 8
  %.reload27 = load i64, i64* %.reg2mem26, align 8
  %330 = icmp slt i64 %328, %.reload27
  %331 = select i1 %330, i32 908557362, i32 -1992095595
  br label %.split114.split

.split114.split:                                  ; preds = %.split114
  store i32 %331, i32* %switchVar, align 4
  store i64 %328, i64* %.reg2mem37, align 8
  br label %loopEnd

332:                                              ; preds = %loopEntry.split
  %.reload42.reload51 = load i64, i64* %.reload42.reg2mem, align 8
  br label %.split115

.split115:                                        ; preds = %332
  %333 = trunc i64 %.reload42.reload51 to i32
  store i32 -1242599881, i32* %switchVar, align 4
  store i32 %333, i32* %.reg2mem39, align 4
  br label %.split115.split

.split115.split:                                  ; preds = %.split115
  br label %loopEnd

334:                                              ; preds = %loopEntry.split
  %335 = load i32, i32* @x.5, align 4
  %336 = load i32, i32* @y.6, align 4
  %337 = sub i32 %335, -658443503
  %338 = sub i32 %337, 1
  %339 = add i32 %338, -658443503
  %340 = sub i32 %335, 1
  %341 = mul i32 %335, %339
  br label %.split116

.split116:                                        ; preds = %334
  %342 = urem i32 %341, 2
  %343 = icmp eq i32 %342, 0
  %344 = icmp slt i32 %336, 10
  %345 = xor i1 %343, true
  %346 = xor i1 %344, true
  %347 = xor i1 true, true
  %348 = and i1 %345, true
  br label %.split116.split

.split116.split:                                  ; preds = %.split116
  %349 = and i1 %343, %347
  %350 = and i1 %346, true
  %351 = and i1 %344, %347
  %352 = or i1 %348, %349
  %353 = or i1 %350, %351
  %354 = xor i1 %352, %353
  %355 = or i1 %345, %346
  %356 = xor i1 %355, true
  %357 = or i1 true, %347
  %358 = and i1 %356, %357
  %359 = or i1 %354, %358
  %360 = or i1 %343, %344
  br i1 %359, label %originalBB98, label %originalBB98alteredBB

originalBB98:                                     ; preds = %.split116.split, %originalBB98alteredBB.split.split
  %.reload40 = load i32, i32* %.reg2mem39, align 4
  store i32 %.reload40, i32* %.reload40.reg2mem, align 4
  br label %originalBB98.split

originalBB98.split:                               ; preds = %originalBB98
  %.reload40.reload = load i32, i32* %.reload40.reg2mem, align 4
  %361 = icmp sgt i32 %.reload40.reload, 31
  %362 = select i1 %361, i32 855097908, i32 -311351349
  store i32 %362, i32* %switchVar, align 4
  %363 = load i32, i32* @x.5, align 4
  br label %originalBB98.split.split

originalBB98.split.split:                         ; preds = %originalBB98.split
  %364 = load i32, i32* @y.6, align 4
  %365 = add i32 %363, -434522439
  %366 = sub i32 %365, 1
  %367 = sub i32 %366, -434522439
  %368 = sub i32 %363, 1
  %369 = mul i32 %363, %367
  %370 = urem i32 %369, 2
  %371 = icmp eq i32 %370, 0
  %372 = icmp slt i32 %364, 10
  %373 = xor i1 %371, true
  %374 = xor i1 %372, true
  %375 = xor i1 true, true
  %376 = and i1 %373, true
  %377 = and i1 %371, %375
  %378 = and i1 %374, true
  %379 = and i1 %372, %375
  %380 = or i1 %376, %377
  %381 = or i1 %378, %379
  %382 = xor i1 %380, %381
  %383 = or i1 %373, %374
  %384 = xor i1 %383, true
  %385 = or i1 true, %375
  %386 = and i1 %384, %385
  %387 = or i1 %382, %386
  %388 = or i1 %371, %372
  br i1 %387, label %originalBBpart2100, label %originalBB98alteredBB

originalBBpart2100:                               ; preds = %originalBB98.split.split
  br label %loopEnd

389:                                              ; preds = %loopEntry.split
  %.reload40.reload47 = load i32, i32* %.reload40.reg2mem, align 4
  br label %.split117

.split117:                                        ; preds = %389
  %390 = sext i32 %.reload40.reload47 to i64
  br label %.split117.split

.split117.split:                                  ; preds = %.split117
  store i32 1759143695, i32* %switchVar, align 4
  store i64 %390, i64* %.reg2mem45, align 8
  br label %loopEnd

391:                                              ; preds = %loopEntry.split
  %.reload44 = load i32, i32* %.reg2mem43, align 4
  %.reload42 = load i64, i64* %.reg2mem41, align 8
  store i64 %.reload42, i64* %.reload42.reg2mem, align 8
  %.reload42.reload48 = load i64, i64* %.reload42.reg2mem, align 8
  %392 = trunc i64 %.reload42.reload48 to i32
  %393 = ashr i32 %392, 1
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i16, i16* %11, i64 %394
  %396 = load i16, i16* %395, align 2, !tbaa !7
  %397 = sub i32 0, -1
  %398 = sub i32 %.reload44, %397
  %399 = add nsw i32 %.reload44, -1
  %400 = sext i32 %398 to i64
  %401 = getelementptr inbounds i16, i16* %0, i64 %400
  store i16 %396, i16* %401, align 2, !tbaa !7
  %402 = getelementptr inbounds i16, i16* %0, i64 %394
  %403 = load i16, i16* %402, align 2, !tbaa !7
  br label %.split118

.split118:                                        ; preds = %391
  %.reload42.reload49 = load i64, i64* %.reload42.reg2mem, align 8
  %404 = getelementptr inbounds i16, i16* %0, i64 %.reload42.reload49
  store i16 %403, i16* %404, align 2, !tbaa !7
  %.reload42.reload = load i64, i64* %.reload42.reg2mem, align 8
  br label %.split118.split

.split118.split:                                  ; preds = %.split118
  %405 = sub i64 0, -2
  %406 = sub i64 %.reload42.reload, %405
  %407 = add i64 %.reload42.reload, -2
  %408 = xor i64 30, -1
  %409 = xor i64 %406, %408
  %410 = and i64 %409, %406
  %411 = and i64 %406, 30
  %412 = icmp eq i64 %410, 30
  %.reload42.reload50 = load i64, i64* %.reload42.reg2mem, align 8
  %413 = trunc i64 %.reload42.reload50 to i32
  %414 = select i1 %412, i32 988909519, i32 -1639675470
  store i32 %414, i32* %switchVar, align 4
  store i64 %406, i64* %.reg2mem41, align 8
  store i32 %413, i32* %.reg2mem43, align 4
  br label %loopEnd

415:                                              ; preds = %loopEntry.split
  %.reload46 = load i64, i64* %.reg2mem45, align 8
  %416 = add i64 %.reload46, 6299659079750907828
  %417 = add i64 %416, -32
  %418 = sub i64 %417, 6299659079750907828
  %419 = add nsw i64 %.reload46, -32
  %420 = getelementptr inbounds i16, i16* %0, i64 %418
  %421 = trunc i64 %418 to i32
  %422 = ashr i32 %421, 1
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds i16, i16* %0, i64 %423
  %425 = getelementptr inbounds i16, i16* %11, i64 %423
  call void asm sideeffect "", "r,r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %420, i16* nonnull %424, i16* nonnull %425) #6, !srcloc !15
  br label %.split119

.split119:                                        ; preds = %415
  %426 = icmp sgt i64 %.reload46, 63
  %427 = select i1 %426, i32 1759143695, i32 -311351349
  store i32 %427, i32* %switchVar, align 4
  br label %.split119.split

.split119.split:                                  ; preds = %.split119
  store i64 %418, i64* %.reg2mem45, align 8
  br label %loopEnd

428:                                              ; preds = %loopEntry.split
  ret void

loopEnd:                                          ; preds = %.split119.split, %.split118.split, %.split117.split, %originalBBpart2100, %.split115.split, %.split114.split, %.split113.split, %.split112.split, %originalBBpart296, %.split110.split, %.split109.split, %.split108.split, %.split107.split, %.split106.split, %originalBBpart281, %originalBBpart271, %originalBBpart267, %.split102.split, %originalBBpart254, %originalBBpart2
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %switchDefault.split.split
  br label %originalBB

originalBB52alteredBB:                            ; preds = %originalBB52.split.split, %first.split.split
  %429 = icmp sgt i32 %1, 17
  %430 = select i1 %429, i32 -101811790, i32 1351010222
  br label %originalBB52alteredBB.split

originalBB52alteredBB.split:                      ; preds = %originalBB52alteredBB
  store i32 %430, i32* %switchVar, align 4
  br label %originalBB52alteredBB.split.split

originalBB52alteredBB.split.split:                ; preds = %originalBB52alteredBB.split
  br label %originalBB52

originalBB56alteredBB:                            ; preds = %originalBB56.split.split, %.split103.split
  %.reloadalteredBB = load i32, i32* %.reg2mem, align 4
  %431 = sub i32 0, -8
  %432 = add i32 %.reloadalteredBB, %431
  %_ = sub i32 %.reloadalteredBB, -8
  %gen = mul i32 %432, -8
  br label %originalBB56alteredBB.split

originalBB56alteredBB.split:                      ; preds = %originalBB56alteredBB
  %_57 = shl i32 %.reloadalteredBB, -8
  %_58 = shl i32 %.reloadalteredBB, -8
  %433 = sub i32 %.reloadalteredBB, -1815334946
  %434 = sub i32 %433, -8
  %435 = add i32 %434, -1815334946
  %_59 = sub i32 %.reloadalteredBB, -8
  %gen60 = mul i32 %435, -8
  %436 = sub i32 %.reloadalteredBB, 1551957797
  %437 = sub i32 %436, -8
  %438 = add i32 %437, 1551957797
  %_61 = sub i32 %.reloadalteredBB, -8
  %gen62 = mul i32 %438, -8
  %_63 = shl i32 %.reloadalteredBB, -8
  %439 = sub i32 0, -1781596103
  %440 = sub i32 %439, %.reloadalteredBB
  %441 = add i32 %440, -1781596103
  %_64 = sub i32 0, %.reloadalteredBB
  %442 = add i32 %441, 1894127452
  %443 = add i32 %442, -8
  %444 = sub i32 %443, 1894127452
  %gen65 = add i32 %441, -8
  %445 = sub i32 %.reloadalteredBB, 1699534639
  %446 = add i32 %445, -8
  %447 = add i32 %446, 1699534639
  %448 = add nsw i32 %.reloadalteredBB, -8
  store i32 %447, i32* %.reg2mem19, align 4
  %449 = icmp sgt i32 %1, 16
  %450 = select i1 %449, i32 -313208407, i32 -1446836176
  store i32 %450, i32* %switchVar, align 4
  br label %originalBB56alteredBB.split.split

originalBB56alteredBB.split.split:                ; preds = %originalBB56alteredBB.split
  br label %originalBB56

originalBB69alteredBB:                            ; preds = %originalBB69.split.split, %.split104.split
  %.reload21alteredBB = load i32, i32* %.reg2mem19, align 4
  br label %originalBB69alteredBB.split

originalBB69alteredBB.split:                      ; preds = %originalBB69alteredBB
  %451 = sext i32 %.reload21alteredBB to i64
  store i64 %451, i64* %.reg2mem22, align 8
  br label %originalBB69alteredBB.split.split

originalBB69alteredBB.split.split:                ; preds = %originalBB69alteredBB.split
  store i32 -1163468494, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem33, align 8
  br label %originalBB69

originalBB73alteredBB:                            ; preds = %originalBB73.split.split, %.split105.split
  %.reload32alteredBB = load i64, i64* %.reg2mem31, align 8
  br label %originalBB73alteredBB.split

originalBB73alteredBB.split:                      ; preds = %originalBB73alteredBB
  %452 = getelementptr inbounds i16, i16* %0, i64 %.reload32alteredBB
  %.reload10alteredBB = load i16*, i16** %.reg2mem7, align 8
  %453 = getelementptr inbounds i16, i16* %.reload10alteredBB, i64 %.reload32alteredBB
  br label %originalBB73alteredBB.split.split

originalBB73alteredBB.split.split:                ; preds = %originalBB73alteredBB.split
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %452, i16* nonnull %453) #6, !srcloc !10
  %454 = add i64 %.reload32alteredBB, 8648177398784424689
  %455 = sub i64 %454, 8
  %456 = sub i64 %455, 8648177398784424689
  %_74 = sub i64 %.reload32alteredBB, 8
  %gen75 = mul i64 %456, 8
  %457 = sub i64 0, 8
  %458 = add i64 %.reload32alteredBB, %457
  %_76 = sub i64 %.reload32alteredBB, 8
  %gen77 = mul i64 %458, 8
  %459 = add i64 0, -6651033594131013949
  %460 = sub i64 %459, %.reload32alteredBB
  %461 = sub i64 %460, -6651033594131013949
  %_78 = sub i64 0, %.reload32alteredBB
  %462 = sub i64 0, %461
  %463 = sub i64 0, 8
  %464 = add i64 %462, %463
  %465 = sub i64 0, %464
  %gen79 = add i64 %461, 8
  %466 = sub i64 0, 8
  %467 = sub i64 %.reload32alteredBB, %466
  %468 = add nuw nsw i64 %.reload32alteredBB, 8
  %.reload18alteredBB = load i64, i64* %.reg2mem17, align 8
  %469 = icmp slt i64 %467, %.reload18alteredBB
  %470 = select i1 %469, i32 1162873694, i32 1351010222
  store i32 %470, i32* %switchVar, align 4
  store i64 %467, i64* %.reg2mem31, align 8
  br label %originalBB73

originalBB83alteredBB:                            ; preds = %originalBB83.split.split, %.split111.split
  %.reload36alteredBB = load i64, i64* %.reg2mem35, align 8
  %471 = getelementptr inbounds i16, i16* %0, i64 %.reload36alteredBB
  %.reload8alteredBB = load i16*, i16** %.reg2mem7, align 8
  %472 = getelementptr inbounds i16, i16* %.reload8alteredBB, i64 %.reload36alteredBB
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %471, i16* nonnull %472) #6, !srcloc !13
  %473 = sub i64 0, %.reload36alteredBB
  %474 = add i64 0, %473
  %_84 = sub i64 0, %.reload36alteredBB
  %475 = sub i64 %474, 5147257651334437099
  %476 = add i64 %475, 8
  br label %originalBB83alteredBB.split

originalBB83alteredBB.split:                      ; preds = %originalBB83alteredBB
  %477 = add i64 %476, 5147257651334437099
  %gen85 = add i64 %474, 8
  br label %originalBB83alteredBB.split.split

originalBB83alteredBB.split.split:                ; preds = %originalBB83alteredBB.split
  %_86 = shl i64 %.reload36alteredBB, 8
  %478 = sub i64 0, 8
  %479 = add i64 %.reload36alteredBB, %478
  %_87 = sub i64 %.reload36alteredBB, 8
  %gen88 = mul i64 %479, 8
  %480 = add i64 0, 6836813966113915939
  %481 = sub i64 %480, %.reload36alteredBB
  %482 = sub i64 %481, 6836813966113915939
  %_89 = sub i64 0, %.reload36alteredBB
  %483 = sub i64 0, %482
  %484 = sub i64 0, 8
  %485 = add i64 %483, %484
  %486 = sub i64 0, %485
  %gen90 = add i64 %482, 8
  %_91 = shl i64 %.reload36alteredBB, 8
  %_92 = shl i64 %.reload36alteredBB, 8
  %487 = add i64 0, -8992250820687103775
  %488 = sub i64 %487, %.reload36alteredBB
  %489 = sub i64 %488, -8992250820687103775
  %_93 = sub i64 0, %.reload36alteredBB
  %490 = add i64 %489, -9010223119996472590
  %491 = add i64 %490, 8
  %492 = sub i64 %491, -9010223119996472590
  %gen94 = add i64 %489, 8
  %493 = sub i64 %.reload36alteredBB, 3134908146343290920
  %494 = add i64 %493, 8
  %495 = add i64 %494, 3134908146343290920
  %496 = add nuw nsw i64 %.reload36alteredBB, 8
  %.reload25alteredBB = load i64, i64* %.reg2mem24, align 8
  %497 = icmp slt i64 %495, %.reload25alteredBB
  %498 = select i1 %497, i32 1357789238, i32 1832830881
  store i32 %498, i32* %switchVar, align 4
  store i64 %495, i64* %.reg2mem35, align 8
  br label %originalBB83

originalBB98alteredBB:                            ; preds = %originalBB98.split.split, %.split116.split
  %.reload40alteredBB = load i32, i32* %.reg2mem39, align 4
  br label %originalBB98alteredBB.split

originalBB98alteredBB.split:                      ; preds = %originalBB98alteredBB
  store i32 %.reload40alteredBB, i32* %.reload40.reg2mem, align 4
  br label %originalBB98alteredBB.split.split

originalBB98alteredBB.split.split:                ; preds = %originalBB98alteredBB.split
  %.reload40.reloadalteredBB = load i32, i32* %.reload40.reg2mem, align 4
  %499 = icmp sgt i32 %.reload40.reloadalteredBB, 31
  %500 = select i1 %499, i32 855097908, i32 -311351349
  store i32 %500, i32* %switchVar, align 4
  br label %originalBB98
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = load i32, i32* @x.7, align 4
  %2 = load i32, i32* @y.8, align 4
  %3 = sub i32 0, 1
  %4 = add i32 %1, %3
  %5 = sub i32 %1, 1
  %6 = mul i32 %1, %4
  %7 = urem i32 %6, 2
  br label %.split

.split:                                           ; preds = %0
  %8 = icmp eq i32 %7, 0
  %9 = icmp slt i32 %2, 10
  %10 = and i1 %8, %9
  %11 = xor i1 %8, %9
  br label %.split.split

.split.split:                                     ; preds = %.split
  %12 = or i1 %10, %11
  %13 = or i1 %8, %9
  br i1 %12, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %.reg2mem20 = alloca i16*, align 8
  %.reg2mem17 = alloca i16*, align 8
  %.reg2mem14 = alloca i16*, align 8
  %.reg2mem11 = alloca i8*, align 8
  %.reg2mem9 = alloca i8*, align 8
  %.reg2mem4 = alloca i16*, align 8
  %.reg2mem = alloca i8*, align 8
  %14 = alloca [32 x i16], align 16
  %15 = alloca [64 x i16], align 16
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %16 = bitcast [64 x i16]* %15 to i8*
  store i8* %16, i8** %.reg2mem, align 8
  %.reload3 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %.reload3) #6
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) %.reload2, i8 0, i64 128, i1 false)
  %17 = getelementptr inbounds [64 x i16], [64 x i16]* %15, i64 0, i64 0
  store i16* %17, i16** %.reg2mem4, align 8
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %.reg2mem9, align 8
  %19 = bitcast [32 x i16]* %14 to i8*
  store i8* %19, i8** %.reg2mem11, align 8
  %.reload13 = load i8*, i8** %.reg2mem11, align 8
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %.reload13)
  %20 = getelementptr inbounds [64 x i16], [64 x i16]* %15, i64 0, i64 31
  store i16* %20, i16** %.reg2mem14, align 8
  %.reload8 = load i16*, i16** %.reg2mem4, align 8
  %21 = load i16, i16* %.reload8, align 16, !tbaa !7
  %22 = getelementptr inbounds [64 x i16], [64 x i16]* %15, i64 0, i64 32
  store i16* %22, i16** %.reg2mem17, align 8
  %.reload18 = load i16*, i16** %.reg2mem17, align 8
  %23 = load i16, i16* %.reload18, align 16, !tbaa !7
  %24 = add i16 %21, 1837
  %25 = sub i16 %24, %23
  %26 = sub i16 %25, 1837
  %27 = sub i16 %21, %23
  %.reload7 = load i16*, i16** %.reg2mem4, align 8
  store i16 %26, i16* %.reload7, align 16, !tbaa !7
  %switchVar = alloca i32, align 4
  store i32 58832568, i32* %switchVar, align 4
  %.reg2mem23 = alloca i64, align 8
  %.reg2mem25 = alloca i64, align 8
  %.reg2mem27 = alloca i64, align 8
  %.reg2mem29 = alloca i64, align 8
  %.reg2mem31 = alloca i64, align 8
  %28 = load i32, i32* @x.7, align 4
  %29 = load i32, i32* @y.8, align 4
  %30 = sub i32 %28, 1565739488
  %31 = sub i32 %30, 1
  %32 = add i32 %31, 1565739488
  %33 = sub i32 %28, 1
  %34 = mul i32 %28, %32
  %35 = urem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  %37 = icmp slt i32 %29, 10
  %38 = xor i1 %36, true
  %39 = xor i1 %37, true
  %40 = xor i1 true, true
  %41 = and i1 %38, true
  %42 = and i1 %36, %40
  %43 = and i1 %39, true
  %44 = and i1 %37, %40
  %45 = or i1 %41, %42
  %46 = or i1 %43, %44
  %47 = xor i1 %45, %46
  %48 = or i1 %38, %39
  %49 = xor i1 %48, true
  %50 = or i1 true, %40
  %51 = and i1 %49, %50
  %52 = or i1 %47, %51
  %53 = or i1 %36, %37
  br i1 %52, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 58832568, label %first
    i32 -185256322, label %54
    i32 -1308571802, label %112
    i32 -213822370, label %114
    i32 -701358965, label %123
    i32 -1066550118, label %156
    i32 1509371363, label %165
    i32 999965985, label %176
    i32 350441150, label %189
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  call void asm sideeffect "pcmpeqw %mm7, %mm7\0A\09psllw $$15, %mm7\0A\09psrlw $$14, %mm7\0A\09", "~{mm7},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !9
  store i32 -185256322, i32* %switchVar, align 4
  br label %first.split

first.split:                                      ; preds = %first
  store i64 1, i64* %.reg2mem23, align 8
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br label %loopEnd

54:                                               ; preds = %loopEntry.split
  %55 = load i32, i32* @x.7, align 4
  %56 = load i32, i32* @y.8, align 4
  %57 = sub i32 0, 1
  %58 = add i32 %55, %57
  %59 = sub i32 %55, 1
  br label %.split57

.split57:                                         ; preds = %54
  %60 = mul i32 %55, %58
  %61 = urem i32 %60, 2
  %62 = icmp eq i32 %61, 0
  %63 = icmp slt i32 %56, 10
  %64 = xor i1 %62, true
  %65 = xor i1 %63, true
  %66 = xor i1 true, true
  %67 = and i1 %64, true
  %68 = and i1 %62, %66
  %69 = and i1 %65, true
  %70 = and i1 %63, %66
  %71 = or i1 %67, %68
  %72 = or i1 %69, %70
  %73 = xor i1 %71, %72
  %74 = or i1 %64, %65
  %75 = xor i1 %74, true
  %76 = or i1 true, %66
  br label %.split57.split

.split57.split:                                   ; preds = %.split57
  %77 = and i1 %75, %76
  %78 = or i1 %73, %77
  %79 = or i1 %62, %63
  br i1 %78, label %originalBB38, label %originalBB38alteredBB

originalBB38:                                     ; preds = %.split57.split, %originalBB38alteredBB.split.split
  %.reload24 = load i64, i64* %.reg2mem23, align 8
  %80 = getelementptr inbounds [64 x i16], [64 x i16]* %15, i64 0, i64 %.reload24
  %.reload15 = load i16*, i16** %.reg2mem14, align 8
  %81 = getelementptr inbounds i16, i16* %.reload15, i64 %.reload24
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %80, i16* nonnull %81) #6, !srcloc !10
  %82 = sub i64 0, 8
  %83 = sub i64 %.reload24, %82
  %84 = add nuw nsw i64 %.reload24, 8
  %85 = icmp ult i64 %.reload24, 17
  %86 = select i1 %85, i32 -185256322, i32 -1308571802
  store i32 %86, i32* %switchVar, align 4
  store i64 %83, i64* %.reg2mem23, align 8
  %87 = load i32, i32* @x.7, align 4
  %88 = load i32, i32* @y.8, align 4
  br label %originalBB38.split

originalBB38.split:                               ; preds = %originalBB38
  %89 = sub i32 0, 1
  %90 = add i32 %87, %89
  %91 = sub i32 %87, 1
  %92 = mul i32 %87, %90
  %93 = urem i32 %92, 2
  %94 = icmp eq i32 %93, 0
  %95 = icmp slt i32 %88, 10
  %96 = xor i1 %94, true
  %97 = xor i1 %95, true
  %98 = xor i1 false, true
  %99 = and i1 %96, false
  %100 = and i1 %94, %98
  %101 = and i1 %97, false
  %102 = and i1 %95, %98
  %103 = or i1 %99, %100
  %104 = or i1 %101, %102
  %105 = xor i1 %103, %104
  %106 = or i1 %96, %97
  br label %originalBB38.split.split

originalBB38.split.split:                         ; preds = %originalBB38.split
  %107 = xor i1 %106, true
  %108 = or i1 false, %98
  %109 = and i1 %107, %108
  %110 = or i1 %105, %109
  %111 = or i1 %94, %95
  br i1 %110, label %originalBBpart251, label %originalBB38alteredBB

originalBBpart251:                                ; preds = %originalBB38.split.split
  br label %loopEnd

112:                                              ; preds = %loopEntry.split
  %113 = getelementptr inbounds [64 x i16], [64 x i16]* %15, i64 0, i64 32
  store i16* %113, i16** %.reg2mem20, align 8
  br label %.split58

.split58:                                         ; preds = %112
  store i32 -213822370, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem25, align 8
  br label %.split58.split

.split58.split:                                   ; preds = %.split58
  br label %loopEnd

114:                                              ; preds = %loopEntry.split
  %.reload26 = load i64, i64* %.reg2mem25, align 8
  br label %.split59

.split59:                                         ; preds = %114
  %.reload21 = load i16*, i16** %.reg2mem20, align 8
  %115 = getelementptr inbounds i16, i16* %.reload21, i64 %.reload26
  %116 = getelementptr inbounds [64 x i16], [64 x i16]* %15, i64 0, i64 %.reload26
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %115, i16* nonnull %116) #6, !srcloc !11
  %117 = sub i64 %.reload26, -7140692542627161446
  %118 = add i64 %117, 8
  %119 = add i64 %118, -7140692542627161446
  %120 = add nuw nsw i64 %.reload26, 8
  %121 = icmp ult i64 %.reload26, 16
  br label %.split59.split

.split59.split:                                   ; preds = %.split59
  %122 = select i1 %121, i32 -213822370, i32 -701358965
  store i32 %122, i32* %switchVar, align 4
  store i64 %119, i64* %.reg2mem25, align 8
  br label %loopEnd

123:                                              ; preds = %loopEntry.split
  %.reload6 = load i16*, i16** %.reg2mem4, align 8
  %124 = load i16, i16* %.reload6, align 16, !tbaa !7
  %125 = sext i16 %124 to i32
  br label %.split60

.split60:                                         ; preds = %123
  %.reload19 = load i16*, i16** %.reg2mem17, align 8
  %126 = load i16, i16* %.reload19, align 16, !tbaa !7
  %127 = sext i16 %126 to i32
  %128 = shl nsw i32 %127, 1
  %129 = shl nsw i32 %125, 2
  %130 = xor i32 %129, -1
  %131 = xor i32 1, -1
  %132 = xor i32 2114498129, -1
  %133 = and i32 %130, 2114498129
  %134 = and i32 %129, %132
  %135 = and i32 %131, 2114498129
  %136 = and i32 1, %132
  br label %.split60.split

.split60.split:                                   ; preds = %.split60
  %137 = or i32 %133, %134
  %138 = or i32 %135, %136
  %139 = xor i32 %137, %138
  %140 = or i32 %130, %131
  %141 = xor i32 %140, -1
  %142 = or i32 2114498129, %132
  %143 = and i32 %141, %142
  %144 = or i32 %139, %143
  %145 = or i32 %129, 1
  %146 = sub i32 0, %128
  %147 = sub i32 %144, %146
  %148 = add nsw i32 %144, %128
  %149 = lshr i32 %147, 3
  %150 = trunc i32 %149 to i16
  %151 = sub i16 0, %124
  %152 = sub i16 0, %150
  %153 = add i16 %151, %152
  %154 = sub i16 0, %153
  %155 = add i16 %124, %150
  %.reload5 = load i16*, i16** %.reg2mem4, align 8
  store i16 %154, i16* %.reload5, align 16, !tbaa !7
  call void asm sideeffect "psllw $$2, %mm7\0A\09", "~{mm7},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !12
  store i32 -1066550118, i32* %switchVar, align 4
  store i64 1, i64* %.reg2mem27, align 8
  br label %loopEnd

156:                                              ; preds = %loopEntry.split
  %.reload28 = load i64, i64* %.reg2mem27, align 8
  %157 = getelementptr inbounds [64 x i16], [64 x i16]* %15, i64 0, i64 %.reload28
  %.reload16 = load i16*, i16** %.reg2mem14, align 8
  %158 = getelementptr inbounds i16, i16* %.reload16, i64 %.reload28
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %157, i16* nonnull %158) #6, !srcloc !13
  br label %.split61

.split61:                                         ; preds = %156
  %159 = add i64 %.reload28, -1896199979360677003
  %160 = add i64 %159, 8
  %161 = sub i64 %160, -1896199979360677003
  %162 = add nuw nsw i64 %.reload28, 8
  %163 = icmp ult i64 %.reload28, 17
  %164 = select i1 %163, i32 -1066550118, i32 1509371363
  br label %.split61.split

.split61.split:                                   ; preds = %.split61
  store i32 %164, i32* %switchVar, align 4
  store i64 %161, i64* %.reg2mem27, align 8
  store i64 0, i64* %.reg2mem29, align 8
  br label %loopEnd

165:                                              ; preds = %loopEntry.split
  %.reload30 = load i64, i64* %.reg2mem29, align 8
  %.reload22 = load i16*, i16** %.reg2mem20, align 8
  %166 = getelementptr inbounds i16, i16* %.reload22, i64 %.reload30
  %167 = getelementptr inbounds [64 x i16], [64 x i16]* %15, i64 0, i64 %.reload30
  %168 = getelementptr inbounds [32 x i16], [32 x i16]* %14, i64 0, i64 %.reload30
  call void asm sideeffect "", "r,r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %166, i16* nonnull %167, i16* nonnull %168) #6, !srcloc !14
  %169 = sub i64 0, %.reload30
  br label %.split62

.split62:                                         ; preds = %165
  %170 = sub i64 0, 8
  %171 = add i64 %169, %170
  %172 = sub i64 0, %171
  %173 = add nuw nsw i64 %.reload30, 8
  br label %.split62.split

.split62.split:                                   ; preds = %.split62
  %174 = icmp ult i64 %.reload30, 16
  %175 = select i1 %174, i32 1509371363, i32 999965985
  store i32 %175, i32* %switchVar, align 4
  store i64 %172, i64* %.reg2mem29, align 8
  store i64 64, i64* %.reg2mem31, align 8
  br label %loopEnd

176:                                              ; preds = %loopEntry.split
  %.reload32 = load i64, i64* %.reg2mem31, align 8
  %177 = add i64 %.reload32, -6107028422823725809
  %178 = add i64 %177, -32
  %179 = sub i64 %178, -6107028422823725809
  %180 = add nsw i64 %.reload32, -32
  %181 = getelementptr inbounds [64 x i16], [64 x i16]* %15, i64 0, i64 %179
  %182 = trunc i64 %179 to i32
  br label %.split63

.split63:                                         ; preds = %176
  %183 = ashr exact i32 %182, 1
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds [64 x i16], [64 x i16]* %15, i64 0, i64 %184
  %186 = getelementptr inbounds [32 x i16], [32 x i16]* %14, i64 0, i64 %184
  call void asm sideeffect "", "r,r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %181, i16* nonnull %185, i16* nonnull %186) #6, !srcloc !15
  %187 = icmp ugt i64 %.reload32, 63
  br label %.split63.split

.split63.split:                                   ; preds = %.split63
  %188 = select i1 %187, i32 999965985, i32 350441150
  store i32 %188, i32* %switchVar, align 4
  store i64 %179, i64* %.reg2mem31, align 8
  br label %loopEnd

189:                                              ; preds = %loopEntry.split
  %190 = load i32, i32* @x.7, align 4
  %191 = load i32, i32* @y.8, align 4
  %192 = add i32 %190, 73882303
  %193 = sub i32 %192, 1
  %194 = sub i32 %193, 73882303
  br label %.split64

.split64:                                         ; preds = %189
  %195 = sub i32 %190, 1
  %196 = mul i32 %190, %194
  %197 = urem i32 %196, 2
  %198 = icmp eq i32 %197, 0
  %199 = icmp slt i32 %191, 10
  %200 = and i1 %198, %199
  %201 = xor i1 %198, %199
  br label %.split64.split

.split64.split:                                   ; preds = %.split64
  %202 = or i1 %200, %201
  %203 = or i1 %198, %199
  br i1 %202, label %originalBB53, label %originalBB53alteredBB

originalBB53:                                     ; preds = %.split64.split, %originalBB53alteredBB.split.split
  %.reload12 = load i8*, i8** %.reg2mem11, align 8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %.reload12)
  %.reload10 = load i8*, i8** %.reg2mem9, align 8
  call void @llvm.stackrestore(i8* %.reload10)
  %.reload = load i8*, i8** %.reg2mem, align 8
  br label %originalBB53.split

originalBB53.split:                               ; preds = %originalBB53
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %.reload) #6
  %204 = load i32, i32* @x.7, align 4
  %205 = load i32, i32* @y.8, align 4
  %206 = add i32 %204, 144114479
  %207 = sub i32 %206, 1
  %208 = sub i32 %207, 144114479
  %209 = sub i32 %204, 1
  %210 = mul i32 %204, %208
  %211 = urem i32 %210, 2
  %212 = icmp eq i32 %211, 0
  %213 = icmp slt i32 %205, 10
  br label %originalBB53.split.split

originalBB53.split.split:                         ; preds = %originalBB53.split
  %214 = and i1 %212, %213
  %215 = xor i1 %212, %213
  %216 = or i1 %214, %215
  %217 = or i1 %212, %213
  br i1 %216, label %originalBBpart255, label %originalBB53alteredBB

originalBBpart255:                                ; preds = %originalBB53.split.split
  ret i32 0

loopEnd:                                          ; preds = %.split63.split, %.split62.split, %.split61.split, %.split60.split, %.split59.split, %.split58.split, %originalBBpart251, %first.split.split, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %.reg2mem20alteredBB = alloca i16*, align 8
  %.reg2mem17alteredBB = alloca i16*, align 8
  %.reg2mem14alteredBB = alloca i16*, align 8
  %.reg2mem11alteredBB = alloca i8*, align 8
  %.reg2mem9alteredBB = alloca i8*, align 8
  %.reg2mem4alteredBB = alloca i16*, align 8
  %.reg2memalteredBB = alloca i8*, align 8
  %218 = alloca [32 x i16], align 16
  %219 = alloca [64 x i16], align 16
  %220 = bitcast [64 x i16]* %219 to i8*
  store i8* %220, i8** %.reg2memalteredBB, align 8
  %.reload3alteredBB = load i8*, i8** %.reg2memalteredBB, align 8
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %.reload3alteredBB) #6
  %.reload2alteredBB = load i8*, i8** %.reg2memalteredBB, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) %.reload2alteredBB, i8 0, i64 128, i1 false)
  %221 = getelementptr inbounds [64 x i16], [64 x i16]* %219, i64 0, i64 0
  store i16* %221, i16** %.reg2mem4alteredBB, align 8
  %222 = call i8* @llvm.stacksave()
  store i8* %222, i8** %.reg2mem9alteredBB, align 8
  %223 = bitcast [32 x i16]* %218 to i8*
  store i8* %223, i8** %.reg2mem11alteredBB, align 8
  %.reload13alteredBB = load i8*, i8** %.reg2mem11alteredBB, align 8
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %.reload13alteredBB)
  %224 = getelementptr inbounds [64 x i16], [64 x i16]* %219, i64 0, i64 31
  store i16* %224, i16** %.reg2mem14alteredBB, align 8
  %.reload8alteredBB = load i16*, i16** %.reg2mem4alteredBB, align 8
  %225 = load i16, i16* %.reload8alteredBB, align 16, !tbaa !7
  %226 = getelementptr inbounds [64 x i16], [64 x i16]* %219, i64 0, i64 32
  store i16* %226, i16** %.reg2mem17alteredBB, align 8
  %.reload18alteredBB = load i16*, i16** %.reg2mem17alteredBB, align 8
  %227 = load i16, i16* %.reload18alteredBB, align 16, !tbaa !7
  %228 = sub i16 0, -26302
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %229 = sub i16 %228, %225
  %230 = add i16 %229, -26302
  %_ = sub i16 0, %225
  %231 = sub i16 %230, 2448
  %232 = add i16 %231, %227
  %233 = add i16 %232, 2448
  %gen = add i16 %230, %227
  %_33 = shl i16 %225, %227
  %234 = sub i16 %225, -18933
  %235 = sub i16 %234, %227
  %236 = add i16 %235, -18933
  %_34 = sub i16 %225, %227
  %gen35 = mul i16 %236, %227
  %237 = sub i16 0, 5282
  %238 = sub i16 %237, %225
  %239 = add i16 %238, 5282
  %_36 = sub i16 0, %225
  %240 = sub i16 %239, -31017
  %241 = add i16 %240, %227
  %242 = add i16 %241, -31017
  %gen37 = add i16 %239, %227
  %243 = sub i16 %225, -24532
  %244 = sub i16 %243, %227
  %245 = add i16 %244, -24532
  %246 = sub i16 %225, %227
  %.reload7alteredBB = load i16*, i16** %.reg2mem4alteredBB, align 8
  store i16 %245, i16* %.reload7alteredBB, align 16, !tbaa !7
  %switchVaralteredBB = alloca i32, align 4
  store i32 58832568, i32* %switchVaralteredBB, align 4
  %.reg2mem23alteredBB = alloca i64, align 8
  %.reg2mem25alteredBB = alloca i64, align 8
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  %.reg2mem27alteredBB = alloca i64, align 8
  %.reg2mem29alteredBB = alloca i64, align 8
  %.reg2mem31alteredBB = alloca i64, align 8
  br label %originalBB

originalBB38alteredBB:                            ; preds = %originalBB38.split.split, %.split57.split
  %.reload24alteredBB = load i64, i64* %.reg2mem23, align 8
  %247 = getelementptr inbounds [64 x i16], [64 x i16]* %15, i64 0, i64 %.reload24alteredBB
  %.reload15alteredBB = load i16*, i16** %.reg2mem14, align 8
  %248 = getelementptr inbounds i16, i16* %.reload15alteredBB, i64 %.reload24alteredBB
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %247, i16* nonnull %248) #6, !srcloc !10
  %_39 = shl i64 %.reload24alteredBB, 8
  %249 = sub i64 0, -3571955908729817530
  %250 = sub i64 %249, %.reload24alteredBB
  %251 = add i64 %250, -3571955908729817530
  %_40 = sub i64 0, %.reload24alteredBB
  %252 = sub i64 %251, 8024086226831953923
  br label %originalBB38alteredBB.split

originalBB38alteredBB.split:                      ; preds = %originalBB38alteredBB
  %253 = add i64 %252, 8
  %254 = add i64 %253, 8024086226831953923
  %gen41 = add i64 %251, 8
  %255 = sub i64 0, %.reload24alteredBB
  %256 = add i64 0, %255
  %_42 = sub i64 0, %.reload24alteredBB
  %257 = sub i64 0, 8
  %258 = sub i64 %256, %257
  %gen43 = add i64 %256, 8
  %_44 = shl i64 %.reload24alteredBB, 8
  %259 = sub i64 0, -2652166261034544263
  %260 = sub i64 %259, %.reload24alteredBB
  %261 = add i64 %260, -2652166261034544263
  %_45 = sub i64 0, %.reload24alteredBB
  %262 = sub i64 0, 8
  %263 = sub i64 %261, %262
  %gen46 = add i64 %261, 8
  %264 = sub i64 %.reload24alteredBB, 5743757137385128493
  %265 = sub i64 %264, 8
  %266 = add i64 %265, 5743757137385128493
  %_47 = sub i64 %.reload24alteredBB, 8
  %gen48 = mul i64 %266, 8
  %_49 = shl i64 %.reload24alteredBB, 8
  %267 = sub i64 0, 8
  %268 = sub i64 %.reload24alteredBB, %267
  br label %originalBB38alteredBB.split.split

originalBB38alteredBB.split.split:                ; preds = %originalBB38alteredBB.split
  %269 = add nuw nsw i64 %.reload24alteredBB, 8
  %270 = icmp ult i64 %.reload24alteredBB, 17
  %271 = select i1 %270, i32 -185256322, i32 -1308571802
  store i32 %271, i32* %switchVar, align 4
  store i64 %268, i64* %.reg2mem23, align 8
  br label %originalBB38

originalBB53alteredBB:                            ; preds = %originalBB53.split.split, %.split64.split
  %.reload12alteredBB = load i8*, i8** %.reg2mem11, align 8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %.reload12alteredBB)
  br label %originalBB53alteredBB.split

originalBB53alteredBB.split:                      ; preds = %originalBB53alteredBB
  %.reload10alteredBB = load i8*, i8** %.reg2mem9, align 8
  call void @llvm.stackrestore(i8* %.reload10alteredBB)
  %.reloadalteredBB = load i8*, i8** %.reg2mem, align 8
  br label %originalBB53alteredBB.split.split

originalBB53alteredBB.split.split:                ; preds = %originalBB53alteredBB.split
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %.reloadalteredBB) #6
  br label %originalBB53
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

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
!8 = !{!"short", !5, i64 0}
!9 = !{i64 1224, i64 1247, i64 1282, i64 1317}
!10 = !{i64 1499}
!11 = !{i64 1807}
!12 = !{i64 2127, i64 2145}
!13 = !{i64 2241}
!14 = !{i64 2529}
!15 = !{i64 2991}

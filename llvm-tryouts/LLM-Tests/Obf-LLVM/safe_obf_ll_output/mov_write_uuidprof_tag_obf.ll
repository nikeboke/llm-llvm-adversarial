; ModuleID = 'mov_write_uuidprof_tag_obf.bc'
source_filename = "mov_write_uuidprof_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MadContext = type { %struct.MpegEncContext, [64 x i32], %struct.anon }
%struct.MpegEncContext = type { i32, i32, %struct.DSPContext, %struct.GetBitContext }
%struct.DSPContext = type { void (i32*)* }
%struct.GetBitContext = type { i32 }
%struct.anon = type { [1 x i8*] }

@.str = private unnamed_addr constant [62 x i8] c"comp_block(mb_x=%d, mb_y=%d, j=%d, mv_x=%d, mv_y=%d, add=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"idct_put(mb_x=%d, mb_y=%d, j=%d)\0A\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %.reload35.reg2mem = alloca i32, align 4
  %.reload29.reg2mem = alloca i32, align 4
  br label %.split

.split:                                           ; preds = %0
  %.reload31.reg2mem = alloca i32, align 4
  %.reload33.reg2mem = alloca i32, align 4
  %.reg2mem24 = alloca i32, align 4
  %.reg2mem22 = alloca i8*, align 8
  %.reg2mem19 = alloca i32*, align 8
  %.reg2mem16 = alloca i32*, align 8
  %.reg2mem13 = alloca i32*, align 8
  %.reg2mem10 = alloca i32, align 4
  %.reg2mem7 = alloca void (i32*)**, align 8
  %.reg2mem4 = alloca i8**, align 8
  %.reg2mem = alloca i8*, align 8
  %1 = alloca %struct.MadContext, align 8
  %2 = bitcast %struct.MadContext* %1 to i8*
  store i8* %2, i8** %.reg2mem, align 8
  %.reload3 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %.reload3) #6
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(288) %.reload2, i8 0, i64 288, i1 false)
  %3 = getelementptr inbounds %struct.MadContext, %struct.MadContext* %1, i64 0, i32 2, i32 0, i64 0
  store i8** %3, i8*** %.reg2mem4, align 8
  %.reload6 = load i8**, i8*** %.reg2mem4, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %.reload6, align 8, !tbaa !3
  %4 = getelementptr inbounds %struct.MadContext, %struct.MadContext* %1, i64 0, i32 0, i32 2, i32 0
  store void (i32*)** %4, void (i32*)*** %.reg2mem7, align 8
  br label %.split.split

.split.split:                                     ; preds = %.split
  %.reload9 = load void (i32*)**, void (i32*)*** %.reg2mem7, align 8
  store void (i32*)* @clear_block_impl, void (i32*)** %.reload9, align 8, !tbaa !7
  %5 = call i32 @rand() #6
  %6 = xor i32 3, -1
  %7 = xor i32 %5, %6
  %8 = and i32 %7, %5
  %9 = and i32 %5, 3
  store i32 %8, i32* %.reg2mem10, align 4
  %switchVar = alloca i32, align 4
  store i32 -353474189, i32* %switchVar, align 4
  %.reg2mem26 = alloca i32, align 4
  %.reg2mem28 = alloca i32, align 4
  %.reg2mem30 = alloca i32, align 4
  %.reg2mem32 = alloca i32, align 4
  %.reg2mem34 = alloca i32, align 4
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %10 = load i32, i32* @x, align 4
  %11 = load i32, i32* @y, align 4
  %12 = sub i32 %10, -1470904927
  %13 = sub i32 %12, 1
  %14 = add i32 %13, -1470904927
  %15 = sub i32 %10, 1
  %16 = mul i32 %10, %14
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  %17 = urem i32 %16, 2
  %18 = icmp eq i32 %17, 0
  %19 = icmp slt i32 %11, 10
  %20 = xor i1 %18, true
  %21 = xor i1 %19, true
  br label %loopEntry.split.split

loopEntry.split.split:                            ; preds = %loopEntry.split
  %22 = xor i1 true, true
  %23 = and i1 %20, true
  %24 = and i1 %18, %22
  %25 = and i1 %21, true
  %26 = and i1 %19, %22
  %27 = or i1 %23, %24
  %28 = or i1 %25, %26
  %29 = xor i1 %27, %28
  %30 = or i1 %20, %21
  %31 = xor i1 %30, true
  %32 = or i1 true, %22
  %33 = and i1 %31, %32
  %34 = or i1 %29, %33
  %35 = or i1 %18, %19
  br i1 %34, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %loopEntry.split.split, %originalBBalteredBB.split
  %switchVar1 = load i32, i32* %switchVar, align 4
  %36 = load i32, i32* @x, align 4
  %37 = load i32, i32* @y, align 4
  %38 = sub i32 0, 1
  %39 = add i32 %36, %38
  %40 = sub i32 %36, 1
  %41 = mul i32 %36, %39
  %42 = urem i32 %41, 2
  %43 = icmp eq i32 %42, 0
  %44 = icmp slt i32 %37, 10
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %45 = xor i1 %43, true
  %46 = xor i1 %44, true
  %47 = xor i1 false, true
  %48 = and i1 %45, false
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %49 = and i1 %43, %47
  %50 = and i1 %46, false
  %51 = and i1 %44, %47
  %52 = or i1 %48, %49
  %53 = or i1 %50, %51
  %54 = xor i1 %52, %53
  %55 = or i1 %45, %46
  %56 = xor i1 %55, true
  %57 = or i1 false, %47
  %58 = and i1 %56, %57
  %59 = or i1 %54, %58
  %60 = or i1 %43, %44
  br i1 %59, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  switch i32 %switchVar1, label %switchDefault [
    i32 -353474189, label %first
    i32 833801613, label %63
    i32 -1367560929, label %66
    i32 637180078, label %123
    i32 1673688803, label %150
    i32 -217457050, label %155
    i32 -1220480068, label %167
    i32 -1566930529, label %172
    i32 1098199697, label %240
    i32 1017905088, label %273
    i32 354785583, label %320
  ]

switchDefault:                                    ; preds = %originalBBpart2
  br label %loopEnd

first:                                            ; preds = %originalBBpart2
  %.reload12 = load i32, i32* %.reg2mem10, align 4
  br label %first.split

first.split:                                      ; preds = %first
  %61 = icmp ult i32 %.reload12, 2
  %62 = select i1 %61, i32 833801613, i32 1673688803
  store i32 %62, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem28, align 4
  store i32 0, i32* %.reg2mem30, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  store i32 0, i32* %.reg2mem32, align 4
  br label %loopEnd

63:                                               ; preds = %originalBBpart2
  %.reload11 = load i32, i32* %.reg2mem10, align 4
  %64 = icmp eq i32 %.reload11, 0
  br label %.split94

.split94:                                         ; preds = %63
  %65 = select i1 %64, i32 637180078, i32 -1367560929
  store i32 %65, i32* %switchVar, align 4
  br label %.split94.split

.split94.split:                                   ; preds = %.split94
  store i32 63, i32* %.reg2mem26, align 4
  br label %loopEnd

66:                                               ; preds = %originalBBpart2
  %67 = load i32, i32* @x, align 4
  %68 = load i32, i32* @y, align 4
  %69 = sub i32 0, 1
  %70 = add i32 %67, %69
  %71 = sub i32 %67, 1
  %72 = mul i32 %67, %70
  br label %.split95

.split95:                                         ; preds = %66
  %73 = urem i32 %72, 2
  %74 = icmp eq i32 %73, 0
  %75 = icmp slt i32 %68, 10
  %76 = xor i1 %74, true
  %77 = xor i1 %75, true
  br label %.split95.split

.split95.split:                                   ; preds = %.split95
  %78 = xor i1 true, true
  %79 = and i1 %76, true
  %80 = and i1 %74, %78
  %81 = and i1 %77, true
  %82 = and i1 %75, %78
  %83 = or i1 %79, %80
  %84 = or i1 %81, %82
  %85 = xor i1 %83, %84
  %86 = or i1 %76, %77
  %87 = xor i1 %86, true
  %88 = or i1 true, %78
  %89 = and i1 %87, %88
  %90 = or i1 %85, %89
  %91 = or i1 %74, %75
  br i1 %90, label %originalBB39, label %originalBB39alteredBB

originalBB39:                                     ; preds = %.split95.split, %originalBB39alteredBB.split.split
  %92 = call i32 @rand() #6
  %93 = xor i32 63, -1
  %94 = xor i32 %92, %93
  %95 = and i32 %94, %92
  %96 = and i32 %92, 63
  store i32 637180078, i32* %switchVar, align 4
  store i32 %95, i32* %.reg2mem26, align 4
  %97 = load i32, i32* @x, align 4
  %98 = load i32, i32* @y, align 4
  %99 = sub i32 %97, -834968084
  br label %originalBB39.split

originalBB39.split:                               ; preds = %originalBB39
  %100 = sub i32 %99, 1
  %101 = add i32 %100, -834968084
  %102 = sub i32 %97, 1
  %103 = mul i32 %97, %101
  %104 = urem i32 %103, 2
  %105 = icmp eq i32 %104, 0
  %106 = icmp slt i32 %98, 10
  %107 = xor i1 %105, true
  %108 = xor i1 %106, true
  %109 = xor i1 false, true
  %110 = and i1 %107, false
  %111 = and i1 %105, %109
  br label %originalBB39.split.split

originalBB39.split.split:                         ; preds = %originalBB39.split
  %112 = and i1 %108, false
  %113 = and i1 %106, %109
  %114 = or i1 %110, %111
  %115 = or i1 %112, %113
  %116 = xor i1 %114, %115
  %117 = or i1 %107, %108
  %118 = xor i1 %117, true
  %119 = or i1 false, %109
  %120 = and i1 %118, %119
  %121 = or i1 %116, %120
  %122 = or i1 %105, %106
  br i1 %121, label %originalBBpart248, label %originalBB39alteredBB

originalBBpart248:                                ; preds = %originalBB39.split.split
  br label %loopEnd

123:                                              ; preds = %originalBBpart2
  %.reload27 = load i32, i32* %.reg2mem26, align 4
  %124 = call i32 @rand() #6
  %125 = xor i32 %124, -1
  %126 = xor i32 63, -1
  %127 = xor i32 -639940667, -1
  br label %.split96

.split96:                                         ; preds = %123
  %128 = or i32 %125, %126
  %129 = or i32 -639940667, %127
  %130 = xor i32 %128, -1
  %131 = and i32 %130, %129
  %132 = and i32 %124, 63
  %133 = sub i32 0, -32
  %134 = sub i32 %131, %133
  %135 = add nsw i32 %131, -32
  %136 = call i32 @rand() #6
  %137 = xor i32 %136, -1
  %138 = xor i32 63, -1
  %139 = xor i32 -330766075, -1
  %140 = or i32 %137, %138
  %141 = or i32 -330766075, %139
  %142 = xor i32 %140, -1
  %143 = and i32 %142, %141
  %144 = and i32 %136, 63
  %145 = sub i32 0, %143
  br label %.split96.split

.split96.split:                                   ; preds = %.split96
  %146 = sub i32 0, -32
  %147 = add i32 %145, %146
  %148 = sub i32 0, %147
  %149 = add nsw i32 %143, -32
  store i32 1673688803, i32* %switchVar, align 4
  store i32 %148, i32* %.reg2mem28, align 4
  store i32 %134, i32* %.reg2mem30, align 4
  store i32 %.reload27, i32* %.reg2mem32, align 4
  br label %loopEnd

150:                                              ; preds = %originalBBpart2
  %.reload33 = load i32, i32* %.reg2mem32, align 4
  store i32 %.reload33, i32* %.reload33.reg2mem, align 4
  %.reload31 = load i32, i32* %.reg2mem30, align 4
  store i32 %.reload31, i32* %.reload31.reg2mem, align 4
  %.reload29 = load i32, i32* %.reg2mem28, align 4
  store i32 %.reload29, i32* %.reload29.reg2mem, align 4
  br label %.split97

.split97:                                         ; preds = %150
  %151 = getelementptr inbounds %struct.MadContext, %struct.MadContext* %1, i64 0, i32 0, i32 0
  store i32* %151, i32** %.reg2mem13, align 8
  %152 = getelementptr inbounds %struct.MadContext, %struct.MadContext* %1, i64 0, i32 0, i32 1
  store i32* %152, i32** %.reg2mem16, align 8
  %153 = getelementptr inbounds %struct.MadContext, %struct.MadContext* %1, i64 0, i32 1, i64 0
  store i32* %153, i32** %.reg2mem19, align 8
  %.reload21 = load i32*, i32** %.reg2mem19, align 8
  br label %.split97.split

.split97.split:                                   ; preds = %.split97
  %154 = bitcast i32* %.reload21 to i8*
  store i8* %154, i8** %.reg2mem22, align 8
  store i32 -217457050, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem34, align 4
  br label %loopEnd

155:                                              ; preds = %originalBBpart2
  %.reload35 = load i32, i32* %.reg2mem34, align 4
  br label %.split98

.split98:                                         ; preds = %155
  store i32 %.reload35, i32* %.reload35.reg2mem, align 4
  br label %.split98.split

.split98.split:                                   ; preds = %.split98
  %.reload35.reload = load i32, i32* %.reload35.reg2mem, align 4
  %156 = shl i32 1, %.reload35.reload
  %.reload33.reload = load i32, i32* %.reload33.reg2mem, align 4
  %157 = xor i32 %156, -1
  %158 = xor i32 %.reload33.reload, -1
  %159 = xor i32 272467166, -1
  %160 = or i32 %157, %158
  %161 = or i32 272467166, %159
  %162 = xor i32 %160, -1
  %163 = and i32 %162, %161
  %164 = and i32 %156, %.reload33.reload
  %165 = icmp eq i32 %163, 0
  %166 = select i1 %165, i32 1098199697, i32 -1220480068
  store i32 %166, i32* %switchVar, align 4
  br label %loopEnd

167:                                              ; preds = %originalBBpart2
  %168 = call i32 @rand() #6
  store i32 %168, i32* %.reg2mem24, align 4
  %.reload5 = load i8**, i8*** %.reg2mem4, align 8
  %169 = load i8*, i8** %.reload5, align 8, !tbaa !3
  br label %.split99

.split99:                                         ; preds = %167
  %170 = icmp eq i8* %169, null
  br label %.split99.split

.split99.split:                                   ; preds = %.split99
  %171 = select i1 %170, i32 1017905088, i32 -1566930529
  store i32 %171, i32* %switchVar, align 4
  br label %loopEnd

172:                                              ; preds = %originalBBpart2
  %173 = load i32, i32* @x, align 4
  %174 = load i32, i32* @y, align 4
  %175 = sub i32 0, 1
  %176 = add i32 %173, %175
  %177 = sub i32 %173, 1
  %178 = mul i32 %173, %176
  %179 = urem i32 %178, 2
  %180 = icmp eq i32 %179, 0
  %181 = icmp slt i32 %174, 10
  %182 = xor i1 %180, true
  %183 = xor i1 %181, true
  br label %.split100

.split100:                                        ; preds = %172
  %184 = xor i1 false, true
  %185 = and i1 %182, false
  %186 = and i1 %180, %184
  br label %.split100.split

.split100.split:                                  ; preds = %.split100
  %187 = and i1 %183, false
  %188 = and i1 %181, %184
  %189 = or i1 %185, %186
  %190 = or i1 %187, %188
  %191 = xor i1 %189, %190
  %192 = or i1 %182, %183
  %193 = xor i1 %192, true
  %194 = or i1 false, %184
  %195 = and i1 %193, %194
  %196 = or i1 %191, %195
  %197 = or i1 %180, %181
  br i1 %196, label %originalBB50, label %originalBB50alteredBB

originalBB50:                                     ; preds = %.split100.split, %originalBB50alteredBB.split.split
  %.reload25 = load i32, i32* %.reg2mem24, align 4
  %198 = shl i32 %.reload25, 1
  %199 = xor i32 %198, -1
  %200 = xor i32 126, -1
  %201 = xor i32 -2077201142, -1
  %202 = or i32 %199, %200
  %203 = or i32 -2077201142, %201
  %204 = xor i32 %202, -1
  %205 = and i32 %204, %203
  %206 = and i32 %198, 126
  %207 = add i32 %205, -684792949
  %208 = add i32 %207, -64
  %209 = sub i32 %208, -684792949
  %210 = add nsw i32 %205, -64
  %.reload15 = load i32*, i32** %.reg2mem13, align 8
  %211 = load i32, i32* %.reload15, align 8, !tbaa !14
  %.reload18 = load i32*, i32** %.reg2mem16, align 8
  %212 = load i32, i32* %.reload18, align 4, !tbaa !15
  %.reload31.reload = load i32, i32* %.reload31.reg2mem, align 4
  %.reload29.reload = load i32, i32* %.reload29.reg2mem, align 4
  %.reload35.reload36 = load i32, i32* %.reload35.reg2mem, align 4
  %213 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 noundef %211, i32 noundef %212, i32 noundef %.reload35.reload36, i32 noundef %.reload31.reload, i32 noundef %.reload29.reload, i32 noundef %209) #6
  store i32 1017905088, i32* %switchVar, align 4
  %214 = load i32, i32* @x, align 4
  %215 = load i32, i32* @y, align 4
  %216 = add i32 %214, -678079336
  %217 = sub i32 %216, 1
  %218 = sub i32 %217, -678079336
  br label %originalBB50.split

originalBB50.split:                               ; preds = %originalBB50
  %219 = sub i32 %214, 1
  br label %originalBB50.split.split

originalBB50.split.split:                         ; preds = %originalBB50.split
  %220 = mul i32 %214, %218
  %221 = urem i32 %220, 2
  %222 = icmp eq i32 %221, 0
  %223 = icmp slt i32 %215, 10
  %224 = xor i1 %222, true
  %225 = xor i1 %223, true
  %226 = xor i1 false, true
  %227 = and i1 %224, false
  %228 = and i1 %222, %226
  %229 = and i1 %225, false
  %230 = and i1 %223, %226
  %231 = or i1 %227, %228
  %232 = or i1 %229, %230
  %233 = xor i1 %231, %232
  %234 = or i1 %224, %225
  %235 = xor i1 %234, true
  %236 = or i1 false, %226
  %237 = and i1 %235, %236
  %238 = or i1 %233, %237
  %239 = or i1 %222, %223
  br i1 %238, label %originalBBpart273, label %originalBB50alteredBB

originalBBpart273:                                ; preds = %originalBB50.split.split
  br label %loopEnd

240:                                              ; preds = %originalBBpart2
  %241 = load i32, i32* @x, align 4
  %242 = load i32, i32* @y, align 4
  br label %.split101

.split101:                                        ; preds = %240
  %243 = sub i32 %241, -1043049523
  %244 = sub i32 %243, 1
  %245 = add i32 %244, -1043049523
  %246 = sub i32 %241, 1
  %247 = mul i32 %241, %245
  %248 = urem i32 %247, 2
  %249 = icmp eq i32 %248, 0
  %250 = icmp slt i32 %242, 10
  %251 = and i1 %249, %250
  %252 = xor i1 %249, %250
  br label %.split101.split

.split101.split:                                  ; preds = %.split101
  %253 = or i1 %251, %252
  %254 = or i1 %249, %250
  br i1 %253, label %originalBB75, label %originalBB75alteredBB

originalBB75:                                     ; preds = %.split101.split, %originalBB75alteredBB.split.split
  %.reload8 = load void (i32*)**, void (i32*)*** %.reg2mem7, align 8
  %255 = load void (i32*)*, void (i32*)** %.reload8, align 8, !tbaa !16
  br label %originalBB75.split

originalBB75.split:                               ; preds = %originalBB75
  %.reload20 = load i32*, i32** %.reg2mem19, align 8
  call void %255(i32* noundef nonnull %.reload20) #6
  %.reload23 = load i8*, i8** %.reg2mem22, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(256) %.reload23, i8 0, i64 256, i1 false) #6, !tbaa !17
  %.reload14 = load i32*, i32** %.reg2mem13, align 8
  %256 = load i32, i32* %.reload14, align 8, !tbaa !14
  %.reload17 = load i32*, i32** %.reg2mem16, align 8
  %257 = load i32, i32* %.reload17, align 4, !tbaa !15
  %.reload35.reload38 = load i32, i32* %.reload35.reg2mem, align 4
  %258 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 noundef %256, i32 noundef %257, i32 noundef %.reload35.reload38) #6
  store i32 1017905088, i32* %switchVar, align 4
  %259 = load i32, i32* @x, align 4
  %260 = load i32, i32* @y, align 4
  %261 = sub i32 %259, 1117612819
  %262 = sub i32 %261, 1
  %263 = add i32 %262, 1117612819
  %264 = sub i32 %259, 1
  %265 = mul i32 %259, %263
  br label %originalBB75.split.split

originalBB75.split.split:                         ; preds = %originalBB75.split
  %266 = urem i32 %265, 2
  %267 = icmp eq i32 %266, 0
  %268 = icmp slt i32 %260, 10
  %269 = and i1 %267, %268
  %270 = xor i1 %267, %268
  %271 = or i1 %269, %270
  %272 = or i1 %267, %268
  br i1 %271, label %originalBBpart277, label %originalBB75alteredBB

originalBBpart277:                                ; preds = %originalBB75.split.split
  br label %loopEnd

273:                                              ; preds = %originalBBpart2
  %274 = load i32, i32* @x, align 4
  %275 = load i32, i32* @y, align 4
  %276 = add i32 %274, -1229469085
  %277 = sub i32 %276, 1
  %278 = sub i32 %277, -1229469085
  %279 = sub i32 %274, 1
  %280 = mul i32 %274, %278
  %281 = urem i32 %280, 2
  %282 = icmp eq i32 %281, 0
  %283 = icmp slt i32 %275, 10
  %284 = xor i1 %282, true
  %285 = xor i1 %283, true
  %286 = xor i1 false, true
  %287 = and i1 %284, false
  br label %.split102

.split102:                                        ; preds = %273
  %288 = and i1 %282, %286
  %289 = and i1 %285, false
  %290 = and i1 %283, %286
  %291 = or i1 %287, %288
  br label %.split102.split

.split102.split:                                  ; preds = %.split102
  %292 = or i1 %289, %290
  %293 = xor i1 %291, %292
  %294 = or i1 %284, %285
  %295 = xor i1 %294, true
  %296 = or i1 false, %286
  %297 = and i1 %295, %296
  %298 = or i1 %293, %297
  %299 = or i1 %282, %283
  br i1 %298, label %originalBB79, label %originalBB79alteredBB

originalBB79:                                     ; preds = %.split102.split, %originalBB79alteredBB.split.split
  %.reload35.reload37 = load i32, i32* %.reload35.reg2mem, align 4
  %300 = add i32 %.reload35.reload37, -542033959
  %301 = add i32 %300, 1
  %302 = sub i32 %301, -542033959
  %303 = add nuw nsw i32 %.reload35.reload37, 1
  %304 = icmp eq i32 %302, 6
  br label %originalBB79.split

originalBB79.split:                               ; preds = %originalBB79
  %305 = select i1 %304, i32 354785583, i32 -217457050
  store i32 %305, i32* %switchVar, align 4
  store i32 %302, i32* %.reg2mem34, align 4
  %306 = load i32, i32* @x, align 4
  %307 = load i32, i32* @y, align 4
  %308 = add i32 %306, -980616954
  %309 = sub i32 %308, 1
  %310 = sub i32 %309, -980616954
  br label %originalBB79.split.split

originalBB79.split.split:                         ; preds = %originalBB79.split
  %311 = sub i32 %306, 1
  %312 = mul i32 %306, %310
  %313 = urem i32 %312, 2
  %314 = icmp eq i32 %313, 0
  %315 = icmp slt i32 %307, 10
  %316 = and i1 %314, %315
  %317 = xor i1 %314, %315
  %318 = or i1 %316, %317
  %319 = or i1 %314, %315
  br i1 %318, label %originalBBpart292, label %originalBB79alteredBB

originalBBpart292:                                ; preds = %originalBB79.split.split
  br label %loopEnd

320:                                              ; preds = %originalBBpart2
  %.reload = load i8*, i8** %.reg2mem, align 8
  br label %.split103

.split103:                                        ; preds = %320
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %.reload) #6
  br label %.split103.split

.split103.split:                                  ; preds = %.split103
  ret i32 0

loopEnd:                                          ; preds = %originalBBpart292, %originalBBpart277, %originalBBpart273, %.split99.split, %.split98.split, %.split97.split, %.split96.split, %originalBBpart248, %.split94.split, %first.split.split, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %loopEntry.split.split
  %switchVar1alteredBB = load i32, i32* %switchVar, align 4
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB

originalBB39alteredBB:                            ; preds = %originalBB39.split.split, %.split95.split
  %321 = call i32 @rand() #6
  %322 = add i32 0, 310015957
  %323 = sub i32 %322, %321
  %324 = sub i32 %323, 310015957
  %_ = sub i32 0, %321
  %325 = sub i32 0, %324
  %326 = sub i32 0, 63
  %327 = add i32 %325, %326
  %328 = sub i32 0, %327
  %gen = add i32 %324, 63
  %329 = sub i32 0, -2090620027
  %330 = sub i32 %329, %321
  %331 = add i32 %330, -2090620027
  %_40 = sub i32 0, %321
  %332 = sub i32 %331, 767191262
  %333 = add i32 %332, 63
  %334 = add i32 %333, 767191262
  %gen41 = add i32 %331, 63
  %335 = sub i32 0, %321
  %336 = add i32 0, %335
  %_42 = sub i32 0, %321
  %337 = sub i32 %336, -1377564799
  %338 = add i32 %337, 63
  %339 = add i32 %338, -1377564799
  %gen43 = add i32 %336, 63
  %_44 = shl i32 %321, 63
  %340 = add i32 0, 1444480093
  %341 = sub i32 %340, %321
  %342 = sub i32 %341, 1444480093
  %_45 = sub i32 0, %321
  %343 = sub i32 0, %342
  %344 = sub i32 0, 63
  %345 = add i32 %343, %344
  %346 = sub i32 0, %345
  %gen46 = add i32 %342, 63
  br label %originalBB39alteredBB.split

originalBB39alteredBB.split:                      ; preds = %originalBB39alteredBB
  %347 = xor i32 %321, -1
  %348 = xor i32 63, -1
  %349 = xor i32 718865834, -1
  br label %originalBB39alteredBB.split.split

originalBB39alteredBB.split.split:                ; preds = %originalBB39alteredBB.split
  %350 = or i32 %347, %348
  %351 = or i32 718865834, %349
  %352 = xor i32 %350, -1
  %353 = and i32 %352, %351
  %354 = and i32 %321, 63
  store i32 637180078, i32* %switchVar, align 4
  store i32 %353, i32* %.reg2mem26, align 4
  br label %originalBB39

originalBB50alteredBB:                            ; preds = %originalBB50.split.split, %.split100.split
  %.reload25alteredBB = load i32, i32* %.reg2mem24, align 4
  %355 = sub i32 %.reload25alteredBB, -1352284434
  %356 = sub i32 %355, 1
  %357 = add i32 %356, -1352284434
  %_51 = sub i32 %.reload25alteredBB, 1
  %gen52 = mul i32 %357, 1
  %358 = add i32 0, -1936713289
  %359 = sub i32 %358, %.reload25alteredBB
  %360 = sub i32 %359, -1936713289
  %_53 = sub i32 0, %.reload25alteredBB
  %361 = sub i32 0, %360
  %362 = sub i32 0, 1
  %363 = add i32 %361, %362
  %364 = sub i32 0, %363
  %gen54 = add i32 %360, 1
  %365 = sub i32 0, 776961049
  %366 = sub i32 %365, %.reload25alteredBB
  %367 = add i32 %366, 776961049
  %_55 = sub i32 0, %.reload25alteredBB
  %368 = sub i32 %367, -1000596711
  %369 = add i32 %368, 1
  %370 = add i32 %369, -1000596711
  br label %originalBB50alteredBB.split

originalBB50alteredBB.split:                      ; preds = %originalBB50alteredBB
  %gen56 = add i32 %367, 1
  %371 = sub i32 %.reload25alteredBB, 566308738
  %372 = sub i32 %371, 1
  %373 = add i32 %372, 566308738
  %_57 = sub i32 %.reload25alteredBB, 1
  %gen58 = mul i32 %373, 1
  %374 = shl i32 %.reload25alteredBB, 1
  %375 = sub i32 0, -1859952141
  %376 = sub i32 %375, %374
  %377 = add i32 %376, -1859952141
  %_59 = sub i32 0, %374
  %378 = sub i32 0, 126
  %379 = sub i32 %377, %378
  %gen60 = add i32 %377, 126
  %380 = sub i32 %374, -1270056905
  %381 = sub i32 %380, 126
  %382 = add i32 %381, -1270056905
  %_61 = sub i32 %374, 126
  %gen62 = mul i32 %382, 126
  %383 = sub i32 0, 126
  %384 = add i32 %374, %383
  %_63 = sub i32 %374, 126
  %gen64 = mul i32 %384, 126
  %385 = sub i32 %374, -416158248
  %386 = sub i32 %385, 126
  %387 = add i32 %386, -416158248
  %_65 = sub i32 %374, 126
  %gen66 = mul i32 %387, 126
  %388 = xor i32 126, -1
  %389 = xor i32 %374, %388
  br label %originalBB50alteredBB.split.split

originalBB50alteredBB.split.split:                ; preds = %originalBB50alteredBB.split
  %390 = and i32 %389, %374
  %391 = and i32 %374, 126
  %392 = sub i32 0, %390
  %393 = add i32 0, %392
  %_67 = sub i32 0, %390
  %394 = sub i32 %393, 2108305563
  %395 = add i32 %394, -64
  %396 = add i32 %395, 2108305563
  %gen68 = add i32 %393, -64
  %397 = add i32 %390, 1695015542
  %398 = sub i32 %397, -64
  %399 = sub i32 %398, 1695015542
  %_69 = sub i32 %390, -64
  %gen70 = mul i32 %399, -64
  %_71 = shl i32 %390, -64
  %400 = add i32 %390, 711485741
  %401 = add i32 %400, -64
  %402 = sub i32 %401, 711485741
  %403 = add nsw i32 %390, -64
  %.reload15alteredBB = load i32*, i32** %.reg2mem13, align 8
  %404 = load i32, i32* %.reload15alteredBB, align 8, !tbaa !14
  %.reload18alteredBB = load i32*, i32** %.reg2mem16, align 8
  %405 = load i32, i32* %.reload18alteredBB, align 4, !tbaa !15
  %.reload31.reloadalteredBB = load i32, i32* %.reload31.reg2mem, align 4
  %.reload29.reloadalteredBB = load i32, i32* %.reload29.reg2mem, align 4
  %.reload35.reload36alteredBB = load i32, i32* %.reload35.reg2mem, align 4
  %406 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 noundef %404, i32 noundef %405, i32 noundef %.reload35.reload36alteredBB, i32 noundef %.reload31.reloadalteredBB, i32 noundef %.reload29.reloadalteredBB, i32 noundef %402) #6
  store i32 1017905088, i32* %switchVar, align 4
  br label %originalBB50

originalBB75alteredBB:                            ; preds = %originalBB75.split.split, %.split101.split
  %.reload8alteredBB = load void (i32*)**, void (i32*)*** %.reg2mem7, align 8
  %407 = load void (i32*)*, void (i32*)** %.reload8alteredBB, align 8, !tbaa !16
  %.reload20alteredBB = load i32*, i32** %.reg2mem19, align 8
  call void %407(i32* noundef nonnull %.reload20alteredBB) #6
  %.reload23alteredBB = load i8*, i8** %.reg2mem22, align 8
  br label %originalBB75alteredBB.split

originalBB75alteredBB.split:                      ; preds = %originalBB75alteredBB
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(256) %.reload23alteredBB, i8 0, i64 256, i1 false) #6, !tbaa !17
  %.reload14alteredBB = load i32*, i32** %.reg2mem13, align 8
  br label %originalBB75alteredBB.split.split

originalBB75alteredBB.split.split:                ; preds = %originalBB75alteredBB.split
  %408 = load i32, i32* %.reload14alteredBB, align 8, !tbaa !14
  %.reload17alteredBB = load i32*, i32** %.reg2mem16, align 8
  %409 = load i32, i32* %.reload17alteredBB, align 4, !tbaa !15
  %.reload35.reload38alteredBB = load i32, i32* %.reload35.reg2mem, align 4
  %410 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 noundef %408, i32 noundef %409, i32 noundef %.reload35.reload38alteredBB) #6
  store i32 1017905088, i32* %switchVar, align 4
  br label %originalBB75

originalBB79alteredBB:                            ; preds = %originalBB79.split.split, %.split102.split
  %.reload35.reload37alteredBB = load i32, i32* %.reload35.reg2mem, align 4
  %411 = add i32 0, 905037998
  %412 = sub i32 %411, %.reload35.reload37alteredBB
  %413 = sub i32 %412, 905037998
  %_80 = sub i32 0, %.reload35.reload37alteredBB
  %414 = add i32 %413, 969386098
  %415 = add i32 %414, 1
  %416 = sub i32 %415, 969386098
  %gen81 = add i32 %413, 1
  %417 = add i32 %.reload35.reload37alteredBB, -847794245
  %418 = sub i32 %417, 1
  %419 = sub i32 %418, -847794245
  %_82 = sub i32 %.reload35.reload37alteredBB, 1
  br label %originalBB79alteredBB.split

originalBB79alteredBB.split:                      ; preds = %originalBB79alteredBB
  %gen83 = mul i32 %419, 1
  br label %originalBB79alteredBB.split.split

originalBB79alteredBB.split.split:                ; preds = %originalBB79alteredBB.split
  %_84 = shl i32 %.reload35.reload37alteredBB, 1
  %_85 = shl i32 %.reload35.reload37alteredBB, 1
  %420 = sub i32 %.reload35.reload37alteredBB, -776737818
  %421 = sub i32 %420, 1
  %422 = add i32 %421, -776737818
  %_86 = sub i32 %.reload35.reload37alteredBB, 1
  %gen87 = mul i32 %422, 1
  %_88 = shl i32 %.reload35.reload37alteredBB, 1
  %423 = add i32 0, -1764841593
  %424 = sub i32 %423, %.reload35.reload37alteredBB
  %425 = sub i32 %424, -1764841593
  %_89 = sub i32 0, %.reload35.reload37alteredBB
  %426 = sub i32 0, 1
  %427 = sub i32 %425, %426
  %gen90 = add i32 %425, 1
  %428 = sub i32 %.reload35.reload37alteredBB, 330686872
  %429 = add i32 %428, 1
  %430 = add i32 %429, 330686872
  %431 = add nuw nsw i32 %.reload35.reload37alteredBB, 1
  %432 = icmp eq i32 %430, 6
  %433 = select i1 %432, i32 354785583, i32 -217457050
  store i32 %433, i32* %switchVar, align 4
  store i32 %430, i32* %.reg2mem34, align 4
  br label %originalBB79
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn writeonly
define internal void @clear_block_impl(i32* nocapture noundef writeonly %0) #3 {
  %2 = bitcast i32* %0 to i8*
  br label %.split

.split:                                           ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(256) %2, i8 0, i64 256, i1 false)
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 8}
!8 = !{!"", !9, i64 0, !5, i64 24, !13, i64 280}
!9 = !{!"", !10, i64 0, !10, i64 4, !11, i64 8, !12, i64 16}
!10 = !{!"int", !5, i64 0}
!11 = !{!"", !4, i64 0}
!12 = !{!"", !10, i64 0}
!13 = !{!"", !5, i64 0}
!14 = !{!9, !10, i64 0}
!15 = !{!9, !10, i64 4}
!16 = !{!9, !4, i64 8}
!17 = !{!10, !10, i64 0}

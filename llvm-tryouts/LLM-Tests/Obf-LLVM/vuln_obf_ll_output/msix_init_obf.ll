; ModuleID = 'msix_init_obf.bc'
source_filename = "msix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemoryRegion = type { i64, i8* }
%struct.PCIDevice = type { i8*, %struct.MemoryRegion }

@.str = private unnamed_addr constant [45 x i8] c"Registered BAR %d of size %zu for device %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s-msix\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"virt-pci-dev\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Init result: %d\0A\00", align 1
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

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @qemu_fls(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @x, align 4
  %3 = load i32, i32* @y, align 4
  %4 = sub i32 0, 1
  %5 = add i32 %2, %4
  br label %.split

.split:                                           ; preds = %1
  %6 = sub i32 %2, 1
  %7 = mul i32 %2, %5
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %3, 10
  %11 = xor i1 %9, true
  %12 = xor i1 %10, true
  %13 = xor i1 true, true
  %14 = and i1 %11, true
  %15 = and i1 %9, %13
  %16 = and i1 %12, true
  %17 = and i1 %10, %13
  %18 = or i1 %14, %15
  %19 = or i1 %16, %17
  %20 = xor i1 %18, %19
  %21 = or i1 %11, %12
  %22 = xor i1 %21, true
  br label %.split.split

.split.split:                                     ; preds = %.split
  %23 = or i1 true, %13
  %24 = and i1 %22, %23
  %25 = or i1 %20, %24
  %26 = or i1 %9, %10
  br i1 %25, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %switchVar = alloca i32, align 4
  store i32 297626364, i32* %switchVar, align 4
  %.reg2mem = alloca i32, align 4
  %.reg2mem2 = alloca i32, align 4
  %.reg2mem4 = alloca i32, align 4
  %27 = load i32, i32* @x, align 4
  %28 = load i32, i32* @y, align 4
  %29 = sub i32 0, 1
  %30 = add i32 %27, %29
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %31 = sub i32 %27, 1
  %32 = mul i32 %27, %30
  %33 = urem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  %35 = icmp slt i32 %28, 10
  %36 = xor i1 %34, true
  %37 = xor i1 %35, true
  %38 = xor i1 false, true
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %39 = and i1 %36, false
  %40 = and i1 %34, %38
  %41 = and i1 %37, false
  %42 = and i1 %35, %38
  %43 = or i1 %39, %40
  %44 = or i1 %41, %42
  %45 = xor i1 %43, %44
  %46 = or i1 %36, %37
  %47 = xor i1 %46, true
  %48 = or i1 false, %38
  %49 = and i1 %47, %48
  %50 = or i1 %45, %49
  %51 = or i1 %34, %35
  br i1 %50, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %loopEnd
  %52 = load i32, i32* @x, align 4
  %53 = load i32, i32* @y, align 4
  %54 = sub i32 %52, 990037923
  %55 = sub i32 %54, 1
  %56 = add i32 %55, 990037923
  %57 = sub i32 %52, 1
  %58 = mul i32 %52, %56
  %59 = urem i32 %58, 2
  %60 = icmp eq i32 %59, 0
  %61 = icmp slt i32 %53, 10
  %62 = xor i1 %60, true
  %63 = xor i1 %61, true
  %64 = xor i1 true, true
  %65 = and i1 %62, true
  %66 = and i1 %60, %64
  %67 = and i1 %63, true
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  %68 = and i1 %61, %64
  %69 = or i1 %65, %66
  %70 = or i1 %67, %68
  %71 = xor i1 %69, %70
  %72 = or i1 %62, %63
  %73 = xor i1 %72, true
  br label %loopEntry.split.split

loopEntry.split.split:                            ; preds = %loopEntry.split
  %74 = or i1 true, %64
  %75 = and i1 %73, %74
  %76 = or i1 %71, %75
  %77 = or i1 %60, %61
  br i1 %76, label %originalBB6, label %originalBB6alteredBB

originalBB6:                                      ; preds = %loopEntry.split.split, %originalBB6alteredBB.split
  %switchVar1 = load i32, i32* %switchVar, align 4
  %78 = load i32, i32* @x, align 4
  %79 = load i32, i32* @y, align 4
  %80 = sub i32 0, 1
  br label %originalBB6.split

originalBB6.split:                                ; preds = %originalBB6
  %81 = add i32 %78, %80
  %82 = sub i32 %78, 1
  %83 = mul i32 %78, %81
  %84 = urem i32 %83, 2
  %85 = icmp eq i32 %84, 0
  %86 = icmp slt i32 %79, 10
  %87 = and i1 %85, %86
  br label %originalBB6.split.split

originalBB6.split.split:                          ; preds = %originalBB6.split
  %88 = xor i1 %85, %86
  %89 = or i1 %87, %88
  %90 = or i1 %85, %86
  br i1 %89, label %originalBBpart28, label %originalBB6alteredBB

originalBBpart28:                                 ; preds = %originalBB6.split.split
  switch i32 %switchVar1, label %switchDefault [
    i32 297626364, label %first
    i32 -413568806, label %144
    i32 195815087, label %190
  ]

switchDefault:                                    ; preds = %originalBBpart28
  %91 = load i32, i32* @x, align 4
  %92 = load i32, i32* @y, align 4
  %93 = sub i32 0, 1
  %94 = add i32 %91, %93
  %95 = sub i32 %91, 1
  %96 = mul i32 %91, %94
  %97 = urem i32 %96, 2
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %98 = icmp eq i32 %97, 0
  %99 = icmp slt i32 %92, 10
  %100 = xor i1 %98, true
  %101 = xor i1 %99, true
  %102 = xor i1 false, true
  %103 = and i1 %100, false
  %104 = and i1 %98, %102
  %105 = and i1 %101, false
  %106 = and i1 %99, %102
  %107 = or i1 %103, %104
  %108 = or i1 %105, %106
  %109 = xor i1 %107, %108
  %110 = or i1 %100, %101
  %111 = xor i1 %110, true
  %112 = or i1 false, %102
  %113 = and i1 %111, %112
  %114 = or i1 %109, %113
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %115 = or i1 %98, %99
  br i1 %114, label %originalBB10, label %originalBB10alteredBB

originalBB10:                                     ; preds = %switchDefault.split.split, %originalBB10alteredBB
  %116 = load i32, i32* @x, align 4
  %117 = load i32, i32* @y, align 4
  %118 = sub i32 %116, -1198005486
  %119 = sub i32 %118, 1
  %120 = add i32 %119, -1198005486
  %121 = sub i32 %116, 1
  %122 = mul i32 %116, %120
  %123 = urem i32 %122, 2
  %124 = icmp eq i32 %123, 0
  %125 = icmp slt i32 %117, 10
  %126 = xor i1 %124, true
  %127 = xor i1 %125, true
  %128 = xor i1 true, true
  %129 = and i1 %126, true
  br label %originalBB10.split

originalBB10.split:                               ; preds = %originalBB10
  %130 = and i1 %124, %128
  %131 = and i1 %127, true
  %132 = and i1 %125, %128
  %133 = or i1 %129, %130
  br label %originalBB10.split.split

originalBB10.split.split:                         ; preds = %originalBB10.split
  %134 = or i1 %131, %132
  %135 = xor i1 %133, %134
  %136 = or i1 %126, %127
  %137 = xor i1 %136, true
  %138 = or i1 true, %128
  %139 = and i1 %137, %138
  %140 = or i1 %135, %139
  %141 = or i1 %124, %125
  br i1 %140, label %originalBBpart212, label %originalBB10alteredBB

originalBBpart212:                                ; preds = %originalBB10.split.split
  br label %loopEnd

first:                                            ; preds = %originalBBpart28
  %142 = icmp ult i32 %0, 2
  %143 = select i1 %142, i32 195815087, i32 -413568806
  br label %first.split

first.split:                                      ; preds = %first
  store i32 %143, i32* %switchVar, align 4
  store i32 1, i32* %.reg2mem, align 4
  store i32 %0, i32* %.reg2mem2, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  store i32 1, i32* %.reg2mem4, align 4
  br label %loopEnd

144:                                              ; preds = %originalBBpart28
  %145 = load i32, i32* @x, align 4
  %146 = load i32, i32* @y, align 4
  %147 = sub i32 0, 1
  %148 = add i32 %145, %147
  %149 = sub i32 %145, 1
  %150 = mul i32 %145, %148
  %151 = urem i32 %150, 2
  %152 = icmp eq i32 %151, 0
  %153 = icmp slt i32 %146, 10
  br label %.split35

.split35:                                         ; preds = %144
  %154 = xor i1 %152, true
  %155 = xor i1 %153, true
  %156 = xor i1 true, true
  %157 = and i1 %154, true
  br label %.split35.split

.split35.split:                                   ; preds = %.split35
  %158 = and i1 %152, %156
  %159 = and i1 %155, true
  %160 = and i1 %153, %156
  %161 = or i1 %157, %158
  %162 = or i1 %159, %160
  %163 = xor i1 %161, %162
  %164 = or i1 %154, %155
  %165 = xor i1 %164, true
  %166 = or i1 true, %156
  %167 = and i1 %165, %166
  %168 = or i1 %163, %167
  %169 = or i1 %152, %153
  br i1 %168, label %originalBB14, label %originalBB14alteredBB

originalBB14:                                     ; preds = %.split35.split, %originalBB14alteredBB.split.split
  %.reload3 = load i32, i32* %.reg2mem2, align 4
  %.reload = load i32, i32* %.reg2mem, align 4
  %170 = lshr i32 %.reload3, 1
  %171 = sub i32 0, 1
  %172 = sub i32 %.reload, %171
  br label %originalBB14.split

originalBB14.split:                               ; preds = %originalBB14
  %173 = add nuw nsw i32 %.reload, 1
  %174 = icmp ult i32 %.reload3, 4
  %175 = select i1 %174, i32 195815087, i32 -413568806
  store i32 %175, i32* %switchVar, align 4
  store i32 %172, i32* %.reg2mem, align 4
  store i32 %170, i32* %.reg2mem2, align 4
  store i32 %172, i32* %.reg2mem4, align 4
  %176 = load i32, i32* @x, align 4
  %177 = load i32, i32* @y, align 4
  %178 = add i32 %176, -825096248
  %179 = sub i32 %178, 1
  %180 = sub i32 %179, -825096248
  br label %originalBB14.split.split

originalBB14.split.split:                         ; preds = %originalBB14.split
  %181 = sub i32 %176, 1
  %182 = mul i32 %176, %180
  %183 = urem i32 %182, 2
  %184 = icmp eq i32 %183, 0
  %185 = icmp slt i32 %177, 10
  %186 = and i1 %184, %185
  %187 = xor i1 %184, %185
  %188 = or i1 %186, %187
  %189 = or i1 %184, %185
  br i1 %188, label %originalBBpart229, label %originalBB14alteredBB

originalBBpart229:                                ; preds = %originalBB14.split.split
  br label %loopEnd

190:                                              ; preds = %originalBBpart28
  %191 = load i32, i32* @x, align 4
  %192 = load i32, i32* @y, align 4
  %193 = sub i32 0, 1
  %194 = add i32 %191, %193
  %195 = sub i32 %191, 1
  %196 = mul i32 %191, %194
  %197 = urem i32 %196, 2
  %198 = icmp eq i32 %197, 0
  %199 = icmp slt i32 %192, 10
  %200 = and i1 %198, %199
  %201 = xor i1 %198, %199
  br label %.split36

.split36:                                         ; preds = %190
  %202 = or i1 %200, %201
  %203 = or i1 %198, %199
  br label %.split36.split

.split36.split:                                   ; preds = %.split36
  br i1 %202, label %originalBB31, label %originalBB31alteredBB

originalBB31:                                     ; preds = %.split36.split, %originalBB31alteredBB.split
  %.reload5 = load i32, i32* %.reg2mem4, align 4
  %204 = load i32, i32* @x, align 4
  %205 = load i32, i32* @y, align 4
  %206 = sub i32 0, 1
  %207 = add i32 %204, %206
  %208 = sub i32 %204, 1
  %209 = mul i32 %204, %207
  %210 = urem i32 %209, 2
  %211 = icmp eq i32 %210, 0
  %212 = icmp slt i32 %205, 10
  %213 = xor i1 %211, true
  br label %originalBB31.split

originalBB31.split:                               ; preds = %originalBB31
  %214 = xor i1 %212, true
  %215 = xor i1 false, true
  %216 = and i1 %213, false
  %217 = and i1 %211, %215
  %218 = and i1 %214, false
  %219 = and i1 %212, %215
  %220 = or i1 %216, %217
  %221 = or i1 %218, %219
  %222 = xor i1 %220, %221
  %223 = or i1 %213, %214
  %224 = xor i1 %223, true
  %225 = or i1 false, %215
  %226 = and i1 %224, %225
  %227 = or i1 %222, %226
  br label %originalBB31.split.split

originalBB31.split.split:                         ; preds = %originalBB31.split
  %228 = or i1 %211, %212
  br i1 %227, label %originalBBpart233, label %originalBB31alteredBB

originalBBpart233:                                ; preds = %originalBB31.split.split
  ret i32 %.reload5

loopEnd:                                          ; preds = %originalBBpart229, %first.split.split, %originalBBpart212
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %switchVaralteredBB = alloca i32, align 4
  store i32 297626364, i32* %switchVaralteredBB, align 4
  %.reg2memalteredBB = alloca i32, align 4
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %.reg2mem2alteredBB = alloca i32, align 4
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  %.reg2mem4alteredBB = alloca i32, align 4
  br label %originalBB

originalBB6alteredBB:                             ; preds = %originalBB6.split.split, %loopEntry.split.split
  %switchVar1alteredBB = load i32, i32* %switchVar, align 4
  br label %originalBB6alteredBB.split

originalBB6alteredBB.split:                       ; preds = %originalBB6alteredBB
  br label %originalBB6

originalBB10alteredBB:                            ; preds = %originalBB10.split.split, %switchDefault.split.split
  br label %originalBB10

originalBB14alteredBB:                            ; preds = %originalBB14.split.split, %.split35.split
  %.reload3alteredBB = load i32, i32* %.reg2mem2, align 4
  %.reloadalteredBB = load i32, i32* %.reg2mem, align 4
  %_ = shl i32 %.reload3alteredBB, 1
  %229 = add i32 %.reload3alteredBB, -413957842
  %230 = sub i32 %229, 1
  %231 = sub i32 %230, -413957842
  %_15 = sub i32 %.reload3alteredBB, 1
  %gen = mul i32 %231, 1
  %232 = sub i32 0, 1
  br label %originalBB14alteredBB.split

originalBB14alteredBB.split:                      ; preds = %originalBB14alteredBB
  %233 = add i32 %.reload3alteredBB, %232
  %_16 = sub i32 %.reload3alteredBB, 1
  %gen17 = mul i32 %233, 1
  %_18 = shl i32 %.reload3alteredBB, 1
  %234 = sub i32 0, %.reload3alteredBB
  %235 = add i32 0, %234
  %_19 = sub i32 0, %.reload3alteredBB
  %236 = add i32 %235, 1350511581
  %237 = add i32 %236, 1
  %238 = sub i32 %237, 1350511581
  %gen20 = add i32 %235, 1
  %239 = lshr i32 %.reload3alteredBB, 1
  %240 = add i32 0, 1690626682
  %241 = sub i32 %240, %.reloadalteredBB
  %242 = sub i32 %241, 1690626682
  %_21 = sub i32 0, %.reloadalteredBB
  %243 = sub i32 0, 1
  %244 = sub i32 %242, %243
  %gen22 = add i32 %242, 1
  %_23 = shl i32 %.reloadalteredBB, 1
  %245 = sub i32 0, %.reloadalteredBB
  %246 = add i32 0, %245
  %_24 = sub i32 0, %.reloadalteredBB
  %247 = sub i32 0, %246
  %248 = sub i32 0, 1
  br label %originalBB14alteredBB.split.split

originalBB14alteredBB.split.split:                ; preds = %originalBB14alteredBB.split
  %249 = add i32 %247, %248
  %250 = sub i32 0, %249
  %gen25 = add i32 %246, 1
  %251 = sub i32 0, %.reloadalteredBB
  %252 = add i32 0, %251
  %_26 = sub i32 0, %.reloadalteredBB
  %253 = sub i32 0, %252
  %254 = sub i32 0, 1
  %255 = add i32 %253, %254
  %256 = sub i32 0, %255
  %gen27 = add i32 %252, 1
  %257 = add i32 %.reloadalteredBB, -1853211409
  %258 = add i32 %257, 1
  %259 = sub i32 %258, -1853211409
  %260 = add nuw nsw i32 %.reloadalteredBB, 1
  %261 = icmp ult i32 %.reload3alteredBB, 4
  %262 = select i1 %261, i32 195815087, i32 -413568806
  store i32 %262, i32* %switchVar, align 4
  store i32 %259, i32* %.reg2mem, align 4
  store i32 %239, i32* %.reg2mem2, align 4
  store i32 %259, i32* %.reg2mem4, align 4
  br label %originalBB14

originalBB31alteredBB:                            ; preds = %originalBB31.split.split, %.split36.split
  %.reload5alteredBB = load i32, i32* %.reg2mem4, align 4
  br label %originalBB31alteredBB.split

originalBB31alteredBB.split:                      ; preds = %originalBB31alteredBB
  br label %originalBB31
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @memory_region_init(%struct.MemoryRegion* nocapture noundef writeonly %0, i8* nocapture readnone %1, i8* nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %0, i64 0, i32 0
  br label %.split

.split:                                           ; preds = %4
  store i64 %3, i64* %5, align 8, !tbaa !3
  %6 = call noalias i8* @strdup(i8* noundef %2) #11
  br label %.split.split

.split.split:                                     ; preds = %.split
  %7 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %0, i64 0, i32 1
  store i8* %6, i8** %7, align 8, !tbaa !9
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare dso_local noalias i8* @strdup(i8* nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noalias i8* @g_strdup_printf(i8* nocapture noundef readonly %0, i8* noundef %1) local_unnamed_addr #3 {
  %3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef null, i64 noundef 0, i8* noundef %0, i8* noundef %1) #11
  %4 = sub i32 0, %3
  %5 = sub i32 0, 1
  br label %.split

.split:                                           ; preds = %2
  %6 = add i32 %4, %5
  br label %.split.split

.split.split:                                     ; preds = %.split
  %7 = sub i32 0, %6
  %8 = add nsw i32 %3, 1
  %9 = sext i32 %7 to i64
  %10 = call noalias i8* @malloc(i64 noundef %9) #11
  %11 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %10, i64 noundef %9, i8* noundef %0, i8* noundef %1) #11
  ret i8* %10
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @snprintf(i8* noalias nocapture noundef writeonly, i64 noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @g_free(i8* nocapture noundef %0) local_unnamed_addr #6 {
  %2 = load i32, i32* @x.5, align 4
  br label %.split

.split:                                           ; preds = %1
  %3 = load i32, i32* @y.6, align 4
  %4 = sub i32 %2, -674121969
  %5 = sub i32 %4, 1
  %6 = add i32 %5, -674121969
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
  %17 = and i1 %13, false
  %18 = and i1 %11, %14
  %19 = or i1 %15, %16
  %20 = or i1 %17, %18
  %21 = xor i1 %19, %20
  %22 = or i1 %12, %13
  %23 = xor i1 %22, true
  %24 = or i1 false, %14
  br label %.split.split

.split.split:                                     ; preds = %.split
  %25 = and i1 %23, %24
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split
  call void @free(i8* noundef %0) #11
  %28 = load i32, i32* @x.5, align 4
  %29 = load i32, i32* @y.6, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %30 = add i32 %28, -1036589422
  %31 = sub i32 %30, 1
  %32 = sub i32 %31, -1036589422
  %33 = sub i32 %28, 1
  %34 = mul i32 %28, %32
  %35 = urem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  %37 = icmp slt i32 %29, 10
  %38 = and i1 %36, %37
  %39 = xor i1 %36, %37
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %40 = or i1 %38, %39
  %41 = or i1 %36, %37
  br i1 %40, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  call void @free(i8* noundef %0) #11
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @msix_init(%struct.PCIDevice* nocapture readnone %0, i16 zeroext %1, %struct.MemoryRegion* nocapture readnone %2, i8 zeroext %3, i32 %4, %struct.MemoryRegion* nocapture readnone %5, i8 zeroext %6, i32 %7, i32 %8) local_unnamed_addr #8 {
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @pci_register_bar(%struct.PCIDevice* nocapture noundef readonly %0, i8 noundef zeroext %1, i32 %2, %struct.MemoryRegion* nocapture noundef readonly %3) local_unnamed_addr #3 {
  %5 = zext i8 %1 to i32
  br label %.split

.split:                                           ; preds = %4
  %6 = getelementptr inbounds %struct.MemoryRegion, %struct.MemoryRegion* %3, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !3
  %8 = getelementptr inbounds %struct.PCIDevice, %struct.PCIDevice* %0, i64 0, i32 0
  br label %.split.split

.split.split:                                     ; preds = %.split
  %9 = load i8*, i8** %8, align 8, !tbaa !10
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 noundef %5, i64 noundef %7, i8* noundef %9)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @msix_init_exclusive_bar(%struct.PCIDevice* nocapture noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #9 {
  %.reload7.reg2mem = alloca i32, align 4
  %.reg2mem4 = alloca i32, align 4
  br label %.split

.split:                                           ; preds = %3
  %.reg2mem = alloca i32, align 4
  %4 = zext i16 %1 to i32
  %5 = xor i32 %4, -1
  %6 = xor i32 65528, -1
  %7 = xor i32 -1050855096, -1
  %8 = or i32 %5, %6
  %9 = or i32 -1050855096, %7
  %10 = xor i32 %8, -1
  %11 = and i32 %10, %9
  %12 = and i32 %4, 65528
  br label %.split.split

.split.split:                                     ; preds = %.split
  %13 = add i32 %11, 1821469358
  %14 = add i32 %13, 8
  %15 = sub i32 %14, 1821469358
  %16 = add nuw nsw i32 %11, 8
  %17 = icmp ugt i16 %1, 128
  %18 = shl nuw nsw i32 %4, 4
  %19 = select i1 %17, i32 %18, i32 2048
  %20 = sub i32 %15, 1997955867
  %21 = add i32 %20, %19
  %22 = add i32 %21, 1997955867
  %23 = add nuw nsw i32 %15, %19
  %24 = icmp ugt i32 %22, 4096
  %25 = select i1 %24, i32 %22, i32 4096
  store i32 %25, i32* %.reg2mem, align 4
  %.reload3 = load i32, i32* %.reg2mem, align 4
  %26 = call i32 @llvm.ctpop.i32(i32 %.reload3), !range !12
  store i32 %26, i32* %.reg2mem4, align 4
  %switchVar = alloca i32, align 4
  store i32 -453598338, i32* %switchVar, align 4
  %.reg2mem6 = alloca i32, align 4
  %.reg2mem8 = alloca i32, align 4
  %.reg2mem10 = alloca i32, align 4
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %originalBBpart229
  %27 = load i32, i32* @x.11, align 4
  %28 = load i32, i32* @y.12, align 4
  %29 = sub i32 0, 1
  %30 = add i32 %27, %29
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  %31 = sub i32 %27, 1
  %32 = mul i32 %27, %30
  br label %loopEntry.split.split

loopEntry.split.split:                            ; preds = %loopEntry.split
  %33 = urem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  %35 = icmp slt i32 %28, 10
  %36 = and i1 %34, %35
  %37 = xor i1 %34, %35
  %38 = or i1 %36, %37
  %39 = or i1 %34, %35
  br i1 %38, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %loopEntry.split.split, %originalBBalteredBB.split
  %switchVar1 = load i32, i32* %switchVar, align 4
  %40 = load i32, i32* @x.11, align 4
  %41 = load i32, i32* @y.12, align 4
  %42 = sub i32 %40, 3763117
  %43 = sub i32 %42, 1
  %44 = add i32 %43, 3763117
  %45 = sub i32 %40, 1
  %46 = mul i32 %40, %44
  %47 = urem i32 %46, 2
  %48 = icmp eq i32 %47, 0
  %49 = icmp slt i32 %41, 10
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %50 = xor i1 %48, true
  %51 = xor i1 %49, true
  %52 = xor i1 false, true
  %53 = and i1 %50, false
  %54 = and i1 %48, %52
  %55 = and i1 %51, false
  %56 = and i1 %49, %52
  %57 = or i1 %53, %54
  %58 = or i1 %55, %56
  %59 = xor i1 %57, %58
  %60 = or i1 %50, %51
  %61 = xor i1 %60, true
  %62 = or i1 false, %52
  %63 = and i1 %61, %62
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %64 = or i1 %59, %63
  %65 = or i1 %48, %49
  br i1 %64, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  switch i32 %switchVar1, label %switchDefault [
    i32 -453598338, label %first
    i32 2011289507, label %68
    i32 2003191103, label %75
    i32 967556328, label %128
  ]

switchDefault:                                    ; preds = %originalBBpart2
  br label %loopEnd

first:                                            ; preds = %originalBBpart2
  %.reload5 = load i32, i32* %.reg2mem4, align 4
  br label %first.split

first.split:                                      ; preds = %first
  %66 = icmp ult i32 %.reload5, 2
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  %67 = select i1 %66, i32 967556328, i32 2011289507
  store i32 %67, i32* %switchVar, align 4
  %.reload = load i32, i32* %.reg2mem, align 4
  %.reload2 = load i32, i32* %.reg2mem, align 4
  store i32 1, i32* %.reg2mem6, align 4
  store i32 %.reload, i32* %.reg2mem8, align 4
  store i32 %.reload2, i32* %.reg2mem10, align 4
  br label %loopEnd

68:                                               ; preds = %originalBBpart2
  %.reload9 = load i32, i32* %.reg2mem8, align 4
  %.reload7 = load i32, i32* %.reg2mem6, align 4
  br label %.split31

.split31:                                         ; preds = %68
  store i32 %.reload7, i32* %.reload7.reg2mem, align 4
  %69 = lshr i32 %.reload9, 1
  %.reload7.reload = load i32, i32* %.reload7.reg2mem, align 4
  %70 = sub i32 0, 1
  %71 = sub i32 %.reload7.reload, %70
  %72 = add nuw nsw i32 %.reload7.reload, 1
  %73 = icmp ult i32 %.reload9, 4
  %74 = select i1 %73, i32 2003191103, i32 2011289507
  br label %.split31.split

.split31.split:                                   ; preds = %.split31
  store i32 %74, i32* %switchVar, align 4
  store i32 %71, i32* %.reg2mem6, align 4
  store i32 %69, i32* %.reg2mem8, align 4
  br label %loopEnd

75:                                               ; preds = %originalBBpart2
  %76 = load i32, i32* @x.11, align 4
  %77 = load i32, i32* @y.12, align 4
  %78 = sub i32 0, 1
  %79 = add i32 %76, %78
  %80 = sub i32 %76, 1
  %81 = mul i32 %76, %79
  %82 = urem i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br label %.split32

.split32:                                         ; preds = %75
  %84 = icmp slt i32 %77, 10
  %85 = xor i1 %83, true
  %86 = xor i1 %84, true
  %87 = xor i1 true, true
  %88 = and i1 %85, true
  %89 = and i1 %83, %87
  %90 = and i1 %86, true
  %91 = and i1 %84, %87
  %92 = or i1 %88, %89
  %93 = or i1 %90, %91
  %94 = xor i1 %92, %93
  br label %.split32.split

.split32.split:                                   ; preds = %.split32
  %95 = or i1 %85, %86
  %96 = xor i1 %95, true
  %97 = or i1 true, %87
  %98 = and i1 %96, %97
  %99 = or i1 %94, %98
  %100 = or i1 %83, %84
  br i1 %99, label %originalBB13, label %originalBB13alteredBB

originalBB13:                                     ; preds = %.split32.split, %originalBB13alteredBB.split.split
  %.reload7.reload12 = load i32, i32* %.reload7.reg2mem, align 4
  %101 = shl i32 2, %.reload7.reload12
  store i32 967556328, i32* %switchVar, align 4
  store i32 %101, i32* %.reg2mem10, align 4
  %102 = load i32, i32* @x.11, align 4
  %103 = load i32, i32* @y.12, align 4
  %104 = add i32 %102, 392651646
  %105 = sub i32 %104, 1
  %106 = sub i32 %105, 392651646
  %107 = sub i32 %102, 1
  %108 = mul i32 %102, %106
  %109 = urem i32 %108, 2
  br label %originalBB13.split

originalBB13.split:                               ; preds = %originalBB13
  %110 = icmp eq i32 %109, 0
  %111 = icmp slt i32 %103, 10
  %112 = xor i1 %110, true
  br label %originalBB13.split.split

originalBB13.split.split:                         ; preds = %originalBB13.split
  %113 = xor i1 %111, true
  %114 = xor i1 false, true
  %115 = and i1 %112, false
  %116 = and i1 %110, %114
  %117 = and i1 %113, false
  %118 = and i1 %111, %114
  %119 = or i1 %115, %116
  %120 = or i1 %117, %118
  %121 = xor i1 %119, %120
  %122 = or i1 %112, %113
  %123 = xor i1 %122, true
  %124 = or i1 false, %114
  %125 = and i1 %123, %124
  %126 = or i1 %121, %125
  %127 = or i1 %110, %111
  br i1 %126, label %originalBBpart225, label %originalBB13alteredBB

originalBBpart225:                                ; preds = %originalBB13.split.split
  br label %loopEnd

128:                                              ; preds = %originalBBpart2
  %.reload11 = load i32, i32* %.reg2mem10, align 4
  %129 = getelementptr inbounds %struct.PCIDevice, %struct.PCIDevice* %0, i64 0, i32 0
  %130 = load i8*, i8** %129, align 8, !tbaa !10
  %131 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef null, i64 noundef 0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef %130) #11
  %132 = sub i32 0, 1
  %133 = sub i32 %131, %132
  %134 = add nsw i32 %131, 1
  %135 = sext i32 %133 to i64
  br label %.split33

.split33:                                         ; preds = %128
  %136 = call noalias i8* @malloc(i64 noundef %135) #11
  %137 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %136, i64 noundef %135, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef %130) #11
  %138 = zext i32 %.reload11 to i64
  %139 = getelementptr inbounds %struct.PCIDevice, %struct.PCIDevice* %0, i64 0, i32 1, i32 0
  store i64 %138, i64* %139, align 8, !tbaa !3
  %140 = call noalias i8* @strdup(i8* noundef %136) #11
  %141 = getelementptr inbounds %struct.PCIDevice, %struct.PCIDevice* %0, i64 0, i32 1, i32 1
  store i8* %140, i8** %141, align 8, !tbaa !9
  br label %.split33.split

.split33.split:                                   ; preds = %.split33
  call void @free(i8* noundef %136) #11
  %142 = zext i8 %2 to i32
  %143 = load i8*, i8** %129, align 8, !tbaa !10
  %144 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 noundef %142, i64 noundef %138, i8* noundef %143) #11
  ret i32 0

loopEnd:                                          ; preds = %originalBBpart225, %.split31.split, %first.split.split, %switchDefault
  %145 = load i32, i32* @x.11, align 4
  %146 = load i32, i32* @y.12, align 4
  %147 = sub i32 %145, 137811195
  %148 = sub i32 %147, 1
  %149 = add i32 %148, 137811195
  %150 = sub i32 %145, 1
  %151 = mul i32 %145, %149
  br label %loopEnd.split

loopEnd.split:                                    ; preds = %loopEnd
  %152 = urem i32 %151, 2
  %153 = icmp eq i32 %152, 0
  %154 = icmp slt i32 %146, 10
  %155 = xor i1 %153, true
  %156 = xor i1 %154, true
  %157 = xor i1 false, true
  %158 = and i1 %155, false
  %159 = and i1 %153, %157
  %160 = and i1 %156, false
  %161 = and i1 %154, %157
  %162 = or i1 %158, %159
  %163 = or i1 %160, %161
  %164 = xor i1 %162, %163
  %165 = or i1 %155, %156
  br label %loopEnd.split.split

loopEnd.split.split:                              ; preds = %loopEnd.split
  %166 = xor i1 %165, true
  %167 = or i1 false, %157
  %168 = and i1 %166, %167
  %169 = or i1 %164, %168
  %170 = or i1 %153, %154
  br i1 %169, label %originalBB27, label %originalBB27alteredBB

originalBB27:                                     ; preds = %loopEnd.split.split, %originalBB27alteredBB
  %171 = load i32, i32* @x.11, align 4
  %172 = load i32, i32* @y.12, align 4
  %173 = sub i32 %171, -1500686329
  %174 = sub i32 %173, 1
  %175 = add i32 %174, -1500686329
  br label %originalBB27.split

originalBB27.split:                               ; preds = %originalBB27
  %176 = sub i32 %171, 1
  %177 = mul i32 %171, %175
  %178 = urem i32 %177, 2
  %179 = icmp eq i32 %178, 0
  %180 = icmp slt i32 %172, 10
  %181 = and i1 %179, %180
  br label %originalBB27.split.split

originalBB27.split.split:                         ; preds = %originalBB27.split
  %182 = xor i1 %179, %180
  %183 = or i1 %181, %182
  %184 = or i1 %179, %180
  br i1 %183, label %originalBBpart229, label %originalBB27alteredBB

originalBBpart229:                                ; preds = %originalBB27.split.split
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %loopEntry.split.split
  %switchVar1alteredBB = load i32, i32* %switchVar, align 4
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB

originalBB13alteredBB:                            ; preds = %originalBB13.split.split, %.split32.split
  %.reload7.reload12alteredBB = load i32, i32* %.reload7.reg2mem, align 4
  %185 = sub i32 2, 190493100
  %186 = sub i32 %185, %.reload7.reload12alteredBB
  %187 = add i32 %186, 190493100
  br label %originalBB13alteredBB.split

originalBB13alteredBB.split:                      ; preds = %originalBB13alteredBB
  %_ = sub i32 2, %.reload7.reload12alteredBB
  %gen = mul i32 %187, %.reload7.reload12alteredBB
  %188 = add i32 0, 341104840
  %189 = sub i32 %188, 2
  %190 = sub i32 %189, 341104840
  %_14 = sub i32 0, 2
  %191 = sub i32 0, %190
  %192 = sub i32 0, %.reload7.reload12alteredBB
  %193 = add i32 %191, %192
  %194 = sub i32 0, %193
  %gen15 = add i32 %190, %.reload7.reload12alteredBB
  %195 = add i32 0, -1053365029
  %196 = sub i32 %195, 2
  %197 = sub i32 %196, -1053365029
  %_16 = sub i32 0, 2
  %198 = sub i32 0, %197
  %199 = sub i32 0, %.reload7.reload12alteredBB
  %200 = add i32 %198, %199
  %201 = sub i32 0, %200
  %gen17 = add i32 %197, %.reload7.reload12alteredBB
  %202 = add i32 2, -455602978
  %203 = sub i32 %202, %.reload7.reload12alteredBB
  %204 = sub i32 %203, -455602978
  %_18 = sub i32 2, %.reload7.reload12alteredBB
  br label %originalBB13alteredBB.split.split

originalBB13alteredBB.split.split:                ; preds = %originalBB13alteredBB.split
  %gen19 = mul i32 %204, %.reload7.reload12alteredBB
  %_20 = shl i32 2, %.reload7.reload12alteredBB
  %_21 = shl i32 2, %.reload7.reload12alteredBB
  %_22 = shl i32 2, %.reload7.reload12alteredBB
  %_23 = shl i32 2, %.reload7.reload12alteredBB
  %205 = shl i32 2, %.reload7.reload12alteredBB
  store i32 967556328, i32* %switchVar, align 4
  store i32 %205, i32* %.reg2mem10, align 4
  br label %originalBB13

originalBB27alteredBB:                            ; preds = %originalBB27.split.split, %loopEnd.split.split
  br label %originalBB27
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #9 {
  %1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef null, i64 noundef 0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #11
  %2 = sub i32 0, 1
  %3 = sub i32 %1, %2
  br label %.split

.split:                                           ; preds = %0
  %4 = add nsw i32 %1, 1
  %5 = sext i32 %3 to i64
  %6 = call noalias i8* @malloc(i64 noundef %5) #11
  %7 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %6, i64 noundef %5, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #11
  call void @free(i8* noundef %6) #11
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 noundef 2, i64 noundef 4096, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #11
  br label %.split.split

.split.split:                                     ; preds = %.split
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 noundef 0)
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"MemoryRegion", !5, i64 0, !8, i64 8}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!4, !8, i64 8}
!10 = !{!11, !8, i64 0}
!11 = !{!"PCIDevice", !8, i64 0, !4, i64 8}
!12 = !{i32 0, i32 33}

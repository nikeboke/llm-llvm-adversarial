; ModuleID = 'iothread_complete_obf.bc'
source_filename = "iothread_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AioContext = type { i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%union.pthread_condattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.IOThread = type { i8, %struct.AioContext*, i32, i64, %union.pthread_mutex_t, %union.pthread_cond_t }

@.str = private unnamed_addr constant [32 x i8] c"Thread initialized with ID: %d\0A\00", align 1
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

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.AioContext* @aio_context_new() local_unnamed_addr #0 {
  %1 = call noalias dereferenceable_or_null(4) i8* @malloc(i64 noundef 4) #9
  br label %.split

.split:                                           ; preds = %0
  %2 = bitcast i8* %1 to %struct.AioContext*
  %3 = getelementptr inbounds %struct.AioContext, %struct.AioContext* %2, i64 0, i32 0
  br label %.split.split

.split.split:                                     ; preds = %.split
  store i32 1, i32* %3, align 4, !tbaa !3
  ret %struct.AioContext* %2
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @qemu_mutex_init(%union.pthread_mutex_t* noundef %0) local_unnamed_addr #3 {
  %2 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef %0, %union.pthread_mutexattr_t* noundef null) #9
  br label %.split

.split:                                           ; preds = %1
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef, %union.pthread_mutexattr_t* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @qemu_cond_init(%union.pthread_cond_t* noundef %0) local_unnamed_addr #3 {
  %2 = call i32 @pthread_cond_init(%union.pthread_cond_t* noundef %0, %union.pthread_condattr_t* noundef null) #9
  br label %.split

.split:                                           ; preds = %1
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_init(%union.pthread_cond_t* noundef, %union.pthread_condattr_t* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @qemu_mutex_lock(%union.pthread_mutex_t* noundef %0) local_unnamed_addr #3 {
  %2 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %0) #9
  br label %.split

.split:                                           ; preds = %1
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @qemu_mutex_unlock(%union.pthread_mutex_t* noundef %0) local_unnamed_addr #3 {
  %2 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %0) #9
  br label %.split

.split:                                           ; preds = %1
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @qemu_cond_wait(%union.pthread_cond_t* noundef %0, %union.pthread_mutex_t* noundef %1) local_unnamed_addr #3 {
  %3 = call i32 @pthread_cond_wait(%union.pthread_cond_t* noundef %0, %union.pthread_mutex_t* noundef %1) #9
  br label %.split

.split:                                           ; preds = %2
  ret void
}

declare dso_local i32 @pthread_cond_wait(%union.pthread_cond_t* noundef, %union.pthread_mutex_t* noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @iothread_run(i8* noundef %0) #3 {
  %2 = load i32, i32* @x.11, align 4
  %3 = load i32, i32* @y.12, align 4
  %4 = sub i32 %2, 1850476404
  %5 = sub i32 %4, 1
  %6 = add i32 %5, 1850476404
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  br label %.split

.split:                                           ; preds = %1
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
  br label %.split.split

.split.split:                                     ; preds = %.split
  %20 = or i1 %17, %18
  %21 = xor i1 %19, %20
  %22 = or i1 %12, %13
  %23 = xor i1 %22, true
  %24 = or i1 false, %14
  %25 = and i1 %23, %24
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %.reg2mem = alloca i8, align 1
  %28 = call i32 @sleep(i32 noundef 1) #9
  %29 = getelementptr inbounds i8, i8* %0, i64 32
  %30 = bitcast i8* %29 to %union.pthread_mutex_t*
  %31 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %30) #9
  %32 = getelementptr inbounds i8, i8* %0, i64 16
  %33 = bitcast i8* %32 to i32*
  store i32 42, i32* %33, align 8, !tbaa !8
  %34 = getelementptr inbounds i8, i8* %0, i64 72
  %35 = bitcast i8* %34 to %union.pthread_cond_t*
  %36 = call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull %35) #9
  %37 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %30) #9
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %38 = load i8, i8* %0, align 8, !tbaa !13, !range !14
  store i8 %38, i8* %.reg2mem, align 1
  %switchVar = alloca i32, align 4
  store i32 1462158511, i32* %switchVar, align 4
  %39 = load i32, i32* @x.11, align 4
  %40 = load i32, i32* @y.12, align 4
  %41 = add i32 %39, -1839491617
  %42 = sub i32 %41, 1
  %43 = sub i32 %42, -1839491617
  %44 = sub i32 %39, 1
  %45 = mul i32 %39, %43
  %46 = urem i32 %45, 2
  %47 = icmp eq i32 %46, 0
  %48 = icmp slt i32 %40, 10
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %49 = and i1 %47, %48
  %50 = xor i1 %47, %48
  %51 = or i1 %49, %50
  %52 = or i1 %47, %48
  br i1 %51, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %originalBBpart220
  %53 = load i32, i32* @x.11, align 4
  %54 = load i32, i32* @y.12, align 4
  %55 = sub i32 0, 1
  %56 = add i32 %53, %55
  %57 = sub i32 %53, 1
  %58 = mul i32 %53, %56
  %59 = urem i32 %58, 2
  %60 = icmp eq i32 %59, 0
  %61 = icmp slt i32 %54, 10
  %62 = xor i1 %60, true
  %63 = xor i1 %61, true
  %64 = xor i1 false, true
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  %65 = and i1 %62, false
  %66 = and i1 %60, %64
  %67 = and i1 %63, false
  %68 = and i1 %61, %64
  %69 = or i1 %65, %66
  %70 = or i1 %67, %68
  %71 = xor i1 %69, %70
  %72 = or i1 %62, %63
  %73 = xor i1 %72, true
  %74 = or i1 false, %64
  br label %loopEntry.split.split

loopEntry.split.split:                            ; preds = %loopEntry.split
  %75 = and i1 %73, %74
  %76 = or i1 %71, %75
  %77 = or i1 %60, %61
  br i1 %76, label %originalBB2, label %originalBB2alteredBB

originalBB2:                                      ; preds = %loopEntry.split.split, %originalBB2alteredBB.split
  %switchVar1 = load i32, i32* %switchVar, align 4
  %78 = load i32, i32* @x.11, align 4
  %79 = load i32, i32* @y.12, align 4
  %80 = sub i32 %78, -953769959
  %81 = sub i32 %80, 1
  br label %originalBB2.split

originalBB2.split:                                ; preds = %originalBB2
  %82 = add i32 %81, -953769959
  %83 = sub i32 %78, 1
  %84 = mul i32 %78, %82
  %85 = urem i32 %84, 2
  %86 = icmp eq i32 %85, 0
  %87 = icmp slt i32 %79, 10
  %88 = xor i1 %86, true
  %89 = xor i1 %87, true
  %90 = xor i1 false, true
  %91 = and i1 %88, false
  %92 = and i1 %86, %90
  %93 = and i1 %89, false
  %94 = and i1 %87, %90
  %95 = or i1 %91, %92
  %96 = or i1 %93, %94
  %97 = xor i1 %95, %96
  %98 = or i1 %88, %89
  %99 = xor i1 %98, true
  %100 = or i1 false, %90
  br label %originalBB2.split.split

originalBB2.split.split:                          ; preds = %originalBB2.split
  %101 = and i1 %99, %100
  %102 = or i1 %97, %101
  %103 = or i1 %86, %87
  br i1 %102, label %originalBBpart24, label %originalBB2alteredBB

originalBBpart24:                                 ; preds = %originalBB2.split.split
  switch i32 %switchVar1, label %switchDefault [
    i32 1462158511, label %first
    i32 1541535838, label %146
    i32 49434649, label %191
  ]

switchDefault:                                    ; preds = %originalBBpart24
  %104 = load i32, i32* @x.11, align 4
  %105 = load i32, i32* @y.12, align 4
  %106 = add i32 %104, 420890332
  %107 = sub i32 %106, 1
  %108 = sub i32 %107, 420890332
  %109 = sub i32 %104, 1
  %110 = mul i32 %104, %108
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %111 = urem i32 %110, 2
  %112 = icmp eq i32 %111, 0
  %113 = icmp slt i32 %105, 10
  %114 = xor i1 %112, true
  %115 = xor i1 %113, true
  %116 = xor i1 false, true
  %117 = and i1 %114, false
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %118 = and i1 %112, %116
  %119 = and i1 %115, false
  %120 = and i1 %113, %116
  %121 = or i1 %117, %118
  %122 = or i1 %119, %120
  %123 = xor i1 %121, %122
  %124 = or i1 %114, %115
  %125 = xor i1 %124, true
  %126 = or i1 false, %116
  %127 = and i1 %125, %126
  %128 = or i1 %123, %127
  %129 = or i1 %112, %113
  br i1 %128, label %originalBB6, label %originalBB6alteredBB

originalBB6:                                      ; preds = %switchDefault.split.split, %originalBB6alteredBB
  %130 = load i32, i32* @x.11, align 4
  %131 = load i32, i32* @y.12, align 4
  %132 = sub i32 %130, -352434342
  %133 = sub i32 %132, 1
  %134 = add i32 %133, -352434342
  br label %originalBB6.split

originalBB6.split:                                ; preds = %originalBB6
  %135 = sub i32 %130, 1
  %136 = mul i32 %130, %134
  br label %originalBB6.split.split

originalBB6.split.split:                          ; preds = %originalBB6.split
  %137 = urem i32 %136, 2
  %138 = icmp eq i32 %137, 0
  %139 = icmp slt i32 %131, 10
  %140 = and i1 %138, %139
  %141 = xor i1 %138, %139
  %142 = or i1 %140, %141
  %143 = or i1 %138, %139
  br i1 %142, label %originalBBpart28, label %originalBB6alteredBB

originalBBpart28:                                 ; preds = %originalBB6.split.split
  br label %loopEnd

first:                                            ; preds = %originalBBpart24
  %.reload = load i8, i8* %.reg2mem, align 1
  br label %first.split

first.split:                                      ; preds = %first
  %144 = icmp eq i8 %.reload, 0
  %145 = select i1 %144, i32 1541535838, i32 49434649
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  store i32 %145, i32* %switchVar, align 4
  br label %loopEnd

146:                                              ; preds = %originalBBpart24
  %147 = load i32, i32* @x.11, align 4
  %148 = load i32, i32* @y.12, align 4
  %149 = add i32 %147, -438319235
  br label %.split22

.split22:                                         ; preds = %146
  %150 = sub i32 %149, 1
  %151 = sub i32 %150, -438319235
  %152 = sub i32 %147, 1
  %153 = mul i32 %147, %151
  %154 = urem i32 %153, 2
  %155 = icmp eq i32 %154, 0
  %156 = icmp slt i32 %148, 10
  %157 = and i1 %155, %156
  %158 = xor i1 %155, %156
  %159 = or i1 %157, %158
  br label %.split22.split

.split22.split:                                   ; preds = %.split22
  %160 = or i1 %155, %156
  br i1 %159, label %originalBB10, label %originalBB10alteredBB

originalBB10:                                     ; preds = %.split22.split, %originalBB10alteredBB.split.split
  %161 = call i32 @sleep(i32 noundef 1) #9
  %162 = load i8, i8* %0, align 8, !tbaa !13, !range !14
  %163 = icmp eq i8 %162, 0
  %164 = select i1 %163, i32 1541535838, i32 49434649
  store i32 %164, i32* %switchVar, align 4
  %165 = load i32, i32* @x.11, align 4
  br label %originalBB10.split

originalBB10.split:                               ; preds = %originalBB10
  %166 = load i32, i32* @y.12, align 4
  %167 = add i32 %165, -1024043030
  %168 = sub i32 %167, 1
  %169 = sub i32 %168, -1024043030
  %170 = sub i32 %165, 1
  %171 = mul i32 %165, %169
  %172 = urem i32 %171, 2
  %173 = icmp eq i32 %172, 0
  %174 = icmp slt i32 %166, 10
  %175 = xor i1 %173, true
  %176 = xor i1 %174, true
  %177 = xor i1 true, true
  br label %originalBB10.split.split

originalBB10.split.split:                         ; preds = %originalBB10.split
  %178 = and i1 %175, true
  %179 = and i1 %173, %177
  %180 = and i1 %176, true
  %181 = and i1 %174, %177
  %182 = or i1 %178, %179
  %183 = or i1 %180, %181
  %184 = xor i1 %182, %183
  %185 = or i1 %175, %176
  %186 = xor i1 %185, true
  %187 = or i1 true, %177
  %188 = and i1 %186, %187
  %189 = or i1 %184, %188
  %190 = or i1 %173, %174
  br i1 %189, label %originalBBpart212, label %originalBB10alteredBB

originalBBpart212:                                ; preds = %originalBB10.split.split
  br label %loopEnd

191:                                              ; preds = %originalBBpart24
  %192 = load i32, i32* @x.11, align 4
  %193 = load i32, i32* @y.12, align 4
  br label %.split23

.split23:                                         ; preds = %191
  %194 = sub i32 %192, -1517903992
  %195 = sub i32 %194, 1
  %196 = add i32 %195, -1517903992
  %197 = sub i32 %192, 1
  %198 = mul i32 %192, %196
  br label %.split23.split

.split23.split:                                   ; preds = %.split23
  %199 = urem i32 %198, 2
  %200 = icmp eq i32 %199, 0
  %201 = icmp slt i32 %193, 10
  %202 = xor i1 %200, true
  %203 = xor i1 %201, true
  %204 = xor i1 true, true
  %205 = and i1 %202, true
  %206 = and i1 %200, %204
  %207 = and i1 %203, true
  %208 = and i1 %201, %204
  %209 = or i1 %205, %206
  %210 = or i1 %207, %208
  %211 = xor i1 %209, %210
  %212 = or i1 %202, %203
  %213 = xor i1 %212, true
  %214 = or i1 true, %204
  %215 = and i1 %213, %214
  %216 = or i1 %211, %215
  %217 = or i1 %200, %201
  br i1 %216, label %originalBB14, label %originalBB14alteredBB

originalBB14:                                     ; preds = %.split23.split, %originalBB14alteredBB
  %218 = load i32, i32* @x.11, align 4
  %219 = load i32, i32* @y.12, align 4
  br label %originalBB14.split

originalBB14.split:                               ; preds = %originalBB14
  %220 = add i32 %218, -668342636
  %221 = sub i32 %220, 1
  %222 = sub i32 %221, -668342636
  %223 = sub i32 %218, 1
  br label %originalBB14.split.split

originalBB14.split.split:                         ; preds = %originalBB14.split
  %224 = mul i32 %218, %222
  %225 = urem i32 %224, 2
  %226 = icmp eq i32 %225, 0
  %227 = icmp slt i32 %219, 10
  %228 = and i1 %226, %227
  %229 = xor i1 %226, %227
  %230 = or i1 %228, %229
  %231 = or i1 %226, %227
  br i1 %230, label %originalBBpart216, label %originalBB14alteredBB

originalBBpart216:                                ; preds = %originalBB14.split.split
  ret i8* null

loopEnd:                                          ; preds = %originalBBpart212, %first.split.split, %originalBBpart28
  %232 = load i32, i32* @x.11, align 4
  %233 = load i32, i32* @y.12, align 4
  %234 = sub i32 %232, 1318118713
  %235 = sub i32 %234, 1
  %236 = add i32 %235, 1318118713
  %237 = sub i32 %232, 1
  %238 = mul i32 %232, %236
  %239 = urem i32 %238, 2
  %240 = icmp eq i32 %239, 0
  %241 = icmp slt i32 %233, 10
  %242 = and i1 %240, %241
  %243 = xor i1 %240, %241
  br label %loopEnd.split

loopEnd.split:                                    ; preds = %loopEnd
  %244 = or i1 %242, %243
  %245 = or i1 %240, %241
  br label %loopEnd.split.split

loopEnd.split.split:                              ; preds = %loopEnd.split
  br i1 %244, label %originalBB18, label %originalBB18alteredBB

originalBB18:                                     ; preds = %loopEnd.split.split, %originalBB18alteredBB
  %246 = load i32, i32* @x.11, align 4
  %247 = load i32, i32* @y.12, align 4
  %248 = sub i32 0, 1
  %249 = add i32 %246, %248
  %250 = sub i32 %246, 1
  %251 = mul i32 %246, %249
  %252 = urem i32 %251, 2
  %253 = icmp eq i32 %252, 0
  %254 = icmp slt i32 %247, 10
  %255 = and i1 %253, %254
  %256 = xor i1 %253, %254
  %257 = or i1 %255, %256
  br label %originalBB18.split

originalBB18.split:                               ; preds = %originalBB18
  %258 = or i1 %253, %254
  br label %originalBB18.split.split

originalBB18.split.split:                         ; preds = %originalBB18.split
  br i1 %257, label %originalBBpart220, label %originalBB18alteredBB

originalBBpart220:                                ; preds = %originalBB18.split.split
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %.reg2memalteredBB = alloca i8, align 1
  %259 = call i32 @sleep(i32 noundef 1) #9
  %260 = getelementptr inbounds i8, i8* %0, i64 32
  %261 = bitcast i8* %260 to %union.pthread_mutex_t*
  %262 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %261) #9
  %263 = getelementptr inbounds i8, i8* %0, i64 16
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %264 = bitcast i8* %263 to i32*
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  store i32 42, i32* %264, align 8, !tbaa !8
  %265 = getelementptr inbounds i8, i8* %0, i64 72
  %266 = bitcast i8* %265 to %union.pthread_cond_t*
  %267 = call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull %266) #9
  %268 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %261) #9
  %269 = load i8, i8* %0, align 8, !tbaa !13, !range !14
  store i8 %269, i8* %.reg2memalteredBB, align 1
  %switchVaralteredBB = alloca i32, align 4
  store i32 1462158511, i32* %switchVaralteredBB, align 4
  br label %originalBB

originalBB2alteredBB:                             ; preds = %originalBB2.split.split, %loopEntry.split.split
  %switchVar1alteredBB = load i32, i32* %switchVar, align 4
  br label %originalBB2alteredBB.split

originalBB2alteredBB.split:                       ; preds = %originalBB2alteredBB
  br label %originalBB2

originalBB6alteredBB:                             ; preds = %originalBB6.split.split, %switchDefault.split.split
  br label %originalBB6

originalBB10alteredBB:                            ; preds = %originalBB10.split.split, %.split22.split
  %270 = call i32 @sleep(i32 noundef 1) #9
  br label %originalBB10alteredBB.split

originalBB10alteredBB.split:                      ; preds = %originalBB10alteredBB
  %271 = load i8, i8* %0, align 8, !tbaa !13, !range !14
  %272 = icmp eq i8 %271, 0
  br label %originalBB10alteredBB.split.split

originalBB10alteredBB.split.split:                ; preds = %originalBB10alteredBB.split
  %273 = select i1 %272, i32 1541535838, i32 49434649
  store i32 %273, i32* %switchVar, align 4
  br label %originalBB10

originalBB14alteredBB:                            ; preds = %originalBB14.split.split, %.split23.split
  br label %originalBB14

originalBB18alteredBB:                            ; preds = %originalBB18.split.split, %loopEnd.split.split
  br label %originalBB18
}

declare dso_local i32 @sleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_signal(%union.pthread_cond_t* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @qemu_thread_create(i64* noundef %0, i8* nocapture readnone %1, i8* (i8*)* noundef %2, i8* noundef %3, i32 %4) local_unnamed_addr #3 {
  %6 = call i32 @pthread_create(i64* noundef %0, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef %2, i8* noundef %3) #9
  br label %.split

.split:                                           ; preds = %5
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %.reg2mem16 = alloca i32, align 4
  br label %.split

.split:                                           ; preds = %0
  %.reg2mem13 = alloca %union.pthread_cond_t*, align 8
  %.reg2mem8 = alloca %union.pthread_mutex_t*, align 8
  %.reg2mem4 = alloca i32*, align 8
  %.reg2mem = alloca i8*, align 8
  %1 = alloca %struct.IOThread, align 8
  %2 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 0
  store i8* %2, i8** %.reg2mem, align 8
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %.reload2) #9
  %3 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 0
  %4 = call noalias dereferenceable_or_null(4) i8* @malloc(i64 noundef 4) #9
  %5 = bitcast i8* %4 to %struct.AioContext*
  br label %.split.split

.split.split:                                     ; preds = %.split
  %6 = getelementptr inbounds %struct.AioContext, %struct.AioContext* %5, i64 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(120) %3, i8 0, i64 120, i1 false)
  store i32 1, i32* %6, align 4, !tbaa !3
  %7 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 1
  %8 = bitcast %struct.AioContext** %7 to i8**
  store i8* %4, i8** %8, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 2
  store i32* %9, i32** %.reg2mem4, align 8
  %.reload5 = load i32*, i32** %.reg2mem4, align 8
  store i32 -1, i32* %.reload5, align 8, !tbaa !8
  %10 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 4
  store %union.pthread_mutex_t* %10, %union.pthread_mutex_t** %.reg2mem8, align 8
  %.reload12 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %.reg2mem8, align 8
  %11 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull %.reload12, %union.pthread_mutexattr_t* noundef null) #9
  %12 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 5
  store %union.pthread_cond_t* %12, %union.pthread_cond_t** %.reg2mem13, align 8
  %.reload15 = load %union.pthread_cond_t*, %union.pthread_cond_t** %.reg2mem13, align 8
  %13 = call i32 @pthread_cond_init(%union.pthread_cond_t* noundef nonnull %.reload15, %union.pthread_condattr_t* noundef null) #9
  %14 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 3
  %15 = call i32 @pthread_create(i64* noundef nonnull %14, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @iothread_run, i8* noundef nonnull %3) #9
  %.reload11 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %.reg2mem8, align 8
  %16 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %.reload11) #9
  %.reload6 = load i32*, i32** %.reg2mem4, align 8
  %17 = load i32, i32* %.reload6, align 8, !tbaa !8
  store i32 %17, i32* %.reg2mem16, align 4
  %switchVar = alloca i32, align 4
  store i32 1197029251, i32* %switchVar, align 4
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 1197029251, label %first
    i32 -1436019280, label %47
    i32 1017362744, label %52
  ]

switchDefault:                                    ; preds = %loopEntry.split
  %18 = load i32, i32* @x.15, align 4
  %19 = load i32, i32* @y.16, align 4
  %20 = add i32 %18, -2069962410
  %21 = sub i32 %20, 1
  %22 = sub i32 %21, -2069962410
  %23 = sub i32 %18, 1
  %24 = mul i32 %18, %22
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %25 = urem i32 %24, 2
  %26 = icmp eq i32 %25, 0
  %27 = icmp slt i32 %19, 10
  %28 = and i1 %26, %27
  %29 = xor i1 %26, %27
  %30 = or i1 %28, %29
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %31 = or i1 %26, %27
  br i1 %30, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %switchDefault.split.split, %originalBBalteredBB
  %32 = load i32, i32* @x.15, align 4
  %33 = load i32, i32* @y.16, align 4
  %34 = sub i32 0, 1
  %35 = add i32 %32, %34
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %36 = sub i32 %32, 1
  %37 = mul i32 %32, %35
  %38 = urem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %40 = icmp slt i32 %33, 10
  %41 = and i1 %39, %40
  %42 = xor i1 %39, %40
  %43 = or i1 %41, %42
  %44 = or i1 %39, %40
  br i1 %43, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload17 = load i32, i32* %.reg2mem16, align 4
  br label %first.split

first.split:                                      ; preds = %first
  %45 = icmp eq i32 %.reload17, -1
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  %46 = select i1 %45, i32 -1436019280, i32 1017362744
  store i32 %46, i32* %switchVar, align 4
  br label %loopEnd

47:                                               ; preds = %loopEntry.split
  %.reload9 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %.reg2mem8, align 8
  %.reload14 = load %union.pthread_cond_t*, %union.pthread_cond_t** %.reg2mem13, align 8
  %48 = call i32 @pthread_cond_wait(%union.pthread_cond_t* noundef nonnull %.reload14, %union.pthread_mutex_t* noundef nonnull %.reload9) #9
  %.reload7 = load i32*, i32** %.reg2mem4, align 8
  br label %.split18

.split18:                                         ; preds = %47
  %49 = load i32, i32* %.reload7, align 8, !tbaa !8
  %50 = icmp eq i32 %49, -1
  %51 = select i1 %50, i32 -1436019280, i32 1017362744
  br label %.split18.split

.split18.split:                                   ; preds = %.split18
  store i32 %51, i32* %switchVar, align 4
  br label %loopEnd

52:                                               ; preds = %loopEntry.split
  %.reload10 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %.reg2mem8, align 8
  %53 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %.reload10) #9
  %54 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 2
  %55 = load i32, i32* %54, align 8, !tbaa !8
  %56 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %55)
  %.reload = load i8*, i8** %.reg2mem, align 8
  store i8 1, i8* %.reload, align 8, !tbaa !13
  %57 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 3
  %58 = load i64, i64* %57, align 8, !tbaa !16
  %59 = call i32 @pthread_join(i64 noundef %58, i8** noundef null) #9
  %60 = getelementptr inbounds %struct.IOThread, %struct.IOThread* %1, i64 0, i32 1
  %61 = bitcast %struct.AioContext** %60 to i8**
  %62 = load i8*, i8** %61, align 8, !tbaa !15
  call void @free(i8* noundef %62) #9
  br label %.split19

.split19:                                         ; preds = %52
  %.reload3 = load i8*, i8** %.reg2mem, align 8
  br label %.split19.split

.split19.split:                                   ; preds = %.split19
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %.reload3) #9
  ret i32 0

loopEnd:                                          ; preds = %.split18.split, %first.split.split, %originalBBpart2
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %switchDefault.split.split
  br label %originalBB
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

declare dso_local i32 @pthread_join(i64 noundef, i8** noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"AioContext", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 16}
!9 = !{!"IOThread", !10, i64 0, !11, i64 8, !5, i64 16, !12, i64 24, !6, i64 32, !6, i64 72}
!10 = !{!"_Bool", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !10, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{!9, !11, i64 8}
!16 = !{!9, !12, i64 24}

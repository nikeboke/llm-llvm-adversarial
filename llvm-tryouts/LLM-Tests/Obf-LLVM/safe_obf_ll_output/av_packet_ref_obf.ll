; ModuleID = 'av_packet_ref_obf.bc'
source_filename = "av_packet_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVPacket = type { %struct.AVBufferRef*, i32, i8* }
%struct.AVBufferRef = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"hello_ffmpeg_test\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Success! Copied %d bytes: %.*s\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Calling av_packet_ref...\00", align 1
@str.4 = private unnamed_addr constant [28 x i8] c"Failed to reference packet.\00", align 1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @av_packet_copy_props(%struct.AVPacket* nocapture readnone %0, %struct.AVPacket* nocapture readnone %1) local_unnamed_addr #0 {
  %3 = load i32, i32* @x, align 4
  %4 = load i32, i32* @y, align 4
  %5 = sub i32 0, 1
  br label %.split

.split:                                           ; preds = %2
  %6 = add i32 %3, %5
  %7 = sub i32 %3, 1
  %8 = mul i32 %3, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %4, 10
  %12 = and i1 %10, %11
  %13 = xor i1 %10, %11
  %14 = or i1 %12, %13
  br label %.split.split

.split.split:                                     ; preds = %.split
  %15 = or i1 %10, %11
  br i1 %14, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %16 = load i32, i32* @x, align 4
  %17 = load i32, i32* @y, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %18 = sub i32 0, 1
  %19 = add i32 %16, %18
  %20 = sub i32 %16, 1
  %21 = mul i32 %16, %19
  %22 = urem i32 %21, 2
  %23 = icmp eq i32 %22, 0
  %24 = icmp slt i32 %17, 10
  %25 = xor i1 %23, true
  %26 = xor i1 %24, true
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %27 = xor i1 true, true
  %28 = and i1 %25, true
  %29 = and i1 %23, %27
  %30 = and i1 %26, true
  %31 = and i1 %24, %27
  %32 = or i1 %28, %29
  %33 = or i1 %30, %31
  %34 = xor i1 %32, %33
  %35 = or i1 %25, %26
  %36 = xor i1 %35, true
  %37 = or i1 true, %27
  %38 = and i1 %36, %37
  %39 = or i1 %34, %38
  %40 = or i1 %23, %24
  br i1 %39, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 0

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @av_packet_free_side_data(%struct.AVPacket* nocapture %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias %struct.AVBufferRef* @av_buffer_ref(%struct.AVBufferRef* noundef readonly %0) local_unnamed_addr #1 {
  %.reg2mem11 = alloca i8*, align 8
  %.reg2mem8 = alloca i64, align 8
  %.reg2mem4 = alloca %struct.AVBufferRef*, align 8
  %.reg2mem = alloca i8*, align 8
  br label %.split

.split:                                           ; preds = %1
  %switchVar = alloca i32, align 4
  br label %.split.split

.split.split:                                     ; preds = %.split
  store i32 1109031675, i32* %switchVar, align 4
  %.reg2mem15 = alloca %struct.AVBufferRef*, align 8
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 1109031675, label %first
    i32 -1415388128, label %69
    i32 1062706023, label %74
    i32 98073884, label %110
    i32 -570510443, label %111
    i32 -25733392, label %141
  ]

switchDefault:                                    ; preds = %loopEntry.split
  %2 = load i32, i32* @x.3, align 4
  %3 = load i32, i32* @y.4, align 4
  %4 = sub i32 0, 1
  %5 = add i32 %2, %4
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
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %18 = or i1 %14, %15
  %19 = or i1 %16, %17
  %20 = xor i1 %18, %19
  %21 = or i1 %11, %12
  %22 = xor i1 %21, true
  %23 = or i1 true, %13
  %24 = and i1 %22, %23
  %25 = or i1 %20, %24
  %26 = or i1 %9, %10
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  br i1 %25, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %switchDefault.split.split, %originalBBalteredBB
  %27 = load i32, i32* @x.3, align 4
  %28 = load i32, i32* @y.4, align 4
  %29 = sub i32 %27, -459969465
  %30 = sub i32 %29, 1
  %31 = add i32 %30, -459969465
  %32 = sub i32 %27, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %33 = mul i32 %27, %31
  %34 = urem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = icmp slt i32 %28, 10
  %37 = and i1 %35, %36
  %38 = xor i1 %35, %36
  %39 = or i1 %37, %38
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %40 = or i1 %35, %36
  br i1 %39, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %41 = load i32, i32* @x.3, align 4
  %42 = load i32, i32* @y.4, align 4
  %43 = sub i32 0, 1
  %44 = add i32 %41, %43
  %45 = sub i32 %41, 1
  br label %first.split

first.split:                                      ; preds = %first
  %46 = mul i32 %41, %44
  %47 = urem i32 %46, 2
  %48 = icmp eq i32 %47, 0
  %49 = icmp slt i32 %42, 10
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  %50 = and i1 %48, %49
  %51 = xor i1 %48, %49
  %52 = or i1 %50, %51
  %53 = or i1 %48, %49
  br i1 %52, label %originalBB17, label %originalBB17alteredBB

originalBB17:                                     ; preds = %first.split.split, %originalBB17alteredBB.split.split
  %54 = icmp eq %struct.AVBufferRef* %0, null
  %55 = select i1 %54, i32 -25733392, i32 -1415388128
  store i32 %55, i32* %switchVar, align 4
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %.reg2mem15, align 8
  %56 = load i32, i32* @x.3, align 4
  %57 = load i32, i32* @y.4, align 4
  %58 = sub i32 0, 1
  %59 = add i32 %56, %58
  br label %originalBB17.split

originalBB17.split:                               ; preds = %originalBB17
  %60 = sub i32 %56, 1
  %61 = mul i32 %56, %59
  %62 = urem i32 %61, 2
  %63 = icmp eq i32 %62, 0
  %64 = icmp slt i32 %57, 10
  br label %originalBB17.split.split

originalBB17.split.split:                         ; preds = %originalBB17.split
  %65 = and i1 %63, %64
  %66 = xor i1 %63, %64
  %67 = or i1 %65, %66
  %68 = or i1 %63, %64
  br i1 %67, label %originalBBpart219, label %originalBB17alteredBB

originalBBpart219:                                ; preds = %originalBB17.split.split
  br label %loopEnd

69:                                               ; preds = %loopEntry.split
  %70 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #10
  store i8* %70, i8** %.reg2mem, align 8
  %.reload3 = load i8*, i8** %.reg2mem, align 8
  %71 = bitcast i8* %.reload3 to %struct.AVBufferRef*
  store %struct.AVBufferRef* %71, %struct.AVBufferRef** %.reg2mem4, align 8
  br label %.split29

.split29:                                         ; preds = %69
  %.reload = load i8*, i8** %.reg2mem, align 8
  %72 = icmp eq i8* %.reload, null
  %73 = select i1 %72, i32 -25733392, i32 1062706023
  br label %.split29.split

.split29.split:                                   ; preds = %.split29
  store i32 %73, i32* %switchVar, align 4
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %.reg2mem15, align 8
  br label %loopEnd

74:                                               ; preds = %loopEntry.split
  %75 = load i32, i32* @x.3, align 4
  br label %.split30

.split30:                                         ; preds = %74
  %76 = load i32, i32* @y.4, align 4
  br label %.split30.split

.split30.split:                                   ; preds = %.split30
  %77 = sub i32 %75, -683369038
  %78 = sub i32 %77, 1
  %79 = add i32 %78, -683369038
  %80 = sub i32 %75, 1
  %81 = mul i32 %75, %79
  %82 = urem i32 %81, 2
  %83 = icmp eq i32 %82, 0
  %84 = icmp slt i32 %76, 10
  %85 = and i1 %83, %84
  %86 = xor i1 %83, %84
  %87 = or i1 %85, %86
  %88 = or i1 %83, %84
  br i1 %87, label %originalBB21, label %originalBB21alteredBB

originalBB21:                                     ; preds = %.split30.split, %originalBB21alteredBB.split.split
  %89 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %0, i64 0, i32 1
  %90 = load i32, i32* %89, align 8, !tbaa !3
  %.reload6 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem4, align 8
  %91 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload6, i64 0, i32 1
  store i32 %90, i32* %91, align 8, !tbaa !3
  %92 = sext i32 %90 to i64
  store i64 %92, i64* %.reg2mem8, align 8
  %.reload10 = load i64, i64* %.reg2mem8, align 8
  %93 = call noalias i8* @malloc(i64 noundef %.reload10) #10
  store i8* %93, i8** %.reg2mem11, align 8
  %.reload7 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem4, align 8
  br label %originalBB21.split

originalBB21.split:                               ; preds = %originalBB21
  %94 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload7, i64 0, i32 0
  %.reload14 = load i8*, i8** %.reg2mem11, align 8
  store i8* %.reload14, i8** %94, align 8, !tbaa !9
  %.reload13 = load i8*, i8** %.reg2mem11, align 8
  %95 = icmp eq i8* %.reload13, null
  %96 = select i1 %95, i32 98073884, i32 -570510443
  store i32 %96, i32* %switchVar, align 4
  %97 = load i32, i32* @x.3, align 4
  %98 = load i32, i32* @y.4, align 4
  %99 = sub i32 0, 1
  %100 = add i32 %97, %99
  %101 = sub i32 %97, 1
  %102 = mul i32 %97, %100
  %103 = urem i32 %102, 2
  %104 = icmp eq i32 %103, 0
  %105 = icmp slt i32 %98, 10
  %106 = and i1 %104, %105
  %107 = xor i1 %104, %105
  %108 = or i1 %106, %107
  br label %originalBB21.split.split

originalBB21.split.split:                         ; preds = %originalBB21.split
  %109 = or i1 %104, %105
  br i1 %108, label %originalBBpart223, label %originalBB21alteredBB

originalBBpart223:                                ; preds = %originalBB21.split.split
  br label %loopEnd

110:                                              ; preds = %loopEntry.split
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  br label %.split31

.split31:                                         ; preds = %110
  call void @free(i8* noundef %.reload2) #10
  store i32 -25733392, i32* %switchVar, align 4
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %.reg2mem15, align 8
  br label %.split31.split

.split31.split:                                   ; preds = %.split31
  br label %loopEnd

111:                                              ; preds = %loopEntry.split
  %112 = load i32, i32* @x.3, align 4
  br label %.split32

.split32:                                         ; preds = %111
  %113 = load i32, i32* @y.4, align 4
  %114 = sub i32 0, 1
  %115 = add i32 %112, %114
  %116 = sub i32 %112, 1
  %117 = mul i32 %112, %115
  %118 = urem i32 %117, 2
  br label %.split32.split

.split32.split:                                   ; preds = %.split32
  %119 = icmp eq i32 %118, 0
  %120 = icmp slt i32 %113, 10
  %121 = and i1 %119, %120
  %122 = xor i1 %119, %120
  %123 = or i1 %121, %122
  %124 = or i1 %119, %120
  br i1 %123, label %originalBB25, label %originalBB25alteredBB

originalBB25:                                     ; preds = %.split32.split, %originalBB25alteredBB.split.split
  %125 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %0, i64 0, i32 0
  %126 = load i8*, i8** %125, align 8, !tbaa !9
  %.reload9 = load i64, i64* %.reg2mem8, align 8
  %.reload12 = load i8*, i8** %.reg2mem11, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %.reload12, i8* align 1 %126, i64 %.reload9, i1 false)
  store i32 -25733392, i32* %switchVar, align 4
  br label %originalBB25.split

originalBB25.split:                               ; preds = %originalBB25
  %.reload5 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem4, align 8
  store %struct.AVBufferRef* %.reload5, %struct.AVBufferRef** %.reg2mem15, align 8
  %127 = load i32, i32* @x.3, align 4
  %128 = load i32, i32* @y.4, align 4
  %129 = sub i32 %127, 105319399
  %130 = sub i32 %129, 1
  %131 = add i32 %130, 105319399
  %132 = sub i32 %127, 1
  %133 = mul i32 %127, %131
  %134 = urem i32 %133, 2
  %135 = icmp eq i32 %134, 0
  %136 = icmp slt i32 %128, 10
  %137 = and i1 %135, %136
  %138 = xor i1 %135, %136
  br label %originalBB25.split.split

originalBB25.split.split:                         ; preds = %originalBB25.split
  %139 = or i1 %137, %138
  %140 = or i1 %135, %136
  br i1 %139, label %originalBBpart227, label %originalBB25alteredBB

originalBBpart227:                                ; preds = %originalBB25.split.split
  br label %loopEnd

141:                                              ; preds = %loopEntry.split
  %.reload16 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem15, align 8
  br label %.split33

.split33:                                         ; preds = %141
  ret %struct.AVBufferRef* %.reload16

loopEnd:                                          ; preds = %originalBBpart227, %.split31.split, %originalBBpart223, %.split29.split, %originalBBpart219, %originalBBpart2
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %switchDefault.split.split
  br label %originalBB

originalBB17alteredBB:                            ; preds = %originalBB17.split.split, %first.split.split
  %142 = icmp eq %struct.AVBufferRef* %0, null
  %143 = select i1 %142, i32 -25733392, i32 -1415388128
  br label %originalBB17alteredBB.split

originalBB17alteredBB.split:                      ; preds = %originalBB17alteredBB
  store i32 %143, i32* %switchVar, align 4
  br label %originalBB17alteredBB.split.split

originalBB17alteredBB.split.split:                ; preds = %originalBB17alteredBB.split
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %.reg2mem15, align 8
  br label %originalBB17

originalBB21alteredBB:                            ; preds = %originalBB21.split.split, %.split30.split
  %144 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %0, i64 0, i32 1
  %145 = load i32, i32* %144, align 8, !tbaa !3
  %.reload6alteredBB = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem4, align 8
  %146 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload6alteredBB, i64 0, i32 1
  store i32 %145, i32* %146, align 8, !tbaa !3
  %147 = sext i32 %145 to i64
  store i64 %147, i64* %.reg2mem8, align 8
  %.reload10alteredBB = load i64, i64* %.reg2mem8, align 8
  %148 = call noalias i8* @malloc(i64 noundef %.reload10alteredBB) #10
  store i8* %148, i8** %.reg2mem11, align 8
  %.reload7alteredBB = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem4, align 8
  %149 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload7alteredBB, i64 0, i32 0
  br label %originalBB21alteredBB.split

originalBB21alteredBB.split:                      ; preds = %originalBB21alteredBB
  %.reload14alteredBB = load i8*, i8** %.reg2mem11, align 8
  store i8* %.reload14alteredBB, i8** %149, align 8, !tbaa !9
  br label %originalBB21alteredBB.split.split

originalBB21alteredBB.split.split:                ; preds = %originalBB21alteredBB.split
  %.reload13alteredBB = load i8*, i8** %.reg2mem11, align 8
  %150 = icmp eq i8* %.reload13alteredBB, null
  %151 = select i1 %150, i32 98073884, i32 -570510443
  store i32 %151, i32* %switchVar, align 4
  br label %originalBB21

originalBB25alteredBB:                            ; preds = %originalBB25.split.split, %.split32.split
  %152 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %0, i64 0, i32 0
  %153 = load i8*, i8** %152, align 8, !tbaa !9
  %.reload9alteredBB = load i64, i64* %.reg2mem8, align 8
  %.reload12alteredBB = load i8*, i8** %.reg2mem11, align 8
  br label %originalBB25alteredBB.split

originalBB25alteredBB.split:                      ; preds = %originalBB25alteredBB
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %.reload12alteredBB, i8* align 1 %153, i64 %.reload9alteredBB, i1 false)
  store i32 -25733392, i32* %switchVar, align 4
  %.reload5alteredBB = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem4, align 8
  store %struct.AVBufferRef* %.reload5alteredBB, %struct.AVBufferRef** %.reg2mem15, align 8
  br label %originalBB25alteredBB.split.split

originalBB25alteredBB.split.split:                ; preds = %originalBB25alteredBB.split
  br label %originalBB25
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local i32 @packet_alloc(%struct.AVBufferRef** nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %.reg2mem3 = alloca %struct.AVBufferRef*, align 8
  br label %.split

.split:                                           ; preds = %2
  %.reg2mem = alloca i8*, align 8
  br label %.split.split

.split.split:                                     ; preds = %.split
  %3 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #10
  store i8* %3, i8** %.reg2mem, align 8
  %4 = bitcast %struct.AVBufferRef** %0 to i8**
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  store i8* %.reload2, i8** %4, align 8, !tbaa !10
  %switchVar = alloca i32, align 4
  store i32 -982601504, i32* %switchVar, align 4
  %.reg2mem7 = alloca i32, align 4
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %originalBBpart211
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 -982601504, label %first
    i32 -772112347, label %7
    i32 -2102987865, label %17
    i32 -647011903, label %59
    i32 942990888, label %61
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload = load i8*, i8** %.reg2mem, align 8
  br label %first.split

first.split:                                      ; preds = %first
  %5 = icmp eq i8* %.reload, null
  %6 = select i1 %5, i32 942990888, i32 -772112347
  store i32 %6, i32* %switchVar, align 4
  store i32 -1, i32* %.reg2mem7, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br label %loopEnd

7:                                                ; preds = %loopEntry.split
  %8 = sext i32 %1 to i64
  %9 = call noalias i8* @malloc(i64 noundef %8) #10
  %10 = load %struct.AVBufferRef*, %struct.AVBufferRef** %0, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %10, i64 0, i32 0
  store i8* %9, i8** %11, align 8, !tbaa !9
  %12 = load %struct.AVBufferRef*, %struct.AVBufferRef** %0, align 8, !tbaa !10
  br label %.split13

.split13:                                         ; preds = %7
  store %struct.AVBufferRef* %12, %struct.AVBufferRef** %.reg2mem3, align 8
  %.reload6 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem3, align 8
  %13 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload6, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !9
  br label %.split13.split

.split13.split:                                   ; preds = %.split13
  %15 = icmp eq i8* %14, null
  %16 = select i1 %15, i32 -2102987865, i32 -647011903
  store i32 %16, i32* %switchVar, align 4
  br label %loopEnd

17:                                               ; preds = %loopEntry.split
  %18 = load i32, i32* @x.5, align 4
  %19 = load i32, i32* @y.6, align 4
  %20 = add i32 %18, 968011486
  %21 = sub i32 %20, 1
  %22 = sub i32 %21, 968011486
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
  %39 = xor i1 %38, true
  %40 = or i1 true, %30
  br label %.split14

.split14:                                         ; preds = %17
  %41 = and i1 %39, %40
  %42 = or i1 %37, %41
  br label %.split14.split

.split14.split:                                   ; preds = %.split14
  %43 = or i1 %26, %27
  br i1 %42, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split14.split, %originalBBalteredBB.split.split
  %.reload4 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem3, align 8
  %44 = bitcast %struct.AVBufferRef* %.reload4 to i8*
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  call void @free(i8* noundef %44) #10
  store i32 942990888, i32* %switchVar, align 4
  store i32 -1, i32* %.reg2mem7, align 4
  %45 = load i32, i32* @x.5, align 4
  %46 = load i32, i32* @y.6, align 4
  %47 = add i32 %45, -1009082795
  %48 = sub i32 %47, 1
  %49 = sub i32 %48, -1009082795
  %50 = sub i32 %45, 1
  %51 = mul i32 %45, %49
  %52 = urem i32 %51, 2
  %53 = icmp eq i32 %52, 0
  %54 = icmp slt i32 %46, 10
  %55 = and i1 %53, %54
  %56 = xor i1 %53, %54
  %57 = or i1 %55, %56
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %58 = or i1 %53, %54
  br i1 %57, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

59:                                               ; preds = %loopEntry.split
  %.reload5 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem3, align 8
  br label %.split15

.split15:                                         ; preds = %59
  %60 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload5, i64 0, i32 1
  store i32 %1, i32* %60, align 8, !tbaa !3
  store i32 942990888, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem7, align 4
  br label %.split15.split

.split15.split:                                   ; preds = %.split15
  br label %loopEnd

61:                                               ; preds = %loopEntry.split
  %.reload8 = load i32, i32* %.reg2mem7, align 4
  br label %.split16

.split16:                                         ; preds = %61
  ret i32 %.reload8

loopEnd:                                          ; preds = %.split15.split, %originalBBpart2, %.split13.split, %first.split.split, %switchDefault
  %62 = load i32, i32* @x.5, align 4
  %63 = load i32, i32* @y.6, align 4
  %64 = sub i32 %62, 956828998
  %65 = sub i32 %64, 1
  %66 = add i32 %65, 956828998
  %67 = sub i32 %62, 1
  br label %loopEnd.split

loopEnd.split:                                    ; preds = %loopEnd
  %68 = mul i32 %62, %66
  %69 = urem i32 %68, 2
  %70 = icmp eq i32 %69, 0
  %71 = icmp slt i32 %63, 10
  %72 = and i1 %70, %71
  %73 = xor i1 %70, %71
  %74 = or i1 %72, %73
  br label %loopEnd.split.split

loopEnd.split.split:                              ; preds = %loopEnd.split
  %75 = or i1 %70, %71
  br i1 %74, label %originalBB9, label %originalBB9alteredBB

originalBB9:                                      ; preds = %loopEnd.split.split, %originalBB9alteredBB
  %76 = load i32, i32* @x.5, align 4
  %77 = load i32, i32* @y.6, align 4
  %78 = sub i32 0, 1
  %79 = add i32 %76, %78
  %80 = sub i32 %76, 1
  %81 = mul i32 %76, %79
  %82 = urem i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br label %originalBB9.split

originalBB9.split:                                ; preds = %originalBB9
  %84 = icmp slt i32 %77, 10
  %85 = and i1 %83, %84
  %86 = xor i1 %83, %84
  %87 = or i1 %85, %86
  %88 = or i1 %83, %84
  br label %originalBB9.split.split

originalBB9.split.split:                          ; preds = %originalBB9.split
  br i1 %87, label %originalBBpart211, label %originalBB9alteredBB

originalBBpart211:                                ; preds = %originalBB9.split.split
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split14.split
  %.reload4alteredBB = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem3, align 8
  %89 = bitcast %struct.AVBufferRef* %.reload4alteredBB to i8*
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  call void @free(i8* noundef %89) #10
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  store i32 942990888, i32* %switchVar, align 4
  store i32 -1, i32* %.reg2mem7, align 4
  br label %originalBB

originalBB9alteredBB:                             ; preds = %originalBB9.split.split, %loopEnd.split.split
  br label %originalBB9
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local i32 @av_packet_ref(%struct.AVPacket* nocapture noundef %0, %struct.AVPacket* nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load i32, i32* @x.7, align 4
  %4 = load i32, i32* @y.8, align 4
  %5 = add i32 %3, -1150504063
  %6 = sub i32 %5, 1
  %7 = sub i32 %6, -1150504063
  %8 = sub i32 %3, 1
  %9 = mul i32 %3, %7
  %10 = urem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br label %.split

.split:                                           ; preds = %2
  %12 = icmp slt i32 %4, 10
  %13 = and i1 %11, %12
  %14 = xor i1 %11, %12
  br label %.split.split

.split.split:                                     ; preds = %.split
  %15 = or i1 %13, %14
  %16 = or i1 %11, %12
  br i1 %15, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %.reg2mem29 = alloca i8*, align 8
  %.reg2mem26 = alloca i64, align 8
  %.reg2mem22 = alloca %struct.AVBufferRef*, align 8
  %.reg2mem18 = alloca i8*, align 8
  %.reg2mem14 = alloca %struct.AVBufferRef*, align 8
  %.reg2mem11 = alloca i32, align 4
  %.reg2mem8 = alloca i32*, align 8
  %.reg2mem4 = alloca %struct.AVBufferRef**, align 8
  %.reg2mem = alloca %struct.AVBufferRef*, align 8
  %17 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %1, i64 0, i32 0
  %18 = load %struct.AVBufferRef*, %struct.AVBufferRef** %17, align 8, !tbaa !11
  store %struct.AVBufferRef* %18, %struct.AVBufferRef** %.reg2mem, align 8
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %switchVar = alloca i32, align 4
  store i32 -57823334, i32* %switchVar, align 4
  %.reg2mem33 = alloca %struct.AVBufferRef*, align 8
  %.reg2mem35 = alloca i32, align 4
  %19 = load i32, i32* @x.7, align 4
  %20 = load i32, i32* @y.8, align 4
  %21 = add i32 %19, -863120420
  %22 = sub i32 %21, 1
  %23 = sub i32 %22, -863120420
  %24 = sub i32 %19, 1
  %25 = mul i32 %19, %23
  %26 = urem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = icmp slt i32 %20, 10
  %29 = and i1 %27, %28
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %30 = xor i1 %27, %28
  %31 = or i1 %29, %30
  %32 = or i1 %27, %28
  br i1 %31, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %originalBBpart251
  %33 = load i32, i32* @x.7, align 4
  %34 = load i32, i32* @y.8, align 4
  %35 = add i32 %33, 393687992
  %36 = sub i32 %35, 1
  %37 = sub i32 %36, 393687992
  %38 = sub i32 %33, 1
  %39 = mul i32 %33, %37
  %40 = urem i32 %39, 2
  %41 = icmp eq i32 %40, 0
  %42 = icmp slt i32 %34, 10
  %43 = xor i1 %41, true
  %44 = xor i1 %42, true
  %45 = xor i1 true, true
  %46 = and i1 %43, true
  %47 = and i1 %41, %45
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  %48 = and i1 %44, true
  br label %loopEntry.split.split

loopEntry.split.split:                            ; preds = %loopEntry.split
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
  br i1 %57, label %originalBB37, label %originalBB37alteredBB

originalBB37:                                     ; preds = %loopEntry.split.split, %originalBB37alteredBB.split
  %switchVar1 = load i32, i32* %switchVar, align 4
  %59 = load i32, i32* @x.7, align 4
  %60 = load i32, i32* @y.8, align 4
  %61 = sub i32 0, 1
  %62 = add i32 %59, %61
  %63 = sub i32 %59, 1
  %64 = mul i32 %59, %62
  %65 = urem i32 %64, 2
  %66 = icmp eq i32 %65, 0
  %67 = icmp slt i32 %60, 10
  br label %originalBB37.split

originalBB37.split:                               ; preds = %originalBB37
  %68 = and i1 %66, %67
  %69 = xor i1 %66, %67
  %70 = or i1 %68, %69
  br label %originalBB37.split.split

originalBB37.split.split:                         ; preds = %originalBB37.split
  %71 = or i1 %66, %67
  br i1 %70, label %originalBBpart239, label %originalBB37alteredBB

originalBBpart239:                                ; preds = %originalBB37.split.split
  switch i32 %switchVar1, label %switchDefault [
    i32 -57823334, label %first
    i32 -1078222461, label %74
    i32 305325464, label %82
    i32 -2116266378, label %92
    i32 1567840996, label %94
    i32 324948137, label %103
    i32 1868150924, label %108
    i32 1975460756, label %144
    i32 -1512959393, label %145
    i32 1431686983, label %148
    i32 1126494360, label %179
    i32 -2124090648, label %188
  ]

switchDefault:                                    ; preds = %originalBBpart239
  br label %loopEnd

first:                                            ; preds = %originalBBpart239
  %.reload3 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem, align 8
  br label %first.split

first.split:                                      ; preds = %first
  %72 = icmp eq %struct.AVBufferRef* %.reload3, null
  %73 = select i1 %72, i32 -1078222461, i32 324948137
  store i32 %73, i32* %switchVar, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br label %loopEnd

74:                                               ; preds = %originalBBpart239
  %75 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %0, i64 0, i32 0
  store %struct.AVBufferRef** %75, %struct.AVBufferRef*** %.reg2mem4, align 8
  %76 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %1, i64 0, i32 1
  br label %.split53

.split53:                                         ; preds = %74
  store i32* %76, i32** %.reg2mem8, align 8
  %.reload10 = load i32*, i32** %.reg2mem8, align 8
  %77 = load i32, i32* %.reload10, align 8, !tbaa !13
  store i32 %77, i32* %.reg2mem11, align 4
  br label %.split53.split

.split53.split:                                   ; preds = %.split53
  %78 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #10
  %79 = bitcast %struct.AVPacket* %0 to i8**
  store i8* %78, i8** %79, align 8, !tbaa !10
  %80 = icmp eq i8* %78, null
  %81 = select i1 %80, i32 -2124090648, i32 305325464
  store i32 %81, i32* %switchVar, align 4
  store i32 -1, i32* %.reg2mem35, align 4
  br label %loopEnd

82:                                               ; preds = %originalBBpart239
  %.reload13 = load i32, i32* %.reg2mem11, align 4
  %83 = sext i32 %.reload13 to i64
  %84 = call noalias i8* @malloc(i64 noundef %83) #10
  %.reload6 = load %struct.AVBufferRef**, %struct.AVBufferRef*** %.reg2mem4, align 8
  %85 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reload6, align 8, !tbaa !10
  %86 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %85, i64 0, i32 0
  store i8* %84, i8** %86, align 8, !tbaa !9
  %.reload5 = load %struct.AVBufferRef**, %struct.AVBufferRef*** %.reg2mem4, align 8
  %87 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reload5, align 8, !tbaa !10
  store %struct.AVBufferRef* %87, %struct.AVBufferRef** %.reg2mem14, align 8
  %.reload17 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem14, align 8
  br label %.split54

.split54:                                         ; preds = %82
  %88 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload17, i64 0, i32 0
  %89 = load i8*, i8** %88, align 8, !tbaa !9
  br label %.split54.split

.split54.split:                                   ; preds = %.split54
  %90 = icmp eq i8* %89, null
  %91 = select i1 %90, i32 -2116266378, i32 1567840996
  store i32 %91, i32* %switchVar, align 4
  br label %loopEnd

92:                                               ; preds = %originalBBpart239
  %.reload15 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem14, align 8
  %93 = bitcast %struct.AVBufferRef* %.reload15 to i8*
  call void @free(i8* noundef %93) #10
  br label %.split55

.split55:                                         ; preds = %92
  store i32 -2124090648, i32* %switchVar, align 4
  store i32 -1, i32* %.reg2mem35, align 4
  br label %.split55.split

.split55.split:                                   ; preds = %.split55
  br label %loopEnd

94:                                               ; preds = %originalBBpart239
  %.reload16 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem14, align 8
  %95 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload16, i64 0, i32 1
  %.reload12 = load i32, i32* %.reg2mem11, align 4
  store i32 %.reload12, i32* %95, align 8, !tbaa !3
  %.reload7 = load %struct.AVBufferRef**, %struct.AVBufferRef*** %.reg2mem4, align 8
  %96 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reload7, align 8, !tbaa !11
  %97 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %96, i64 0, i32 0
  br label %.split56

.split56:                                         ; preds = %94
  %98 = load i8*, i8** %97, align 8, !tbaa !9
  br label %.split56.split

.split56.split:                                   ; preds = %.split56
  %99 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %1, i64 0, i32 2
  %100 = load i8*, i8** %99, align 8, !tbaa !14
  %.reload9 = load i32*, i32** %.reg2mem8, align 8
  %101 = load i32, i32* %.reload9, align 8, !tbaa !13
  %102 = sext i32 %101 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %98, i8* align 1 %100, i64 %102, i1 false)
  store i32 1126494360, i32* %switchVar, align 4
  br label %loopEnd

103:                                              ; preds = %originalBBpart239
  %104 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #10
  store i8* %104, i8** %.reg2mem18, align 8
  %.reload21 = load i8*, i8** %.reg2mem18, align 8
  %105 = bitcast i8* %.reload21 to %struct.AVBufferRef*
  store %struct.AVBufferRef* %105, %struct.AVBufferRef** %.reg2mem22, align 8
  br label %.split57

.split57:                                         ; preds = %103
  %.reload20 = load i8*, i8** %.reg2mem18, align 8
  %106 = icmp eq i8* %.reload20, null
  %107 = select i1 %106, i32 1431686983, i32 1868150924
  store i32 %107, i32* %switchVar, align 4
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %.reg2mem33, align 8
  br label %.split57.split

.split57.split:                                   ; preds = %.split57
  br label %loopEnd

108:                                              ; preds = %originalBBpart239
  %109 = load i32, i32* @x.7, align 4
  %110 = load i32, i32* @y.8, align 4
  %111 = sub i32 0, 1
  %112 = add i32 %109, %111
  %113 = sub i32 %109, 1
  %114 = mul i32 %109, %112
  %115 = urem i32 %114, 2
  br label %.split58

.split58:                                         ; preds = %108
  %116 = icmp eq i32 %115, 0
  %117 = icmp slt i32 %110, 10
  br label %.split58.split

.split58.split:                                   ; preds = %.split58
  %118 = and i1 %116, %117
  %119 = xor i1 %116, %117
  %120 = or i1 %118, %119
  %121 = or i1 %116, %117
  br i1 %120, label %originalBB41, label %originalBB41alteredBB

originalBB41:                                     ; preds = %.split58.split, %originalBB41alteredBB.split.split
  %.reload2 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem, align 8
  %122 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload2, i64 0, i32 1
  %123 = load i32, i32* %122, align 8, !tbaa !3
  %.reload25 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem22, align 8
  %124 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload25, i64 0, i32 1
  store i32 %123, i32* %124, align 8, !tbaa !3
  %125 = sext i32 %123 to i64
  store i64 %125, i64* %.reg2mem26, align 8
  %.reload28 = load i64, i64* %.reg2mem26, align 8
  %126 = call noalias i8* @malloc(i64 noundef %.reload28) #10
  store i8* %126, i8** %.reg2mem29, align 8
  %.reload24 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem22, align 8
  %127 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload24, i64 0, i32 0
  %.reload32 = load i8*, i8** %.reg2mem29, align 8
  br label %originalBB41.split

originalBB41.split:                               ; preds = %originalBB41
  store i8* %.reload32, i8** %127, align 8, !tbaa !9
  %.reload31 = load i8*, i8** %.reg2mem29, align 8
  %128 = icmp eq i8* %.reload31, null
  %129 = select i1 %128, i32 1975460756, i32 -1512959393
  store i32 %129, i32* %switchVar, align 4
  %130 = load i32, i32* @x.7, align 4
  %131 = load i32, i32* @y.8, align 4
  %132 = add i32 %130, -67712741
  %133 = sub i32 %132, 1
  br label %originalBB41.split.split

originalBB41.split.split:                         ; preds = %originalBB41.split
  %134 = sub i32 %133, -67712741
  %135 = sub i32 %130, 1
  %136 = mul i32 %130, %134
  %137 = urem i32 %136, 2
  %138 = icmp eq i32 %137, 0
  %139 = icmp slt i32 %131, 10
  %140 = and i1 %138, %139
  %141 = xor i1 %138, %139
  %142 = or i1 %140, %141
  %143 = or i1 %138, %139
  br i1 %142, label %originalBBpart243, label %originalBB41alteredBB

originalBBpart243:                                ; preds = %originalBB41.split.split
  br label %loopEnd

144:                                              ; preds = %originalBBpart239
  %.reload19 = load i8*, i8** %.reg2mem18, align 8
  call void @free(i8* noundef %.reload19) #10
  store i32 1431686983, i32* %switchVar, align 4
  br label %.split59

.split59:                                         ; preds = %144
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %.reg2mem33, align 8
  br label %.split59.split

.split59.split:                                   ; preds = %.split59
  br label %loopEnd

145:                                              ; preds = %originalBBpart239
  %.reload = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem, align 8
  br label %.split60

.split60:                                         ; preds = %145
  %146 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload, i64 0, i32 0
  %147 = load i8*, i8** %146, align 8, !tbaa !9
  %.reload27 = load i64, i64* %.reg2mem26, align 8
  %.reload30 = load i8*, i8** %.reg2mem29, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %.reload30, i8* align 1 %147, i64 %.reload27, i1 false) #10
  br label %.split60.split

.split60.split:                                   ; preds = %.split60
  store i32 1431686983, i32* %switchVar, align 4
  %.reload23 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem22, align 8
  store %struct.AVBufferRef* %.reload23, %struct.AVBufferRef** %.reg2mem33, align 8
  br label %loopEnd

148:                                              ; preds = %originalBBpart239
  %149 = load i32, i32* @x.7, align 4
  %150 = load i32, i32* @y.8, align 4
  %151 = sub i32 0, 1
  %152 = add i32 %149, %151
  %153 = sub i32 %149, 1
  %154 = mul i32 %149, %152
  br label %.split61

.split61:                                         ; preds = %148
  %155 = urem i32 %154, 2
  %156 = icmp eq i32 %155, 0
  %157 = icmp slt i32 %150, 10
  br label %.split61.split

.split61.split:                                   ; preds = %.split61
  %158 = and i1 %156, %157
  %159 = xor i1 %156, %157
  %160 = or i1 %158, %159
  %161 = or i1 %156, %157
  br i1 %160, label %originalBB45, label %originalBB45alteredBB

originalBB45:                                     ; preds = %.split61.split, %originalBB45alteredBB.split.split
  %.reload34 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem33, align 8
  %162 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %0, i64 0, i32 0
  store %struct.AVBufferRef* %.reload34, %struct.AVBufferRef** %162, align 8, !tbaa !11
  %163 = icmp eq %struct.AVBufferRef* %.reload34, null
  %164 = select i1 %163, i32 -2124090648, i32 1126494360
  store i32 %164, i32* %switchVar, align 4
  br label %originalBB45.split

originalBB45.split:                               ; preds = %originalBB45
  store i32 0, i32* %.reg2mem35, align 4
  %165 = load i32, i32* @x.7, align 4
  %166 = load i32, i32* @y.8, align 4
  %167 = add i32 %165, -1481558114
  %168 = sub i32 %167, 1
  %169 = sub i32 %168, -1481558114
  %170 = sub i32 %165, 1
  %171 = mul i32 %165, %169
  %172 = urem i32 %171, 2
  %173 = icmp eq i32 %172, 0
  %174 = icmp slt i32 %166, 10
  %175 = and i1 %173, %174
  br label %originalBB45.split.split

originalBB45.split.split:                         ; preds = %originalBB45.split
  %176 = xor i1 %173, %174
  %177 = or i1 %175, %176
  %178 = or i1 %173, %174
  br i1 %177, label %originalBBpart247, label %originalBB45alteredBB

originalBBpart247:                                ; preds = %originalBB45.split.split
  br label %loopEnd

179:                                              ; preds = %originalBBpart239
  %180 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %1, i64 0, i32 1
  %181 = load i32, i32* %180, align 8, !tbaa !13
  %182 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %0, i64 0, i32 1
  store i32 %181, i32* %182, align 8, !tbaa !13
  %183 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %0, i64 0, i32 0
  %184 = load %struct.AVBufferRef*, %struct.AVBufferRef** %183, align 8, !tbaa !11
  br label %.split62

.split62:                                         ; preds = %179
  %185 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %184, i64 0, i32 0
  %186 = load i8*, i8** %185, align 8, !tbaa !9
  %187 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %0, i64 0, i32 2
  store i8* %186, i8** %187, align 8, !tbaa !14
  store i32 -2124090648, i32* %switchVar, align 4
  br label %.split62.split

.split62.split:                                   ; preds = %.split62
  store i32 0, i32* %.reg2mem35, align 4
  br label %loopEnd

188:                                              ; preds = %originalBBpart239
  %.reload36 = load i32, i32* %.reg2mem35, align 4
  br label %.split63

.split63:                                         ; preds = %188
  ret i32 %.reload36

loopEnd:                                          ; preds = %.split62.split, %originalBBpart247, %.split60.split, %.split59.split, %originalBBpart243, %.split57.split, %.split56.split, %.split55.split, %.split54.split, %.split53.split, %first.split.split, %switchDefault
  %189 = load i32, i32* @x.7, align 4
  %190 = load i32, i32* @y.8, align 4
  %191 = sub i32 0, 1
  %192 = add i32 %189, %191
  %193 = sub i32 %189, 1
  %194 = mul i32 %189, %192
  %195 = urem i32 %194, 2
  %196 = icmp eq i32 %195, 0
  %197 = icmp slt i32 %190, 10
  %198 = xor i1 %196, true
  %199 = xor i1 %197, true
  %200 = xor i1 true, true
  %201 = and i1 %198, true
  %202 = and i1 %196, %200
  br label %loopEnd.split

loopEnd.split:                                    ; preds = %loopEnd
  %203 = and i1 %199, true
  %204 = and i1 %197, %200
  %205 = or i1 %201, %202
  %206 = or i1 %203, %204
  %207 = xor i1 %205, %206
  %208 = or i1 %198, %199
  %209 = xor i1 %208, true
  %210 = or i1 true, %200
  %211 = and i1 %209, %210
  %212 = or i1 %207, %211
  br label %loopEnd.split.split

loopEnd.split.split:                              ; preds = %loopEnd.split
  %213 = or i1 %196, %197
  br i1 %212, label %originalBB49, label %originalBB49alteredBB

originalBB49:                                     ; preds = %loopEnd.split.split, %originalBB49alteredBB
  %214 = load i32, i32* @x.7, align 4
  %215 = load i32, i32* @y.8, align 4
  %216 = add i32 %214, -2123736485
  %217 = sub i32 %216, 1
  %218 = sub i32 %217, -2123736485
  %219 = sub i32 %214, 1
  %220 = mul i32 %214, %218
  %221 = urem i32 %220, 2
  %222 = icmp eq i32 %221, 0
  %223 = icmp slt i32 %215, 10
  %224 = xor i1 %222, true
  %225 = xor i1 %223, true
  %226 = xor i1 true, true
  br label %originalBB49.split

originalBB49.split:                               ; preds = %originalBB49
  %227 = and i1 %224, true
  %228 = and i1 %222, %226
  %229 = and i1 %225, true
  %230 = and i1 %223, %226
  %231 = or i1 %227, %228
  br label %originalBB49.split.split

originalBB49.split.split:                         ; preds = %originalBB49.split
  %232 = or i1 %229, %230
  %233 = xor i1 %231, %232
  %234 = or i1 %224, %225
  %235 = xor i1 %234, true
  %236 = or i1 true, %226
  %237 = and i1 %235, %236
  %238 = or i1 %233, %237
  %239 = or i1 %222, %223
  br i1 %238, label %originalBBpart251, label %originalBB49alteredBB

originalBBpart251:                                ; preds = %originalBB49.split.split
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %.reg2mem29alteredBB = alloca i8*, align 8
  %.reg2mem26alteredBB = alloca i64, align 8
  %.reg2mem22alteredBB = alloca %struct.AVBufferRef*, align 8
  %.reg2mem18alteredBB = alloca i8*, align 8
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %.reg2mem14alteredBB = alloca %struct.AVBufferRef*, align 8
  %.reg2mem11alteredBB = alloca i32, align 4
  %.reg2mem8alteredBB = alloca i32*, align 8
  %.reg2mem4alteredBB = alloca %struct.AVBufferRef**, align 8
  %.reg2memalteredBB = alloca %struct.AVBufferRef*, align 8
  %240 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %1, i64 0, i32 0
  %241 = load %struct.AVBufferRef*, %struct.AVBufferRef** %240, align 8, !tbaa !11
  store %struct.AVBufferRef* %241, %struct.AVBufferRef** %.reg2memalteredBB, align 8
  %switchVaralteredBB = alloca i32, align 4
  store i32 -57823334, i32* %switchVaralteredBB, align 4
  %.reg2mem33alteredBB = alloca %struct.AVBufferRef*, align 8
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  %.reg2mem35alteredBB = alloca i32, align 4
  br label %originalBB

originalBB37alteredBB:                            ; preds = %originalBB37.split.split, %loopEntry.split.split
  %switchVar1alteredBB = load i32, i32* %switchVar, align 4
  br label %originalBB37alteredBB.split

originalBB37alteredBB.split:                      ; preds = %originalBB37alteredBB
  br label %originalBB37

originalBB41alteredBB:                            ; preds = %originalBB41.split.split, %.split58.split
  %.reload2alteredBB = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem, align 8
  %242 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload2alteredBB, i64 0, i32 1
  %243 = load i32, i32* %242, align 8, !tbaa !3
  %.reload25alteredBB = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem22, align 8
  %244 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload25alteredBB, i64 0, i32 1
  store i32 %243, i32* %244, align 8, !tbaa !3
  %245 = sext i32 %243 to i64
  store i64 %245, i64* %.reg2mem26, align 8
  %.reload28alteredBB = load i64, i64* %.reg2mem26, align 8
  %246 = call noalias i8* @malloc(i64 noundef %.reload28alteredBB) #10
  store i8* %246, i8** %.reg2mem29, align 8
  %.reload24alteredBB = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem22, align 8
  br label %originalBB41alteredBB.split

originalBB41alteredBB.split:                      ; preds = %originalBB41alteredBB
  %247 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload24alteredBB, i64 0, i32 0
  %.reload32alteredBB = load i8*, i8** %.reg2mem29, align 8
  store i8* %.reload32alteredBB, i8** %247, align 8, !tbaa !9
  br label %originalBB41alteredBB.split.split

originalBB41alteredBB.split.split:                ; preds = %originalBB41alteredBB.split
  %.reload31alteredBB = load i8*, i8** %.reg2mem29, align 8
  %248 = icmp eq i8* %.reload31alteredBB, null
  %249 = select i1 %248, i32 1975460756, i32 -1512959393
  store i32 %249, i32* %switchVar, align 4
  br label %originalBB41

originalBB45alteredBB:                            ; preds = %originalBB45.split.split, %.split61.split
  %.reload34alteredBB = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem33, align 8
  br label %originalBB45alteredBB.split

originalBB45alteredBB.split:                      ; preds = %originalBB45alteredBB
  %250 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %0, i64 0, i32 0
  br label %originalBB45alteredBB.split.split

originalBB45alteredBB.split.split:                ; preds = %originalBB45alteredBB.split
  store %struct.AVBufferRef* %.reload34alteredBB, %struct.AVBufferRef** %250, align 8, !tbaa !11
  %251 = icmp eq %struct.AVBufferRef* %.reload34alteredBB, null
  %252 = select i1 %251, i32 -2124090648, i32 1126494360
  store i32 %252, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem35, align 4
  br label %originalBB45

originalBB49alteredBB:                            ; preds = %originalBB49.split.split, %loopEnd.split.split
  br label %originalBB49
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #6 {
  %.reg2mem13 = alloca %struct.AVBufferRef*, align 8
  %.reg2mem8 = alloca i8*, align 8
  %.reg2mem4 = alloca i8*, align 8
  %.reg2mem = alloca i8*, align 8
  %1 = alloca %struct.AVPacket, align 8
  %2 = alloca %struct.AVPacket, align 8
  %3 = bitcast %struct.AVPacket* %1 to i8*
  store i8* %3, i8** %.reg2mem, align 8
  br label %.split

.split:                                           ; preds = %0
  %.reload3 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %.reload3) #10
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  br label %.split.split

.split.split:                                     ; preds = %.split
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %.reload2, i8 0, i64 24, i1 false)
  %4 = bitcast %struct.AVPacket* %2 to i8*
  store i8* %4, i8** %.reg2mem4, align 8
  %.reload7 = load i8*, i8** %.reg2mem4, align 8
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %.reload7) #10
  %.reload6 = load i8*, i8** %.reg2mem4, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %.reload6, i8 0, i64 24, i1 false)
  %5 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %1, i64 0, i32 1
  store i32 16, i32* %5, align 8, !tbaa !13
  %6 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #10
  store i8* %6, i8** %.reg2mem8, align 8
  %7 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %1, i64 0, i32 2
  %.reload12 = load i8*, i8** %.reg2mem8, align 8
  store i8* %.reload12, i8** %7, align 8, !tbaa !14
  %switchVar = alloca i32, align 4
  store i32 -1375925476, i32* %switchVar, align 4
  %.reg2mem16 = alloca i32, align 4
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 -1375925476, label %first
    i32 -716951590, label %50
    i32 1343234451, label %55
    i32 192201540, label %61
    i32 2043688635, label %63
    i32 846566245, label %68
    i32 714736701, label %73
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %8 = load i32, i32* @x.9, align 4
  %9 = load i32, i32* @y.10, align 4
  %10 = add i32 %8, -1595246379
  %11 = sub i32 %10, 1
  %12 = sub i32 %11, -1595246379
  %13 = sub i32 %8, 1
  br label %first.split

first.split:                                      ; preds = %first
  %14 = mul i32 %8, %12
  %15 = urem i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = icmp slt i32 %9, 10
  %18 = xor i1 %16, true
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  %19 = xor i1 %17, true
  %20 = xor i1 false, true
  %21 = and i1 %18, false
  %22 = and i1 %16, %20
  %23 = and i1 %19, false
  %24 = and i1 %17, %20
  %25 = or i1 %21, %22
  %26 = or i1 %23, %24
  %27 = xor i1 %25, %26
  %28 = or i1 %18, %19
  %29 = xor i1 %28, true
  %30 = or i1 false, %20
  %31 = and i1 %29, %30
  %32 = or i1 %27, %31
  %33 = or i1 %16, %17
  br i1 %32, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %first.split.split, %originalBBalteredBB.split.split
  %.reload11 = load i8*, i8** %.reg2mem8, align 8
  %34 = icmp eq i8* %.reload11, null
  %35 = select i1 %34, i32 714736701, i32 -716951590
  store i32 %35, i32* %switchVar, align 4
  store i32 1, i32* %.reg2mem16, align 4
  %36 = load i32, i32* @x.9, align 4
  %37 = load i32, i32* @y.10, align 4
  %38 = sub i32 %36, 1107519474
  %39 = sub i32 %38, 1
  %40 = add i32 %39, 1107519474
  %41 = sub i32 %36, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %42 = mul i32 %36, %40
  %43 = urem i32 %42, 2
  %44 = icmp eq i32 %43, 0
  %45 = icmp slt i32 %37, 10
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %46 = and i1 %44, %45
  %47 = xor i1 %44, %45
  %48 = or i1 %46, %47
  %49 = or i1 %44, %45
  br i1 %48, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

50:                                               ; preds = %loopEntry.split
  %.reload10 = load i8*, i8** %.reg2mem8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %.reload10, i8* noundef nonnull align 1 dereferenceable(16) getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 16, i1 false)
  br label %.split18

.split18:                                         ; preds = %50
  %51 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0))
  %52 = call i32 @av_packet_ref(%struct.AVPacket* noundef nonnull %2, %struct.AVPacket* noundef nonnull %1)
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 1343234451, i32 192201540
  store i32 %54, i32* %switchVar, align 4
  br label %.split18.split

.split18.split:                                   ; preds = %.split18
  br label %loopEnd

55:                                               ; preds = %loopEntry.split
  %56 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %2, i64 0, i32 1
  %57 = load i32, i32* %56, align 8, !tbaa !13
  %58 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %2, i64 0, i32 2
  %59 = load i8*, i8** %58, align 8, !tbaa !14
  br label %.split19

.split19:                                         ; preds = %55
  %60 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 noundef %57, i32 noundef %57, i8* noundef %59)
  br label %.split19.split

.split19.split:                                   ; preds = %.split19
  store i32 2043688635, i32* %switchVar, align 4
  br label %loopEnd

61:                                               ; preds = %loopEntry.split
  %62 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str.4, i64 0, i64 0))
  br label %.split20

.split20:                                         ; preds = %61
  store i32 2043688635, i32* %switchVar, align 4
  br label %.split20.split

.split20.split:                                   ; preds = %.split20
  br label %loopEnd

63:                                               ; preds = %loopEntry.split
  %.reload9 = load i8*, i8** %.reg2mem8, align 8
  br label %.split21

.split21:                                         ; preds = %63
  call void @free(i8* noundef %.reload9) #10
  %64 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %2, i64 0, i32 0
  %65 = load %struct.AVBufferRef*, %struct.AVBufferRef** %64, align 8, !tbaa !11
  store %struct.AVBufferRef* %65, %struct.AVBufferRef** %.reg2mem13, align 8
  %.reload15 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem13, align 8
  %66 = icmp eq %struct.AVBufferRef* %.reload15, null
  %67 = select i1 %66, i32 714736701, i32 846566245
  store i32 %67, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem16, align 4
  br label %.split21.split

.split21.split:                                   ; preds = %.split21
  br label %loopEnd

68:                                               ; preds = %loopEntry.split
  %.reload14 = load %struct.AVBufferRef*, %struct.AVBufferRef** %.reg2mem13, align 8
  %69 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %.reload14, i64 0, i32 0
  br label %.split22

.split22:                                         ; preds = %68
  %70 = load i8*, i8** %69, align 8, !tbaa !9
  call void @free(i8* noundef %70) #10
  %71 = bitcast %struct.AVPacket* %2 to i8**
  %72 = load i8*, i8** %71, align 8, !tbaa !11
  call void @free(i8* noundef %72) #10
  store i32 714736701, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem16, align 4
  br label %.split22.split

.split22.split:                                   ; preds = %.split22
  br label %loopEnd

73:                                               ; preds = %loopEntry.split
  %.reload17 = load i32, i32* %.reg2mem16, align 4
  br label %.split23

.split23:                                         ; preds = %73
  %.reload5 = load i8*, i8** %.reg2mem4, align 8
  br label %.split23.split

.split23.split:                                   ; preds = %.split23
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %.reload5) #10
  %.reload = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %.reload) #10
  ret i32 %.reload17

loopEnd:                                          ; preds = %.split22.split, %.split21.split, %.split20.split, %.split19.split, %.split18.split, %originalBBpart2, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %first.split.split
  %.reload11alteredBB = load i8*, i8** %.reg2mem8, align 8
  %74 = icmp eq i8* %.reload11alteredBB, null
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %75 = select i1 %74, i32 714736701, i32 -716951590
  store i32 %75, i32* %switchVar, align 4
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  store i32 1, i32* %.reg2mem16, align 4
  br label %originalBB
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !8, i64 8}
!4 = !{!"AVBufferRef", !5, i64 0, !8, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !5, i64 0}
!12 = !{!"AVPacket", !5, i64 0, !8, i64 8, !5, i64 16}
!13 = !{!12, !8, i64 8}
!14 = !{!12, !5, i64 16}

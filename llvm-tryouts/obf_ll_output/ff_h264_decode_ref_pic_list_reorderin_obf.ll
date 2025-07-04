; ModuleID = 'ff_h264_decode_ref_pic_list_reorderin_obf.bc'
source_filename = "ff_h264_decode_ref_pic_list_reorderin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.H264Context = type { i32, i32, i32, i32, %struct.AVCodecContext*, [16 x %struct.H264Picture*], [32 x %struct.H264Picture*], [16 x i32], [2 x [16 x %struct.H264Ref]] }
%struct.AVCodecContext = type { i32 }
%struct.H264Picture = type { i32, i32, i32, i32, %struct.AVFrame* }
%struct.AVFrame = type { [8 x %struct.AVBufferRef*] }
%struct.AVBufferRef = type { i32 }
%struct.H264Ref = type { %struct.H264Picture*, i32, i32 }
%struct.GetBitContext = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.H264SliceContext = type { i32, [2 x i32], %struct.GetBitContext, [2 x [16 x %struct.H264Ref]] }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [36 x i8] c"Missing reference picture, default\0A\00", align 1
@str = private unnamed_addr constant [10 x i8] c"Compiled.\00", align 1
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
@x.21 = common global i32 0
@y.22 = common global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @print_short_term(%struct.H264Context* nocapture %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @print_long_term(%struct.H264Context* nocapture %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @get_bits1(%struct.GetBitContext* nocapture readnone %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @x.3, align 4
  %3 = load i32, i32* @y.4, align 4
  %4 = sub i32 %2, 618037762
  %5 = sub i32 %4, 1
  %6 = add i32 %5, 618037762
  br label %.split

.split:                                           ; preds = %1
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  %12 = xor i1 %10, true
  %13 = xor i1 %11, true
  %14 = xor i1 true, true
  %15 = and i1 %12, true
  %16 = and i1 %10, %14
  %17 = and i1 %13, true
  %18 = and i1 %11, %14
  %19 = or i1 %15, %16
  %20 = or i1 %17, %18
  %21 = xor i1 %19, %20
  br label %.split.split

.split.split:                                     ; preds = %.split
  %22 = or i1 %12, %13
  %23 = xor i1 %22, true
  %24 = or i1 true, %14
  %25 = and i1 %23, %24
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %28 = load i32, i32* @x.3, align 4
  %29 = load i32, i32* @y.4, align 4
  %30 = sub i32 %28, 351467913
  %31 = sub i32 %30, 1
  %32 = add i32 %31, 351467913
  %33 = sub i32 %28, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %34 = mul i32 %28, %32
  %35 = urem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  %37 = icmp slt i32 %29, 10
  %38 = xor i1 %36, true
  %39 = xor i1 %37, true
  %40 = xor i1 false, true
  %41 = and i1 %38, false
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %42 = and i1 %36, %40
  %43 = and i1 %39, false
  %44 = and i1 %37, %40
  %45 = or i1 %41, %42
  %46 = or i1 %43, %44
  %47 = xor i1 %45, %46
  %48 = or i1 %38, %39
  %49 = xor i1 %48, true
  %50 = or i1 false, %40
  %51 = and i1 %49, %50
  %52 = or i1 %47, %51
  %53 = or i1 %36, %37
  br i1 %52, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 0

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @get_ue_golomb(%struct.GetBitContext* nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @get_ue_golomb_31(%struct.GetBitContext* nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @pic_num_extract(%struct.H264Context* nocapture noundef readnone %0, i32 noundef returned %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #1 {
  store i32 3, i32* %2, align 4, !tbaa !3
  br label %.split

.split:                                           ; preds = %3
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @ref_from_h264pic(%struct.H264Ref* nocapture noundef writeonly %0, %struct.H264Picture* noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.H264Ref, %struct.H264Ref* %0, i64 0, i32 0
  store %struct.H264Picture* %1, %struct.H264Picture** %3, align 8, !tbaa !7
  %4 = getelementptr inbounds %struct.H264Picture, %struct.H264Picture* %1, i64 0, i32 0
  br label %.split

.split:                                           ; preds = %2
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.H264Ref, %struct.H264Ref* %0, i64 0, i32 2
  store i32 %5, i32* %6, align 4, !tbaa !12
  %7 = getelementptr inbounds %struct.H264Picture, %struct.H264Picture* %1, i64 0, i32 3
  %8 = load i32, i32* %7, align 4, !tbaa !13
  %9 = getelementptr inbounds %struct.H264Ref, %struct.H264Ref* %0, i64 0, i32 1
  store i32 %8, i32* %9, align 8, !tbaa !14
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @pic_as_field(%struct.H264Ref* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, i32* @x.13, align 4
  %4 = load i32, i32* @y.14, align 4
  %5 = sub i32 %3, -1172045141
  %6 = sub i32 %5, 1
  %7 = add i32 %6, -1172045141
  %8 = sub i32 %3, 1
  br label %.split

.split:                                           ; preds = %2
  %9 = mul i32 %3, %7
  %10 = urem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = icmp slt i32 %4, 10
  %13 = xor i1 %11, true
  %14 = xor i1 %12, true
  %15 = xor i1 true, true
  %16 = and i1 %13, true
  %17 = and i1 %11, %15
  %18 = and i1 %14, true
  %19 = and i1 %12, %15
  %20 = or i1 %16, %17
  %21 = or i1 %18, %19
  br label %.split.split

.split.split:                                     ; preds = %.split
  %22 = xor i1 %20, %21
  %23 = or i1 %13, %14
  %24 = xor i1 %23, true
  %25 = or i1 true, %15
  %26 = and i1 %24, %25
  %27 = or i1 %22, %26
  %28 = or i1 %11, %12
  br i1 %27, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %29 = load i32, i32* @x.13, align 4
  %30 = load i32, i32* @y.14, align 4
  %31 = sub i32 0, 1
  %32 = add i32 %29, %31
  %33 = sub i32 %29, 1
  %34 = mul i32 %29, %32
  %35 = urem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  %37 = icmp slt i32 %30, 10
  %38 = xor i1 %36, true
  %39 = xor i1 %37, true
  %40 = xor i1 false, true
  %41 = and i1 %38, false
  %42 = and i1 %36, %40
  %43 = and i1 %39, false
  %44 = and i1 %37, %40
  %45 = or i1 %41, %42
  %46 = or i1 %43, %44
  %47 = xor i1 %45, %46
  %48 = or i1 %38, %39
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %49 = xor i1 %48, true
  %50 = or i1 false, %40
  %51 = and i1 %49, %50
  %52 = or i1 %47, %51
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %53 = or i1 %36, %37
  br i1 %52, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @av_log(i8* nocapture readnone %0, i32 %1, i8* nocapture noundef readonly %2, ...) local_unnamed_addr #3 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  br label %.split

.split:                                           ; preds = %3
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #9
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %5)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %8 = call i32 @vfprintf(%struct._IO_FILE* noundef %7, i8* noundef %2, %struct.__va_list_tag* noundef nonnull %6) #10
  call void @llvm.va_end(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #9
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @vfprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, %struct.__va_list_tag* noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @av_buffer_get_ref_count(%struct.AVBufferRef* nocapture readnone %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @x.17, align 4
  %3 = load i32, i32* @y.18, align 4
  br label %.split

.split:                                           ; preds = %1
  %4 = sub i32 0, 1
  %5 = add i32 %2, %4
  %6 = sub i32 %2, 1
  %7 = mul i32 %2, %5
  %8 = urem i32 %7, 2
  br label %.split.split

.split.split:                                     ; preds = %.split
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %3, 10
  %11 = and i1 %9, %10
  %12 = xor i1 %9, %10
  %13 = or i1 %11, %12
  %14 = or i1 %9, %10
  br i1 %13, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %15 = load i32, i32* @x.17, align 4
  %16 = load i32, i32* @y.18, align 4
  %17 = sub i32 0, 1
  %18 = add i32 %15, %17
  %19 = sub i32 %15, 1
  %20 = mul i32 %15, %18
  %21 = urem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = icmp slt i32 %16, 10
  %24 = xor i1 %22, true
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %25 = xor i1 %23, true
  %26 = xor i1 false, true
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %27 = and i1 %24, false
  %28 = and i1 %22, %26
  %29 = and i1 %25, false
  %30 = and i1 %23, %26
  %31 = or i1 %27, %28
  %32 = or i1 %29, %30
  %33 = xor i1 %31, %32
  %34 = or i1 %24, %25
  %35 = xor i1 %34, true
  %36 = or i1 false, %26
  %37 = and i1 %35, %36
  %38 = or i1 %33, %37
  %39 = or i1 %22, %23
  br i1 %38, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 1

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ff_h264_decode_ref_pic_list_reordering(%struct.H264Context* nocapture noundef %0, %struct.H264SliceContext* nocapture noundef %1) local_unnamed_addr #3 {
  %3 = load i32, i32* @x.19, align 4
  %4 = load i32, i32* @y.20, align 4
  %5 = add i32 %3, 1585522155
  %6 = sub i32 %5, 1
  br label %.split

.split:                                           ; preds = %2
  %7 = sub i32 %6, 1585522155
  %8 = sub i32 %3, 1
  %9 = mul i32 %3, %7
  %10 = urem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = icmp slt i32 %4, 10
  %13 = xor i1 %11, true
  %14 = xor i1 %12, true
  %15 = xor i1 true, true
  %16 = and i1 %13, true
  %17 = and i1 %11, %15
  br label %.split.split

.split.split:                                     ; preds = %.split
  %18 = and i1 %14, true
  %19 = and i1 %12, %15
  %20 = or i1 %16, %17
  %21 = or i1 %18, %19
  %22 = xor i1 %20, %21
  %23 = or i1 %13, %14
  %24 = xor i1 %23, true
  %25 = or i1 true, %15
  %26 = and i1 %24, %25
  %27 = or i1 %22, %26
  %28 = or i1 %11, %12
  br i1 %27, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %.reload23.reg2mem = alloca i64, align 8
  %.reload21.reg2mem = alloca i64, align 8
  %.reg2mem15 = alloca %struct.H264Ref*, align 8
  %.reg2mem13 = alloca i8*, align 8
  %.reg2mem11 = alloca %struct.H264Picture**, align 8
  %.reg2mem8 = alloca i32*, align 8
  %.reg2mem5 = alloca i32*, align 8
  %.reg2mem3 = alloca i32, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %.reg2mem = alloca i32*, align 8
  %29 = getelementptr inbounds %struct.H264SliceContext, %struct.H264SliceContext* %1, i64 0, i32 0
  store i32* %29, i32** %.reg2mem, align 8
  %.reload = load i32*, i32** %.reg2mem, align 8
  %30 = load i32, i32* %.reload, align 8, !tbaa !16
  store i32 %30, i32* %.reg2mem3, align 4
  %switchVar = alloca i32, align 4
  store i32 1571016748, i32* %switchVar, align 4
  %.reg2mem18 = alloca i64, align 8
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %.reg2mem20 = alloca i64, align 8
  %.reg2mem22 = alloca i64, align 8
  %.reg2mem24 = alloca i64, align 8
  %.reg2mem26 = alloca i32, align 4
  %31 = load i32, i32* @x.19, align 4
  %32 = load i32, i32* @y.20, align 4
  %33 = sub i32 %31, -851001727
  %34 = sub i32 %33, 1
  %35 = add i32 %34, -851001727
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
  %49 = or i1 %46, %47
  %50 = xor i1 %48, %49
  %51 = or i1 %41, %42
  %52 = xor i1 %51, true
  %53 = or i1 false, %43
  %54 = and i1 %52, %53
  %55 = or i1 %50, %54
  %56 = or i1 %39, %40
  br i1 %55, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 1571016748, label %first
    i32 1125910457, label %59
    i32 -779073490, label %103
    i32 -1002292216, label %120
    i32 -435988350, label %125
    i32 1046647346, label %181
    i32 2006329751, label %187
    i32 -353887993, label %188
    i32 -493507945, label %248
    i32 -1166801856, label %279
    i32 979366106, label %281
    i32 -238366059, label %289
    i32 -2051370173, label %349
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload4 = load i32, i32* %.reg2mem3, align 4
  br label %first.split

first.split:                                      ; preds = %first
  %57 = icmp sgt i32 %.reload4, 0
  %58 = select i1 %57, i32 -779073490, i32 1125910457
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  store i32 %58, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem18, align 8
  br label %loopEnd

59:                                               ; preds = %loopEntry.split
  %60 = load i32, i32* @x.19, align 4
  %61 = load i32, i32* @y.20, align 4
  %62 = sub i32 0, 1
  br label %.split63

.split63:                                         ; preds = %59
  %63 = add i32 %60, %62
  %64 = sub i32 %60, 1
  %65 = mul i32 %60, %63
  %66 = urem i32 %65, 2
  %67 = icmp eq i32 %66, 0
  %68 = icmp slt i32 %61, 10
  %69 = and i1 %67, %68
  %70 = xor i1 %67, %68
  %71 = or i1 %69, %70
  %72 = or i1 %67, %68
  br label %.split63.split

.split63.split:                                   ; preds = %.split63
  br i1 %71, label %originalBB32, label %originalBB32alteredBB

originalBB32:                                     ; preds = %.split63.split, %originalBB32alteredBB.split.split
  %73 = getelementptr inbounds %struct.H264SliceContext, %struct.H264SliceContext* %1, i64 0, i32 0
  store i32* %73, i32** %.reg2mem5, align 8
  %.reload6 = load i32*, i32** %.reg2mem5, align 8
  %74 = load i32, i32* %.reload6, align 8, !tbaa !16
  %75 = icmp sgt i32 %74, 0
  %76 = select i1 %75, i32 -1002292216, i32 -2051370173
  store i32 %76, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem20, align 8
  store i32 0, i32* %.reg2mem26, align 4
  %77 = load i32, i32* @x.19, align 4
  %78 = load i32, i32* @y.20, align 4
  %79 = sub i32 %77, -1214387125
  %80 = sub i32 %79, 1
  %81 = add i32 %80, -1214387125
  %82 = sub i32 %77, 1
  %83 = mul i32 %77, %81
  %84 = urem i32 %83, 2
  %85 = icmp eq i32 %84, 0
  %86 = icmp slt i32 %78, 10
  br label %originalBB32.split

originalBB32.split:                               ; preds = %originalBB32
  %87 = xor i1 %85, true
  %88 = xor i1 %86, true
  %89 = xor i1 true, true
  %90 = and i1 %87, true
  %91 = and i1 %85, %89
  %92 = and i1 %88, true
  %93 = and i1 %86, %89
  %94 = or i1 %90, %91
  %95 = or i1 %92, %93
  br label %originalBB32.split.split

originalBB32.split.split:                         ; preds = %originalBB32.split
  %96 = xor i1 %94, %95
  %97 = or i1 %87, %88
  %98 = xor i1 %97, true
  %99 = or i1 true, %89
  %100 = and i1 %98, %99
  %101 = or i1 %96, %100
  %102 = or i1 %85, %86
  br i1 %101, label %originalBBpart234, label %originalBB32alteredBB

originalBBpart234:                                ; preds = %originalBB32.split.split
  br label %loopEnd

103:                                              ; preds = %loopEntry.split
  %.reload19 = load i64, i64* %.reg2mem18, align 8
  %104 = getelementptr inbounds %struct.H264SliceContext, %struct.H264SliceContext* %1, i64 0, i32 3, i64 %.reload19, i64 0
  %105 = bitcast %struct.H264Ref* %104 to i8*
  %106 = getelementptr inbounds %struct.H264Context, %struct.H264Context* %0, i64 0, i32 8, i64 %.reload19, i64 0
  %107 = bitcast %struct.H264Ref* %106 to i8*
  %108 = getelementptr inbounds %struct.H264SliceContext, %struct.H264SliceContext* %1, i64 0, i32 1, i64 %.reload19
  %109 = load i32, i32* %108, align 4, !tbaa !3
  br label %.split64

.split64:                                         ; preds = %103
  %110 = sext i32 %109 to i64
  %111 = shl nsw i64 %110, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %105, i8* nonnull align 8 %107, i64 %111, i1 false)
  %112 = add i64 %.reload19, -8143205044797916173
  %113 = add i64 %112, 1
  %114 = sub i64 %113, -8143205044797916173
  %115 = add nuw nsw i64 %.reload19, 1
  %.reload2 = load i32*, i32** %.reg2mem, align 8
  %116 = load i32, i32* %.reload2, align 8, !tbaa !16
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %114, %117
  %119 = select i1 %118, i32 -779073490, i32 1125910457
  store i32 %119, i32* %switchVar, align 4
  br label %.split64.split

.split64.split:                                   ; preds = %.split64
  store i64 %114, i64* %.reg2mem18, align 8
  br label %loopEnd

120:                                              ; preds = %loopEntry.split
  %.reload21 = load i64, i64* %.reg2mem20, align 8
  store i64 %.reload21, i64* %.reload21.reg2mem, align 8
  %.reload21.reload30 = load i64, i64* %.reload21.reg2mem, align 8
  %121 = getelementptr inbounds %struct.H264SliceContext, %struct.H264SliceContext* %1, i64 0, i32 1, i64 %.reload21.reload30
  store i32* %121, i32** %.reg2mem8, align 8
  %.reload9 = load i32*, i32** %.reg2mem8, align 8
  br label %.split65

.split65:                                         ; preds = %120
  %122 = load i32, i32* %.reload9, align 4, !tbaa !3
  br label %.split65.split

.split65.split:                                   ; preds = %.split65
  %123 = icmp sgt i32 %122, 0
  %124 = select i1 %123, i32 -435988350, i32 -238366059
  store i32 %124, i32* %switchVar, align 4
  br label %loopEnd

125:                                              ; preds = %loopEntry.split
  %126 = load i32, i32* @x.19, align 4
  %127 = load i32, i32* @y.20, align 4
  %128 = add i32 %126, -1933875000
  %129 = sub i32 %128, 1
  %130 = sub i32 %129, -1933875000
  %131 = sub i32 %126, 1
  %132 = mul i32 %126, %130
  %133 = urem i32 %132, 2
  %134 = icmp eq i32 %133, 0
  %135 = icmp slt i32 %127, 10
  %136 = xor i1 %134, true
  br label %.split66

.split66:                                         ; preds = %125
  %137 = xor i1 %135, true
  %138 = xor i1 true, true
  %139 = and i1 %136, true
  %140 = and i1 %134, %138
  %141 = and i1 %137, true
  %142 = and i1 %135, %138
  %143 = or i1 %139, %140
  %144 = or i1 %141, %142
  %145 = xor i1 %143, %144
  %146 = or i1 %136, %137
  br label %.split66.split

.split66.split:                                   ; preds = %.split66
  %147 = xor i1 %146, true
  %148 = or i1 true, %138
  %149 = and i1 %147, %148
  %150 = or i1 %145, %149
  %151 = or i1 %134, %135
  br i1 %150, label %originalBB36, label %originalBB36alteredBB

originalBB36:                                     ; preds = %.split66.split, %originalBB36alteredBB.split.split
  %.reload21.reload28 = load i64, i64* %.reload21.reg2mem, align 8
  %152 = getelementptr inbounds %struct.H264Context, %struct.H264Context* %0, i64 0, i32 8, i64 %.reload21.reload28, i64 0
  %153 = getelementptr inbounds %struct.H264Ref, %struct.H264Ref* %152, i64 0, i32 0
  store %struct.H264Picture** %153, %struct.H264Picture*** %.reg2mem11, align 8
  %154 = bitcast %struct.H264Ref* %152 to i8*
  store i8* %154, i8** %.reg2mem13, align 8
  store i32 1046647346, i32* %switchVar, align 4
  br label %originalBB36.split

originalBB36.split:                               ; preds = %originalBB36
  store i64 0, i64* %.reg2mem22, align 8
  %155 = load i32, i32* @x.19, align 4
  %156 = load i32, i32* @y.20, align 4
  %157 = add i32 %155, -647004402
  %158 = sub i32 %157, 1
  %159 = sub i32 %158, -647004402
  br label %originalBB36.split.split

originalBB36.split.split:                         ; preds = %originalBB36.split
  %160 = sub i32 %155, 1
  %161 = mul i32 %155, %159
  %162 = urem i32 %161, 2
  %163 = icmp eq i32 %162, 0
  %164 = icmp slt i32 %156, 10
  %165 = xor i1 %163, true
  %166 = xor i1 %164, true
  %167 = xor i1 true, true
  %168 = and i1 %165, true
  %169 = and i1 %163, %167
  %170 = and i1 %166, true
  %171 = and i1 %164, %167
  %172 = or i1 %168, %169
  %173 = or i1 %170, %171
  %174 = xor i1 %172, %173
  %175 = or i1 %165, %166
  %176 = xor i1 %175, true
  %177 = or i1 true, %167
  %178 = and i1 %176, %177
  %179 = or i1 %174, %178
  %180 = or i1 %163, %164
  br i1 %179, label %originalBBpart238, label %originalBB36alteredBB

originalBBpart238:                                ; preds = %originalBB36.split.split
  br label %loopEnd

181:                                              ; preds = %loopEntry.split
  %.reload23 = load i64, i64* %.reg2mem22, align 8
  store i64 %.reload23, i64* %.reload23.reg2mem, align 8
  %.reload21.reload29 = load i64, i64* %.reload21.reg2mem, align 8
  %.reload23.reload31 = load i64, i64* %.reload23.reg2mem, align 8
  br label %.split67

.split67:                                         ; preds = %181
  %182 = getelementptr inbounds %struct.H264SliceContext, %struct.H264SliceContext* %1, i64 0, i32 3, i64 %.reload21.reload29, i64 %.reload23.reload31
  store %struct.H264Ref* %182, %struct.H264Ref** %.reg2mem15, align 8
  %.reload16 = load %struct.H264Ref*, %struct.H264Ref** %.reg2mem15, align 8
  %183 = getelementptr inbounds %struct.H264Ref, %struct.H264Ref* %.reload16, i64 0, i32 0
  %184 = load %struct.H264Picture*, %struct.H264Picture** %183, align 8, !tbaa !7
  br label %.split67.split

.split67.split:                                   ; preds = %.split67
  %185 = icmp eq %struct.H264Picture* %184, null
  %186 = select i1 %185, i32 2006329751, i32 979366106
  store i32 %186, i32* %switchVar, align 4
  br label %loopEnd

187:                                              ; preds = %loopEntry.split
  call void (i8*, i32, i8*, ...) @av_log(i8* undef, i32 undef, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  br label %.split68

.split68:                                         ; preds = %187
  store i32 -353887993, i32* %switchVar, align 4
  br label %.split68.split

.split68.split:                                   ; preds = %.split68
  store i64 0, i64* %.reg2mem24, align 8
  br label %loopEnd

188:                                              ; preds = %loopEntry.split
  %189 = load i32, i32* @x.19, align 4
  %190 = load i32, i32* @y.20, align 4
  %191 = add i32 %189, -1717203110
  %192 = sub i32 %191, 1
  %193 = sub i32 %192, -1717203110
  %194 = sub i32 %189, 1
  %195 = mul i32 %189, %193
  %196 = urem i32 %195, 2
  %197 = icmp eq i32 %196, 0
  %198 = icmp slt i32 %190, 10
  %199 = xor i1 %197, true
  %200 = xor i1 %198, true
  %201 = xor i1 false, true
  br label %.split69

.split69:                                         ; preds = %188
  %202 = and i1 %199, false
  %203 = and i1 %197, %201
  %204 = and i1 %200, false
  %205 = and i1 %198, %201
  %206 = or i1 %202, %203
  %207 = or i1 %204, %205
  %208 = xor i1 %206, %207
  %209 = or i1 %199, %200
  br label %.split69.split

.split69.split:                                   ; preds = %.split69
  %210 = xor i1 %209, true
  %211 = or i1 false, %201
  %212 = and i1 %210, %211
  %213 = or i1 %208, %212
  %214 = or i1 %197, %198
  br i1 %213, label %originalBB40, label %originalBB40alteredBB

originalBB40:                                     ; preds = %.split69.split, %originalBB40alteredBB.split.split
  %.reload25 = load i64, i64* %.reg2mem24, align 8
  %215 = getelementptr inbounds %struct.H264Context, %struct.H264Context* %0, i64 0, i32 7, i64 %.reload25
  store i32 -2147483648, i32* %215, align 4, !tbaa !3
  %216 = add i64 %.reload25, -156609611162741066
  br label %originalBB40.split

originalBB40.split:                               ; preds = %originalBB40
  %217 = add i64 %216, 1
  %218 = sub i64 %217, -156609611162741066
  %219 = add nuw nsw i64 %.reload25, 1
  %220 = icmp eq i64 %218, 16
  %221 = select i1 %220, i32 -493507945, i32 -353887993
  store i32 %221, i32* %switchVar, align 4
  store i64 %218, i64* %.reg2mem24, align 8
  %222 = load i32, i32* @x.19, align 4
  %223 = load i32, i32* @y.20, align 4
  %224 = add i32 %222, 1710788246
  %225 = sub i32 %224, 1
  %226 = sub i32 %225, 1710788246
  %227 = sub i32 %222, 1
  %228 = mul i32 %222, %226
  %229 = urem i32 %228, 2
  %230 = icmp eq i32 %229, 0
  %231 = icmp slt i32 %223, 10
  %232 = xor i1 %230, true
  %233 = xor i1 %231, true
  %234 = xor i1 false, true
  %235 = and i1 %232, false
  %236 = and i1 %230, %234
  %237 = and i1 %233, false
  %238 = and i1 %231, %234
  %239 = or i1 %235, %236
  %240 = or i1 %237, %238
  %241 = xor i1 %239, %240
  %242 = or i1 %232, %233
  %243 = xor i1 %242, true
  %244 = or i1 false, %234
  %245 = and i1 %243, %244
  %246 = or i1 %241, %245
  br label %originalBB40.split.split

originalBB40.split.split:                         ; preds = %originalBB40.split
  %247 = or i1 %230, %231
  br i1 %246, label %originalBBpart248, label %originalBB40alteredBB

originalBBpart248:                                ; preds = %originalBB40.split.split
  br label %loopEnd

248:                                              ; preds = %loopEntry.split
  %249 = load i32, i32* @x.19, align 4
  %250 = load i32, i32* @y.20, align 4
  %251 = sub i32 0, 1
  %252 = add i32 %249, %251
  %253 = sub i32 %249, 1
  br label %.split70

.split70:                                         ; preds = %248
  %254 = mul i32 %249, %252
  %255 = urem i32 %254, 2
  %256 = icmp eq i32 %255, 0
  br label %.split70.split

.split70.split:                                   ; preds = %.split70
  %257 = icmp slt i32 %250, 10
  %258 = and i1 %256, %257
  %259 = xor i1 %256, %257
  %260 = or i1 %258, %259
  %261 = or i1 %256, %257
  br i1 %260, label %originalBB50, label %originalBB50alteredBB

originalBB50:                                     ; preds = %.split70.split, %originalBB50alteredBB.split.split
  %.reload12 = load %struct.H264Picture**, %struct.H264Picture*** %.reg2mem11, align 8
  %262 = load %struct.H264Picture*, %struct.H264Picture** %.reload12, align 8, !tbaa !7
  %263 = icmp eq %struct.H264Picture* %262, null
  %264 = select i1 %263, i32 -2051370173, i32 -1166801856
  store i32 %264, i32* %switchVar, align 4
  store i32 -1, i32* %.reg2mem26, align 4
  %265 = load i32, i32* @x.19, align 4
  %266 = load i32, i32* @y.20, align 4
  %267 = add i32 %265, 1996329246
  %268 = sub i32 %267, 1
  %269 = sub i32 %268, 1996329246
  %270 = sub i32 %265, 1
  %271 = mul i32 %265, %269
  %272 = urem i32 %271, 2
  %273 = icmp eq i32 %272, 0
  br label %originalBB50.split

originalBB50.split:                               ; preds = %originalBB50
  %274 = icmp slt i32 %266, 10
  br label %originalBB50.split.split

originalBB50.split.split:                         ; preds = %originalBB50.split
  %275 = and i1 %273, %274
  %276 = xor i1 %273, %274
  %277 = or i1 %275, %276
  %278 = or i1 %273, %274
  br i1 %277, label %originalBBpart252, label %originalBB50alteredBB

originalBBpart252:                                ; preds = %originalBB50.split.split
  br label %loopEnd

279:                                              ; preds = %loopEntry.split
  %.reload17 = load %struct.H264Ref*, %struct.H264Ref** %.reg2mem15, align 8
  br label %.split71

.split71:                                         ; preds = %279
  %280 = bitcast %struct.H264Ref* %.reload17 to i8*
  %.reload14 = load i8*, i8** %.reg2mem13, align 8
  br label %.split71.split

.split71.split:                                   ; preds = %.split71
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %280, i8* noundef nonnull align 8 dereferenceable(16) %.reload14, i64 16, i1 false), !tbaa.struct !19
  store i32 979366106, i32* %switchVar, align 4
  br label %loopEnd

281:                                              ; preds = %loopEntry.split
  %.reload23.reload = load i64, i64* %.reload23.reg2mem, align 8
  %282 = sub i64 0, 1
  %283 = sub i64 %.reload23.reload, %282
  br label %.split72

.split72:                                         ; preds = %281
  %284 = add nuw nsw i64 %.reload23.reload, 1
  %.reload10 = load i32*, i32** %.reg2mem8, align 8
  %285 = load i32, i32* %.reload10, align 4, !tbaa !3
  %286 = sext i32 %285 to i64
  %287 = icmp slt i64 %283, %286
  br label %.split72.split

.split72.split:                                   ; preds = %.split72
  %288 = select i1 %287, i32 1046647346, i32 -238366059
  store i32 %288, i32* %switchVar, align 4
  store i64 %283, i64* %.reg2mem22, align 8
  br label %loopEnd

289:                                              ; preds = %loopEntry.split
  %290 = load i32, i32* @x.19, align 4
  %291 = load i32, i32* @y.20, align 4
  %292 = sub i32 0, 1
  %293 = add i32 %290, %292
  %294 = sub i32 %290, 1
  %295 = mul i32 %290, %293
  %296 = urem i32 %295, 2
  %297 = icmp eq i32 %296, 0
  %298 = icmp slt i32 %291, 10
  %299 = xor i1 %297, true
  %300 = xor i1 %298, true
  %301 = xor i1 false, true
  %302 = and i1 %299, false
  %303 = and i1 %297, %301
  %304 = and i1 %300, false
  %305 = and i1 %298, %301
  %306 = or i1 %302, %303
  %307 = or i1 %304, %305
  %308 = xor i1 %306, %307
  br label %.split73

.split73:                                         ; preds = %289
  %309 = or i1 %299, %300
  %310 = xor i1 %309, true
  %311 = or i1 false, %301
  %312 = and i1 %310, %311
  %313 = or i1 %308, %312
  %314 = or i1 %297, %298
  br label %.split73.split

.split73.split:                                   ; preds = %.split73
  br i1 %313, label %originalBB54, label %originalBB54alteredBB

originalBB54:                                     ; preds = %.split73.split, %originalBB54alteredBB.split.split
  %.reload21.reload = load i64, i64* %.reload21.reg2mem, align 8
  %315 = add i64 %.reload21.reload, 6661846618858647326
  %316 = add i64 %315, 1
  %317 = sub i64 %316, 6661846618858647326
  %318 = add nuw nsw i64 %.reload21.reload, 1
  %.reload7 = load i32*, i32** %.reg2mem5, align 8
  %319 = load i32, i32* %.reload7, align 8, !tbaa !16
  %320 = sext i32 %319 to i64
  %321 = icmp slt i64 %317, %320
  %322 = select i1 %321, i32 -1002292216, i32 -2051370173
  store i32 %322, i32* %switchVar, align 4
  store i64 %317, i64* %.reg2mem20, align 8
  store i32 0, i32* %.reg2mem26, align 4
  %323 = load i32, i32* @x.19, align 4
  %324 = load i32, i32* @y.20, align 4
  %325 = sub i32 %323, 1248028131
  %326 = sub i32 %325, 1
  %327 = add i32 %326, 1248028131
  %328 = sub i32 %323, 1
  %329 = mul i32 %323, %327
  %330 = urem i32 %329, 2
  %331 = icmp eq i32 %330, 0
  %332 = icmp slt i32 %324, 10
  %333 = xor i1 %331, true
  %334 = xor i1 %332, true
  %335 = xor i1 true, true
  br label %originalBB54.split

originalBB54.split:                               ; preds = %originalBB54
  %336 = and i1 %333, true
  %337 = and i1 %331, %335
  %338 = and i1 %334, true
  %339 = and i1 %332, %335
  %340 = or i1 %336, %337
  %341 = or i1 %338, %339
  %342 = xor i1 %340, %341
  %343 = or i1 %333, %334
  %344 = xor i1 %343, true
  br label %originalBB54.split.split

originalBB54.split.split:                         ; preds = %originalBB54.split
  %345 = or i1 true, %335
  %346 = and i1 %344, %345
  %347 = or i1 %342, %346
  %348 = or i1 %331, %332
  br i1 %347, label %originalBBpart261, label %originalBB54alteredBB

originalBBpart261:                                ; preds = %originalBB54.split.split
  br label %loopEnd

349:                                              ; preds = %loopEntry.split
  %.reload27 = load i32, i32* %.reg2mem26, align 4
  br label %.split74

.split74:                                         ; preds = %349
  ret i32 %.reload27

loopEnd:                                          ; preds = %originalBBpart261, %.split72.split, %.split71.split, %originalBBpart252, %originalBBpart248, %.split68.split, %.split67.split, %originalBBpart238, %.split65.split, %.split64.split, %originalBBpart234, %first.split.split, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %.reload23.reg2memalteredBB = alloca i64, align 8
  %.reload21.reg2memalteredBB = alloca i64, align 8
  %.reg2mem15alteredBB = alloca %struct.H264Ref*, align 8
  %.reg2mem13alteredBB = alloca i8*, align 8
  %.reg2mem11alteredBB = alloca %struct.H264Picture**, align 8
  %.reg2mem8alteredBB = alloca i32*, align 8
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %.reg2mem5alteredBB = alloca i32*, align 8
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  %.reg2mem3alteredBB = alloca i32, align 4
  %.reg2memalteredBB = alloca i32*, align 8
  %350 = getelementptr inbounds %struct.H264SliceContext, %struct.H264SliceContext* %1, i64 0, i32 0
  store i32* %350, i32** %.reg2memalteredBB, align 8
  %.reloadalteredBB = load i32*, i32** %.reg2memalteredBB, align 8
  %351 = load i32, i32* %.reloadalteredBB, align 8, !tbaa !16
  store i32 %351, i32* %.reg2mem3alteredBB, align 4
  %switchVaralteredBB = alloca i32, align 4
  store i32 1571016748, i32* %switchVaralteredBB, align 4
  %.reg2mem18alteredBB = alloca i64, align 8
  %.reg2mem20alteredBB = alloca i64, align 8
  %.reg2mem22alteredBB = alloca i64, align 8
  %.reg2mem24alteredBB = alloca i64, align 8
  %.reg2mem26alteredBB = alloca i32, align 4
  br label %originalBB

originalBB32alteredBB:                            ; preds = %originalBB32.split.split, %.split63.split
  %352 = getelementptr inbounds %struct.H264SliceContext, %struct.H264SliceContext* %1, i64 0, i32 0
  store i32* %352, i32** %.reg2mem5, align 8
  br label %originalBB32alteredBB.split

originalBB32alteredBB.split:                      ; preds = %originalBB32alteredBB
  %.reload6alteredBB = load i32*, i32** %.reg2mem5, align 8
  %353 = load i32, i32* %.reload6alteredBB, align 8, !tbaa !16
  %354 = icmp sgt i32 %353, 0
  %355 = select i1 %354, i32 -1002292216, i32 -2051370173
  store i32 %355, i32* %switchVar, align 4
  br label %originalBB32alteredBB.split.split

originalBB32alteredBB.split.split:                ; preds = %originalBB32alteredBB.split
  store i64 0, i64* %.reg2mem20, align 8
  store i32 0, i32* %.reg2mem26, align 4
  br label %originalBB32

originalBB36alteredBB:                            ; preds = %originalBB36.split.split, %.split66.split
  %.reload21.reload28alteredBB = load i64, i64* %.reload21.reg2mem, align 8
  %356 = getelementptr inbounds %struct.H264Context, %struct.H264Context* %0, i64 0, i32 8, i64 %.reload21.reload28alteredBB, i64 0
  %357 = getelementptr inbounds %struct.H264Ref, %struct.H264Ref* %356, i64 0, i32 0
  store %struct.H264Picture** %357, %struct.H264Picture*** %.reg2mem11, align 8
  br label %originalBB36alteredBB.split

originalBB36alteredBB.split:                      ; preds = %originalBB36alteredBB
  %358 = bitcast %struct.H264Ref* %356 to i8*
  br label %originalBB36alteredBB.split.split

originalBB36alteredBB.split.split:                ; preds = %originalBB36alteredBB.split
  store i8* %358, i8** %.reg2mem13, align 8
  store i32 1046647346, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem22, align 8
  br label %originalBB36

originalBB40alteredBB:                            ; preds = %originalBB40.split.split, %.split69.split
  %.reload25alteredBB = load i64, i64* %.reg2mem24, align 8
  %359 = getelementptr inbounds %struct.H264Context, %struct.H264Context* %0, i64 0, i32 7, i64 %.reload25alteredBB
  store i32 -2147483648, i32* %359, align 4, !tbaa !3
  %_ = shl i64 %.reload25alteredBB, 1
  %360 = sub i64 0, %.reload25alteredBB
  %361 = add i64 0, %360
  %_41 = sub i64 0, %.reload25alteredBB
  %362 = sub i64 %361, 8427713712984189363
  %363 = add i64 %362, 1
  %364 = add i64 %363, 8427713712984189363
  %gen = add i64 %361, 1
  %_42 = shl i64 %.reload25alteredBB, 1
  br label %originalBB40alteredBB.split

originalBB40alteredBB.split:                      ; preds = %originalBB40alteredBB
  %365 = sub i64 %.reload25alteredBB, 2805216159165982233
  %366 = sub i64 %365, 1
  %367 = add i64 %366, 2805216159165982233
  %_43 = sub i64 %.reload25alteredBB, 1
  %gen44 = mul i64 %367, 1
  %368 = sub i64 0, %.reload25alteredBB
  %369 = add i64 0, %368
  %_45 = sub i64 0, %.reload25alteredBB
  %370 = sub i64 0, %369
  %371 = sub i64 0, 1
  %372 = add i64 %370, %371
  %373 = sub i64 0, %372
  br label %originalBB40alteredBB.split.split

originalBB40alteredBB.split.split:                ; preds = %originalBB40alteredBB.split
  %gen46 = add i64 %369, 1
  %374 = sub i64 %.reload25alteredBB, -4947615310796231498
  %375 = add i64 %374, 1
  %376 = add i64 %375, -4947615310796231498
  %377 = add nuw nsw i64 %.reload25alteredBB, 1
  %378 = icmp eq i64 %376, 16
  %379 = select i1 %378, i32 -493507945, i32 -353887993
  store i32 %379, i32* %switchVar, align 4
  store i64 %376, i64* %.reg2mem24, align 8
  br label %originalBB40

originalBB50alteredBB:                            ; preds = %originalBB50.split.split, %.split70.split
  %.reload12alteredBB = load %struct.H264Picture**, %struct.H264Picture*** %.reg2mem11, align 8
  %380 = load %struct.H264Picture*, %struct.H264Picture** %.reload12alteredBB, align 8, !tbaa !7
  %381 = icmp eq %struct.H264Picture* %380, null
  br label %originalBB50alteredBB.split

originalBB50alteredBB.split:                      ; preds = %originalBB50alteredBB
  %382 = select i1 %381, i32 -2051370173, i32 -1166801856
  br label %originalBB50alteredBB.split.split

originalBB50alteredBB.split.split:                ; preds = %originalBB50alteredBB.split
  store i32 %382, i32* %switchVar, align 4
  store i32 -1, i32* %.reg2mem26, align 4
  br label %originalBB50

originalBB54alteredBB:                            ; preds = %originalBB54.split.split, %.split73.split
  %.reload21.reloadalteredBB = load i64, i64* %.reload21.reg2mem, align 8
  %383 = sub i64 0, 1
  %384 = add i64 %.reload21.reloadalteredBB, %383
  %_55 = sub i64 %.reload21.reloadalteredBB, 1
  %gen56 = mul i64 %384, 1
  %_57 = shl i64 %.reload21.reloadalteredBB, 1
  %385 = sub i64 %.reload21.reloadalteredBB, 6784814070438531888
  %386 = sub i64 %385, 1
  %387 = add i64 %386, 6784814070438531888
  %_58 = sub i64 %.reload21.reloadalteredBB, 1
  %gen59 = mul i64 %387, 1
  br label %originalBB54alteredBB.split

originalBB54alteredBB.split:                      ; preds = %originalBB54alteredBB
  %388 = sub i64 0, 1
  %389 = sub i64 %.reload21.reloadalteredBB, %388
  %390 = add nuw nsw i64 %.reload21.reloadalteredBB, 1
  %.reload7alteredBB = load i32*, i32** %.reg2mem5, align 8
  %391 = load i32, i32* %.reload7alteredBB, align 8, !tbaa !16
  %392 = sext i32 %391 to i64
  %393 = icmp slt i64 %389, %392
  %394 = select i1 %393, i32 -1002292216, i32 -2051370173
  store i32 %394, i32* %switchVar, align 4
  store i64 %389, i64* %.reg2mem20, align 8
  br label %originalBB54alteredBB.split.split

originalBB54alteredBB.split.split:                ; preds = %originalBB54alteredBB.split
  store i32 0, i32* %.reg2mem26, align 4
  br label %originalBB54
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %1 = load i32, i32* @x.21, align 4
  %2 = load i32, i32* @y.22, align 4
  %3 = add i32 %1, -1170711882
  %4 = sub i32 %3, 1
  %5 = sub i32 %4, -1170711882
  %6 = sub i32 %1, 1
  %7 = mul i32 %1, %5
  br label %.split

.split:                                           ; preds = %0
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %2, 10
  %11 = and i1 %9, %10
  br label %.split.split

.split.split:                                     ; preds = %.split
  %12 = xor i1 %9, %10
  %13 = or i1 %11, %12
  %14 = or i1 %9, %10
  br i1 %13, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split
  %15 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str, i64 0, i64 0))
  %16 = load i32, i32* @x.21, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %17 = load i32, i32* @y.22, align 4
  %18 = sub i32 0, 1
  %19 = add i32 %16, %18
  %20 = sub i32 %16, 1
  %21 = mul i32 %16, %19
  %22 = urem i32 %21, 2
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %23 = icmp eq i32 %22, 0
  %24 = icmp slt i32 %17, 10
  %25 = and i1 %23, %24
  %26 = xor i1 %23, %24
  %27 = or i1 %25, %26
  %28 = or i1 %23, %24
  br i1 %27, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 0

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %29 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str, i64 0, i64 0))
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"H264Ref", !9, i64 0, !4, i64 8, !4, i64 12}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !4, i64 0}
!11 = !{!"H264Picture", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !9, i64 16}
!12 = !{!8, !4, i64 12}
!13 = !{!11, !4, i64 12}
!14 = !{!8, !4, i64 8}
!15 = !{!9, !9, i64 0}
!16 = !{!17, !4, i64 0}
!17 = !{!"H264SliceContext", !4, i64 0, !5, i64 4, !18, i64 12, !5, i64 16}
!18 = !{!"GetBitContext", !4, i64 0}
!19 = !{i64 0, i64 8, !15, i64 8, i64 4, !3, i64 12, i64 4, !3}

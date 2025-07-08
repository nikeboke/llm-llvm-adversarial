; ModuleID = 'fixed_compilable_dvvideo_decode_frame_obf.bc'
source_filename = "fixed_compilable_dvvideo_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.AVCodecContext = type { i32, %struct.AVRational, i32 (i8*, void ()*, i32, i8*, i32, i32)*, i8*, i8* }
%struct.AVRational = type { i32, i32 }
%struct.DVprofile = type { i32, i32, i32, %struct.AVRational, [2 x i32], i32 }
%struct.DVVideoContext = type { %struct.DVprofile*, i8*, i8*, i8* }
%struct.AVPacket = type { i8*, i32 }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported DV profile\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"decode_frame returned %d, got_frame=%d\0A\00", align 1
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
define dso_local %struct.DVprofile* @avpriv_dv_frame_profile2(%struct.AVCodecContext* nocapture readnone %0, %struct.DVprofile* noundef readnone returned %1, i8* nocapture readnone %2, i32 %3) local_unnamed_addr #0 {
  ret %struct.DVprofile* %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ff_dv_init_dynamic_tables(%struct.DVVideoContext* nocapture readnone %0, %struct.DVprofile* nocapture readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @av_log(%struct.AVCodecContext* nocapture readnone %0, i32 %1, i8* nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  br label %.split

.split:                                           ; preds = %3
  %5 = call i32 @fputs(i8* %2, %struct._IO_FILE* %4) #4
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ff_set_dimensions(%struct.AVCodecContext* nocapture readnone %0, i32 %1, i32 %2) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @ff_set_sar(%struct.AVCodecContext* nocapture %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i32, i32* @x.7, align 4
  %4 = load i32, i32* @y.8, align 4
  %5 = sub i32 0, 1
  %6 = add i32 %3, %5
  %7 = sub i32 %3, 1
  %8 = mul i32 %3, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %4, 10
  br label %.split

.split:                                           ; preds = %2
  %12 = and i1 %10, %11
  %13 = xor i1 %10, %11
  %14 = or i1 %12, %13
  br label %.split.split

.split.split:                                     ; preds = %.split
  %15 = or i1 %10, %11
  br i1 %14, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %16 = load i32, i32* @x.7, align 4
  %17 = load i32, i32* @y.8, align 4
  %18 = sub i32 0, 1
  %19 = add i32 %16, %18
  %20 = sub i32 %16, 1
  %21 = mul i32 %16, %19
  %22 = urem i32 %21, 2
  %23 = icmp eq i32 %22, 0
  %24 = icmp slt i32 %17, 10
  %25 = xor i1 %23, true
  %26 = xor i1 %24, true
  %27 = xor i1 false, true
  %28 = and i1 %25, false
  %29 = and i1 %23, %27
  %30 = and i1 %26, false
  %31 = and i1 %24, %27
  %32 = or i1 %28, %29
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %33 = or i1 %30, %31
  %34 = xor i1 %32, %33
  %35 = or i1 %25, %26
  %36 = xor i1 %35, true
  %37 = or i1 false, %27
  %38 = and i1 %36, %37
  %39 = or i1 %34, %38
  %40 = or i1 %23, %24
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  br i1 %39, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ff_get_buffer(%struct.AVCodecContext* nocapture readnone %0, i8* nocapture readnone %1, i32 %2) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @dv_decode_video_segment() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @dv_work_pool_size(%struct.DVprofile* nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @emms_c() local_unnamed_addr #0 {
  %1 = load i32, i32* @x.15, align 4
  %2 = load i32, i32* @y.16, align 4
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

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %14 = load i32, i32* @x.15, align 4
  %15 = load i32, i32* @y.16, align 4
  %16 = add i32 %14, 493337982
  %17 = sub i32 %16, 1
  %18 = sub i32 %17, 493337982
  %19 = sub i32 %14, 1
  %20 = mul i32 %14, %18
  %21 = urem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = icmp slt i32 %15, 10
  %24 = and i1 %22, %23
  %25 = xor i1 %22, %23
  %26 = or i1 %24, %25
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %27 = or i1 %22, %23
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  br i1 %26, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @work_function(i8* nocapture noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @decode_frame(%struct.AVCodecContext* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i32* nocapture noundef writeonly %2, %struct.AVPacket* nocapture noundef readonly %3) local_unnamed_addr #1 {
  %.reg2mem = alloca %struct.DVprofile*, align 8
  %5 = getelementptr inbounds %struct.AVCodecContext, %struct.AVCodecContext* %0, i64 0, i32 3
  %6 = bitcast i8** %5 to %struct.DVVideoContext**
  %7 = load %struct.DVVideoContext*, %struct.DVVideoContext** %6, align 8, !tbaa !7
  %8 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %3, i64 0, i32 0
  br label %.split

.split:                                           ; preds = %4
  %9 = load i8*, i8** %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.DVVideoContext, %struct.DVVideoContext* %7, i64 0, i32 2
  store i8* %9, i8** %10, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.DVVideoContext, %struct.DVVideoContext* %7, i64 0, i32 0
  %12 = load %struct.DVprofile*, %struct.DVprofile** %11, align 8, !tbaa !15
  store %struct.DVprofile* %12, %struct.DVprofile** %.reg2mem, align 8
  %switchVar = alloca i32, align 4
  store i32 1235218608, i32* %switchVar, align 4
  %.reg2mem2 = alloca i32, align 4
  br label %.split.split

.split.split:                                     ; preds = %.split
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %13 = load i32, i32* @x.19, align 4
  %14 = load i32, i32* @y.20, align 4
  %15 = add i32 %13, 1840921678
  %16 = sub i32 %15, 1
  %17 = sub i32 %16, 1840921678
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  %18 = sub i32 %13, 1
  %19 = mul i32 %13, %17
  %20 = urem i32 %19, 2
  %21 = icmp eq i32 %20, 0
  %22 = icmp slt i32 %14, 10
  %23 = and i1 %21, %22
  br label %loopEntry.split.split

loopEntry.split.split:                            ; preds = %loopEntry.split
  %24 = xor i1 %21, %22
  %25 = or i1 %23, %24
  %26 = or i1 %21, %22
  br i1 %25, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %loopEntry.split.split, %originalBBalteredBB.split
  %switchVar1 = load i32, i32* %switchVar, align 4
  %27 = load i32, i32* @x.19, align 4
  %28 = load i32, i32* @y.20, align 4
  %29 = sub i32 0, 1
  %30 = add i32 %27, %29
  %31 = sub i32 %27, 1
  %32 = mul i32 %27, %30
  %33 = urem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  %35 = icmp slt i32 %28, 10
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %36 = and i1 %34, %35
  %37 = xor i1 %34, %35
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %38 = or i1 %36, %37
  %39 = or i1 %34, %35
  br i1 %38, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  switch i32 %switchVar1, label %switchDefault [
    i32 1235218608, label %first
    i32 -1174584421, label %42
    i32 610618776, label %84
    i32 -1225401699, label %94
  ]

switchDefault:                                    ; preds = %originalBBpart2
  br label %loopEnd

first:                                            ; preds = %originalBBpart2
  %.reload = load %struct.DVprofile*, %struct.DVprofile** %.reg2mem, align 8
  br label %first.split

first.split:                                      ; preds = %first
  %40 = icmp eq %struct.DVprofile* %.reload, null
  %41 = select i1 %40, i32 -1174584421, i32 610618776
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  store i32 %41, i32* %switchVar, align 4
  br label %loopEnd

42:                                               ; preds = %originalBBpart2
  %43 = load i32, i32* @x.19, align 4
  %44 = load i32, i32* @y.20, align 4
  %45 = sub i32 0, 1
  %46 = add i32 %43, %45
  %47 = sub i32 %43, 1
  %48 = mul i32 %43, %46
  %49 = urem i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br label %.split12

.split12:                                         ; preds = %42
  %51 = icmp slt i32 %44, 10
  br label %.split12.split

.split12.split:                                   ; preds = %.split12
  %52 = xor i1 %50, true
  %53 = xor i1 %51, true
  %54 = xor i1 false, true
  %55 = and i1 %52, false
  %56 = and i1 %50, %54
  %57 = and i1 %53, false
  %58 = and i1 %51, %54
  %59 = or i1 %55, %56
  %60 = or i1 %57, %58
  %61 = xor i1 %59, %60
  %62 = or i1 %52, %53
  %63 = xor i1 %62, true
  %64 = or i1 false, %54
  %65 = and i1 %63, %64
  %66 = or i1 %61, %65
  %67 = or i1 %50, %51
  br i1 %66, label %originalBB4, label %originalBB4alteredBB

originalBB4:                                      ; preds = %.split12.split, %originalBB4alteredBB.split.split
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %68) #4
  br label %originalBB4.split

originalBB4.split:                                ; preds = %originalBB4
  store i32 -1225401699, i32* %switchVar, align 4
  store i32 -1, i32* %.reg2mem2, align 4
  %70 = load i32, i32* @x.19, align 4
  %71 = load i32, i32* @y.20, align 4
  br label %originalBB4.split.split

originalBB4.split.split:                          ; preds = %originalBB4.split
  %72 = add i32 %70, 152213113
  %73 = sub i32 %72, 1
  %74 = sub i32 %73, 152213113
  %75 = sub i32 %70, 1
  %76 = mul i32 %70, %74
  %77 = urem i32 %76, 2
  %78 = icmp eq i32 %77, 0
  %79 = icmp slt i32 %71, 10
  %80 = and i1 %78, %79
  %81 = xor i1 %78, %79
  %82 = or i1 %80, %81
  %83 = or i1 %78, %79
  br i1 %82, label %originalBBpart26, label %originalBB4alteredBB

originalBBpart26:                                 ; preds = %originalBB4.split.split
  br label %loopEnd

84:                                               ; preds = %originalBBpart2
  %85 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %3, i64 0, i32 1
  %86 = bitcast i8* %1 to i32*
  store i32 1, i32* %86, align 4, !tbaa !16
  %87 = getelementptr inbounds i8, i8* %1, i64 4
  %88 = bitcast i8* %87 to i32*
  store i32 1, i32* %88, align 4, !tbaa !18
  %89 = getelementptr inbounds i8, i8* %1, i64 8
  %90 = bitcast i8* %89 to i32*
  store i32 0, i32* %90, align 4, !tbaa !19
  %91 = getelementptr inbounds i8, i8* %1, i64 12
  br label %.split13

.split13:                                         ; preds = %84
  %92 = bitcast i8* %91 to i32*
  store i32 0, i32* %92, align 4, !tbaa !20
  br label %.split13.split

.split13.split:                                   ; preds = %.split13
  store i32 1, i32* %2, align 4, !tbaa !21
  %93 = load i32, i32* %85, align 8, !tbaa !22
  store i32 -1225401699, i32* %switchVar, align 4
  store i32 %93, i32* %.reg2mem2, align 4
  br label %loopEnd

94:                                               ; preds = %originalBBpart2
  %95 = load i32, i32* @x.19, align 4
  %96 = load i32, i32* @y.20, align 4
  %97 = add i32 %95, 906456716
  br label %.split14

.split14:                                         ; preds = %94
  %98 = sub i32 %97, 1
  %99 = sub i32 %98, 906456716
  %100 = sub i32 %95, 1
  %101 = mul i32 %95, %99
  %102 = urem i32 %101, 2
  %103 = icmp eq i32 %102, 0
  %104 = icmp slt i32 %96, 10
  %105 = and i1 %103, %104
  %106 = xor i1 %103, %104
  %107 = or i1 %105, %106
  %108 = or i1 %103, %104
  br label %.split14.split

.split14.split:                                   ; preds = %.split14
  br i1 %107, label %originalBB8, label %originalBB8alteredBB

originalBB8:                                      ; preds = %.split14.split, %originalBB8alteredBB.split
  %.reload3 = load i32, i32* %.reg2mem2, align 4
  %109 = load i32, i32* @x.19, align 4
  %110 = load i32, i32* @y.20, align 4
  %111 = sub i32 %109, 291323588
  %112 = sub i32 %111, 1
  %113 = add i32 %112, 291323588
  %114 = sub i32 %109, 1
  %115 = mul i32 %109, %113
  %116 = urem i32 %115, 2
  %117 = icmp eq i32 %116, 0
  %118 = icmp slt i32 %110, 10
  br label %originalBB8.split

originalBB8.split:                                ; preds = %originalBB8
  %119 = xor i1 %117, true
  br label %originalBB8.split.split

originalBB8.split.split:                          ; preds = %originalBB8.split
  %120 = xor i1 %118, true
  %121 = xor i1 false, true
  %122 = and i1 %119, false
  %123 = and i1 %117, %121
  %124 = and i1 %120, false
  %125 = and i1 %118, %121
  %126 = or i1 %122, %123
  %127 = or i1 %124, %125
  %128 = xor i1 %126, %127
  %129 = or i1 %119, %120
  %130 = xor i1 %129, true
  %131 = or i1 false, %121
  %132 = and i1 %130, %131
  %133 = or i1 %128, %132
  %134 = or i1 %117, %118
  br i1 %133, label %originalBBpart210, label %originalBB8alteredBB

originalBBpart210:                                ; preds = %originalBB8.split.split
  ret i32 %.reload3

loopEnd:                                          ; preds = %.split13.split, %originalBBpart26, %first.split.split, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %loopEntry.split.split
  %switchVar1alteredBB = load i32, i32* %switchVar, align 4
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB

originalBB4alteredBB:                             ; preds = %originalBB4.split.split, %.split12.split
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %136 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %135) #4
  store i32 -1225401699, i32* %switchVar, align 4
  br label %originalBB4alteredBB.split

originalBB4alteredBB.split:                       ; preds = %originalBB4alteredBB
  store i32 -1, i32* %.reg2mem2, align 4
  br label %originalBB4alteredBB.split.split

originalBB4alteredBB.split.split:                 ; preds = %originalBB4alteredBB.split
  br label %originalBB4

originalBB8alteredBB:                             ; preds = %originalBB8.split.split, %.split14.split
  %.reload3alteredBB = load i32, i32* %.reg2mem2, align 4
  br label %originalBB8alteredBB.split

originalBB8alteredBB.split:                       ; preds = %originalBB8alteredBB
  br label %originalBB8
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  br label %.split

.split:                                           ; preds = %0
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %1) #5
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 noundef -1, i32 noundef 0)
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { cold }
attributes #5 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 24}
!8 = !{!"", !9, i64 0, !10, i64 4, !4, i64 16, !4, i64 24, !4, i64 32}
!9 = !{!"int", !5, i64 0}
!10 = !{!"AVRational", !9, i64 0, !9, i64 4}
!11 = !{!12, !4, i64 0}
!12 = !{!"", !4, i64 0, !9, i64 8}
!13 = !{!14, !4, i64 16}
!14 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24}
!15 = !{!14, !4, i64 0}
!16 = !{!17, !9, i64 0}
!17 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!18 = !{!17, !9, i64 4}
!19 = !{!17, !9, i64 8}
!20 = !{!17, !9, i64 12}
!21 = !{!9, !9, i64 0}
!22 = !{!12, !9, i64 8}

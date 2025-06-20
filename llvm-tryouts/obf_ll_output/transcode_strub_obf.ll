; ModuleID = 'transcode_strub_obf.bc'
source_filename = "transcode_strub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputFile = type { i32, i32, i8*, i32 }
%struct.InputStream = type { %struct.AVStream*, i8*, [2 x i8*], i32, i32, i32, i32 }
%struct.AVStream = type { %struct.AVCodecContext*, %struct.AVRational, i32, i32, %struct.AVRational }
%struct.AVCodecContext = type { i32, i32, i32, i32, i32, i32, i8*, i32, %struct.AVRational, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.AVRational, i32, i32, i32, i8*, i8* }
%struct.AVRational = type { i32, i32 }
%struct.OutputStream = type { %struct.AVStream*, %struct.AVCodec*, i32, i32, i32, i32, i32, i32, %struct.AVRational, float, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.AVCodec = type { i8*, %struct.AVRational* }
%struct.FilterGraph = type { i8*, i32 }
%struct.AVFormatContext = type { i32, i8*, %struct.AVOutputFormat*, void ()*, i32, %struct.AVProgram** }
%struct.AVOutputFormat = type { i8*, i32, i8* }
%struct.AVProgram = type { i32, i32, i32* }

@nb_input_files = dso_local local_unnamed_addr global i32 1, align 4
@nb_output_files = dso_local local_unnamed_addr global i32 1, align 4
@nb_filtergraphs = dso_local local_unnamed_addr global i32 1, align 4
@nb_output_streams = dso_local local_unnamed_addr global i32 1, align 4
@nb_input_streams = dso_local local_unnamed_addr global i32 1, align 4
@audio_volume = dso_local local_unnamed_addr global i32 256, align 4
@copy_tb = dso_local local_unnamed_addr global i32 0, align 4
@video_sync_method = dso_local local_unnamed_addr global i32 2, align 4
@pass_logfilename_prefix = dso_local local_unnamed_addr global i8* null, align 8
@input_files = dso_local local_unnamed_addr global [1 x %struct.InputFile*] zeroinitializer, align 8
@input_streams = dso_local local_unnamed_addr global [1 x %struct.InputStream*] zeroinitializer, align 8
@output_streams = dso_local local_unnamed_addr global [1 x %struct.OutputStream*] zeroinitializer, align 8
@filtergraphs = dso_local local_unnamed_addr global [1 x %struct.FilterGraph*] zeroinitializer, align 8
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
@x.23 = common global i32 0
@y.24 = common global i32 0
@x.25 = common global i32 0
@y.26 = common global i32 0
@x.27 = common global i32 0
@y.28 = common global i32 0
@x.29 = common global i32 0
@y.30 = common global i32 0
@x.31 = common global i32 0
@y.32 = common global i32 0
@x.33 = common global i32 0
@y.34 = common global i32 0
@x.35 = common global i32 0
@y.36 = common global i32 0
@x.37 = common global i32 0
@y.38 = common global i32 0
@x.39 = common global i32 0
@y.40 = common global i32 0
@x.41 = common global i32 0
@y.42 = common global i32 0
@x.43 = common global i32 0
@y.44 = common global i32 0
@x.45 = common global i32 0
@y.46 = common global i32 0
@x.47 = common global i32 0
@y.48 = common global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias %struct.OutputStream* @get_input_stream(%struct.OutputStream* nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @x, align 4
  br label %.split

.split:                                           ; preds = %1
  %3 = load i32, i32* @y, align 4
  %4 = add i32 %2, -1283063116
  %5 = sub i32 %4, 1
  %6 = sub i32 %5, -1283063116
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
  br label %.split.split

.split.split:                                     ; preds = %.split
  %23 = xor i1 %22, true
  %24 = or i1 false, %14
  %25 = and i1 %23, %24
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %28 = load i32, i32* @x, align 4
  %29 = load i32, i32* @y, align 4
  %30 = sub i32 0, 1
  %31 = add i32 %28, %30
  %32 = sub i32 %28, 1
  %33 = mul i32 %28, %31
  %34 = urem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = icmp slt i32 %29, 10
  %37 = xor i1 %35, true
  %38 = xor i1 %36, true
  %39 = xor i1 true, true
  %40 = and i1 %37, true
  %41 = and i1 %35, %39
  %42 = and i1 %38, true
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %43 = and i1 %36, %39
  %44 = or i1 %40, %41
  %45 = or i1 %42, %43
  %46 = xor i1 %44, %45
  %47 = or i1 %37, %38
  %48 = xor i1 %47, true
  %49 = or i1 true, %39
  %50 = and i1 %48, %49
  %51 = or i1 %46, %50
  %52 = or i1 %35, %36
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  br i1 %51, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret %struct.OutputStream* null

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias %struct.InputStream* @get_input_stream_by_index(i32 noundef %0) local_unnamed_addr #0 {
  ret %struct.InputStream* null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias %struct.OutputStream* @get_output_stream_by_index(i32 noundef %0) local_unnamed_addr #0 {
  ret %struct.OutputStream* null
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias i8* @av_mallocz(i64 noundef %0) local_unnamed_addr #1 {
  %2 = load i32, i32* @x.5, align 4
  %3 = load i32, i32* @y.6, align 4
  %4 = sub i32 0, 1
  %5 = add i32 %2, %4
  %6 = sub i32 %2, 1
  %7 = mul i32 %2, %5
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %3, 10
  %11 = xor i1 %9, true
  %12 = xor i1 %10, true
  %13 = xor i1 false, true
  %14 = and i1 %11, false
  %15 = and i1 %9, %13
  %16 = and i1 %12, false
  %17 = and i1 %10, %13
  %18 = or i1 %14, %15
  %19 = or i1 %16, %17
  %20 = xor i1 %18, %19
  %21 = or i1 %11, %12
  br label %.split

.split:                                           ; preds = %1
  %22 = xor i1 %21, true
  %23 = or i1 false, %13
  %24 = and i1 %22, %23
  %25 = or i1 %20, %24
  br label %.split.split

.split.split:                                     ; preds = %.split
  %26 = or i1 %9, %10
  br i1 %25, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split
  %27 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %0) #5
  %28 = load i32, i32* @x.5, align 4
  %29 = load i32, i32* @y.6, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %30 = sub i32 %28, 1239333565
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %31 = sub i32 %30, 1
  %32 = add i32 %31, 1239333565
  %33 = sub i32 %28, 1
  %34 = mul i32 %28, %32
  %35 = urem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  %37 = icmp slt i32 %29, 10
  %38 = and i1 %36, %37
  %39 = xor i1 %36, %37
  %40 = or i1 %38, %39
  %41 = or i1 %36, %37
  br i1 %40, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i8* %27

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %42 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %0) #5
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @av_log(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, ...) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @av_dump_format(%struct.AVFormatContext* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @av_dict_set(i8** nocapture noundef %0, i8* nocapture noundef %1, i8* nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @exit_program(i32 noundef %0) local_unnamed_addr #3 {
  call void @exit(i32 noundef %0) #6
  br label %.split

.split:                                           ; preds = %1
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @assert_codec_experimental(%struct.AVCodecContext* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @assert_avoptions(i8* nocapture noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @av_get_channel_layout_nb_channels(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @x.19, align 4
  %3 = load i32, i32* @y.20, align 4
  %4 = sub i32 0, 1
  %5 = add i32 %2, %4
  %6 = sub i32 %2, 1
  %7 = mul i32 %2, %5
  br label %.split

.split:                                           ; preds = %1
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %3, 10
  %11 = xor i1 %9, true
  %12 = xor i1 %10, true
  %13 = xor i1 false, true
  %14 = and i1 %11, false
  %15 = and i1 %9, %13
  %16 = and i1 %12, false
  %17 = and i1 %10, %13
  br label %.split.split

.split.split:                                     ; preds = %.split
  %18 = or i1 %14, %15
  %19 = or i1 %16, %17
  %20 = xor i1 %18, %19
  %21 = or i1 %11, %12
  %22 = xor i1 %21, true
  %23 = or i1 false, %13
  %24 = and i1 %22, %23
  %25 = or i1 %20, %24
  %26 = or i1 %9, %10
  br i1 %25, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %27 = load i32, i32* @x.19, align 4
  %28 = load i32, i32* @y.20, align 4
  %29 = sub i32 %27, 479146926
  %30 = sub i32 %29, 1
  %31 = add i32 %30, 479146926
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %32 = sub i32 %27, 1
  %33 = mul i32 %27, %31
  %34 = urem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = icmp slt i32 %28, 10
  %37 = and i1 %35, %36
  %38 = xor i1 %35, %36
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %39 = or i1 %37, %38
  %40 = or i1 %35, %36
  br i1 %39, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 2

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @av_find_nearest_q_idx(i64 %0, %struct.AVRational* nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @av_d2q(double noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret i64 4294967297
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cmdutils_read_file(i8* nocapture noundef readnone %0, i8** nocapture noundef readnone %1, i64* nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @av_gettime() local_unnamed_addr #0 {
  ret i32 123456789
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @avformat_write_header(%struct.AVFormatContext* nocapture noundef readnone %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @avcodec_open2(%struct.AVCodecContext* nocapture noundef readnone %0, %struct.AVCodec* nocapture noundef readnone %1, i8** nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @print_sdp() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @init_input_stream(i32 noundef %0, i8* nocapture noundef readnone %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, i32* @x.35, align 4
  %5 = load i32, i32* @y.36, align 4
  %6 = sub i32 0, 1
  %7 = add i32 %4, %6
  %8 = sub i32 %4, 1
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
  %21 = or i1 %18, %19
  %22 = xor i1 %20, %21
  %23 = or i1 %13, %14
  br label %.split

.split:                                           ; preds = %3
  %24 = xor i1 %23, true
  %25 = or i1 false, %15
  %26 = and i1 %24, %25
  %27 = or i1 %22, %26
  br label %.split.split

.split.split:                                     ; preds = %.split
  %28 = or i1 %11, %12
  br i1 %27, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %29 = load i32, i32* @x.35, align 4
  %30 = load i32, i32* @y.36, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %31 = sub i32 %29, 1988576363
  %32 = sub i32 %31, 1
  %33 = add i32 %32, 1988576363
  %34 = sub i32 %29, 1
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %35 = mul i32 %29, %33
  %36 = urem i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = icmp slt i32 %30, 10
  %39 = and i1 %37, %38
  %40 = xor i1 %37, %38
  %41 = or i1 %39, %40
  %42 = or i1 %37, %38
  br i1 %41, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 0

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias %struct.FilterGraph* @init_simple_filtergraph(%struct.InputStream* nocapture noundef readnone %0, %struct.OutputStream* nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load i32, i32* @x.37, align 4
  %4 = load i32, i32* @y.38, align 4
  %5 = add i32 %3, -667916979
  %6 = sub i32 %5, 1
  %7 = sub i32 %6, -667916979
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
  %18 = and i1 %14, true
  br label %.split

.split:                                           ; preds = %2
  %19 = and i1 %12, %15
  %20 = or i1 %16, %17
  %21 = or i1 %18, %19
  %22 = xor i1 %20, %21
  br label %.split.split

.split.split:                                     ; preds = %.split
  %23 = or i1 %13, %14
  %24 = xor i1 %23, true
  %25 = or i1 true, %15
  %26 = and i1 %24, %25
  %27 = or i1 %22, %26
  %28 = or i1 %11, %12
  br i1 %27, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %29 = load i32, i32* @x.37, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %30 = load i32, i32* @y.38, align 4
  %31 = sub i32 0, 1
  %32 = add i32 %29, %31
  %33 = sub i32 %29, 1
  %34 = mul i32 %29, %32
  %35 = urem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  %37 = icmp slt i32 %30, 10
  %38 = and i1 %36, %37
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %39 = xor i1 %36, %37
  %40 = or i1 %38, %39
  %41 = or i1 %36, %37
  br i1 %40, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret %struct.FilterGraph* null

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @configure_video_filters(%struct.FilterGraph* nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @x.39, align 4
  %3 = load i32, i32* @y.40, align 4
  %4 = add i32 %2, -718925451
  %5 = sub i32 %4, 1
  %6 = sub i32 %5, -718925451
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  br label %.split

.split:                                           ; preds = %1
  %12 = xor i1 %10, true
  %13 = xor i1 %11, true
  br label %.split.split

.split.split:                                     ; preds = %.split
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
  %25 = and i1 %23, %24
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %28 = load i32, i32* @x.39, align 4
  %29 = load i32, i32* @y.40, align 4
  %30 = add i32 %28, 602883642
  %31 = sub i32 %30, 1
  %32 = sub i32 %31, 602883642
  %33 = sub i32 %28, 1
  %34 = mul i32 %28, %32
  %35 = urem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  %37 = icmp slt i32 %29, 10
  %38 = xor i1 %36, true
  %39 = xor i1 %37, true
  %40 = xor i1 false, true
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %41 = and i1 %38, false
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
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  br i1 %52, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 0

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @choose_sample_rate(%struct.AVStream* nocapture noundef %0, %struct.AVCodec* nocapture noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @choose_sample_fmt(%struct.AVStream* nocapture noundef %0, %struct.AVCodec* nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i32, i32* @x.43, align 4
  %4 = load i32, i32* @y.44, align 4
  br label %.split

.split:                                           ; preds = %2
  %5 = add i32 %3, 1807861110
  %6 = sub i32 %5, 1
  %7 = sub i32 %6, 1807861110
  %8 = sub i32 %3, 1
  %9 = mul i32 %3, %7
  br label %.split.split

.split.split:                                     ; preds = %.split
  %10 = urem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = icmp slt i32 %4, 10
  %13 = and i1 %11, %12
  %14 = xor i1 %11, %12
  %15 = or i1 %13, %14
  %16 = or i1 %11, %12
  br i1 %15, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %17 = load i32, i32* @x.43, align 4
  %18 = load i32, i32* @y.44, align 4
  %19 = add i32 %17, -1235509680
  %20 = sub i32 %19, 1
  %21 = sub i32 %20, -1235509680
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %22 = sub i32 %17, 1
  %23 = mul i32 %17, %21
  %24 = urem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = icmp slt i32 %18, 10
  %27 = and i1 %25, %26
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %28 = xor i1 %25, %26
  %29 = or i1 %27, %28
  %30 = or i1 %25, %26
  br i1 %29, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias i8* @av_fifo_alloc(i32 noundef %0) local_unnamed_addr #1 {
  %2 = sext i32 %0 to i64
  br label %.split

.split:                                           ; preds = %1
  %3 = call noalias i8* @malloc(i64 noundef %2) #5
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret i8* %3
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @main() local_unnamed_addr #0 {
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

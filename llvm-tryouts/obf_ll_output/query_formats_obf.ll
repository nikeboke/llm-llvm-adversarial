; ModuleID = 'query_formats_obf.bc'
source_filename = "query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.AVFilter = type { i8*, i32 (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.AVFilterContext = type { i8*, %struct.AVFilter*, i32, %struct.AVFilterLink** }
%struct.AVFilterLink = type { i32, %struct.AVFilterContext*, %struct.AVFilterContext*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.AVFilterGraph = type { i32, %struct.AVFilterContext**, i8*, i8* }
%struct.AVClass = type {}

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@avfilter_get_by_name.dummy = internal global %struct.AVFilter { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (i8*)* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"query_formats: %d queried, %d merged, %d already done, %d delayed\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Some filters could not choose formats\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"sink\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"query_formats returned: %d\0A\00", align 1
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

; Function Attrs: nofree nounwind uwtable
define dso_local void @av_log(i8* nocapture noundef readnone %0, i32 noundef %1, i8* nocapture noundef readonly %2, ...) local_unnamed_addr #0 {
  %4 = load i32, i32* @x, align 4
  %5 = load i32, i32* @y, align 4
  %6 = sub i32 %4, 433946388
  %7 = sub i32 %6, 1
  %8 = add i32 %7, 433946388
  %9 = sub i32 %4, 1
  br label %.split

.split:                                           ; preds = %3
  %10 = mul i32 %4, %8
  %11 = urem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = icmp slt i32 %5, 10
  %14 = and i1 %12, %13
  %15 = xor i1 %12, %13
  br label %.split.split

.split.split:                                     ; preds = %.split
  %16 = or i1 %14, %15
  %17 = or i1 %12, %13
  br i1 %16, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %18 = alloca [1 x %struct.__va_list_tag], align 16
  %19 = bitcast [1 x %struct.__va_list_tag]* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %19) #10
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %18, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %19)
  %21 = icmp eq i32 %1, 16
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = select i1 %21, %struct._IO_FILE* %22, %struct._IO_FILE* %23
  %25 = call i32 @vfprintf(%struct._IO_FILE* noundef %24, i8* noundef %2, %struct.__va_list_tag* noundef nonnull %20)
  call void @llvm.va_end(i8* %19)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %19) #10
  %26 = load i32, i32* @x, align 4
  %27 = load i32, i32* @y, align 4
  %28 = sub i32 %26, -941960246
  %29 = sub i32 %28, 1
  %30 = add i32 %29, -941960246
  %31 = sub i32 %26, 1
  %32 = mul i32 %26, %30
  %33 = urem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  %35 = icmp slt i32 %27, 10
  %36 = xor i1 %34, true
  %37 = xor i1 %35, true
  %38 = xor i1 true, true
  %39 = and i1 %36, true
  %40 = and i1 %34, %38
  %41 = and i1 %37, true
  %42 = and i1 %35, %38
  %43 = or i1 %39, %40
  %44 = or i1 %41, %42
  %45 = xor i1 %43, %44
  %46 = or i1 %36, %37
  %47 = xor i1 %46, true
  %48 = or i1 true, %38
  %49 = and i1 %47, %48
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %50 = or i1 %45, %49
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %51 = or i1 %34, %35
  br i1 %50, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %52 = alloca [1 x %struct.__va_list_tag], align 16
  %53 = bitcast [1 x %struct.__va_list_tag]* %52 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %53) #10
  %54 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %52, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %53)
  %55 = icmp eq i32 %1, 16
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %58 = select i1 %55, %struct._IO_FILE* %56, %struct._IO_FILE* %57
  %59 = call i32 @vfprintf(%struct._IO_FILE* noundef %58, i8* noundef %2, %struct.__va_list_tag* noundef nonnull %54)
  call void @llvm.va_end(i8* %53)
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %53) #10
  br label %originalBB
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @vfprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, %struct.__va_list_tag* noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @formats_declared(%struct.AVFilterContext* nocapture readnone %0) local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @filter_query_formats(%struct.AVFilterContext* nocapture readnone %0) local_unnamed_addr #4 {
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
  br label %.split

.split:                                           ; preds = %1
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
  br label %.split.split

.split.split:                                     ; preds = %.split
  %22 = xor i1 %21, true
  %23 = or i1 false, %13
  %24 = and i1 %22, %23
  %25 = or i1 %20, %24
  %26 = or i1 %9, %10
  br i1 %25, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %27 = load i32, i32* @x.3, align 4
  %28 = load i32, i32* @y.4, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %29 = add i32 %27, -1971547203
  %30 = sub i32 %29, 1
  %31 = sub i32 %30, -1971547203
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %32 = sub i32 %27, 1
  %33 = mul i32 %27, %31
  %34 = urem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = icmp slt i32 %28, 10
  %37 = xor i1 %35, true
  %38 = xor i1 %36, true
  %39 = xor i1 false, true
  %40 = and i1 %37, false
  %41 = and i1 %35, %39
  %42 = and i1 %38, false
  %43 = and i1 %36, %39
  %44 = or i1 %40, %41
  %45 = or i1 %42, %43
  %46 = xor i1 %44, %45
  %47 = or i1 %37, %38
  %48 = xor i1 %47, true
  %49 = or i1 false, %39
  %50 = and i1 %48, %49
  %51 = or i1 %46, %50
  %52 = or i1 %35, %36
  br i1 %51, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 0

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ff_default_query_formats(%struct.AVFilterContext* nocapture readnone %0) local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local nonnull %struct.AVFilter* @avfilter_get_by_name(i8* nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret %struct.AVFilter* @avfilter_get_by_name.dummy
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local i32 @avfilter_graph_create_filter(%struct.AVFilterContext** nocapture noundef writeonly %0, %struct.AVFilter* nocapture noundef readnone %1, i8* nocapture noundef readonly %2, i8* nocapture noundef readnone %3, i8* nocapture noundef readnone %4, %struct.AVFilterGraph* nocapture noundef readnone %5) local_unnamed_addr #5 {
  %7 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #10
  %8 = bitcast %struct.AVFilterContext** %0 to i8**
  store i8* %7, i8** %8, align 8, !tbaa !3
  br label %.split

.split:                                           ; preds = %6
  %9 = call noalias i8* @strdup(i8* noundef %2) #10
  br label %.split.split

.split.split:                                     ; preds = %.split
  %10 = bitcast i8* %7 to %struct.AVFilterContext*
  %11 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %10, i64 0, i32 0
  store i8* %9, i8** %11, align 8, !tbaa !7
  ret i32 0
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare dso_local noalias i8* @strdup(i8* nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @avfilter_insert_filter(%struct.AVFilterLink* nocapture noundef readnone %0, %struct.AVFilterContext* nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ff_merge_formats(i8* nocapture readnone %0, i8* nocapture readnone %1, i32 %2) local_unnamed_addr #4 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ff_merge_samplerates(i8* nocapture readnone %0, i8* nocapture readnone %1) local_unnamed_addr #4 {
  %3 = load i32, i32* @x.15, align 4
  %4 = load i32, i32* @y.16, align 4
  %5 = add i32 %3, 632488692
  %6 = sub i32 %5, 1
  %7 = sub i32 %6, 632488692
  br label %.split

.split:                                           ; preds = %2
  %8 = sub i32 %3, 1
  br label %.split.split

.split.split:                                     ; preds = %.split
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
  %22 = xor i1 %20, %21
  %23 = or i1 %13, %14
  %24 = xor i1 %23, true
  %25 = or i1 true, %15
  %26 = and i1 %24, %25
  %27 = or i1 %22, %26
  %28 = or i1 %11, %12
  br i1 %27, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %29 = load i32, i32* @x.15, align 4
  %30 = load i32, i32* @y.16, align 4
  %31 = sub i32 %29, 1267076940
  %32 = sub i32 %31, 1
  %33 = add i32 %32, 1267076940
  %34 = sub i32 %29, 1
  %35 = mul i32 %29, %33
  %36 = urem i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = icmp slt i32 %30, 10
  %39 = xor i1 %37, true
  %40 = xor i1 %38, true
  %41 = xor i1 true, true
  %42 = and i1 %39, true
  %43 = and i1 %37, %41
  %44 = and i1 %40, true
  %45 = and i1 %38, %41
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %46 = or i1 %42, %43
  %47 = or i1 %44, %45
  %48 = xor i1 %46, %47
  %49 = or i1 %39, %40
  %50 = xor i1 %49, true
  %51 = or i1 true, %41
  %52 = and i1 %50, %51
  %53 = or i1 %48, %52
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %54 = or i1 %37, %38
  br i1 %53, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 1

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ff_merge_channel_layouts(i8* nocapture readnone %0, i8* nocapture readnone %1) local_unnamed_addr #4 {
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @query_formats(%struct.AVFilterGraph* nocapture noundef readonly %0, %struct.AVClass* nocapture readnone %1) local_unnamed_addr #0 {
  %.reload97.reg2mem = alloca i32, align 4
  %.reload89.reg2mem = alloca i32, align 4
  %.reload91.reg2mem = alloca i32, align 4
  %.reload93.reg2mem = alloca i32, align 4
  %.reload81.reg2mem = alloca i32, align 4
  %.reload83.reg2mem = alloca i32, align 4
  br label %.split

.split:                                           ; preds = %2
  %.reload85.reg2mem = alloca i32, align 4
  %.reload87.reg2mem = alloca i32, align 4
  %.reload75.reg2mem = alloca i32, align 4
  %.reload77.reg2mem = alloca i32, align 4
  %.reload79.reg2mem = alloca i32, align 4
  %.reload69.reg2mem = alloca i32, align 4
  %.reload71.reg2mem = alloca i32, align 4
  %.reload73.reg2mem = alloca i32, align 4
  %.reload61.reg2mem = alloca i64, align 8
  %.reload63.reg2mem = alloca i32, align 4
  %.reload65.reg2mem = alloca i32, align 4
  %.reload67.reg2mem = alloca i32, align 4
  %.reload53.reg2mem = alloca i64, align 8
  %.reload55.reg2mem = alloca i32, align 4
  %.reload57.reg2mem = alloca i32, align 4
  %.reload59.reg2mem = alloca i32, align 4
  %.reg2mem49 = alloca i64, align 8
  %.reg2mem46 = alloca i8*, align 8
  %.reg2mem43 = alloca i8*, align 8
  %.reg2mem40 = alloca i8*, align 8
  %.reg2mem37 = alloca i8*, align 8
  %.reg2mem34 = alloca i8*, align 8
  %.reg2mem31 = alloca i8*, align 8
  %.reg2mem22 = alloca %struct.AVFilterLink*, align 8
  %.reg2mem20 = alloca i64, align 8
  %.reg2mem18 = alloca %struct.AVFilterLink**, align 8
  %.reg2mem15 = alloca i32, align 4
  %.reg2mem12 = alloca %struct.AVFilterContext*, align 8
  %.reg2mem10 = alloca i64, align 8
  %.reg2mem8 = alloca %struct.AVFilterContext**, align 8
  %.reg2mem5 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %3 = getelementptr inbounds %struct.AVFilterGraph, %struct.AVFilterGraph* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !10
  store i32 %4, i32* %.reg2mem, align 4
  %.reload4 = load i32, i32* %.reg2mem, align 4
  %5 = icmp sgt i32 %.reload4, 0
  br label %.split.split

.split.split:                                     ; preds = %.split
  %.reload = load i32, i32* %.reg2mem, align 4
  %6 = select i1 %5, i32 %.reload, i32 0
  store i32 %6, i32* %.reg2mem5, align 4
  %switchVar = alloca i32, align 4
  store i32 -1857312576, i32* %switchVar, align 4
  %.reg2mem52 = alloca i64, align 8
  %.reg2mem54 = alloca i32, align 4
  %.reg2mem56 = alloca i32, align 4
  %.reg2mem58 = alloca i32, align 4
  %.reg2mem60 = alloca i64, align 8
  %.reg2mem62 = alloca i32, align 4
  %.reg2mem64 = alloca i32, align 4
  %.reg2mem66 = alloca i32, align 4
  %.reg2mem68 = alloca i32, align 4
  %.reg2mem70 = alloca i32, align 4
  %.reg2mem72 = alloca i32, align 4
  %.reg2mem74 = alloca i32, align 4
  %.reg2mem76 = alloca i32, align 4
  %.reg2mem78 = alloca i32, align 4
  %.reg2mem80 = alloca i32, align 4
  %.reg2mem82 = alloca i32, align 4
  %.reg2mem84 = alloca i32, align 4
  %.reg2mem86 = alloca i32, align 4
  %.reg2mem88 = alloca i32, align 4
  %.reg2mem90 = alloca i32, align 4
  %.reg2mem92 = alloca i32, align 4
  %.reg2mem94 = alloca i32, align 4
  %.reg2mem96 = alloca i32, align 4
  %.reg2mem98 = alloca i32, align 4
  %.reg2mem100 = alloca i32, align 4
  %.reg2mem102 = alloca i32, align 4
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %7 = load i32, i32* @x.19, align 4
  %8 = load i32, i32* @y.20, align 4
  %9 = add i32 %7, 1135868741
  %10 = sub i32 %9, 1
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  %11 = sub i32 %10, 1135868741
  %12 = sub i32 %7, 1
  %13 = mul i32 %7, %11
  %14 = urem i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = icmp slt i32 %8, 10
  %17 = and i1 %15, %16
  %18 = xor i1 %15, %16
  %19 = or i1 %17, %18
  br label %loopEntry.split.split

loopEntry.split.split:                            ; preds = %loopEntry.split
  %20 = or i1 %15, %16
  br i1 %19, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %loopEntry.split.split, %originalBBalteredBB.split
  %switchVar1 = load i32, i32* %switchVar, align 4
  %21 = load i32, i32* @x.19, align 4
  %22 = load i32, i32* @y.20, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %23 = add i32 %21, 148228210
  %24 = sub i32 %23, 1
  %25 = sub i32 %24, 148228210
  %26 = sub i32 %21, 1
  %27 = mul i32 %21, %25
  %28 = urem i32 %27, 2
  %29 = icmp eq i32 %28, 0
  %30 = icmp slt i32 %22, 10
  %31 = and i1 %29, %30
  %32 = xor i1 %29, %30
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %33 = or i1 %31, %32
  %34 = or i1 %29, %30
  br i1 %33, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  switch i32 %switchVar1, label %switchDefault [
    i32 -1857312576, label %first
    i32 300284401, label %37
    i32 1559568443, label %41
    i32 149785847, label %84
    i32 -629259396, label %119
    i32 -1933362679, label %123
    i32 -2116570121, label %128
    i32 1093310285, label %172
    i32 231854181, label %177
    i32 1862508084, label %219
    i32 877327914, label %222
    i32 1361624047, label %267
    i32 176409419, label %272
    i32 -543369914, label %329
    i32 2142097729, label %334
    i32 39162436, label %339
    i32 316399420, label %345
    i32 621732911, label %400
    i32 -891532232, label %405
    i32 -676486095, label %410
    i32 -145130325, label %443
    i32 974783291, label %448
    i32 -783883966, label %453
    i32 1234706030, label %456
    i32 777778484, label %488
    i32 1130461878, label %544
    i32 1311808231, label %NodeBlock
    i32 -1721443630, label %LeafBlock
    i32 827632482, label %587
    i32 722580410, label %NewDefault
    i32 70026953, label %634
    i32 -1585566633, label %640
    i32 -2055305690, label %644
    i32 1191590054, label %663
    i32 1096702680, label %666
  ]

switchDefault:                                    ; preds = %originalBBpart2
  br label %loopEnd

first:                                            ; preds = %originalBBpart2
  %.reload3 = load i32, i32* %.reg2mem, align 4
  %35 = icmp sgt i32 %.reload3, 0
  br label %first.split

first.split:                                      ; preds = %first
  %36 = select i1 %35, i32 300284401, i32 -1585566633
  store i32 %36, i32* %switchVar, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  store i32 0, i32* %.reg2mem96, align 4
  store i32 0, i32* %.reg2mem98, align 4
  store i32 0, i32* %.reg2mem100, align 4
  br label %loopEnd

37:                                               ; preds = %originalBBpart2
  %38 = getelementptr inbounds %struct.AVFilterGraph, %struct.AVFilterGraph* %0, i64 0, i32 1
  %39 = load %struct.AVFilterContext**, %struct.AVFilterContext*** %38, align 8, !tbaa !12
  br label %.split227

.split227:                                        ; preds = %37
  store %struct.AVFilterContext** %39, %struct.AVFilterContext*** %.reg2mem8, align 8
  br label %.split227.split

.split227.split:                                  ; preds = %.split227
  %.reload2 = load i32, i32* %.reg2mem, align 4
  %40 = zext i32 %.reload2 to i64
  store i64 %40, i64* %.reg2mem10, align 8
  store i32 149785847, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem52, align 8
  store i32 0, i32* %.reg2mem54, align 4
  store i32 0, i32* %.reg2mem56, align 4
  store i32 0, i32* %.reg2mem58, align 4
  br label %loopEnd

41:                                               ; preds = %originalBBpart2
  %42 = load i32, i32* @x.19, align 4
  %43 = load i32, i32* @y.20, align 4
  %44 = sub i32 %42, 344307265
  %45 = sub i32 %44, 1
  %46 = add i32 %45, 344307265
  %47 = sub i32 %42, 1
  %48 = mul i32 %42, %46
  %49 = urem i32 %48, 2
  %50 = icmp eq i32 %49, 0
  %51 = icmp slt i32 %43, 10
  %52 = xor i1 %50, true
  %53 = xor i1 %51, true
  %54 = xor i1 false, true
  %55 = and i1 %52, false
  %56 = and i1 %50, %54
  %57 = and i1 %53, false
  %58 = and i1 %51, %54
  %59 = or i1 %55, %56
  br label %.split228

.split228:                                        ; preds = %41
  %60 = or i1 %57, %58
  %61 = xor i1 %59, %60
  %62 = or i1 %52, %53
  br label %.split228.split

.split228.split:                                  ; preds = %.split228
  %63 = xor i1 %62, true
  %64 = or i1 false, %54
  %65 = and i1 %63, %64
  %66 = or i1 %61, %65
  %67 = or i1 %50, %51
  br i1 %66, label %originalBB145, label %originalBB145alteredBB

originalBB145:                                    ; preds = %.split228.split, %originalBB145alteredBB.split.split
  %.reload11 = load i64, i64* %.reg2mem10, align 8
  %.reload50 = load i64, i64* %.reg2mem49, align 8
  %68 = icmp eq i64 %.reload50, %.reload11
  %69 = select i1 %68, i32 -1585566633, i32 149785847
  store i32 %69, i32* %switchVar, align 4
  %.reload51 = load i64, i64* %.reg2mem49, align 8
  store i64 %.reload51, i64* %.reg2mem52, align 8
  %.reload93.reload141 = load i32, i32* %.reload93.reg2mem, align 4
  store i32 %.reload93.reload141, i32* %.reg2mem54, align 4
  %.reload91.reload142 = load i32, i32* %.reload91.reg2mem, align 4
  store i32 %.reload91.reload142, i32* %.reg2mem56, align 4
  %.reload89.reload143 = load i32, i32* %.reload89.reg2mem, align 4
  store i32 %.reload89.reload143, i32* %.reg2mem58, align 4
  %.reload89.reload = load i32, i32* %.reload89.reg2mem, align 4
  store i32 %.reload89.reload, i32* %.reg2mem96, align 4
  %.reload91.reload = load i32, i32* %.reload91.reg2mem, align 4
  store i32 %.reload91.reload, i32* %.reg2mem98, align 4
  %.reload93.reload = load i32, i32* %.reload93.reg2mem, align 4
  store i32 %.reload93.reload, i32* %.reg2mem100, align 4
  %70 = load i32, i32* @x.19, align 4
  %71 = load i32, i32* @y.20, align 4
  %72 = sub i32 %70, 671658407
  %73 = sub i32 %72, 1
  br label %originalBB145.split

originalBB145.split:                              ; preds = %originalBB145
  %74 = add i32 %73, 671658407
  %75 = sub i32 %70, 1
  %76 = mul i32 %70, %74
  %77 = urem i32 %76, 2
  br label %originalBB145.split.split

originalBB145.split.split:                        ; preds = %originalBB145.split
  %78 = icmp eq i32 %77, 0
  %79 = icmp slt i32 %71, 10
  %80 = and i1 %78, %79
  %81 = xor i1 %78, %79
  %82 = or i1 %80, %81
  %83 = or i1 %78, %79
  br i1 %82, label %originalBBpart2147, label %originalBB145alteredBB

originalBBpart2147:                               ; preds = %originalBB145.split.split
  br label %loopEnd

84:                                               ; preds = %originalBBpart2
  %85 = load i32, i32* @x.19, align 4
  %86 = load i32, i32* @y.20, align 4
  %87 = add i32 %85, 312011615
  %88 = sub i32 %87, 1
  %89 = sub i32 %88, 312011615
  br label %.split229

.split229:                                        ; preds = %84
  %90 = sub i32 %85, 1
  %91 = mul i32 %85, %89
  %92 = urem i32 %91, 2
  %93 = icmp eq i32 %92, 0
  %94 = icmp slt i32 %86, 10
  %95 = and i1 %93, %94
  %96 = xor i1 %93, %94
  %97 = or i1 %95, %96
  br label %.split229.split

.split229.split:                                  ; preds = %.split229
  %98 = or i1 %93, %94
  br i1 %97, label %originalBB149, label %originalBB149alteredBB

originalBB149:                                    ; preds = %.split229.split, %originalBB149alteredBB.split.split
  %.reload59 = load i32, i32* %.reg2mem58, align 4
  store i32 %.reload59, i32* %.reload59.reg2mem, align 4
  %.reload57 = load i32, i32* %.reg2mem56, align 4
  store i32 %.reload57, i32* %.reload57.reg2mem, align 4
  %.reload55 = load i32, i32* %.reg2mem54, align 4
  store i32 %.reload55, i32* %.reload55.reg2mem, align 4
  %.reload53 = load i64, i64* %.reg2mem52, align 8
  store i64 %.reload53, i64* %.reload53.reg2mem, align 8
  %.reload9 = load %struct.AVFilterContext**, %struct.AVFilterContext*** %.reg2mem8, align 8
  %.reload53.reload107 = load i64, i64* %.reload53.reg2mem, align 8
  %99 = getelementptr inbounds %struct.AVFilterContext*, %struct.AVFilterContext** %.reload9, i64 %.reload53.reload107
  %100 = load %struct.AVFilterContext*, %struct.AVFilterContext** %99, align 8, !tbaa !3
  store %struct.AVFilterContext* %100, %struct.AVFilterContext** %.reg2mem12, align 8
  %.reload13 = load %struct.AVFilterContext*, %struct.AVFilterContext** %.reg2mem12, align 8
  %101 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %.reload13, i64 0, i32 2
  %102 = load i32, i32* %101, align 8, !tbaa !13
  store i32 %102, i32* %.reg2mem15, align 4
  %.reload17 = load i32, i32* %.reg2mem15, align 4
  %103 = icmp sgt i32 %.reload17, 0
  %104 = select i1 %103, i32 -629259396, i32 70026953
  store i32 %104, i32* %switchVar, align 4
  %.reload59.reload = load i32, i32* %.reload59.reg2mem, align 4
  store i32 %.reload59.reload, i32* %.reg2mem88, align 4
  %.reload57.reload = load i32, i32* %.reload57.reg2mem, align 4
  br label %originalBB149.split

originalBB149.split:                              ; preds = %originalBB149
  store i32 %.reload57.reload, i32* %.reg2mem90, align 4
  br label %originalBB149.split.split

originalBB149.split.split:                        ; preds = %originalBB149.split
  %.reload55.reload = load i32, i32* %.reload55.reg2mem, align 4
  store i32 %.reload55.reload, i32* %.reg2mem92, align 4
  store i32 0, i32* %.reg2mem94, align 4
  %105 = load i32, i32* @x.19, align 4
  %106 = load i32, i32* @y.20, align 4
  %107 = add i32 %105, -1576165151
  %108 = sub i32 %107, 1
  %109 = sub i32 %108, -1576165151
  %110 = sub i32 %105, 1
  %111 = mul i32 %105, %109
  %112 = urem i32 %111, 2
  %113 = icmp eq i32 %112, 0
  %114 = icmp slt i32 %106, 10
  %115 = and i1 %113, %114
  %116 = xor i1 %113, %114
  %117 = or i1 %115, %116
  %118 = or i1 %113, %114
  br i1 %117, label %originalBBpart2151, label %originalBB149alteredBB

originalBBpart2151:                               ; preds = %originalBB149.split.split
  br label %loopEnd

119:                                              ; preds = %originalBBpart2
  %.reload14 = load %struct.AVFilterContext*, %struct.AVFilterContext** %.reg2mem12, align 8
  %120 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %.reload14, i64 0, i32 3
  %121 = load %struct.AVFilterLink**, %struct.AVFilterLink*** %120, align 8, !tbaa !14
  store %struct.AVFilterLink** %121, %struct.AVFilterLink*** %.reg2mem18, align 8
  %.reload16 = load i32, i32* %.reg2mem15, align 4
  %122 = zext i32 %.reload16 to i64
  store i64 %122, i64* %.reg2mem20, align 8
  store i32 -1933362679, i32* %switchVar, align 4
  br label %.split230

.split230:                                        ; preds = %119
  store i64 0, i64* %.reg2mem60, align 8
  %.reload55.reload106 = load i32, i32* %.reload55.reg2mem, align 4
  br label %.split230.split

.split230.split:                                  ; preds = %.split230
  store i32 %.reload55.reload106, i32* %.reg2mem62, align 4
  %.reload57.reload105 = load i32, i32* %.reload57.reg2mem, align 4
  store i32 %.reload57.reload105, i32* %.reg2mem64, align 4
  %.reload59.reload104 = load i32, i32* %.reload59.reg2mem, align 4
  store i32 %.reload59.reload104, i32* %.reg2mem66, align 4
  br label %loopEnd

123:                                              ; preds = %originalBBpart2
  %.reload67 = load i32, i32* %.reg2mem66, align 4
  store i32 %.reload67, i32* %.reload67.reg2mem, align 4
  %.reload65 = load i32, i32* %.reg2mem64, align 4
  store i32 %.reload65, i32* %.reload65.reg2mem, align 4
  %.reload63 = load i32, i32* %.reg2mem62, align 4
  store i32 %.reload63, i32* %.reload63.reg2mem, align 4
  %.reload61 = load i64, i64* %.reg2mem60, align 8
  store i64 %.reload61, i64* %.reload61.reg2mem, align 8
  %.reload19 = load %struct.AVFilterLink**, %struct.AVFilterLink*** %.reg2mem18, align 8
  %.reload61.reload117 = load i64, i64* %.reload61.reg2mem, align 8
  %124 = getelementptr inbounds %struct.AVFilterLink*, %struct.AVFilterLink** %.reload19, i64 %.reload61.reload117
  br label %.split231

.split231:                                        ; preds = %123
  %125 = load %struct.AVFilterLink*, %struct.AVFilterLink** %124, align 8, !tbaa !3
  store %struct.AVFilterLink* %125, %struct.AVFilterLink** %.reg2mem22, align 8
  %.reload30 = load %struct.AVFilterLink*, %struct.AVFilterLink** %.reg2mem22, align 8
  %126 = icmp eq %struct.AVFilterLink* %.reload30, null
  br label %.split231.split

.split231.split:                                  ; preds = %.split231
  %127 = select i1 %126, i32 1130461878, i32 -2116570121
  store i32 %127, i32* %switchVar, align 4
  %.reload67.reload = load i32, i32* %.reload67.reg2mem, align 4
  store i32 %.reload67.reload, i32* %.reg2mem80, align 4
  %.reload65.reload = load i32, i32* %.reload65.reg2mem, align 4
  store i32 %.reload65.reload, i32* %.reg2mem82, align 4
  %.reload63.reload = load i32, i32* %.reload63.reg2mem, align 4
  store i32 %.reload63.reload, i32* %.reg2mem84, align 4
  store i32 10, i32* %.reg2mem86, align 4
  br label %loopEnd

128:                                              ; preds = %originalBBpart2
  %129 = load i32, i32* @x.19, align 4
  %130 = load i32, i32* @y.20, align 4
  %131 = sub i32 0, 1
  %132 = add i32 %129, %131
  br label %.split232

.split232:                                        ; preds = %128
  %133 = sub i32 %129, 1
  %134 = mul i32 %129, %132
  %135 = urem i32 %134, 2
  %136 = icmp eq i32 %135, 0
  %137 = icmp slt i32 %130, 10
  br label %.split232.split

.split232.split:                                  ; preds = %.split232
  %138 = xor i1 %136, true
  %139 = xor i1 %137, true
  %140 = xor i1 false, true
  %141 = and i1 %138, false
  %142 = and i1 %136, %140
  %143 = and i1 %139, false
  %144 = and i1 %137, %140
  %145 = or i1 %141, %142
  %146 = or i1 %143, %144
  %147 = xor i1 %145, %146
  %148 = or i1 %138, %139
  %149 = xor i1 %148, true
  %150 = or i1 false, %140
  %151 = and i1 %149, %150
  %152 = or i1 %147, %151
  %153 = or i1 %136, %137
  br i1 %152, label %originalBB153, label %originalBB153alteredBB

originalBB153:                                    ; preds = %.split232.split, %originalBB153alteredBB.split.split
  %.reload23 = load %struct.AVFilterLink*, %struct.AVFilterLink** %.reg2mem22, align 8
  %154 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %.reload23, i64 0, i32 3
  %155 = load i8*, i8** %154, align 8, !tbaa !15
  store i8* %155, i8** %.reg2mem31, align 8
  %.reload33 = load i8*, i8** %.reg2mem31, align 8
  %156 = icmp eq i8* %.reload33, null
  %157 = select i1 %156, i32 231854181, i32 1093310285
  store i32 %157, i32* %switchVar, align 4
  br label %originalBB153.split

originalBB153.split:                              ; preds = %originalBB153
  %158 = load i32, i32* @x.19, align 4
  %159 = load i32, i32* @y.20, align 4
  %160 = sub i32 %158, 1883398854
  %161 = sub i32 %160, 1
  %162 = add i32 %161, 1883398854
  %163 = sub i32 %158, 1
  %164 = mul i32 %158, %162
  %165 = urem i32 %164, 2
  %166 = icmp eq i32 %165, 0
  %167 = icmp slt i32 %159, 10
  %168 = and i1 %166, %167
  %169 = xor i1 %166, %167
  %170 = or i1 %168, %169
  br label %originalBB153.split.split

originalBB153.split.split:                        ; preds = %originalBB153.split
  %171 = or i1 %166, %167
  br i1 %170, label %originalBBpart2155, label %originalBB153alteredBB

originalBBpart2155:                               ; preds = %originalBB153.split.split
  br label %loopEnd

172:                                              ; preds = %originalBBpart2
  %.reload24 = load %struct.AVFilterLink*, %struct.AVFilterLink** %.reg2mem22, align 8
  br label %.split233

.split233:                                        ; preds = %172
  %173 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %.reload24, i64 0, i32 4
  br label %.split233.split

.split233.split:                                  ; preds = %.split233
  %174 = load i8*, i8** %173, align 8, !tbaa !17
  store i8* %174, i8** %.reg2mem34, align 8
  %.reload36 = load i8*, i8** %.reg2mem34, align 8
  %175 = icmp eq i8* %.reload36, null
  %176 = select i1 %175, i32 231854181, i32 1862508084
  store i32 %176, i32* %switchVar, align 4
  br label %loopEnd

177:                                              ; preds = %originalBBpart2
  %178 = load i32, i32* @x.19, align 4
  %179 = load i32, i32* @y.20, align 4
  %180 = sub i32 0, 1
  %181 = add i32 %178, %180
  %182 = sub i32 %178, 1
  %183 = mul i32 %178, %181
  %184 = urem i32 %183, 2
  %185 = icmp eq i32 %184, 0
  br label %.split234

.split234:                                        ; preds = %177
  %186 = icmp slt i32 %179, 10
  %187 = and i1 %185, %186
  %188 = xor i1 %185, %186
  br label %.split234.split

.split234.split:                                  ; preds = %.split234
  %189 = or i1 %187, %188
  %190 = or i1 %185, %186
  br i1 %189, label %originalBB157, label %originalBB157alteredBB

originalBB157:                                    ; preds = %.split234.split, %originalBB157alteredBB.split.split
  %.reload63.reload116 = load i32, i32* %.reload63.reg2mem, align 4
  %191 = sub i32 0, 1
  %192 = sub i32 %.reload63.reload116, %191
  %193 = add nsw i32 %.reload63.reload116, 1
  store i32 176409419, i32* %switchVar, align 4
  %.reload67.reload108 = load i32, i32* %.reload67.reg2mem, align 4
  store i32 %.reload67.reload108, i32* %.reg2mem68, align 4
  %.reload65.reload111 = load i32, i32* %.reload65.reg2mem, align 4
  store i32 %.reload65.reload111, i32* %.reg2mem70, align 4
  store i32 %192, i32* %.reg2mem72, align 4
  br label %originalBB157.split

originalBB157.split:                              ; preds = %originalBB157
  %194 = load i32, i32* @x.19, align 4
  %195 = load i32, i32* @y.20, align 4
  %196 = sub i32 0, 1
  %197 = add i32 %194, %196
  %198 = sub i32 %194, 1
  %199 = mul i32 %194, %197
  %200 = urem i32 %199, 2
  %201 = icmp eq i32 %200, 0
  %202 = icmp slt i32 %195, 10
  %203 = xor i1 %201, true
  %204 = xor i1 %202, true
  %205 = xor i1 false, true
  %206 = and i1 %203, false
  %207 = and i1 %201, %205
  %208 = and i1 %204, false
  %209 = and i1 %202, %205
  %210 = or i1 %206, %207
  %211 = or i1 %208, %209
  %212 = xor i1 %210, %211
  %213 = or i1 %203, %204
  %214 = xor i1 %213, true
  %215 = or i1 false, %205
  br label %originalBB157.split.split

originalBB157.split.split:                        ; preds = %originalBB157.split
  %216 = and i1 %214, %215
  %217 = or i1 %212, %216
  %218 = or i1 %201, %202
  br i1 %217, label %originalBBpart2162, label %originalBB157alteredBB

originalBBpart2162:                               ; preds = %originalBB157.split.split
  br label %loopEnd

219:                                              ; preds = %originalBBpart2
  %.reload32 = load i8*, i8** %.reg2mem31, align 8
  %.reload35 = load i8*, i8** %.reg2mem34, align 8
  %220 = icmp eq i8* %.reload32, %.reload35
  br label %.split235

.split235:                                        ; preds = %219
  %221 = select i1 %220, i32 877327914, i32 1361624047
  br label %.split235.split

.split235.split:                                  ; preds = %.split235
  store i32 %221, i32* %switchVar, align 4
  br label %loopEnd

222:                                              ; preds = %originalBBpart2
  %223 = load i32, i32* @x.19, align 4
  %224 = load i32, i32* @y.20, align 4
  br label %.split236

.split236:                                        ; preds = %222
  %225 = sub i32 %223, -1372958822
  %226 = sub i32 %225, 1
  %227 = add i32 %226, -1372958822
  %228 = sub i32 %223, 1
  br label %.split236.split

.split236.split:                                  ; preds = %.split236
  %229 = mul i32 %223, %227
  %230 = urem i32 %229, 2
  %231 = icmp eq i32 %230, 0
  %232 = icmp slt i32 %224, 10
  %233 = and i1 %231, %232
  %234 = xor i1 %231, %232
  %235 = or i1 %233, %234
  %236 = or i1 %231, %232
  br i1 %235, label %originalBB164, label %originalBB164alteredBB

originalBB164:                                    ; preds = %.split236.split, %originalBB164alteredBB.split.split
  %.reload65.reload113 = load i32, i32* %.reload65.reg2mem, align 4
  %237 = sub i32 %.reload65.reload113, 1338555653
  %238 = add i32 %237, 1
  %239 = add i32 %238, 1338555653
  %240 = add nsw i32 %.reload65.reload113, 1
  store i32 176409419, i32* %switchVar, align 4
  %.reload67.reload109 = load i32, i32* %.reload67.reg2mem, align 4
  store i32 %.reload67.reload109, i32* %.reg2mem68, align 4
  br label %originalBB164.split

originalBB164.split:                              ; preds = %originalBB164
  store i32 %239, i32* %.reg2mem70, align 4
  %.reload63.reload115 = load i32, i32* %.reload63.reg2mem, align 4
  store i32 %.reload63.reload115, i32* %.reg2mem72, align 4
  %241 = load i32, i32* @x.19, align 4
  %242 = load i32, i32* @y.20, align 4
  br label %originalBB164.split.split

originalBB164.split.split:                        ; preds = %originalBB164.split
  %243 = add i32 %241, 1260113579
  %244 = sub i32 %243, 1
  %245 = sub i32 %244, 1260113579
  %246 = sub i32 %241, 1
  %247 = mul i32 %241, %245
  %248 = urem i32 %247, 2
  %249 = icmp eq i32 %248, 0
  %250 = icmp slt i32 %242, 10
  %251 = xor i1 %249, true
  %252 = xor i1 %250, true
  %253 = xor i1 true, true
  %254 = and i1 %251, true
  %255 = and i1 %249, %253
  %256 = and i1 %252, true
  %257 = and i1 %250, %253
  %258 = or i1 %254, %255
  %259 = or i1 %256, %257
  %260 = xor i1 %258, %259
  %261 = or i1 %251, %252
  %262 = xor i1 %261, true
  %263 = or i1 true, %253
  %264 = and i1 %262, %263
  %265 = or i1 %260, %264
  %266 = or i1 %249, %250
  br i1 %265, label %originalBBpart2168, label %originalBB164alteredBB

originalBBpart2168:                               ; preds = %originalBB164.split.split
  br label %loopEnd

267:                                              ; preds = %originalBBpart2
  %.reload67.reload110 = load i32, i32* %.reload67.reg2mem, align 4
  %268 = sub i32 %.reload67.reload110, -1155964139
  br label %.split237

.split237:                                        ; preds = %267
  %269 = add i32 %268, 1
  %270 = add i32 %269, -1155964139
  %271 = add nsw i32 %.reload67.reload110, 1
  store i32 176409419, i32* %switchVar, align 4
  store i32 %270, i32* %.reg2mem68, align 4
  %.reload65.reload112 = load i32, i32* %.reload65.reg2mem, align 4
  store i32 %.reload65.reload112, i32* %.reg2mem70, align 4
  %.reload63.reload114 = load i32, i32* %.reload63.reg2mem, align 4
  store i32 %.reload63.reload114, i32* %.reg2mem72, align 4
  br label %.split237.split

.split237.split:                                  ; preds = %.split237
  br label %loopEnd

272:                                              ; preds = %originalBBpart2
  %273 = load i32, i32* @x.19, align 4
  %274 = load i32, i32* @y.20, align 4
  %275 = add i32 %273, -1255262646
  %276 = sub i32 %275, 1
  %277 = sub i32 %276, -1255262646
  %278 = sub i32 %273, 1
  %279 = mul i32 %273, %277
  %280 = urem i32 %279, 2
  %281 = icmp eq i32 %280, 0
  %282 = icmp slt i32 %274, 10
  %283 = xor i1 %281, true
  %284 = xor i1 %282, true
  %285 = xor i1 false, true
  %286 = and i1 %283, false
  %287 = and i1 %281, %285
  %288 = and i1 %284, false
  br label %.split238

.split238:                                        ; preds = %272
  %289 = and i1 %282, %285
  br label %.split238.split

.split238.split:                                  ; preds = %.split238
  %290 = or i1 %286, %287
  %291 = or i1 %288, %289
  %292 = xor i1 %290, %291
  %293 = or i1 %283, %284
  %294 = xor i1 %293, true
  %295 = or i1 false, %285
  %296 = and i1 %294, %295
  %297 = or i1 %292, %296
  %298 = or i1 %281, %282
  br i1 %297, label %originalBB170, label %originalBB170alteredBB

originalBB170:                                    ; preds = %.split238.split, %originalBB170alteredBB.split.split
  %.reload73 = load i32, i32* %.reg2mem72, align 4
  store i32 %.reload73, i32* %.reload73.reg2mem, align 4
  %.reload71 = load i32, i32* %.reg2mem70, align 4
  store i32 %.reload71, i32* %.reload71.reg2mem, align 4
  %.reload69 = load i32, i32* %.reg2mem68, align 4
  store i32 %.reload69, i32* %.reload69.reg2mem, align 4
  %.reload25 = load %struct.AVFilterLink*, %struct.AVFilterLink** %.reg2mem22, align 8
  %299 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %.reload25, i64 0, i32 0
  %300 = load i32, i32* %299, align 8, !tbaa !18
  %301 = icmp eq i32 %300, 1
  %302 = select i1 %301, i32 -543369914, i32 1130461878
  store i32 %302, i32* %switchVar, align 4
  %.reload69.reload = load i32, i32* %.reload69.reg2mem, align 4
  store i32 %.reload69.reload, i32* %.reg2mem80, align 4
  %.reload71.reload = load i32, i32* %.reload71.reg2mem, align 4
  store i32 %.reload71.reload, i32* %.reg2mem82, align 4
  %.reload73.reload = load i32, i32* %.reload73.reg2mem, align 4
  store i32 %.reload73.reload, i32* %.reg2mem84, align 4
  store i32 0, i32* %.reg2mem86, align 4
  %303 = load i32, i32* @x.19, align 4
  %304 = load i32, i32* @y.20, align 4
  %305 = sub i32 %303, -1981059399
  %306 = sub i32 %305, 1
  %307 = add i32 %306, -1981059399
  %308 = sub i32 %303, 1
  %309 = mul i32 %303, %307
  %310 = urem i32 %309, 2
  %311 = icmp eq i32 %310, 0
  %312 = icmp slt i32 %304, 10
  %313 = xor i1 %311, true
  br label %originalBB170.split

originalBB170.split:                              ; preds = %originalBB170
  %314 = xor i1 %312, true
  %315 = xor i1 false, true
  %316 = and i1 %313, false
  br label %originalBB170.split.split

originalBB170.split.split:                        ; preds = %originalBB170.split
  %317 = and i1 %311, %315
  %318 = and i1 %314, false
  %319 = and i1 %312, %315
  %320 = or i1 %316, %317
  %321 = or i1 %318, %319
  %322 = xor i1 %320, %321
  %323 = or i1 %313, %314
  %324 = xor i1 %323, true
  %325 = or i1 false, %315
  %326 = and i1 %324, %325
  %327 = or i1 %322, %326
  %328 = or i1 %311, %312
  br i1 %327, label %originalBBpart2172, label %originalBB170alteredBB

originalBBpart2172:                               ; preds = %originalBB170.split.split
  br label %loopEnd

329:                                              ; preds = %originalBBpart2
  %.reload26 = load %struct.AVFilterLink*, %struct.AVFilterLink** %.reg2mem22, align 8
  br label %.split239

.split239:                                        ; preds = %329
  %330 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %.reload26, i64 0, i32 7
  %331 = load i8*, i8** %330, align 8, !tbaa !19
  store i8* %331, i8** %.reg2mem37, align 8
  %.reload39 = load i8*, i8** %.reg2mem37, align 8
  %332 = icmp eq i8* %.reload39, null
  %333 = select i1 %332, i32 39162436, i32 2142097729
  br label %.split239.split

.split239.split:                                  ; preds = %.split239
  store i32 %333, i32* %switchVar, align 4
  br label %loopEnd

334:                                              ; preds = %originalBBpart2
  %.reload27 = load %struct.AVFilterLink*, %struct.AVFilterLink** %.reg2mem22, align 8
  %335 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %.reload27, i64 0, i32 8
  %336 = load i8*, i8** %335, align 8, !tbaa !20
  br label %.split240

.split240:                                        ; preds = %334
  store i8* %336, i8** %.reg2mem40, align 8
  %.reload42 = load i8*, i8** %.reg2mem40, align 8
  br label %.split240.split

.split240.split:                                  ; preds = %.split240
  %337 = icmp eq i8* %.reload42, null
  %338 = select i1 %337, i32 39162436, i32 316399420
  store i32 %338, i32* %switchVar, align 4
  br label %loopEnd

339:                                              ; preds = %originalBBpart2
  %.reload73.reload120 = load i32, i32* %.reload73.reg2mem, align 4
  %340 = sub i32 0, %.reload73.reload120
  %341 = sub i32 0, 1
  %342 = add i32 %340, %341
  %343 = sub i32 0, %342
  %344 = add nsw i32 %.reload73.reload120, 1
  br label %.split241

.split241:                                        ; preds = %339
  store i32 -676486095, i32* %switchVar, align 4
  %.reload69.reload124 = load i32, i32* %.reload69.reg2mem, align 4
  store i32 %.reload69.reload124, i32* %.reg2mem74, align 4
  %.reload71.reload121 = load i32, i32* %.reload71.reg2mem, align 4
  store i32 %.reload71.reload121, i32* %.reg2mem76, align 4
  store i32 %343, i32* %.reg2mem78, align 4
  br label %.split241.split

.split241.split:                                  ; preds = %.split241
  br label %loopEnd

345:                                              ; preds = %originalBBpart2
  %346 = load i32, i32* @x.19, align 4
  %347 = load i32, i32* @y.20, align 4
  %348 = sub i32 %346, -1873042498
  %349 = sub i32 %348, 1
  %350 = add i32 %349, -1873042498
  %351 = sub i32 %346, 1
  %352 = mul i32 %346, %350
  %353 = urem i32 %352, 2
  %354 = icmp eq i32 %353, 0
  %355 = icmp slt i32 %347, 10
  %356 = xor i1 %354, true
  %357 = xor i1 %355, true
  %358 = xor i1 false, true
  br label %.split242

.split242:                                        ; preds = %345
  %359 = and i1 %356, false
  %360 = and i1 %354, %358
  %361 = and i1 %357, false
  %362 = and i1 %355, %358
  %363 = or i1 %359, %360
  %364 = or i1 %361, %362
  %365 = xor i1 %363, %364
  %366 = or i1 %356, %357
  %367 = xor i1 %366, true
  br label %.split242.split

.split242.split:                                  ; preds = %.split242
  %368 = or i1 false, %358
  %369 = and i1 %367, %368
  %370 = or i1 %365, %369
  %371 = or i1 %354, %355
  br i1 %370, label %originalBB174, label %originalBB174alteredBB

originalBB174:                                    ; preds = %.split242.split, %originalBB174alteredBB.split.split
  %.reload38 = load i8*, i8** %.reg2mem37, align 8
  %.reload41 = load i8*, i8** %.reg2mem40, align 8
  %372 = icmp eq i8* %.reload38, %.reload41
  %373 = select i1 %372, i32 621732911, i32 -891532232
  br label %originalBB174.split

originalBB174.split:                              ; preds = %originalBB174
  store i32 %373, i32* %switchVar, align 4
  %374 = load i32, i32* @x.19, align 4
  %375 = load i32, i32* @y.20, align 4
  %376 = sub i32 %374, -1746678526
  %377 = sub i32 %376, 1
  %378 = add i32 %377, -1746678526
  %379 = sub i32 %374, 1
  %380 = mul i32 %374, %378
  %381 = urem i32 %380, 2
  %382 = icmp eq i32 %381, 0
  %383 = icmp slt i32 %375, 10
  %384 = xor i1 %382, true
  %385 = xor i1 %383, true
  %386 = xor i1 true, true
  %387 = and i1 %384, true
  %388 = and i1 %382, %386
  br label %originalBB174.split.split

originalBB174.split.split:                        ; preds = %originalBB174.split
  %389 = and i1 %385, true
  %390 = and i1 %383, %386
  %391 = or i1 %387, %388
  %392 = or i1 %389, %390
  %393 = xor i1 %391, %392
  %394 = or i1 %384, %385
  %395 = xor i1 %394, true
  %396 = or i1 true, %386
  %397 = and i1 %395, %396
  %398 = or i1 %393, %397
  %399 = or i1 %382, %383
  br i1 %398, label %originalBBpart2176, label %originalBB174alteredBB

originalBBpart2176:                               ; preds = %originalBB174.split.split
  br label %loopEnd

400:                                              ; preds = %originalBBpart2
  %.reload71.reload123 = load i32, i32* %.reload71.reg2mem, align 4
  %401 = sub i32 %.reload71.reload123, 1873799406
  %402 = add i32 %401, 1
  br label %.split243

.split243:                                        ; preds = %400
  %403 = add i32 %402, 1873799406
  %404 = add nsw i32 %.reload71.reload123, 1
  store i32 -676486095, i32* %switchVar, align 4
  %.reload69.reload125 = load i32, i32* %.reload69.reg2mem, align 4
  store i32 %.reload69.reload125, i32* %.reg2mem74, align 4
  br label %.split243.split

.split243.split:                                  ; preds = %.split243
  store i32 %403, i32* %.reg2mem76, align 4
  %.reload73.reload119 = load i32, i32* %.reload73.reg2mem, align 4
  store i32 %.reload73.reload119, i32* %.reg2mem78, align 4
  br label %loopEnd

405:                                              ; preds = %originalBBpart2
  %.reload69.reload126 = load i32, i32* %.reload69.reg2mem, align 4
  br label %.split244

.split244:                                        ; preds = %405
  %406 = add i32 %.reload69.reload126, -338132213
  %407 = add i32 %406, 1
  %408 = sub i32 %407, -338132213
  %409 = add nsw i32 %.reload69.reload126, 1
  store i32 -676486095, i32* %switchVar, align 4
  br label %.split244.split

.split244.split:                                  ; preds = %.split244
  store i32 %408, i32* %.reg2mem74, align 4
  %.reload71.reload122 = load i32, i32* %.reload71.reg2mem, align 4
  store i32 %.reload71.reload122, i32* %.reg2mem76, align 4
  %.reload73.reload118 = load i32, i32* %.reload73.reg2mem, align 4
  store i32 %.reload73.reload118, i32* %.reg2mem78, align 4
  br label %loopEnd

410:                                              ; preds = %originalBBpart2
  %411 = load i32, i32* @x.19, align 4
  %412 = load i32, i32* @y.20, align 4
  %413 = add i32 %411, -791394947
  %414 = sub i32 %413, 1
  %415 = sub i32 %414, -791394947
  %416 = sub i32 %411, 1
  %417 = mul i32 %411, %415
  br label %.split245

.split245:                                        ; preds = %410
  %418 = urem i32 %417, 2
  %419 = icmp eq i32 %418, 0
  %420 = icmp slt i32 %412, 10
  br label %.split245.split

.split245.split:                                  ; preds = %.split245
  %421 = and i1 %419, %420
  %422 = xor i1 %419, %420
  %423 = or i1 %421, %422
  %424 = or i1 %419, %420
  br i1 %423, label %originalBB178, label %originalBB178alteredBB

originalBB178:                                    ; preds = %.split245.split, %originalBB178alteredBB.split.split
  %.reload79 = load i32, i32* %.reg2mem78, align 4
  store i32 %.reload79, i32* %.reload79.reg2mem, align 4
  %.reload77 = load i32, i32* %.reg2mem76, align 4
  store i32 %.reload77, i32* %.reload77.reg2mem, align 4
  %.reload75 = load i32, i32* %.reg2mem74, align 4
  store i32 %.reload75, i32* %.reload75.reg2mem, align 4
  %.reload28 = load %struct.AVFilterLink*, %struct.AVFilterLink** %.reg2mem22, align 8
  %425 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %.reload28, i64 0, i32 5
  %426 = load i8*, i8** %425, align 8, !tbaa !21
  store i8* %426, i8** %.reg2mem43, align 8
  %.reload45 = load i8*, i8** %.reg2mem43, align 8
  %427 = icmp eq i8* %.reload45, null
  %428 = select i1 %427, i32 974783291, i32 -145130325
  store i32 %428, i32* %switchVar, align 4
  %429 = load i32, i32* @x.19, align 4
  %430 = load i32, i32* @y.20, align 4
  br label %originalBB178.split

originalBB178.split:                              ; preds = %originalBB178
  %431 = sub i32 %429, -1637053606
  %432 = sub i32 %431, 1
  %433 = add i32 %432, -1637053606
  br label %originalBB178.split.split

originalBB178.split.split:                        ; preds = %originalBB178.split
  %434 = sub i32 %429, 1
  %435 = mul i32 %429, %433
  %436 = urem i32 %435, 2
  %437 = icmp eq i32 %436, 0
  %438 = icmp slt i32 %430, 10
  %439 = and i1 %437, %438
  %440 = xor i1 %437, %438
  %441 = or i1 %439, %440
  %442 = or i1 %437, %438
  br i1 %441, label %originalBBpart2180, label %originalBB178alteredBB

originalBBpart2180:                               ; preds = %originalBB178.split.split
  br label %loopEnd

443:                                              ; preds = %originalBBpart2
  %.reload29 = load %struct.AVFilterLink*, %struct.AVFilterLink** %.reg2mem22, align 8
  %444 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %.reload29, i64 0, i32 6
  %445 = load i8*, i8** %444, align 8, !tbaa !22
  br label %.split246

.split246:                                        ; preds = %443
  store i8* %445, i8** %.reg2mem46, align 8
  br label %.split246.split

.split246.split:                                  ; preds = %.split246
  %.reload48 = load i8*, i8** %.reg2mem46, align 8
  %446 = icmp eq i8* %.reload48, null
  %447 = select i1 %446, i32 974783291, i32 -783883966
  store i32 %447, i32* %switchVar, align 4
  br label %loopEnd

448:                                              ; preds = %originalBBpart2
  %.reload79.reload128 = load i32, i32* %.reload79.reg2mem, align 4
  br label %.split247

.split247:                                        ; preds = %448
  %449 = sub i32 %.reload79.reload128, 1219868162
  %450 = add i32 %449, 1
  %451 = add i32 %450, 1219868162
  %452 = add nsw i32 %.reload79.reload128, 1
  store i32 1130461878, i32* %switchVar, align 4
  %.reload75.reload = load i32, i32* %.reload75.reg2mem, align 4
  store i32 %.reload75.reload, i32* %.reg2mem80, align 4
  %.reload77.reload = load i32, i32* %.reload77.reg2mem, align 4
  store i32 %.reload77.reload, i32* %.reg2mem82, align 4
  store i32 %451, i32* %.reg2mem84, align 4
  store i32 0, i32* %.reg2mem86, align 4
  br label %.split247.split

.split247.split:                                  ; preds = %.split247
  br label %loopEnd

453:                                              ; preds = %originalBBpart2
  %.reload44 = load i8*, i8** %.reg2mem43, align 8
  br label %.split248

.split248:                                        ; preds = %453
  %.reload47 = load i8*, i8** %.reg2mem46, align 8
  %454 = icmp eq i8* %.reload44, %.reload47
  br label %.split248.split

.split248.split:                                  ; preds = %.split248
  %455 = select i1 %454, i32 1234706030, i32 777778484
  store i32 %455, i32* %switchVar, align 4
  br label %loopEnd

456:                                              ; preds = %originalBBpart2
  %457 = load i32, i32* @x.19, align 4
  br label %.split249

.split249:                                        ; preds = %456
  %458 = load i32, i32* @y.20, align 4
  %459 = sub i32 0, 1
  %460 = add i32 %457, %459
  br label %.split249.split

.split249.split:                                  ; preds = %.split249
  %461 = sub i32 %457, 1
  %462 = mul i32 %457, %460
  %463 = urem i32 %462, 2
  %464 = icmp eq i32 %463, 0
  %465 = icmp slt i32 %458, 10
  %466 = and i1 %464, %465
  %467 = xor i1 %464, %465
  %468 = or i1 %466, %467
  %469 = or i1 %464, %465
  br i1 %468, label %originalBB182, label %originalBB182alteredBB

originalBB182:                                    ; preds = %.split249.split, %originalBB182alteredBB.split.split
  %.reload77.reload130 = load i32, i32* %.reload77.reg2mem, align 4
  %470 = add i32 %.reload77.reload130, -778841010
  %471 = add i32 %470, 1
  %472 = sub i32 %471, -778841010
  %473 = add nsw i32 %.reload77.reload130, 1
  store i32 1130461878, i32* %switchVar, align 4
  %.reload75.reload131 = load i32, i32* %.reload75.reg2mem, align 4
  store i32 %.reload75.reload131, i32* %.reg2mem80, align 4
  store i32 %472, i32* %.reg2mem82, align 4
  %.reload79.reload127 = load i32, i32* %.reload79.reg2mem, align 4
  store i32 %.reload79.reload127, i32* %.reg2mem84, align 4
  store i32 0, i32* %.reg2mem86, align 4
  %474 = load i32, i32* @x.19, align 4
  %475 = load i32, i32* @y.20, align 4
  %476 = add i32 %474, 732105060
  %477 = sub i32 %476, 1
  %478 = sub i32 %477, 732105060
  %479 = sub i32 %474, 1
  br label %originalBB182.split

originalBB182.split:                              ; preds = %originalBB182
  %480 = mul i32 %474, %478
  %481 = urem i32 %480, 2
  %482 = icmp eq i32 %481, 0
  br label %originalBB182.split.split

originalBB182.split.split:                        ; preds = %originalBB182.split
  %483 = icmp slt i32 %475, 10
  %484 = and i1 %482, %483
  %485 = xor i1 %482, %483
  %486 = or i1 %484, %485
  %487 = or i1 %482, %483
  br i1 %486, label %originalBBpart2193, label %originalBB182alteredBB

originalBBpart2193:                               ; preds = %originalBB182.split.split
  br label %loopEnd

488:                                              ; preds = %originalBBpart2
  %489 = load i32, i32* @x.19, align 4
  %490 = load i32, i32* @y.20, align 4
  %491 = sub i32 %489, -1764996099
  %492 = sub i32 %491, 1
  %493 = add i32 %492, -1764996099
  %494 = sub i32 %489, 1
  %495 = mul i32 %489, %493
  %496 = urem i32 %495, 2
  %497 = icmp eq i32 %496, 0
  %498 = icmp slt i32 %490, 10
  %499 = xor i1 %497, true
  %500 = xor i1 %498, true
  %501 = xor i1 true, true
  %502 = and i1 %499, true
  %503 = and i1 %497, %501
  br label %.split250

.split250:                                        ; preds = %488
  %504 = and i1 %500, true
  br label %.split250.split

.split250.split:                                  ; preds = %.split250
  %505 = and i1 %498, %501
  %506 = or i1 %502, %503
  %507 = or i1 %504, %505
  %508 = xor i1 %506, %507
  %509 = or i1 %499, %500
  %510 = xor i1 %509, true
  %511 = or i1 true, %501
  %512 = and i1 %510, %511
  %513 = or i1 %508, %512
  %514 = or i1 %497, %498
  br i1 %513, label %originalBB195, label %originalBB195alteredBB

originalBB195:                                    ; preds = %.split250.split, %originalBB195alteredBB.split.split
  %.reload75.reload132 = load i32, i32* %.reload75.reg2mem, align 4
  %515 = sub i32 %.reload75.reload132, 1489418453
  %516 = add i32 %515, 1
  %517 = add i32 %516, 1489418453
  %518 = add nsw i32 %.reload75.reload132, 1
  store i32 1130461878, i32* %switchVar, align 4
  store i32 %517, i32* %.reg2mem80, align 4
  %.reload77.reload129 = load i32, i32* %.reload77.reg2mem, align 4
  store i32 %.reload77.reload129, i32* %.reg2mem82, align 4
  %.reload79.reload = load i32, i32* %.reload79.reg2mem, align 4
  store i32 %.reload79.reload, i32* %.reg2mem84, align 4
  store i32 0, i32* %.reg2mem86, align 4
  %519 = load i32, i32* @x.19, align 4
  %520 = load i32, i32* @y.20, align 4
  %521 = sub i32 0, 1
  %522 = add i32 %519, %521
  br label %originalBB195.split

originalBB195.split:                              ; preds = %originalBB195
  %523 = sub i32 %519, 1
  %524 = mul i32 %519, %522
  %525 = urem i32 %524, 2
  %526 = icmp eq i32 %525, 0
  %527 = icmp slt i32 %520, 10
  %528 = xor i1 %526, true
  %529 = xor i1 %527, true
  %530 = xor i1 false, true
  %531 = and i1 %528, false
  %532 = and i1 %526, %530
  %533 = and i1 %529, false
  %534 = and i1 %527, %530
  %535 = or i1 %531, %532
  %536 = or i1 %533, %534
  %537 = xor i1 %535, %536
  %538 = or i1 %528, %529
  %539 = xor i1 %538, true
  br label %originalBB195.split.split

originalBB195.split.split:                        ; preds = %originalBB195.split
  %540 = or i1 false, %530
  %541 = and i1 %539, %540
  %542 = or i1 %537, %541
  %543 = or i1 %526, %527
  br i1 %542, label %originalBBpart2207, label %originalBB195alteredBB

originalBBpart2207:                               ; preds = %originalBB195.split.split
  br label %loopEnd

544:                                              ; preds = %originalBBpart2
  %545 = load i32, i32* @x.19, align 4
  br label %.split251

.split251:                                        ; preds = %544
  %546 = load i32, i32* @y.20, align 4
  br label %.split251.split

.split251.split:                                  ; preds = %.split251
  %547 = sub i32 %545, 1601707778
  %548 = sub i32 %547, 1
  %549 = add i32 %548, 1601707778
  %550 = sub i32 %545, 1
  %551 = mul i32 %545, %549
  %552 = urem i32 %551, 2
  %553 = icmp eq i32 %552, 0
  %554 = icmp slt i32 %546, 10
  %555 = and i1 %553, %554
  %556 = xor i1 %553, %554
  %557 = or i1 %555, %556
  %558 = or i1 %553, %554
  br i1 %557, label %originalBB209, label %originalBB209alteredBB

originalBB209:                                    ; preds = %.split251.split, %originalBB209alteredBB.split.split
  %.reload87 = load i32, i32* %.reg2mem86, align 4
  store i32 %.reload87, i32* %.reload87.reg2mem, align 4
  %.reload85 = load i32, i32* %.reg2mem84, align 4
  store i32 %.reload85, i32* %.reload85.reg2mem, align 4
  %.reload83 = load i32, i32* %.reg2mem82, align 4
  store i32 %.reload83, i32* %.reload83.reg2mem, align 4
  br label %originalBB209.split

originalBB209.split:                              ; preds = %originalBB209
  %.reload81 = load i32, i32* %.reg2mem80, align 4
  store i32 %.reload81, i32* %.reload81.reg2mem, align 4
  store i32 1311808231, i32* %switchVar, align 4
  %559 = load i32, i32* @x.19, align 4
  %560 = load i32, i32* @y.20, align 4
  %561 = sub i32 %559, -274415728
  %562 = sub i32 %561, 1
  br label %originalBB209.split.split

originalBB209.split.split:                        ; preds = %originalBB209.split
  %563 = add i32 %562, -274415728
  %564 = sub i32 %559, 1
  %565 = mul i32 %559, %563
  %566 = urem i32 %565, 2
  %567 = icmp eq i32 %566, 0
  %568 = icmp slt i32 %560, 10
  %569 = xor i1 %567, true
  %570 = xor i1 %568, true
  %571 = xor i1 true, true
  %572 = and i1 %569, true
  %573 = and i1 %567, %571
  %574 = and i1 %570, true
  %575 = and i1 %568, %571
  %576 = or i1 %572, %573
  %577 = or i1 %574, %575
  %578 = xor i1 %576, %577
  %579 = or i1 %569, %570
  %580 = xor i1 %579, true
  %581 = or i1 true, %571
  %582 = and i1 %580, %581
  %583 = or i1 %578, %582
  %584 = or i1 %567, %568
  br i1 %583, label %originalBBpart2211, label %originalBB209alteredBB

originalBBpart2211:                               ; preds = %originalBB209.split.split
  br label %loopEnd

NodeBlock:                                        ; preds = %originalBBpart2
  %.reload87.reload133 = load i32, i32* %.reload87.reg2mem, align 4
  br label %NodeBlock.split

NodeBlock.split:                                  ; preds = %NodeBlock
  %Pivot = icmp slt i32 %.reload87.reload133, 10
  br label %NodeBlock.split.split

NodeBlock.split.split:                            ; preds = %NodeBlock.split
  %585 = select i1 %Pivot, i32 -1721443630, i32 827632482
  store i32 %585, i32* %switchVar, align 4
  br label %loopEnd

LeafBlock:                                        ; preds = %originalBBpart2
  %.reload87.reload134 = load i32, i32* %.reload87.reg2mem, align 4
  %SwitchLeaf = icmp eq i32 %.reload87.reload134, 0
  %586 = select i1 %SwitchLeaf, i32 827632482, i32 722580410
  br label %LeafBlock.split

LeafBlock.split:                                  ; preds = %LeafBlock
  store i32 %586, i32* %switchVar, align 4
  br label %LeafBlock.split.split

LeafBlock.split.split:                            ; preds = %LeafBlock.split
  br label %loopEnd

587:                                              ; preds = %originalBBpart2
  %588 = load i32, i32* @x.19, align 4
  %589 = load i32, i32* @y.20, align 4
  %590 = sub i32 %588, -114948466
  %591 = sub i32 %590, 1
  %592 = add i32 %591, -114948466
  %593 = sub i32 %588, 1
  %594 = mul i32 %588, %592
  %595 = urem i32 %594, 2
  %596 = icmp eq i32 %595, 0
  br label %.split252

.split252:                                        ; preds = %587
  %597 = icmp slt i32 %589, 10
  %598 = xor i1 %596, true
  %599 = xor i1 %597, true
  %600 = xor i1 false, true
  %601 = and i1 %598, false
  %602 = and i1 %596, %600
  %603 = and i1 %599, false
  %604 = and i1 %597, %600
  %605 = or i1 %601, %602
  %606 = or i1 %603, %604
  %607 = xor i1 %605, %606
  %608 = or i1 %598, %599
  %609 = xor i1 %608, true
  %610 = or i1 false, %600
  %611 = and i1 %609, %610
  %612 = or i1 %607, %611
  br label %.split252.split

.split252.split:                                  ; preds = %.split252
  %613 = or i1 %596, %597
  br i1 %612, label %originalBB213, label %originalBB213alteredBB

originalBB213:                                    ; preds = %.split252.split, %originalBB213alteredBB.split.split
  %.reload61.reload = load i64, i64* %.reload61.reg2mem, align 8
  %614 = add i64 %.reload61.reload, -1142599882216753376
  %615 = add i64 %614, 1
  %616 = sub i64 %615, -1142599882216753376
  %617 = add nuw nsw i64 %.reload61.reload, 1
  %.reload21 = load i64, i64* %.reg2mem20, align 8
  %618 = icmp eq i64 %616, %.reload21
  %619 = select i1 %618, i32 70026953, i32 -1933362679
  store i32 %619, i32* %switchVar, align 4
  store i64 %616, i64* %.reg2mem60, align 8
  %.reload85.reload136 = load i32, i32* %.reload85.reg2mem, align 4
  store i32 %.reload85.reload136, i32* %.reg2mem62, align 4
  %.reload83.reload138 = load i32, i32* %.reload83.reg2mem, align 4
  store i32 %.reload83.reload138, i32* %.reg2mem64, align 4
  %.reload81.reload140 = load i32, i32* %.reload81.reg2mem, align 4
  store i32 %.reload81.reload140, i32* %.reg2mem66, align 4
  %.reload81.reload139 = load i32, i32* %.reload81.reg2mem, align 4
  store i32 %.reload81.reload139, i32* %.reg2mem88, align 4
  %.reload83.reload137 = load i32, i32* %.reload83.reg2mem, align 4
  store i32 %.reload83.reload137, i32* %.reg2mem90, align 4
  %.reload85.reload135 = load i32, i32* %.reload85.reg2mem, align 4
  store i32 %.reload85.reload135, i32* %.reg2mem92, align 4
  store i32 0, i32* %.reg2mem94, align 4
  br label %originalBB213.split

originalBB213.split:                              ; preds = %originalBB213
  %620 = load i32, i32* @x.19, align 4
  %621 = load i32, i32* @y.20, align 4
  %622 = add i32 %620, 202885
  %623 = sub i32 %622, 1
  %624 = sub i32 %623, 202885
  br label %originalBB213.split.split

originalBB213.split.split:                        ; preds = %originalBB213.split
  %625 = sub i32 %620, 1
  %626 = mul i32 %620, %624
  %627 = urem i32 %626, 2
  %628 = icmp eq i32 %627, 0
  %629 = icmp slt i32 %621, 10
  %630 = and i1 %628, %629
  %631 = xor i1 %628, %629
  %632 = or i1 %630, %631
  %633 = or i1 %628, %629
  br i1 %632, label %originalBBpart2221, label %originalBB213alteredBB

originalBBpart2221:                               ; preds = %originalBB213.split.split
  br label %loopEnd

NewDefault:                                       ; preds = %originalBBpart2
  store i32 70026953, i32* %switchVar, align 4
  %.reload81.reload = load i32, i32* %.reload81.reg2mem, align 4
  store i32 %.reload81.reload, i32* %.reg2mem88, align 4
  %.reload83.reload = load i32, i32* %.reload83.reg2mem, align 4
  br label %NewDefault.split

NewDefault.split:                                 ; preds = %NewDefault
  store i32 %.reload83.reload, i32* %.reg2mem90, align 4
  %.reload85.reload = load i32, i32* %.reload85.reg2mem, align 4
  store i32 %.reload85.reload, i32* %.reg2mem92, align 4
  %.reload87.reload = load i32, i32* %.reload87.reg2mem, align 4
  store i32 %.reload87.reload, i32* %.reg2mem94, align 4
  br label %NewDefault.split.split

NewDefault.split.split:                           ; preds = %NewDefault.split
  br label %loopEnd

634:                                              ; preds = %originalBBpart2
  %.reload95 = load i32, i32* %.reg2mem94, align 4
  %.reload93 = load i32, i32* %.reg2mem92, align 4
  store i32 %.reload93, i32* %.reload93.reg2mem, align 4
  %.reload91 = load i32, i32* %.reg2mem90, align 4
  store i32 %.reload91, i32* %.reload91.reg2mem, align 4
  %.reload89 = load i32, i32* %.reg2mem88, align 4
  store i32 %.reload89, i32* %.reload89.reg2mem, align 4
  br label %.split253

.split253:                                        ; preds = %634
  %635 = icmp eq i32 %.reload95, 0
  %.reload53.reload = load i64, i64* %.reload53.reg2mem, align 8
  %636 = sub i64 0, 1
  %637 = sub i64 %.reload53.reload, %636
  %638 = add nuw nsw i64 %.reload53.reload, 1
  br label %.split253.split

.split253.split:                                  ; preds = %.split253
  store i64 %637, i64* %.reg2mem49, align 8
  %639 = select i1 %635, i32 1559568443, i32 1096702680
  store i32 %639, i32* %switchVar, align 4
  store i32 undef, i32* %.reg2mem102, align 4
  br label %loopEnd

640:                                              ; preds = %originalBBpart2
  %.reload101 = load i32, i32* %.reg2mem100, align 4
  %.reload99 = load i32, i32* %.reg2mem98, align 4
  %.reload97 = load i32, i32* %.reg2mem96, align 4
  store i32 %.reload97, i32* %.reload97.reg2mem, align 4
  %.reload6 = load i32, i32* %.reg2mem5, align 4
  br label %.split254

.split254:                                        ; preds = %640
  %.reload97.reload = load i32, i32* %.reload97.reg2mem, align 4
  %641 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0), i32 noundef %.reload6, i32 noundef %.reload97.reload, i32 noundef %.reload99, i32 noundef %.reload101)
  %642 = icmp eq i32 %.reload101, 0
  %643 = select i1 %642, i32 1096702680, i32 -2055305690
  store i32 %643, i32* %switchVar, align 4
  br label %.split254.split

.split254.split:                                  ; preds = %.split254
  store i32 0, i32* %.reg2mem102, align 4
  br label %loopEnd

644:                                              ; preds = %originalBBpart2
  %.reload7 = load i32, i32* %.reg2mem5, align 4
  %.reload97.reload144 = load i32, i32* %.reload97.reg2mem, align 4
  %645 = xor i32 %.reload7, -1
  %646 = xor i32 %.reload97.reload144, -1
  %647 = xor i32 2038725055, -1
  %648 = and i32 %645, 2038725055
  %649 = and i32 %.reload7, %647
  %650 = and i32 %646, 2038725055
  %651 = and i32 %.reload97.reload144, %647
  br label %.split255

.split255:                                        ; preds = %644
  %652 = or i32 %648, %649
  %653 = or i32 %650, %651
  %654 = xor i32 %652, %653
  %655 = or i32 %645, %646
  %656 = xor i32 %655, -1
  %657 = or i32 2038725055, %647
  %658 = and i32 %656, %657
  br label %.split255.split

.split255.split:                                  ; preds = %.split255
  %659 = or i32 %654, %658
  %660 = or i32 %.reload7, %.reload97.reload144
  %661 = icmp eq i32 %659, 0
  %662 = select i1 %661, i32 1191590054, i32 1096702680
  store i32 %662, i32* %switchVar, align 4
  store i32 -11, i32* %.reg2mem102, align 4
  br label %loopEnd

663:                                              ; preds = %originalBBpart2
  %664 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  br label %.split256

.split256:                                        ; preds = %663
  %665 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %664) #11
  br label %.split256.split

.split256.split:                                  ; preds = %.split256
  store i32 1096702680, i32* %switchVar, align 4
  store i32 -5, i32* %.reg2mem102, align 4
  br label %loopEnd

666:                                              ; preds = %originalBBpart2
  %667 = load i32, i32* @x.19, align 4
  br label %.split257

.split257:                                        ; preds = %666
  %668 = load i32, i32* @y.20, align 4
  %669 = add i32 %667, -1142041242
  %670 = sub i32 %669, 1
  %671 = sub i32 %670, -1142041242
  %672 = sub i32 %667, 1
  %673 = mul i32 %667, %671
  %674 = urem i32 %673, 2
  %675 = icmp eq i32 %674, 0
  %676 = icmp slt i32 %668, 10
  %677 = xor i1 %675, true
  %678 = xor i1 %676, true
  %679 = xor i1 false, true
  %680 = and i1 %677, false
  %681 = and i1 %675, %679
  %682 = and i1 %678, false
  br label %.split257.split

.split257.split:                                  ; preds = %.split257
  %683 = and i1 %676, %679
  %684 = or i1 %680, %681
  %685 = or i1 %682, %683
  %686 = xor i1 %684, %685
  %687 = or i1 %677, %678
  %688 = xor i1 %687, true
  %689 = or i1 false, %679
  %690 = and i1 %688, %689
  %691 = or i1 %686, %690
  %692 = or i1 %675, %676
  br i1 %691, label %originalBB223, label %originalBB223alteredBB

originalBB223:                                    ; preds = %.split257.split, %originalBB223alteredBB.split
  %.reload103 = load i32, i32* %.reg2mem102, align 4
  br label %originalBB223.split

originalBB223.split:                              ; preds = %originalBB223
  %693 = load i32, i32* @x.19, align 4
  %694 = load i32, i32* @y.20, align 4
  %695 = sub i32 0, 1
  %696 = add i32 %693, %695
  %697 = sub i32 %693, 1
  %698 = mul i32 %693, %696
  %699 = urem i32 %698, 2
  br label %originalBB223.split.split

originalBB223.split.split:                        ; preds = %originalBB223.split
  %700 = icmp eq i32 %699, 0
  %701 = icmp slt i32 %694, 10
  %702 = xor i1 %700, true
  %703 = xor i1 %701, true
  %704 = xor i1 false, true
  %705 = and i1 %702, false
  %706 = and i1 %700, %704
  %707 = and i1 %703, false
  %708 = and i1 %701, %704
  %709 = or i1 %705, %706
  %710 = or i1 %707, %708
  %711 = xor i1 %709, %710
  %712 = or i1 %702, %703
  %713 = xor i1 %712, true
  %714 = or i1 false, %704
  %715 = and i1 %713, %714
  %716 = or i1 %711, %715
  %717 = or i1 %700, %701
  br i1 %716, label %originalBBpart2225, label %originalBB223alteredBB

originalBBpart2225:                               ; preds = %originalBB223.split.split
  ret i32 %.reload103

loopEnd:                                          ; preds = %.split256.split, %.split255.split, %.split254.split, %.split253.split, %NewDefault.split.split, %originalBBpart2221, %LeafBlock.split.split, %NodeBlock.split.split, %originalBBpart2211, %originalBBpart2207, %originalBBpart2193, %.split248.split, %.split247.split, %.split246.split, %originalBBpart2180, %.split244.split, %.split243.split, %originalBBpart2176, %.split241.split, %.split240.split, %.split239.split, %originalBBpart2172, %.split237.split, %originalBBpart2168, %.split235.split, %originalBBpart2162, %.split233.split, %originalBBpart2155, %.split231.split, %.split230.split, %originalBBpart2151, %originalBBpart2147, %.split227.split, %first.split.split, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %loopEntry.split.split
  %switchVar1alteredBB = load i32, i32* %switchVar, align 4
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB

originalBB145alteredBB:                           ; preds = %originalBB145.split.split, %.split228.split
  %.reload11alteredBB = load i64, i64* %.reg2mem10, align 8
  %.reload50alteredBB = load i64, i64* %.reg2mem49, align 8
  %718 = icmp eq i64 %.reload50alteredBB, %.reload11alteredBB
  br label %originalBB145alteredBB.split

originalBB145alteredBB.split:                     ; preds = %originalBB145alteredBB
  %719 = select i1 %718, i32 -1585566633, i32 149785847
  store i32 %719, i32* %switchVar, align 4
  %.reload51alteredBB = load i64, i64* %.reg2mem49, align 8
  store i64 %.reload51alteredBB, i64* %.reg2mem52, align 8
  %.reload93.reload141alteredBB = load i32, i32* %.reload93.reg2mem, align 4
  store i32 %.reload93.reload141alteredBB, i32* %.reg2mem54, align 4
  %.reload91.reload142alteredBB = load i32, i32* %.reload91.reg2mem, align 4
  store i32 %.reload91.reload142alteredBB, i32* %.reg2mem56, align 4
  br label %originalBB145alteredBB.split.split

originalBB145alteredBB.split.split:               ; preds = %originalBB145alteredBB.split
  %.reload89.reload143alteredBB = load i32, i32* %.reload89.reg2mem, align 4
  store i32 %.reload89.reload143alteredBB, i32* %.reg2mem58, align 4
  %.reload89.reloadalteredBB = load i32, i32* %.reload89.reg2mem, align 4
  store i32 %.reload89.reloadalteredBB, i32* %.reg2mem96, align 4
  %.reload91.reloadalteredBB = load i32, i32* %.reload91.reg2mem, align 4
  store i32 %.reload91.reloadalteredBB, i32* %.reg2mem98, align 4
  %.reload93.reloadalteredBB = load i32, i32* %.reload93.reg2mem, align 4
  store i32 %.reload93.reloadalteredBB, i32* %.reg2mem100, align 4
  br label %originalBB145

originalBB149alteredBB:                           ; preds = %originalBB149.split.split, %.split229.split
  %.reload59alteredBB = load i32, i32* %.reg2mem58, align 4
  store i32 %.reload59alteredBB, i32* %.reload59.reg2mem, align 4
  %.reload57alteredBB = load i32, i32* %.reg2mem56, align 4
  store i32 %.reload57alteredBB, i32* %.reload57.reg2mem, align 4
  %.reload55alteredBB = load i32, i32* %.reg2mem54, align 4
  store i32 %.reload55alteredBB, i32* %.reload55.reg2mem, align 4
  %.reload53alteredBB = load i64, i64* %.reg2mem52, align 8
  store i64 %.reload53alteredBB, i64* %.reload53.reg2mem, align 8
  %.reload9alteredBB = load %struct.AVFilterContext**, %struct.AVFilterContext*** %.reg2mem8, align 8
  %.reload53.reload107alteredBB = load i64, i64* %.reload53.reg2mem, align 8
  %720 = getelementptr inbounds %struct.AVFilterContext*, %struct.AVFilterContext** %.reload9alteredBB, i64 %.reload53.reload107alteredBB
  %721 = load %struct.AVFilterContext*, %struct.AVFilterContext** %720, align 8, !tbaa !3
  store %struct.AVFilterContext* %721, %struct.AVFilterContext** %.reg2mem12, align 8
  %.reload13alteredBB = load %struct.AVFilterContext*, %struct.AVFilterContext** %.reg2mem12, align 8
  br label %originalBB149alteredBB.split

originalBB149alteredBB.split:                     ; preds = %originalBB149alteredBB
  %722 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %.reload13alteredBB, i64 0, i32 2
  %723 = load i32, i32* %722, align 8, !tbaa !13
  store i32 %723, i32* %.reg2mem15, align 4
  %.reload17alteredBB = load i32, i32* %.reg2mem15, align 4
  %724 = icmp sgt i32 %.reload17alteredBB, 0
  %725 = select i1 %724, i32 -629259396, i32 70026953
  store i32 %725, i32* %switchVar, align 4
  %.reload59.reloadalteredBB = load i32, i32* %.reload59.reg2mem, align 4
  store i32 %.reload59.reloadalteredBB, i32* %.reg2mem88, align 4
  %.reload57.reloadalteredBB = load i32, i32* %.reload57.reg2mem, align 4
  br label %originalBB149alteredBB.split.split

originalBB149alteredBB.split.split:               ; preds = %originalBB149alteredBB.split
  store i32 %.reload57.reloadalteredBB, i32* %.reg2mem90, align 4
  %.reload55.reloadalteredBB = load i32, i32* %.reload55.reg2mem, align 4
  store i32 %.reload55.reloadalteredBB, i32* %.reg2mem92, align 4
  store i32 0, i32* %.reg2mem94, align 4
  br label %originalBB149

originalBB153alteredBB:                           ; preds = %originalBB153.split.split, %.split232.split
  %.reload23alteredBB = load %struct.AVFilterLink*, %struct.AVFilterLink** %.reg2mem22, align 8
  %726 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %.reload23alteredBB, i64 0, i32 3
  br label %originalBB153alteredBB.split

originalBB153alteredBB.split:                     ; preds = %originalBB153alteredBB
  %727 = load i8*, i8** %726, align 8, !tbaa !15
  store i8* %727, i8** %.reg2mem31, align 8
  %.reload33alteredBB = load i8*, i8** %.reg2mem31, align 8
  %728 = icmp eq i8* %.reload33alteredBB, null
  br label %originalBB153alteredBB.split.split

originalBB153alteredBB.split.split:               ; preds = %originalBB153alteredBB.split
  %729 = select i1 %728, i32 231854181, i32 1093310285
  store i32 %729, i32* %switchVar, align 4
  br label %originalBB153

originalBB157alteredBB:                           ; preds = %originalBB157.split.split, %.split234.split
  %.reload63.reload116alteredBB = load i32, i32* %.reload63.reg2mem, align 4
  %730 = sub i32 %.reload63.reload116alteredBB, 561196135
  %731 = sub i32 %730, 1
  %732 = add i32 %731, 561196135
  %_ = sub i32 %.reload63.reload116alteredBB, 1
  %gen = mul i32 %732, 1
  %_158 = shl i32 %.reload63.reload116alteredBB, 1
  %733 = sub i32 0, 1591214884
  %734 = sub i32 %733, %.reload63.reload116alteredBB
  %735 = add i32 %734, 1591214884
  %_159 = sub i32 0, %.reload63.reload116alteredBB
  %736 = add i32 %735, 1819141334
  %737 = add i32 %736, 1
  %738 = sub i32 %737, 1819141334
  %gen160 = add i32 %735, 1
  %739 = sub i32 0, %.reload63.reload116alteredBB
  %740 = sub i32 0, 1
  %741 = add i32 %739, %740
  %742 = sub i32 0, %741
  %743 = add nsw i32 %.reload63.reload116alteredBB, 1
  store i32 176409419, i32* %switchVar, align 4
  br label %originalBB157alteredBB.split

originalBB157alteredBB.split:                     ; preds = %originalBB157alteredBB
  %.reload67.reload108alteredBB = load i32, i32* %.reload67.reg2mem, align 4
  store i32 %.reload67.reload108alteredBB, i32* %.reg2mem68, align 4
  %.reload65.reload111alteredBB = load i32, i32* %.reload65.reg2mem, align 4
  br label %originalBB157alteredBB.split.split

originalBB157alteredBB.split.split:               ; preds = %originalBB157alteredBB.split
  store i32 %.reload65.reload111alteredBB, i32* %.reg2mem70, align 4
  store i32 %742, i32* %.reg2mem72, align 4
  br label %originalBB157

originalBB164alteredBB:                           ; preds = %originalBB164.split.split, %.split236.split
  %.reload65.reload113alteredBB = load i32, i32* %.reload65.reg2mem, align 4
  %744 = sub i32 0, -1700226028
  %745 = sub i32 %744, %.reload65.reload113alteredBB
  %746 = add i32 %745, -1700226028
  br label %originalBB164alteredBB.split

originalBB164alteredBB.split:                     ; preds = %originalBB164alteredBB
  %_165 = sub i32 0, %.reload65.reload113alteredBB
  %747 = sub i32 %746, -343267657
  %748 = add i32 %747, 1
  %749 = add i32 %748, -343267657
  %gen166 = add i32 %746, 1
  %750 = add i32 %.reload65.reload113alteredBB, -31080693
  %751 = add i32 %750, 1
  %752 = sub i32 %751, -31080693
  br label %originalBB164alteredBB.split.split

originalBB164alteredBB.split.split:               ; preds = %originalBB164alteredBB.split
  %753 = add nsw i32 %.reload65.reload113alteredBB, 1
  store i32 176409419, i32* %switchVar, align 4
  %.reload67.reload109alteredBB = load i32, i32* %.reload67.reg2mem, align 4
  store i32 %.reload67.reload109alteredBB, i32* %.reg2mem68, align 4
  store i32 %752, i32* %.reg2mem70, align 4
  %.reload63.reload115alteredBB = load i32, i32* %.reload63.reg2mem, align 4
  store i32 %.reload63.reload115alteredBB, i32* %.reg2mem72, align 4
  br label %originalBB164

originalBB170alteredBB:                           ; preds = %originalBB170.split.split, %.split238.split
  %.reload73alteredBB = load i32, i32* %.reg2mem72, align 4
  store i32 %.reload73alteredBB, i32* %.reload73.reg2mem, align 4
  %.reload71alteredBB = load i32, i32* %.reg2mem70, align 4
  store i32 %.reload71alteredBB, i32* %.reload71.reg2mem, align 4
  br label %originalBB170alteredBB.split

originalBB170alteredBB.split:                     ; preds = %originalBB170alteredBB
  %.reload69alteredBB = load i32, i32* %.reg2mem68, align 4
  store i32 %.reload69alteredBB, i32* %.reload69.reg2mem, align 4
  %.reload25alteredBB = load %struct.AVFilterLink*, %struct.AVFilterLink** %.reg2mem22, align 8
  br label %originalBB170alteredBB.split.split

originalBB170alteredBB.split.split:               ; preds = %originalBB170alteredBB.split
  %754 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %.reload25alteredBB, i64 0, i32 0
  %755 = load i32, i32* %754, align 8, !tbaa !18
  %756 = icmp eq i32 %755, 1
  %757 = select i1 %756, i32 -543369914, i32 1130461878
  store i32 %757, i32* %switchVar, align 4
  %.reload69.reloadalteredBB = load i32, i32* %.reload69.reg2mem, align 4
  store i32 %.reload69.reloadalteredBB, i32* %.reg2mem80, align 4
  %.reload71.reloadalteredBB = load i32, i32* %.reload71.reg2mem, align 4
  store i32 %.reload71.reloadalteredBB, i32* %.reg2mem82, align 4
  %.reload73.reloadalteredBB = load i32, i32* %.reload73.reg2mem, align 4
  store i32 %.reload73.reloadalteredBB, i32* %.reg2mem84, align 4
  store i32 0, i32* %.reg2mem86, align 4
  br label %originalBB170

originalBB174alteredBB:                           ; preds = %originalBB174.split.split, %.split242.split
  %.reload38alteredBB = load i8*, i8** %.reg2mem37, align 8
  %.reload41alteredBB = load i8*, i8** %.reg2mem40, align 8
  br label %originalBB174alteredBB.split

originalBB174alteredBB.split:                     ; preds = %originalBB174alteredBB
  %758 = icmp eq i8* %.reload38alteredBB, %.reload41alteredBB
  %759 = select i1 %758, i32 621732911, i32 -891532232
  br label %originalBB174alteredBB.split.split

originalBB174alteredBB.split.split:               ; preds = %originalBB174alteredBB.split
  store i32 %759, i32* %switchVar, align 4
  br label %originalBB174

originalBB178alteredBB:                           ; preds = %originalBB178.split.split, %.split245.split
  %.reload79alteredBB = load i32, i32* %.reg2mem78, align 4
  store i32 %.reload79alteredBB, i32* %.reload79.reg2mem, align 4
  %.reload77alteredBB = load i32, i32* %.reg2mem76, align 4
  store i32 %.reload77alteredBB, i32* %.reload77.reg2mem, align 4
  %.reload75alteredBB = load i32, i32* %.reg2mem74, align 4
  br label %originalBB178alteredBB.split

originalBB178alteredBB.split:                     ; preds = %originalBB178alteredBB
  store i32 %.reload75alteredBB, i32* %.reload75.reg2mem, align 4
  %.reload28alteredBB = load %struct.AVFilterLink*, %struct.AVFilterLink** %.reg2mem22, align 8
  %760 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %.reload28alteredBB, i64 0, i32 5
  br label %originalBB178alteredBB.split.split

originalBB178alteredBB.split.split:               ; preds = %originalBB178alteredBB.split
  %761 = load i8*, i8** %760, align 8, !tbaa !21
  store i8* %761, i8** %.reg2mem43, align 8
  %.reload45alteredBB = load i8*, i8** %.reg2mem43, align 8
  %762 = icmp eq i8* %.reload45alteredBB, null
  %763 = select i1 %762, i32 974783291, i32 -145130325
  store i32 %763, i32* %switchVar, align 4
  br label %originalBB178

originalBB182alteredBB:                           ; preds = %originalBB182.split.split, %.split249.split
  %.reload77.reload130alteredBB = load i32, i32* %.reload77.reg2mem, align 4
  %_183 = shl i32 %.reload77.reload130alteredBB, 1
  %764 = sub i32 0, %.reload77.reload130alteredBB
  %765 = add i32 0, %764
  %_184 = sub i32 0, %.reload77.reload130alteredBB
  %766 = sub i32 %765, -978441328
  %767 = add i32 %766, 1
  %768 = add i32 %767, -978441328
  %gen185 = add i32 %765, 1
  %_186 = shl i32 %.reload77.reload130alteredBB, 1
  %769 = add i32 0, 1162486590
  %770 = sub i32 %769, %.reload77.reload130alteredBB
  %771 = sub i32 %770, 1162486590
  %_187 = sub i32 0, %.reload77.reload130alteredBB
  %772 = sub i32 0, 1
  %773 = sub i32 %771, %772
  %gen188 = add i32 %771, 1
  %_189 = shl i32 %.reload77.reload130alteredBB, 1
  %_190 = shl i32 %.reload77.reload130alteredBB, 1
  br label %originalBB182alteredBB.split

originalBB182alteredBB.split:                     ; preds = %originalBB182alteredBB
  %_191 = shl i32 %.reload77.reload130alteredBB, 1
  %774 = sub i32 0, %.reload77.reload130alteredBB
  %775 = sub i32 0, 1
  %776 = add i32 %774, %775
  %777 = sub i32 0, %776
  %778 = add nsw i32 %.reload77.reload130alteredBB, 1
  br label %originalBB182alteredBB.split.split

originalBB182alteredBB.split.split:               ; preds = %originalBB182alteredBB.split
  store i32 1130461878, i32* %switchVar, align 4
  %.reload75.reload131alteredBB = load i32, i32* %.reload75.reg2mem, align 4
  store i32 %.reload75.reload131alteredBB, i32* %.reg2mem80, align 4
  store i32 %777, i32* %.reg2mem82, align 4
  %.reload79.reload127alteredBB = load i32, i32* %.reload79.reg2mem, align 4
  store i32 %.reload79.reload127alteredBB, i32* %.reg2mem84, align 4
  store i32 0, i32* %.reg2mem86, align 4
  br label %originalBB182

originalBB195alteredBB:                           ; preds = %originalBB195.split.split, %.split250.split
  %.reload75.reload132alteredBB = load i32, i32* %.reload75.reg2mem, align 4
  %779 = sub i32 0, 1
  %780 = add i32 %.reload75.reload132alteredBB, %779
  %_196 = sub i32 %.reload75.reload132alteredBB, 1
  %gen197 = mul i32 %780, 1
  %_198 = shl i32 %.reload75.reload132alteredBB, 1
  %_199 = shl i32 %.reload75.reload132alteredBB, 1
  br label %originalBB195alteredBB.split

originalBB195alteredBB.split:                     ; preds = %originalBB195alteredBB
  %781 = sub i32 0, 1
  %782 = add i32 %.reload75.reload132alteredBB, %781
  %_200 = sub i32 %.reload75.reload132alteredBB, 1
  %gen201 = mul i32 %782, 1
  br label %originalBB195alteredBB.split.split

originalBB195alteredBB.split.split:               ; preds = %originalBB195alteredBB.split
  %_202 = shl i32 %.reload75.reload132alteredBB, 1
  %_203 = shl i32 %.reload75.reload132alteredBB, 1
  %_204 = shl i32 %.reload75.reload132alteredBB, 1
  %_205 = shl i32 %.reload75.reload132alteredBB, 1
  %783 = sub i32 0, 1
  %784 = sub i32 %.reload75.reload132alteredBB, %783
  %785 = add nsw i32 %.reload75.reload132alteredBB, 1
  store i32 1130461878, i32* %switchVar, align 4
  store i32 %784, i32* %.reg2mem80, align 4
  %.reload77.reload129alteredBB = load i32, i32* %.reload77.reg2mem, align 4
  store i32 %.reload77.reload129alteredBB, i32* %.reg2mem82, align 4
  %.reload79.reloadalteredBB = load i32, i32* %.reload79.reg2mem, align 4
  store i32 %.reload79.reloadalteredBB, i32* %.reg2mem84, align 4
  store i32 0, i32* %.reg2mem86, align 4
  br label %originalBB195

originalBB209alteredBB:                           ; preds = %originalBB209.split.split, %.split251.split
  %.reload87alteredBB = load i32, i32* %.reg2mem86, align 4
  store i32 %.reload87alteredBB, i32* %.reload87.reg2mem, align 4
  br label %originalBB209alteredBB.split

originalBB209alteredBB.split:                     ; preds = %originalBB209alteredBB
  %.reload85alteredBB = load i32, i32* %.reg2mem84, align 4
  store i32 %.reload85alteredBB, i32* %.reload85.reg2mem, align 4
  %.reload83alteredBB = load i32, i32* %.reg2mem82, align 4
  store i32 %.reload83alteredBB, i32* %.reload83.reg2mem, align 4
  %.reload81alteredBB = load i32, i32* %.reg2mem80, align 4
  store i32 %.reload81alteredBB, i32* %.reload81.reg2mem, align 4
  br label %originalBB209alteredBB.split.split

originalBB209alteredBB.split.split:               ; preds = %originalBB209alteredBB.split
  store i32 1311808231, i32* %switchVar, align 4
  br label %originalBB209

originalBB213alteredBB:                           ; preds = %originalBB213.split.split, %.split252.split
  %.reload61.reloadalteredBB = load i64, i64* %.reload61.reg2mem, align 8
  %786 = sub i64 %.reload61.reloadalteredBB, 8515357733528979260
  %787 = sub i64 %786, 1
  %788 = add i64 %787, 8515357733528979260
  %_214 = sub i64 %.reload61.reloadalteredBB, 1
  %gen215 = mul i64 %788, 1
  %_216 = shl i64 %.reload61.reloadalteredBB, 1
  %_217 = shl i64 %.reload61.reloadalteredBB, 1
  %789 = sub i64 0, -6560384036421498579
  %790 = sub i64 %789, %.reload61.reloadalteredBB
  %791 = add i64 %790, -6560384036421498579
  %_218 = sub i64 0, %.reload61.reloadalteredBB
  %792 = sub i64 0, %791
  %793 = sub i64 0, 1
  %794 = add i64 %792, %793
  %795 = sub i64 0, %794
  %gen219 = add i64 %791, 1
  %796 = sub i64 0, %.reload61.reloadalteredBB
  %797 = sub i64 0, 1
  %798 = add i64 %796, %797
  %799 = sub i64 0, %798
  %800 = add nuw nsw i64 %.reload61.reloadalteredBB, 1
  %.reload21alteredBB = load i64, i64* %.reg2mem20, align 8
  %801 = icmp eq i64 %799, %.reload21alteredBB
  %802 = select i1 %801, i32 70026953, i32 -1933362679
  store i32 %802, i32* %switchVar, align 4
  store i64 %799, i64* %.reg2mem60, align 8
  %.reload85.reload136alteredBB = load i32, i32* %.reload85.reg2mem, align 4
  store i32 %.reload85.reload136alteredBB, i32* %.reg2mem62, align 4
  %.reload83.reload138alteredBB = load i32, i32* %.reload83.reg2mem, align 4
  br label %originalBB213alteredBB.split

originalBB213alteredBB.split:                     ; preds = %originalBB213alteredBB
  store i32 %.reload83.reload138alteredBB, i32* %.reg2mem64, align 4
  %.reload81.reload140alteredBB = load i32, i32* %.reload81.reg2mem, align 4
  store i32 %.reload81.reload140alteredBB, i32* %.reg2mem66, align 4
  %.reload81.reload139alteredBB = load i32, i32* %.reload81.reg2mem, align 4
  br label %originalBB213alteredBB.split.split

originalBB213alteredBB.split.split:               ; preds = %originalBB213alteredBB.split
  store i32 %.reload81.reload139alteredBB, i32* %.reg2mem88, align 4
  %.reload83.reload137alteredBB = load i32, i32* %.reload83.reg2mem, align 4
  store i32 %.reload83.reload137alteredBB, i32* %.reg2mem90, align 4
  %.reload85.reload135alteredBB = load i32, i32* %.reload85.reg2mem, align 4
  store i32 %.reload85.reload135alteredBB, i32* %.reg2mem92, align 4
  store i32 0, i32* %.reg2mem94, align 4
  br label %originalBB213

originalBB223alteredBB:                           ; preds = %originalBB223.split.split, %.split257.split
  %.reload103alteredBB = load i32, i32* %.reg2mem102, align 4
  br label %originalBB223alteredBB.split

originalBB223alteredBB.split:                     ; preds = %originalBB223alteredBB
  br label %originalBB223
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca %struct.AVFilterGraph, align 8
  %2 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #10
  %3 = bitcast i8* %2 to %struct.AVFilterContext*
  %4 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #10
  %5 = bitcast i8* %4 to %struct.AVFilterContext*
  %6 = call noalias dereferenceable_or_null(72) i8* @malloc(i64 noundef 72) #10
  %7 = bitcast i8* %6 to %struct.AVFilterLink*
  %8 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #10
  %9 = bitcast i8* %8 to %struct.AVFilter*
  %10 = getelementptr inbounds %struct.AVFilter, %struct.AVFilter* %9, i64 0, i32 1
  store i32 (i8*)* null, i32 (i8*)** %10, align 8, !tbaa !23
  %11 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %3, i64 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %11, align 8, !tbaa !7
  %12 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %3, i64 0, i32 1
  %13 = bitcast %struct.AVFilter** %12 to i8**
  store i8* %8, i8** %13, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %3, i64 0, i32 2
  store i32 0, i32* %14, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %3, i64 0, i32 3
  br label %.split

.split:                                           ; preds = %0
  store %struct.AVFilterLink** null, %struct.AVFilterLink*** %15, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %5, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %16, align 8, !tbaa !7
  %17 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %5, i64 0, i32 1
  %18 = bitcast %struct.AVFilter** %17 to i8**
  store i8* %8, i8** %18, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %5, i64 0, i32 2
  store i32 1, i32* %19, align 8, !tbaa !13
  %20 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #10
  %21 = getelementptr inbounds %struct.AVFilterContext, %struct.AVFilterContext* %5, i64 0, i32 3
  %22 = bitcast %struct.AVFilterLink*** %21 to i8**
  store i8* %20, i8** %22, align 8, !tbaa !14
  %23 = bitcast i8* %20 to i8**
  store i8* %6, i8** %23, align 8, !tbaa !3
  %24 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %7, i64 0, i32 0
  store i32 0, i32* %24, align 8, !tbaa !18
  %25 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %7, i64 0, i32 1
  %26 = bitcast %struct.AVFilterContext** %25 to i8**
  store i8* %2, i8** %26, align 8, !tbaa !26
  %27 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %7, i64 0, i32 2
  %28 = bitcast %struct.AVFilterContext** %27 to i8**
  store i8* %4, i8** %28, align 8, !tbaa !27
  %29 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %7, i64 0, i32 3
  store i8* inttoptr (i64 1 to i8*), i8** %29, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.AVFilterLink, %struct.AVFilterLink* %7, i64 0, i32 4
  store i8* inttoptr (i64 2 to i8*), i8** %30, align 8, !tbaa !17
  br label %.split.split

.split.split:                                     ; preds = %.split
  %31 = bitcast %struct.AVFilterGraph* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %31) #10
  %32 = getelementptr inbounds %struct.AVFilterGraph, %struct.AVFilterGraph* %1, i64 0, i32 0
  store i32 2, i32* %32, align 8, !tbaa !10
  %33 = getelementptr inbounds %struct.AVFilterGraph, %struct.AVFilterGraph* %1, i64 0, i32 1
  %34 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #10
  %35 = bitcast %struct.AVFilterContext*** %33 to i8**
  store i8* %34, i8** %35, align 8, !tbaa !12
  %36 = getelementptr inbounds %struct.AVFilterGraph, %struct.AVFilterGraph* %1, i64 0, i32 2
  %37 = bitcast i8* %34 to i8**
  %38 = bitcast i8** %36 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  store i8* %2, i8** %37, align 8, !tbaa !3
  %39 = bitcast i8* %34 to %struct.AVFilterContext**
  %40 = getelementptr inbounds %struct.AVFilterContext*, %struct.AVFilterContext** %39, i64 1
  %41 = bitcast %struct.AVFilterContext** %40 to i8**
  store i8* %4, i8** %41, align 8, !tbaa !3
  %42 = call i32 @query_formats(%struct.AVFilterGraph* noundef nonnull %1, %struct.AVClass* undef)
  %43 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 noundef %42)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %31) #10
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"AVFilterContext", !4, i64 0, !4, i64 8, !9, i64 16, !4, i64 24}
!9 = !{!"int", !5, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"AVFilterGraph", !9, i64 0, !4, i64 8, !4, i64 16, !4, i64 24}
!12 = !{!11, !4, i64 8}
!13 = !{!8, !9, i64 16}
!14 = !{!8, !4, i64 24}
!15 = !{!16, !4, i64 24}
!16 = !{!"AVFilterLink", !9, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64}
!17 = !{!16, !4, i64 32}
!18 = !{!16, !9, i64 0}
!19 = !{!16, !4, i64 56}
!20 = !{!16, !4, i64 64}
!21 = !{!16, !4, i64 40}
!22 = !{!16, !4, i64 48}
!23 = !{!24, !4, i64 8}
!24 = !{!"AVFilter", !4, i64 0, !4, i64 8}
!25 = !{!8, !4, i64 8}
!26 = !{!16, !4, i64 8}
!27 = !{!16, !4, i64 16}

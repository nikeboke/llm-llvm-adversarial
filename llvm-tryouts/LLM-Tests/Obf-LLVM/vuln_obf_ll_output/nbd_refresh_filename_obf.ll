; ModuleID = 'nbd_refresh_filename_obf.bc'
source_filename = "nbd_refresh_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.InetSocketAddress = type { i8*, i8*, i32, i32, i32 }
%struct.QDict = type {}
%struct.QObject = type { i32 }
%struct.Visitor = type {}
%struct.SocketAddress = type { i32, %union.SocketUnion }
%union.SocketUnion = type { %struct.anon }
%struct.anon = type { %struct.InetSocketAddress* }
%struct.BDRVNBDState = type { %struct.SocketAddress*, i8*, i8* }
%struct.BlockDriverState = type { %struct.BDRVNBDState*, [256 x i8], %struct.QDict* }
%struct.UnixSocketAddress = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"qdict_put: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"qdict_put_obj: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"qstring_from_str: %s\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"10809\00", align 1
@__const.main.inet = private unnamed_addr constant %struct.InetSocketAddress { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 0 }, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"tls0\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Resulting filename: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"nbd\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"nbd+unix://%s?export=%s\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"nbd+unix://%s\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"nbd://%s:%s?export=%s\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"nbd://%s:%s\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"tls-creds\00", align 1
@str = private unnamed_addr constant [14 x i8] c"qdict_flatten\00", align 1
@str.21 = private unnamed_addr constant [25 x i8] c"visit_type_SocketAddress\00", align 1
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

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.QDict* @qdict_new() local_unnamed_addr #0 {
  %1 = call noalias i8* @malloc(i64 noundef 0) #11
  br label %.split

.split:                                           ; preds = %0
  %2 = bitcast i8* %1 to %struct.QDict*
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret %struct.QDict* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @qdict_put(%struct.QDict* nocapture readnone %0, i8* noundef %1, i8* nocapture readnone %2) local_unnamed_addr #2 {
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef %1)
  br label %.split

.split:                                           ; preds = %3
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @qdict_put_obj(%struct.QDict* nocapture readnone %0, i8* noundef %1, %struct.QObject* nocapture readnone %2) local_unnamed_addr #2 {
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef %1)
  br label %.split

.split:                                           ; preds = %3
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @qdict_flatten(%struct.QDict* nocapture readnone %0) local_unnamed_addr #2 {
  %2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str, i64 0, i64 0))
  br label %.split

.split:                                           ; preds = %1
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias %struct.QObject* @qstring_from_str(i8* noundef %0) local_unnamed_addr #2 {
  %2 = load i32, i32* @x.7, align 4
  br label %.split

.split:                                           ; preds = %1
  %3 = load i32, i32* @y.8, align 4
  %4 = sub i32 0, 1
  br label %.split.split

.split.split:                                     ; preds = %.split
  %5 = add i32 %2, %4
  %6 = sub i32 %2, 1
  %7 = mul i32 %2, %5
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %3, 10
  %11 = and i1 %9, %10
  %12 = xor i1 %9, %10
  %13 = or i1 %11, %12
  %14 = or i1 %9, %10
  br i1 %13, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef %0)
  %16 = call noalias dereferenceable_or_null(4) i8* @malloc(i64 noundef 4) #11
  %17 = bitcast i8* %16 to %struct.QObject*
  %18 = load i32, i32* @x.7, align 4
  %19 = load i32, i32* @y.8, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %20 = sub i32 0, 1
  %21 = add i32 %18, %20
  %22 = sub i32 %18, 1
  %23 = mul i32 %18, %21
  %24 = urem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = icmp slt i32 %19, 10
  %27 = and i1 %25, %26
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %28 = xor i1 %25, %26
  %29 = or i1 %27, %28
  %30 = or i1 %25, %26
  br i1 %29, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret %struct.QObject* %17

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %31 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef %0)
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %32 = call noalias dereferenceable_or_null(4) i8* @malloc(i64 noundef 4) #11
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  %33 = bitcast i8* %32 to %struct.QObject*
  br label %originalBB
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.Visitor* @qobject_output_visitor_new(%struct.QObject** nocapture readnone %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @x.9, align 4
  br label %.split

.split:                                           ; preds = %1
  %3 = load i32, i32* @y.10, align 4
  %4 = sub i32 %2, -1778256601
  %5 = sub i32 %4, 1
  %6 = add i32 %5, -1778256601
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br label %.split.split

.split.split:                                     ; preds = %.split
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
  %22 = or i1 %12, %13
  %23 = xor i1 %22, true
  %24 = or i1 true, %14
  %25 = and i1 %23, %24
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %28 = call noalias i8* @malloc(i64 noundef 0) #11
  %29 = bitcast i8* %28 to %struct.Visitor*
  %30 = load i32, i32* @x.9, align 4
  %31 = load i32, i32* @y.10, align 4
  %32 = sub i32 0, 1
  %33 = add i32 %30, %32
  %34 = sub i32 %30, 1
  %35 = mul i32 %30, %33
  %36 = urem i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = icmp slt i32 %31, 10
  %39 = xor i1 %37, true
  %40 = xor i1 %38, true
  %41 = xor i1 false, true
  %42 = and i1 %39, false
  %43 = and i1 %37, %41
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %44 = and i1 %40, false
  %45 = and i1 %38, %41
  %46 = or i1 %42, %43
  %47 = or i1 %44, %45
  %48 = xor i1 %46, %47
  %49 = or i1 %39, %40
  %50 = xor i1 %49, true
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %51 = or i1 false, %41
  %52 = and i1 %50, %51
  %53 = or i1 %48, %52
  %54 = or i1 %37, %38
  br i1 %53, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret %struct.Visitor* %29

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %55 = call noalias i8* @malloc(i64 noundef 0) #11
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %56 = bitcast i8* %55 to %struct.Visitor*
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @visit_type_SocketAddress(%struct.Visitor* nocapture readnone %0, i8* nocapture readnone %1, %struct.SocketAddress** nocapture readnone %2, void (i8*)* nocapture readnone %3) local_unnamed_addr #2 {
  %5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.21, i64 0, i64 0))
  br label %.split

.split:                                           ; preds = %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @visit_complete(%struct.Visitor* nocapture readnone %0, %struct.QObject** nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = call noalias dereferenceable_or_null(4) i8* @malloc(i64 noundef 4) #11
  br label %.split

.split:                                           ; preds = %2
  %4 = bitcast i8* %3 to %struct.QObject*
  br label %.split.split

.split.split:                                     ; preds = %.split
  %5 = bitcast %struct.QObject** %1 to i8**
  store i8* %3, i8** %5, align 8, !tbaa !3
  %6 = getelementptr inbounds %struct.QObject, %struct.QObject* %4, i64 0, i32 0
  store i32 1, i32* %6, align 4, !tbaa !7
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @error_abort(i8* noundef %0) local_unnamed_addr #4 {
  %2 = load i32, i32* @x.15, align 4
  %3 = load i32, i32* @y.16, align 4
  %4 = sub i32 0, 1
  %5 = add i32 %2, %4
  %6 = sub i32 %2, 1
  %7 = mul i32 %2, %5
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %3, 10
  %11 = and i1 %9, %10
  %12 = xor i1 %9, %10
  br label %.split

.split:                                           ; preds = %1
  %13 = or i1 %11, %12
  %14 = or i1 %9, %10
  br label %.split.split

.split.split:                                     ; preds = %.split
  br i1 %13, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* noundef %0) #12
  call void @exit(i32 noundef 1) #13
  %17 = load i32, i32* @x.15, align 4
  %18 = load i32, i32* @y.16, align 4
  %19 = sub i32 %17, -189928138
  %20 = sub i32 %19, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %21 = add i32 %20, -189928138
  %22 = sub i32 %17, 1
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %23 = mul i32 %17, %21
  %24 = urem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = icmp slt i32 %18, 10
  %27 = and i1 %25, %26
  %28 = xor i1 %25, %26
  %29 = or i1 %27, %28
  %30 = or i1 %25, %26
  br i1 %29, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  unreachable

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* noundef %0) #12
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  call void @exit(i32 noundef 1) #13
  br label %originalBB
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @qobject_type(%struct.QObject* nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.QObject, %struct.QObject* %0, i64 0, i32 0
  br label %.split

.split:                                           ; preds = %1
  %3 = load i32, i32* %2, align 4, !tbaa !7
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret i32 %3
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  %.reload61.reg2mem = alloca i8*, align 8
  %.reload63.reg2mem = alloca i8*, align 8
  %.reload65.reg2mem = alloca i8*, align 8
  %.reg2mem57 = alloca i8*, align 8
  %.reg2mem54 = alloca i8*, align 8
  %.reg2mem51 = alloca i8*, align 8
  %.reg2mem48 = alloca i8*, align 8
  %.reg2mem45 = alloca i8*, align 8
  %.reg2mem42 = alloca i8*, align 8
  %.reg2mem36 = alloca %struct.InetSocketAddress*, align 8
  %.reg2mem32 = alloca i32, align 4
  %.reg2mem30 = alloca i32*, align 8
  %.reg2mem26 = alloca %struct.SocketAddress*, align 8
  br label %.split

.split:                                           ; preds = %0
  %.reg2mem24 = alloca i8*, align 8
  %.reg2mem20 = alloca i8*, align 8
  %.reg2mem17 = alloca i8**, align 8
  %.reg2mem12 = alloca i8**, align 8
  %.reg2mem9 = alloca i8*, align 8
  %.reg2mem6 = alloca i8*, align 8
  %.reg2mem = alloca i8*, align 8
  %1 = alloca %struct.InetSocketAddress, align 8
  %2 = alloca %struct.SocketAddress, align 8
  %3 = alloca %struct.BDRVNBDState, align 8
  %4 = alloca %struct.BlockDriverState, align 8
  %5 = bitcast %struct.InetSocketAddress* %1 to i8*
  store i8* %5, i8** %.reg2mem, align 8
  %.reload5 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %.reload5) #11
  %.reload4 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %.reload4, i8* noundef nonnull align 8 dereferenceable(32) bitcast (%struct.InetSocketAddress* @__const.main.inet to i8*), i64 32, i1 false)
  %6 = bitcast %struct.SocketAddress* %2 to i8*
  store i8* %6, i8** %.reg2mem6, align 8
  %.reload8 = load i8*, i8** %.reg2mem6, align 8
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %.reload8) #11
  %7 = getelementptr inbounds %struct.SocketAddress, %struct.SocketAddress* %2, i64 0, i32 0
  store i32 0, i32* %7, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.SocketAddress, %struct.SocketAddress* %2, i64 0, i32 1, i32 0, i32 0
  store %struct.InetSocketAddress* %1, %struct.InetSocketAddress** %8, align 8, !tbaa !12
  %9 = bitcast %struct.BDRVNBDState* %3 to i8*
  store i8* %9, i8** %.reg2mem9, align 8
  %.reload11 = load i8*, i8** %.reg2mem9, align 8
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %.reload11) #11
  %10 = getelementptr inbounds %struct.BDRVNBDState, %struct.BDRVNBDState* %3, i64 0, i32 0
  store %struct.SocketAddress* %2, %struct.SocketAddress** %10, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.BDRVNBDState, %struct.BDRVNBDState* %3, i64 0, i32 1
  store i8** %11, i8*** %.reg2mem12, align 8
  %.reload16 = load i8**, i8*** %.reg2mem12, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %.reload16, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.BDRVNBDState, %struct.BDRVNBDState* %3, i64 0, i32 2
  store i8** %12, i8*** %.reg2mem17, align 8
  %.reload19 = load i8**, i8*** %.reg2mem17, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %.reload19, align 8, !tbaa !17
  %13 = bitcast %struct.BlockDriverState* %4 to i8*
  store i8* %13, i8** %.reg2mem20, align 8
  %.reload23 = load i8*, i8** %.reg2mem20, align 8
  call void @llvm.lifetime.start.p0i8(i64 272, i8* nonnull %.reload23) #11
  %.reload22 = load i8*, i8** %.reg2mem20, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(272) %.reload22, i8 0, i64 272, i1 false)
  %14 = getelementptr inbounds %struct.BlockDriverState, %struct.BlockDriverState* %4, i64 0, i32 0
  store %struct.BDRVNBDState* %3, %struct.BDRVNBDState** %14, align 8, !tbaa !18
  %15 = call noalias i8* @malloc(i64 noundef 0) #11
  store i8* %15, i8** %.reg2mem24, align 8
  %16 = load %struct.SocketAddress*, %struct.SocketAddress** %10, align 8, !tbaa !14
  store %struct.SocketAddress* %16, %struct.SocketAddress** %.reg2mem26, align 8
  %.reload29 = load %struct.SocketAddress*, %struct.SocketAddress** %.reg2mem26, align 8
  %17 = getelementptr inbounds %struct.SocketAddress, %struct.SocketAddress* %.reload29, i64 0, i32 0
  br label %.split.split

.split.split:                                     ; preds = %.split
  store i32* %17, i32** %.reg2mem30, align 8
  %switchVar = alloca i32, align 4
  store i32 1740990910, i32* %switchVar, align 4
  %.reg2mem60 = alloca i8*, align 8
  %.reg2mem62 = alloca i8*, align 8
  %.reg2mem64 = alloca i8*, align 8
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %originalBBpart2121
  %switchVar3 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar3, label %switchDefault [
    i32 1740990910, label %first
    i32 707690291, label %NodeBlock
    i32 792897627, label %LeafBlock1
    i32 459468814, label %LeafBlock
    i32 876534072, label %112
    i32 423244977, label %119
    i32 2109995754, label %124
    i32 -2147450079, label %129
    i32 1015272817, label %173
    i32 201046686, label %NewDefault
    i32 -1174126668, label %179
    i32 1237931105, label %236
    i32 1757774964, label %241
    i32 -364376095, label %270
    i32 -785621681, label %300
    i32 298399602, label %355
    i32 929163142, label %398
    i32 -1009252670, label %427
    i32 306688902, label %429
    i32 -1467429064, label %475
    i32 -1294255648, label %478
    i32 -68901117, label %510
    i32 1047511498, label %552
  ]

switchDefault:                                    ; preds = %loopEntry.split
  %18 = load i32, i32* @x.19, align 4
  %19 = load i32, i32* @y.20, align 4
  %20 = sub i32 %18, -240197273
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %21 = sub i32 %20, 1
  %22 = add i32 %21, -240197273
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
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %41 = and i1 %39, %40
  %42 = or i1 %37, %41
  %43 = or i1 %26, %27
  br i1 %42, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %switchDefault.split.split, %originalBBalteredBB
  %44 = load i32, i32* @x.19, align 4
  %45 = load i32, i32* @y.20, align 4
  %46 = sub i32 0, 1
  %47 = add i32 %44, %46
  %48 = sub i32 %44, 1
  %49 = mul i32 %44, %47
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %50 = urem i32 %49, 2
  %51 = icmp eq i32 %50, 0
  %52 = icmp slt i32 %45, 10
  %53 = xor i1 %51, true
  %54 = xor i1 %52, true
  %55 = xor i1 true, true
  %56 = and i1 %53, true
  %57 = and i1 %51, %55
  %58 = and i1 %54, true
  %59 = and i1 %52, %55
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %60 = or i1 %56, %57
  %61 = or i1 %58, %59
  %62 = xor i1 %60, %61
  %63 = or i1 %53, %54
  %64 = xor i1 %63, true
  %65 = or i1 true, %55
  %66 = and i1 %64, %65
  %67 = or i1 %62, %66
  %68 = or i1 %51, %52
  br i1 %67, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %69 = load i32, i32* @x.19, align 4
  %70 = load i32, i32* @y.20, align 4
  %71 = sub i32 0, 1
  %72 = add i32 %69, %71
  %73 = sub i32 %69, 1
  %74 = mul i32 %69, %72
  %75 = urem i32 %74, 2
  %76 = icmp eq i32 %75, 0
  %77 = icmp slt i32 %70, 10
  br label %first.split

first.split:                                      ; preds = %first
  %78 = xor i1 %76, true
  %79 = xor i1 %77, true
  %80 = xor i1 true, true
  %81 = and i1 %78, true
  %82 = and i1 %76, %80
  %83 = and i1 %79, true
  %84 = and i1 %77, %80
  %85 = or i1 %81, %82
  %86 = or i1 %83, %84
  %87 = xor i1 %85, %86
  %88 = or i1 %78, %79
  %89 = xor i1 %88, true
  %90 = or i1 true, %80
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  %91 = and i1 %89, %90
  %92 = or i1 %87, %91
  %93 = or i1 %76, %77
  br i1 %92, label %originalBB71, label %originalBB71alteredBB

originalBB71:                                     ; preds = %first.split.split, %originalBB71alteredBB.split.split
  %.reload31 = load i32*, i32** %.reg2mem30, align 8
  %94 = load i32, i32* %.reload31, align 8, !tbaa !10
  br label %originalBB71.split

originalBB71.split:                               ; preds = %originalBB71
  store i32 %94, i32* %.reg2mem32, align 4
  store i32 707690291, i32* %switchVar, align 4
  %95 = load i32, i32* @x.19, align 4
  %96 = load i32, i32* @y.20, align 4
  br label %originalBB71.split.split

originalBB71.split.split:                         ; preds = %originalBB71.split
  %97 = add i32 %95, 1546148866
  %98 = sub i32 %97, 1
  %99 = sub i32 %98, 1546148866
  %100 = sub i32 %95, 1
  %101 = mul i32 %95, %99
  %102 = urem i32 %101, 2
  %103 = icmp eq i32 %102, 0
  %104 = icmp slt i32 %96, 10
  %105 = and i1 %103, %104
  %106 = xor i1 %103, %104
  %107 = or i1 %105, %106
  %108 = or i1 %103, %104
  br i1 %107, label %originalBBpart273, label %originalBB71alteredBB

originalBBpart273:                                ; preds = %originalBB71.split.split
  br label %loopEnd

NodeBlock:                                        ; preds = %loopEntry.split
  %.reload35 = load i32, i32* %.reg2mem32, align 4
  br label %NodeBlock.split

NodeBlock.split:                                  ; preds = %NodeBlock
  %Pivot = icmp slt i32 %.reload35, 1
  %109 = select i1 %Pivot, i32 459468814, i32 792897627
  br label %NodeBlock.split.split

NodeBlock.split.split:                            ; preds = %NodeBlock.split
  store i32 %109, i32* %switchVar, align 4
  br label %loopEnd

LeafBlock1:                                       ; preds = %loopEntry.split
  %.reload33 = load i32, i32* %.reg2mem32, align 4
  br label %LeafBlock1.split

LeafBlock1.split:                                 ; preds = %LeafBlock1
  %SwitchLeaf2 = icmp eq i32 %.reload33, 1
  %110 = select i1 %SwitchLeaf2, i32 1015272817, i32 201046686
  store i32 %110, i32* %switchVar, align 4
  br label %LeafBlock1.split.split

LeafBlock1.split.split:                           ; preds = %LeafBlock1.split
  br label %loopEnd

LeafBlock:                                        ; preds = %loopEntry.split
  %.reload34 = load i32, i32* %.reg2mem32, align 4
  %SwitchLeaf = icmp eq i32 %.reload34, 0
  br label %LeafBlock.split

LeafBlock.split:                                  ; preds = %LeafBlock
  %111 = select i1 %SwitchLeaf, i32 876534072, i32 201046686
  br label %LeafBlock.split.split

LeafBlock.split.split:                            ; preds = %LeafBlock.split
  store i32 %111, i32* %switchVar, align 4
  br label %loopEnd

112:                                              ; preds = %loopEntry.split
  %.reload27 = load %struct.SocketAddress*, %struct.SocketAddress** %.reg2mem26, align 8
  %113 = getelementptr inbounds %struct.SocketAddress, %struct.SocketAddress* %.reload27, i64 0, i32 1, i32 0, i32 0
  %114 = load %struct.InetSocketAddress*, %struct.InetSocketAddress** %113, align 8, !tbaa !20
  store %struct.InetSocketAddress* %114, %struct.InetSocketAddress** %.reg2mem36, align 8
  %.reload41 = load %struct.InetSocketAddress*, %struct.InetSocketAddress** %.reg2mem36, align 8
  %115 = getelementptr inbounds %struct.InetSocketAddress, %struct.InetSocketAddress* %.reload41, i64 0, i32 2
  %116 = load i32, i32* %115, align 8, !tbaa !21
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, i32 423244977, i32 -1174126668
  store i32 %118, i32* %switchVar, align 4
  store i8* null, i8** %.reg2mem60, align 8
  br label %.split123

.split123:                                        ; preds = %112
  store i8* null, i8** %.reg2mem62, align 8
  store i8* null, i8** %.reg2mem64, align 8
  br label %.split123.split

.split123.split:                                  ; preds = %.split123
  br label %loopEnd

119:                                              ; preds = %loopEntry.split
  %.reload40 = load %struct.InetSocketAddress*, %struct.InetSocketAddress** %.reg2mem36, align 8
  %120 = getelementptr inbounds %struct.InetSocketAddress, %struct.InetSocketAddress* %.reload40, i64 0, i32 3
  %121 = load i32, i32* %120, align 4, !tbaa !23
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i32 2109995754, i32 -1174126668
  store i32 %123, i32* %switchVar, align 4
  br label %.split124

.split124:                                        ; preds = %119
  store i8* null, i8** %.reg2mem60, align 8
  store i8* null, i8** %.reg2mem62, align 8
  br label %.split124.split

.split124.split:                                  ; preds = %.split124
  store i8* null, i8** %.reg2mem64, align 8
  br label %loopEnd

124:                                              ; preds = %loopEntry.split
  %.reload39 = load %struct.InetSocketAddress*, %struct.InetSocketAddress** %.reg2mem36, align 8
  %125 = getelementptr inbounds %struct.InetSocketAddress, %struct.InetSocketAddress* %.reload39, i64 0, i32 4
  %126 = load i32, i32* %125, align 8, !tbaa !24
  br label %.split125

.split125:                                        ; preds = %124
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 -2147450079, i32 -1174126668
  br label %.split125.split

.split125.split:                                  ; preds = %.split125
  store i32 %128, i32* %switchVar, align 4
  store i8* null, i8** %.reg2mem60, align 8
  store i8* null, i8** %.reg2mem62, align 8
  store i8* null, i8** %.reg2mem64, align 8
  br label %loopEnd

129:                                              ; preds = %loopEntry.split
  %130 = load i32, i32* @x.19, align 4
  %131 = load i32, i32* @y.20, align 4
  %132 = add i32 %130, -639878478
  %133 = sub i32 %132, 1
  %134 = sub i32 %133, -639878478
  br label %.split126

.split126:                                        ; preds = %129
  %135 = sub i32 %130, 1
  %136 = mul i32 %130, %134
  %137 = urem i32 %136, 2
  %138 = icmp eq i32 %137, 0
  %139 = icmp slt i32 %131, 10
  br label %.split126.split

.split126.split:                                  ; preds = %.split126
  %140 = and i1 %138, %139
  %141 = xor i1 %138, %139
  %142 = or i1 %140, %141
  %143 = or i1 %138, %139
  br i1 %142, label %originalBB75, label %originalBB75alteredBB

originalBB75:                                     ; preds = %.split126.split, %originalBB75alteredBB.split.split
  %.reload38 = load %struct.InetSocketAddress*, %struct.InetSocketAddress** %.reg2mem36, align 8
  %144 = getelementptr inbounds %struct.InetSocketAddress, %struct.InetSocketAddress* %.reload38, i64 0, i32 0
  %145 = load i8*, i8** %144, align 8, !tbaa !25
  %.reload37 = load %struct.InetSocketAddress*, %struct.InetSocketAddress** %.reg2mem36, align 8
  %146 = getelementptr inbounds %struct.InetSocketAddress, %struct.InetSocketAddress* %.reload37, i64 0, i32 1
  %147 = load i8*, i8** %146, align 8, !tbaa !26
  store i32 -1174126668, i32* %switchVar, align 4
  store i8* %147, i8** %.reg2mem60, align 8
  store i8* null, i8** %.reg2mem62, align 8
  store i8* %145, i8** %.reg2mem64, align 8
  %148 = load i32, i32* @x.19, align 4
  %149 = load i32, i32* @y.20, align 4
  %150 = sub i32 0, 1
  %151 = add i32 %148, %150
  %152 = sub i32 %148, 1
  %153 = mul i32 %148, %151
  %154 = urem i32 %153, 2
  %155 = icmp eq i32 %154, 0
  %156 = icmp slt i32 %149, 10
  %157 = xor i1 %155, true
  %158 = xor i1 %156, true
  %159 = xor i1 false, true
  %160 = and i1 %157, false
  %161 = and i1 %155, %159
  %162 = and i1 %158, false
  %163 = and i1 %156, %159
  %164 = or i1 %160, %161
  %165 = or i1 %162, %163
  %166 = xor i1 %164, %165
  %167 = or i1 %157, %158
  br label %originalBB75.split

originalBB75.split:                               ; preds = %originalBB75
  %168 = xor i1 %167, true
  %169 = or i1 false, %159
  %170 = and i1 %168, %169
  %171 = or i1 %166, %170
  %172 = or i1 %155, %156
  br label %originalBB75.split.split

originalBB75.split.split:                         ; preds = %originalBB75.split
  br i1 %171, label %originalBBpart277, label %originalBB75alteredBB

originalBBpart277:                                ; preds = %originalBB75.split.split
  br label %loopEnd

173:                                              ; preds = %loopEntry.split
  %.reload28 = load %struct.SocketAddress*, %struct.SocketAddress** %.reg2mem26, align 8
  %174 = getelementptr inbounds %struct.SocketAddress, %struct.SocketAddress* %.reload28, i64 0, i32 1
  %175 = bitcast %union.SocketUnion* %174 to %struct.UnixSocketAddress**
  %176 = load %struct.UnixSocketAddress*, %struct.UnixSocketAddress** %175, align 8, !tbaa !20
  br label %.split127

.split127:                                        ; preds = %173
  %177 = getelementptr inbounds %struct.UnixSocketAddress, %struct.UnixSocketAddress* %176, i64 0, i32 0
  br label %.split127.split

.split127.split:                                  ; preds = %.split127
  %178 = load i8*, i8** %177, align 8, !tbaa !12
  store i32 -1174126668, i32* %switchVar, align 4
  store i8* null, i8** %.reg2mem60, align 8
  store i8* %178, i8** %.reg2mem62, align 8
  store i8* null, i8** %.reg2mem64, align 8
  br label %loopEnd

NewDefault:                                       ; preds = %loopEntry.split
  store i32 -1174126668, i32* %switchVar, align 4
  br label %NewDefault.split

NewDefault.split:                                 ; preds = %NewDefault
  store i8* null, i8** %.reg2mem60, align 8
  br label %NewDefault.split.split

NewDefault.split.split:                           ; preds = %NewDefault.split
  store i8* null, i8** %.reg2mem62, align 8
  store i8* null, i8** %.reg2mem64, align 8
  br label %loopEnd

179:                                              ; preds = %loopEntry.split
  %180 = load i32, i32* @x.19, align 4
  %181 = load i32, i32* @y.20, align 4
  %182 = sub i32 %180, -1314750258
  %183 = sub i32 %182, 1
  %184 = add i32 %183, -1314750258
  %185 = sub i32 %180, 1
  %186 = mul i32 %180, %184
  %187 = urem i32 %186, 2
  %188 = icmp eq i32 %187, 0
  %189 = icmp slt i32 %181, 10
  %190 = xor i1 %188, true
  %191 = xor i1 %189, true
  %192 = xor i1 false, true
  %193 = and i1 %190, false
  %194 = and i1 %188, %192
  %195 = and i1 %191, false
  %196 = and i1 %189, %192
  %197 = or i1 %193, %194
  br label %.split128

.split128:                                        ; preds = %179
  %198 = or i1 %195, %196
  %199 = xor i1 %197, %198
  %200 = or i1 %190, %191
  %201 = xor i1 %200, true
  %202 = or i1 false, %192
  %203 = and i1 %201, %202
  %204 = or i1 %199, %203
  br label %.split128.split

.split128.split:                                  ; preds = %.split128
  %205 = or i1 %188, %189
  br i1 %204, label %originalBB79, label %originalBB79alteredBB

originalBB79:                                     ; preds = %.split128.split, %originalBB79alteredBB.split.split
  %.reload65 = load i8*, i8** %.reg2mem64, align 8
  store i8* %.reload65, i8** %.reload65.reg2mem, align 8
  %.reload63 = load i8*, i8** %.reg2mem62, align 8
  store i8* %.reload63, i8** %.reload63.reg2mem, align 8
  %.reload61 = load i8*, i8** %.reg2mem60, align 8
  store i8* %.reload61, i8** %.reload61.reg2mem, align 8
  %206 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #11
  %207 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #11
  %.reload63.reload = load i8*, i8** %.reload63.reg2mem, align 8
  %208 = icmp eq i8* %.reload63.reload, null
  br label %originalBB79.split

originalBB79.split:                               ; preds = %originalBB79
  %209 = select i1 %208, i32 -785621681, i32 1237931105
  store i32 %209, i32* %switchVar, align 4
  %210 = load i32, i32* @x.19, align 4
  %211 = load i32, i32* @y.20, align 4
  %212 = sub i32 %210, -418791826
  %213 = sub i32 %212, 1
  %214 = add i32 %213, -418791826
  %215 = sub i32 %210, 1
  %216 = mul i32 %210, %214
  %217 = urem i32 %216, 2
  %218 = icmp eq i32 %217, 0
  %219 = icmp slt i32 %211, 10
  %220 = xor i1 %218, true
  %221 = xor i1 %219, true
  %222 = xor i1 false, true
  br label %originalBB79.split.split

originalBB79.split.split:                         ; preds = %originalBB79.split
  %223 = and i1 %220, false
  %224 = and i1 %218, %222
  %225 = and i1 %221, false
  %226 = and i1 %219, %222
  %227 = or i1 %223, %224
  %228 = or i1 %225, %226
  %229 = xor i1 %227, %228
  %230 = or i1 %220, %221
  %231 = xor i1 %230, true
  %232 = or i1 false, %222
  %233 = and i1 %231, %232
  %234 = or i1 %229, %233
  %235 = or i1 %218, %219
  br i1 %234, label %originalBBpart281, label %originalBB79alteredBB

originalBBpart281:                                ; preds = %originalBB79.split.split
  br label %loopEnd

236:                                              ; preds = %loopEntry.split
  %.reload13 = load i8**, i8*** %.reg2mem12, align 8
  br label %.split129

.split129:                                        ; preds = %236
  %237 = load i8*, i8** %.reload13, align 8, !tbaa !16
  store i8* %237, i8** %.reg2mem42, align 8
  %.reload44 = load i8*, i8** %.reg2mem42, align 8
  %238 = icmp eq i8* %.reload44, null
  %239 = getelementptr inbounds %struct.BlockDriverState, %struct.BlockDriverState* %4, i64 0, i32 1, i64 0
  store i8* %239, i8** %.reg2mem45, align 8
  %240 = select i1 %238, i32 -364376095, i32 1757774964
  store i32 %240, i32* %switchVar, align 4
  br label %.split129.split

.split129.split:                                  ; preds = %.split129
  br label %loopEnd

241:                                              ; preds = %loopEntry.split
  %242 = load i32, i32* @x.19, align 4
  %243 = load i32, i32* @y.20, align 4
  %244 = sub i32 %242, -1015561346
  %245 = sub i32 %244, 1
  br label %.split130

.split130:                                        ; preds = %241
  %246 = add i32 %245, -1015561346
  %247 = sub i32 %242, 1
  %248 = mul i32 %242, %246
  %249 = urem i32 %248, 2
  %250 = icmp eq i32 %249, 0
  %251 = icmp slt i32 %243, 10
  %252 = and i1 %250, %251
  %253 = xor i1 %250, %251
  br label %.split130.split

.split130.split:                                  ; preds = %.split130
  %254 = or i1 %252, %253
  %255 = or i1 %250, %251
  br i1 %254, label %originalBB83, label %originalBB83alteredBB

originalBB83:                                     ; preds = %.split130.split, %originalBB83alteredBB.split.split
  %.reload43 = load i8*, i8** %.reg2mem42, align 8
  %.reload46 = load i8*, i8** %.reg2mem45, align 8
  %.reload63.reload68 = load i8*, i8** %.reload63.reg2mem, align 8
  %256 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %.reload46, i64 noundef 256, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %.reload63.reload68, i8* noundef nonnull %.reload43) #11
  store i32 306688902, i32* %switchVar, align 4
  br label %originalBB83.split

originalBB83.split:                               ; preds = %originalBB83
  %257 = load i32, i32* @x.19, align 4
  %258 = load i32, i32* @y.20, align 4
  %259 = sub i32 0, 1
  %260 = add i32 %257, %259
  br label %originalBB83.split.split

originalBB83.split.split:                         ; preds = %originalBB83.split
  %261 = sub i32 %257, 1
  %262 = mul i32 %257, %260
  %263 = urem i32 %262, 2
  %264 = icmp eq i32 %263, 0
  %265 = icmp slt i32 %258, 10
  %266 = and i1 %264, %265
  %267 = xor i1 %264, %265
  %268 = or i1 %266, %267
  %269 = or i1 %264, %265
  br i1 %268, label %originalBBpart285, label %originalBB83alteredBB

originalBBpart285:                                ; preds = %originalBB83.split.split
  br label %loopEnd

270:                                              ; preds = %loopEntry.split
  %271 = load i32, i32* @x.19, align 4
  %272 = load i32, i32* @y.20, align 4
  %273 = add i32 %271, 886018595
  %274 = sub i32 %273, 1
  %275 = sub i32 %274, 886018595
  %276 = sub i32 %271, 1
  br label %.split131

.split131:                                        ; preds = %270
  %277 = mul i32 %271, %275
  %278 = urem i32 %277, 2
  %279 = icmp eq i32 %278, 0
  %280 = icmp slt i32 %272, 10
  br label %.split131.split

.split131.split:                                  ; preds = %.split131
  %281 = and i1 %279, %280
  %282 = xor i1 %279, %280
  %283 = or i1 %281, %282
  %284 = or i1 %279, %280
  br i1 %283, label %originalBB87, label %originalBB87alteredBB

originalBB87:                                     ; preds = %.split131.split, %originalBB87alteredBB.split.split
  %.reload47 = load i8*, i8** %.reg2mem45, align 8
  %.reload63.reload69 = load i8*, i8** %.reload63.reg2mem, align 8
  %285 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %.reload47, i64 noundef 256, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %.reload63.reload69) #11
  store i32 306688902, i32* %switchVar, align 4
  br label %originalBB87.split

originalBB87.split:                               ; preds = %originalBB87
  %286 = load i32, i32* @x.19, align 4
  %287 = load i32, i32* @y.20, align 4
  %288 = sub i32 %286, 1870571484
  %289 = sub i32 %288, 1
  %290 = add i32 %289, 1870571484
  %291 = sub i32 %286, 1
  %292 = mul i32 %286, %290
  br label %originalBB87.split.split

originalBB87.split.split:                         ; preds = %originalBB87.split
  %293 = urem i32 %292, 2
  %294 = icmp eq i32 %293, 0
  %295 = icmp slt i32 %287, 10
  %296 = and i1 %294, %295
  %297 = xor i1 %294, %295
  %298 = or i1 %296, %297
  %299 = or i1 %294, %295
  br i1 %298, label %originalBBpart289, label %originalBB87alteredBB

originalBBpart289:                                ; preds = %originalBB87.split.split
  br label %loopEnd

300:                                              ; preds = %loopEntry.split
  %301 = load i32, i32* @x.19, align 4
  %302 = load i32, i32* @y.20, align 4
  %303 = add i32 %301, -16303553
  br label %.split132

.split132:                                        ; preds = %300
  %304 = sub i32 %303, 1
  %305 = sub i32 %304, -16303553
  %306 = sub i32 %301, 1
  %307 = mul i32 %301, %305
  %308 = urem i32 %307, 2
  %309 = icmp eq i32 %308, 0
  %310 = icmp slt i32 %302, 10
  %311 = xor i1 %309, true
  %312 = xor i1 %310, true
  %313 = xor i1 false, true
  %314 = and i1 %311, false
  br label %.split132.split

.split132.split:                                  ; preds = %.split132
  %315 = and i1 %309, %313
  %316 = and i1 %312, false
  %317 = and i1 %310, %313
  %318 = or i1 %314, %315
  %319 = or i1 %316, %317
  %320 = xor i1 %318, %319
  %321 = or i1 %311, %312
  %322 = xor i1 %321, true
  %323 = or i1 false, %313
  %324 = and i1 %322, %323
  %325 = or i1 %320, %324
  %326 = or i1 %309, %310
  br i1 %325, label %originalBB91, label %originalBB91alteredBB

originalBB91:                                     ; preds = %.split132.split, %originalBB91alteredBB.split.split
  %.reload65.reload = load i8*, i8** %.reload65.reg2mem, align 8
  br label %originalBB91.split

originalBB91.split:                               ; preds = %originalBB91
  %327 = icmp eq i8* %.reload65.reload, null
  %328 = select i1 %327, i32 306688902, i32 298399602
  store i32 %328, i32* %switchVar, align 4
  %329 = load i32, i32* @x.19, align 4
  %330 = load i32, i32* @y.20, align 4
  %331 = add i32 %329, -887887520
  br label %originalBB91.split.split

originalBB91.split.split:                         ; preds = %originalBB91.split
  %332 = sub i32 %331, 1
  %333 = sub i32 %332, -887887520
  %334 = sub i32 %329, 1
  %335 = mul i32 %329, %333
  %336 = urem i32 %335, 2
  %337 = icmp eq i32 %336, 0
  %338 = icmp slt i32 %330, 10
  %339 = xor i1 %337, true
  %340 = xor i1 %338, true
  %341 = xor i1 true, true
  %342 = and i1 %339, true
  %343 = and i1 %337, %341
  %344 = and i1 %340, true
  %345 = and i1 %338, %341
  %346 = or i1 %342, %343
  %347 = or i1 %344, %345
  %348 = xor i1 %346, %347
  %349 = or i1 %339, %340
  %350 = xor i1 %349, true
  %351 = or i1 true, %341
  %352 = and i1 %350, %351
  %353 = or i1 %348, %352
  %354 = or i1 %337, %338
  br i1 %353, label %originalBBpart293, label %originalBB91alteredBB

originalBBpart293:                                ; preds = %originalBB91.split.split
  br label %loopEnd

355:                                              ; preds = %loopEntry.split
  %356 = load i32, i32* @x.19, align 4
  %357 = load i32, i32* @y.20, align 4
  %358 = sub i32 0, 1
  %359 = add i32 %356, %358
  %360 = sub i32 %356, 1
  %361 = mul i32 %356, %359
  %362 = urem i32 %361, 2
  %363 = icmp eq i32 %362, 0
  %364 = icmp slt i32 %357, 10
  %365 = xor i1 %363, true
  %366 = xor i1 %364, true
  %367 = xor i1 true, true
  %368 = and i1 %365, true
  br label %.split133

.split133:                                        ; preds = %355
  %369 = and i1 %363, %367
  %370 = and i1 %366, true
  %371 = and i1 %364, %367
  %372 = or i1 %368, %369
  %373 = or i1 %370, %371
  %374 = xor i1 %372, %373
  %375 = or i1 %365, %366
  %376 = xor i1 %375, true
  %377 = or i1 true, %367
  %378 = and i1 %376, %377
  %379 = or i1 %374, %378
  br label %.split133.split

.split133.split:                                  ; preds = %.split133
  %380 = or i1 %363, %364
  br i1 %379, label %originalBB95, label %originalBB95alteredBB

originalBB95:                                     ; preds = %.split133.split, %originalBB95alteredBB.split.split
  %.reload15 = load i8**, i8*** %.reg2mem12, align 8
  %381 = load i8*, i8** %.reload15, align 8, !tbaa !16
  store i8* %381, i8** %.reg2mem48, align 8
  %.reload50 = load i8*, i8** %.reg2mem48, align 8
  %382 = icmp eq i8* %.reload50, null
  %383 = getelementptr inbounds %struct.BlockDriverState, %struct.BlockDriverState* %4, i64 0, i32 1, i64 0
  store i8* %383, i8** %.reg2mem51, align 8
  %384 = select i1 %382, i32 -1009252670, i32 929163142
  br label %originalBB95.split

originalBB95.split:                               ; preds = %originalBB95
  store i32 %384, i32* %switchVar, align 4
  %385 = load i32, i32* @x.19, align 4
  br label %originalBB95.split.split

originalBB95.split.split:                         ; preds = %originalBB95.split
  %386 = load i32, i32* @y.20, align 4
  %387 = sub i32 0, 1
  %388 = add i32 %385, %387
  %389 = sub i32 %385, 1
  %390 = mul i32 %385, %388
  %391 = urem i32 %390, 2
  %392 = icmp eq i32 %391, 0
  %393 = icmp slt i32 %386, 10
  %394 = and i1 %392, %393
  %395 = xor i1 %392, %393
  %396 = or i1 %394, %395
  %397 = or i1 %392, %393
  br i1 %396, label %originalBBpart297, label %originalBB95alteredBB

originalBBpart297:                                ; preds = %originalBB95.split.split
  br label %loopEnd

398:                                              ; preds = %loopEntry.split
  %399 = load i32, i32* @x.19, align 4
  %400 = load i32, i32* @y.20, align 4
  %401 = sub i32 %399, -1678745557
  %402 = sub i32 %401, 1
  %403 = add i32 %402, -1678745557
  %404 = sub i32 %399, 1
  %405 = mul i32 %399, %403
  %406 = urem i32 %405, 2
  br label %.split134

.split134:                                        ; preds = %398
  %407 = icmp eq i32 %406, 0
  %408 = icmp slt i32 %400, 10
  %409 = and i1 %407, %408
  br label %.split134.split

.split134.split:                                  ; preds = %.split134
  %410 = xor i1 %407, %408
  %411 = or i1 %409, %410
  %412 = or i1 %407, %408
  br i1 %411, label %originalBB99, label %originalBB99alteredBB

originalBB99:                                     ; preds = %.split134.split, %originalBB99alteredBB.split.split
  %.reload49 = load i8*, i8** %.reg2mem48, align 8
  %.reload52 = load i8*, i8** %.reg2mem51, align 8
  %.reload65.reload66 = load i8*, i8** %.reload65.reg2mem, align 8
  %.reload61.reload = load i8*, i8** %.reload61.reg2mem, align 8
  %413 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %.reload52, i64 noundef 256, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* noundef nonnull %.reload65.reload66, i8* noundef %.reload61.reload, i8* noundef nonnull %.reload49) #11
  store i32 306688902, i32* %switchVar, align 4
  %414 = load i32, i32* @x.19, align 4
  br label %originalBB99.split

originalBB99.split:                               ; preds = %originalBB99
  %415 = load i32, i32* @y.20, align 4
  %416 = sub i32 0, 1
  %417 = add i32 %414, %416
  br label %originalBB99.split.split

originalBB99.split.split:                         ; preds = %originalBB99.split
  %418 = sub i32 %414, 1
  %419 = mul i32 %414, %417
  %420 = urem i32 %419, 2
  %421 = icmp eq i32 %420, 0
  %422 = icmp slt i32 %415, 10
  %423 = and i1 %421, %422
  %424 = xor i1 %421, %422
  %425 = or i1 %423, %424
  %426 = or i1 %421, %422
  br i1 %425, label %originalBBpart2101, label %originalBB99alteredBB

originalBBpart2101:                               ; preds = %originalBB99.split.split
  br label %loopEnd

427:                                              ; preds = %loopEntry.split
  %.reload53 = load i8*, i8** %.reg2mem51, align 8
  %.reload65.reload67 = load i8*, i8** %.reload65.reg2mem, align 8
  %.reload61.reload70 = load i8*, i8** %.reload61.reg2mem, align 8
  br label %.split135

.split135:                                        ; preds = %427
  %428 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %.reload53, i64 noundef 256, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* noundef nonnull %.reload65.reload67, i8* noundef %.reload61.reload70) #11
  store i32 306688902, i32* %switchVar, align 4
  br label %.split135.split

.split135.split:                                  ; preds = %.split135
  br label %loopEnd

429:                                              ; preds = %loopEntry.split
  %430 = load i32, i32* @x.19, align 4
  %431 = load i32, i32* @y.20, align 4
  %432 = add i32 %430, 1844221563
  br label %.split136

.split136:                                        ; preds = %429
  %433 = sub i32 %432, 1
  %434 = sub i32 %433, 1844221563
  %435 = sub i32 %430, 1
  %436 = mul i32 %430, %434
  %437 = urem i32 %436, 2
  %438 = icmp eq i32 %437, 0
  %439 = icmp slt i32 %431, 10
  %440 = and i1 %438, %439
  %441 = xor i1 %438, %439
  %442 = or i1 %440, %441
  br label %.split136.split

.split136.split:                                  ; preds = %.split136
  %443 = or i1 %438, %439
  br i1 %442, label %originalBB103, label %originalBB103alteredBB

originalBB103:                                    ; preds = %.split136.split, %originalBB103alteredBB.split.split
  %444 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.21, i64 0, i64 0)) #11
  %445 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #11
  %.reload14 = load i8**, i8*** %.reg2mem12, align 8
  %446 = load i8*, i8** %.reload14, align 8, !tbaa !16
  store i8* %446, i8** %.reg2mem54, align 8
  %.reload56 = load i8*, i8** %.reg2mem54, align 8
  %447 = icmp eq i8* %.reload56, null
  br label %originalBB103.split

originalBB103.split:                              ; preds = %originalBB103
  %448 = select i1 %447, i32 -1294255648, i32 -1467429064
  store i32 %448, i32* %switchVar, align 4
  %449 = load i32, i32* @x.19, align 4
  %450 = load i32, i32* @y.20, align 4
  %451 = add i32 %449, 335140932
  %452 = sub i32 %451, 1
  %453 = sub i32 %452, 335140932
  %454 = sub i32 %449, 1
  %455 = mul i32 %449, %453
  %456 = urem i32 %455, 2
  %457 = icmp eq i32 %456, 0
  %458 = icmp slt i32 %450, 10
  %459 = xor i1 %457, true
  %460 = xor i1 %458, true
  %461 = xor i1 true, true
  %462 = and i1 %459, true
  %463 = and i1 %457, %461
  %464 = and i1 %460, true
  %465 = and i1 %458, %461
  %466 = or i1 %462, %463
  %467 = or i1 %464, %465
  %468 = xor i1 %466, %467
  %469 = or i1 %459, %460
  %470 = xor i1 %469, true
  %471 = or i1 true, %461
  br label %originalBB103.split.split

originalBB103.split.split:                        ; preds = %originalBB103.split
  %472 = and i1 %470, %471
  %473 = or i1 %468, %472
  %474 = or i1 %457, %458
  br i1 %473, label %originalBBpart2105, label %originalBB103alteredBB

originalBBpart2105:                               ; preds = %originalBB103.split.split
  br label %loopEnd

475:                                              ; preds = %loopEntry.split
  %.reload55 = load i8*, i8** %.reg2mem54, align 8
  br label %.split137

.split137:                                        ; preds = %475
  %476 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %.reload55) #11
  %477 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #11
  br label %.split137.split

.split137.split:                                  ; preds = %.split137
  store i32 -1294255648, i32* %switchVar, align 4
  br label %loopEnd

478:                                              ; preds = %loopEntry.split
  %479 = load i32, i32* @x.19, align 4
  %480 = load i32, i32* @y.20, align 4
  %481 = sub i32 %479, 1472682348
  %482 = sub i32 %481, 1
  %483 = add i32 %482, 1472682348
  br label %.split138

.split138:                                        ; preds = %478
  %484 = sub i32 %479, 1
  %485 = mul i32 %479, %483
  %486 = urem i32 %485, 2
  %487 = icmp eq i32 %486, 0
  %488 = icmp slt i32 %480, 10
  br label %.split138.split

.split138.split:                                  ; preds = %.split138
  %489 = and i1 %487, %488
  %490 = xor i1 %487, %488
  %491 = or i1 %489, %490
  %492 = or i1 %487, %488
  br i1 %491, label %originalBB107, label %originalBB107alteredBB

originalBB107:                                    ; preds = %.split138.split, %originalBB107alteredBB.split.split
  %.reload18 = load i8**, i8*** %.reg2mem17, align 8
  %493 = load i8*, i8** %.reload18, align 8, !tbaa !17
  store i8* %493, i8** %.reg2mem57, align 8
  %.reload59 = load i8*, i8** %.reg2mem57, align 8
  %494 = icmp eq i8* %.reload59, null
  %495 = select i1 %494, i32 1047511498, i32 -68901117
  store i32 %495, i32* %switchVar, align 4
  %496 = load i32, i32* @x.19, align 4
  br label %originalBB107.split

originalBB107.split:                              ; preds = %originalBB107
  %497 = load i32, i32* @y.20, align 4
  %498 = add i32 %496, 1252260222
  %499 = sub i32 %498, 1
  %500 = sub i32 %499, 1252260222
  %501 = sub i32 %496, 1
  %502 = mul i32 %496, %500
  %503 = urem i32 %502, 2
  %504 = icmp eq i32 %503, 0
  %505 = icmp slt i32 %497, 10
  %506 = and i1 %504, %505
  %507 = xor i1 %504, %505
  %508 = or i1 %506, %507
  %509 = or i1 %504, %505
  br label %originalBB107.split.split

originalBB107.split.split:                        ; preds = %originalBB107.split
  br i1 %508, label %originalBBpart2109, label %originalBB107alteredBB

originalBBpart2109:                               ; preds = %originalBB107.split.split
  br label %loopEnd

510:                                              ; preds = %loopEntry.split
  %511 = load i32, i32* @x.19, align 4
  %512 = load i32, i32* @y.20, align 4
  %513 = sub i32 %511, 1564882236
  %514 = sub i32 %513, 1
  %515 = add i32 %514, 1564882236
  %516 = sub i32 %511, 1
  br label %.split139

.split139:                                        ; preds = %510
  %517 = mul i32 %511, %515
  br label %.split139.split

.split139.split:                                  ; preds = %.split139
  %518 = urem i32 %517, 2
  %519 = icmp eq i32 %518, 0
  %520 = icmp slt i32 %512, 10
  %521 = and i1 %519, %520
  %522 = xor i1 %519, %520
  %523 = or i1 %521, %522
  %524 = or i1 %519, %520
  br i1 %523, label %originalBB111, label %originalBB111alteredBB

originalBB111:                                    ; preds = %.split139.split, %originalBB111alteredBB.split.split
  %.reload58 = load i8*, i8** %.reg2mem57, align 8
  %525 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %.reload58) #11
  br label %originalBB111.split

originalBB111.split:                              ; preds = %originalBB111
  %526 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #11
  store i32 1047511498, i32* %switchVar, align 4
  %527 = load i32, i32* @x.19, align 4
  %528 = load i32, i32* @y.20, align 4
  %529 = sub i32 0, 1
  %530 = add i32 %527, %529
  %531 = sub i32 %527, 1
  %532 = mul i32 %527, %530
  %533 = urem i32 %532, 2
  br label %originalBB111.split.split

originalBB111.split.split:                        ; preds = %originalBB111.split
  %534 = icmp eq i32 %533, 0
  %535 = icmp slt i32 %528, 10
  %536 = xor i1 %534, true
  %537 = xor i1 %535, true
  %538 = xor i1 true, true
  %539 = and i1 %536, true
  %540 = and i1 %534, %538
  %541 = and i1 %537, true
  %542 = and i1 %535, %538
  %543 = or i1 %539, %540
  %544 = or i1 %541, %542
  %545 = xor i1 %543, %544
  %546 = or i1 %536, %537
  %547 = xor i1 %546, true
  %548 = or i1 true, %538
  %549 = and i1 %547, %548
  %550 = or i1 %545, %549
  %551 = or i1 %534, %535
  br i1 %550, label %originalBBpart2113, label %originalBB111alteredBB

originalBBpart2113:                               ; preds = %originalBB111.split.split
  br label %loopEnd

552:                                              ; preds = %loopEntry.split
  %553 = load i32, i32* @x.19, align 4
  %554 = load i32, i32* @y.20, align 4
  %555 = sub i32 0, 1
  %556 = add i32 %553, %555
  %557 = sub i32 %553, 1
  %558 = mul i32 %553, %556
  %559 = urem i32 %558, 2
  %560 = icmp eq i32 %559, 0
  %561 = icmp slt i32 %554, 10
  %562 = xor i1 %560, true
  %563 = xor i1 %561, true
  %564 = xor i1 false, true
  %565 = and i1 %562, false
  %566 = and i1 %560, %564
  %567 = and i1 %563, false
  %568 = and i1 %561, %564
  %569 = or i1 %565, %566
  %570 = or i1 %567, %568
  br label %.split140

.split140:                                        ; preds = %552
  %571 = xor i1 %569, %570
  %572 = or i1 %562, %563
  %573 = xor i1 %572, true
  %574 = or i1 false, %564
  %575 = and i1 %573, %574
  %576 = or i1 %571, %575
  br label %.split140.split

.split140.split:                                  ; preds = %.split140
  %577 = or i1 %560, %561
  br i1 %576, label %originalBB115, label %originalBB115alteredBB

originalBB115:                                    ; preds = %.split140.split, %originalBB115alteredBB.split.split
  %578 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str, i64 0, i64 0)) #11
  %579 = getelementptr inbounds %struct.BlockDriverState, %struct.BlockDriverState* %4, i64 0, i32 2
  %580 = bitcast %struct.QDict** %579 to i8**
  %.reload25 = load i8*, i8** %.reg2mem24, align 8
  store i8* %.reload25, i8** %580, align 8, !tbaa !27
  %581 = getelementptr inbounds %struct.BlockDriverState, %struct.BlockDriverState* %4, i64 0, i32 1, i64 0
  %582 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %581)
  %.reload21 = load i8*, i8** %.reg2mem20, align 8
  call void @llvm.lifetime.end.p0i8(i64 272, i8* nonnull %.reload21) #11
  %.reload10 = load i8*, i8** %.reg2mem9, align 8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %.reload10) #11
  %.reload7 = load i8*, i8** %.reg2mem6, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %.reload7) #11
  br label %originalBB115.split

originalBB115.split:                              ; preds = %originalBB115
  %.reload = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %.reload) #11
  %583 = load i32, i32* @x.19, align 4
  %584 = load i32, i32* @y.20, align 4
  %585 = add i32 %583, -1897329831
  %586 = sub i32 %585, 1
  %587 = sub i32 %586, -1897329831
  %588 = sub i32 %583, 1
  %589 = mul i32 %583, %587
  %590 = urem i32 %589, 2
  %591 = icmp eq i32 %590, 0
  br label %originalBB115.split.split

originalBB115.split.split:                        ; preds = %originalBB115.split
  %592 = icmp slt i32 %584, 10
  %593 = and i1 %591, %592
  %594 = xor i1 %591, %592
  %595 = or i1 %593, %594
  %596 = or i1 %591, %592
  br i1 %595, label %originalBBpart2117, label %originalBB115alteredBB

originalBBpart2117:                               ; preds = %originalBB115.split.split
  ret i32 0

loopEnd:                                          ; preds = %originalBBpart2113, %originalBBpart2109, %.split137.split, %originalBBpart2105, %.split135.split, %originalBBpart2101, %originalBBpart297, %originalBBpart293, %originalBBpart289, %originalBBpart285, %.split129.split, %originalBBpart281, %NewDefault.split.split, %.split127.split, %originalBBpart277, %.split125.split, %.split124.split, %.split123.split, %LeafBlock.split.split, %LeafBlock1.split.split, %NodeBlock.split.split, %originalBBpart273, %originalBBpart2
  %597 = load i32, i32* @x.19, align 4
  %598 = load i32, i32* @y.20, align 4
  %599 = sub i32 %597, 857519373
  %600 = sub i32 %599, 1
  %601 = add i32 %600, 857519373
  br label %loopEnd.split

loopEnd.split:                                    ; preds = %loopEnd
  %602 = sub i32 %597, 1
  %603 = mul i32 %597, %601
  %604 = urem i32 %603, 2
  %605 = icmp eq i32 %604, 0
  %606 = icmp slt i32 %598, 10
  %607 = xor i1 %605, true
  %608 = xor i1 %606, true
  %609 = xor i1 true, true
  %610 = and i1 %607, true
  %611 = and i1 %605, %609
  %612 = and i1 %608, true
  %613 = and i1 %606, %609
  %614 = or i1 %610, %611
  %615 = or i1 %612, %613
  %616 = xor i1 %614, %615
  %617 = or i1 %607, %608
  %618 = xor i1 %617, true
  br label %loopEnd.split.split

loopEnd.split.split:                              ; preds = %loopEnd.split
  %619 = or i1 true, %609
  %620 = and i1 %618, %619
  %621 = or i1 %616, %620
  %622 = or i1 %605, %606
  br i1 %621, label %originalBB119, label %originalBB119alteredBB

originalBB119:                                    ; preds = %loopEnd.split.split, %originalBB119alteredBB
  %623 = load i32, i32* @x.19, align 4
  %624 = load i32, i32* @y.20, align 4
  %625 = sub i32 %623, -1745948065
  %626 = sub i32 %625, 1
  %627 = add i32 %626, -1745948065
  %628 = sub i32 %623, 1
  %629 = mul i32 %623, %627
  %630 = urem i32 %629, 2
  %631 = icmp eq i32 %630, 0
  %632 = icmp slt i32 %624, 10
  %633 = xor i1 %631, true
  %634 = xor i1 %632, true
  %635 = xor i1 true, true
  %636 = and i1 %633, true
  %637 = and i1 %631, %635
  br label %originalBB119.split

originalBB119.split:                              ; preds = %originalBB119
  %638 = and i1 %634, true
  %639 = and i1 %632, %635
  %640 = or i1 %636, %637
  %641 = or i1 %638, %639
  %642 = xor i1 %640, %641
  %643 = or i1 %633, %634
  br label %originalBB119.split.split

originalBB119.split.split:                        ; preds = %originalBB119.split
  %644 = xor i1 %643, true
  %645 = or i1 true, %635
  %646 = and i1 %644, %645
  %647 = or i1 %642, %646
  %648 = or i1 %631, %632
  br i1 %647, label %originalBBpart2121, label %originalBB119alteredBB

originalBBpart2121:                               ; preds = %originalBB119.split.split
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %switchDefault.split.split
  br label %originalBB

originalBB71alteredBB:                            ; preds = %originalBB71.split.split, %first.split.split
  %.reload31alteredBB = load i32*, i32** %.reg2mem30, align 8
  br label %originalBB71alteredBB.split

originalBB71alteredBB.split:                      ; preds = %originalBB71alteredBB
  %649 = load i32, i32* %.reload31alteredBB, align 8, !tbaa !10
  br label %originalBB71alteredBB.split.split

originalBB71alteredBB.split.split:                ; preds = %originalBB71alteredBB.split
  store i32 %649, i32* %.reg2mem32, align 4
  store i32 707690291, i32* %switchVar, align 4
  br label %originalBB71

originalBB75alteredBB:                            ; preds = %originalBB75.split.split, %.split126.split
  %.reload38alteredBB = load %struct.InetSocketAddress*, %struct.InetSocketAddress** %.reg2mem36, align 8
  %650 = getelementptr inbounds %struct.InetSocketAddress, %struct.InetSocketAddress* %.reload38alteredBB, i64 0, i32 0
  %651 = load i8*, i8** %650, align 8, !tbaa !25
  %.reload37alteredBB = load %struct.InetSocketAddress*, %struct.InetSocketAddress** %.reg2mem36, align 8
  br label %originalBB75alteredBB.split

originalBB75alteredBB.split:                      ; preds = %originalBB75alteredBB
  %652 = getelementptr inbounds %struct.InetSocketAddress, %struct.InetSocketAddress* %.reload37alteredBB, i64 0, i32 1
  %653 = load i8*, i8** %652, align 8, !tbaa !26
  store i32 -1174126668, i32* %switchVar, align 4
  br label %originalBB75alteredBB.split.split

originalBB75alteredBB.split.split:                ; preds = %originalBB75alteredBB.split
  store i8* %653, i8** %.reg2mem60, align 8
  store i8* null, i8** %.reg2mem62, align 8
  store i8* %651, i8** %.reg2mem64, align 8
  br label %originalBB75

originalBB79alteredBB:                            ; preds = %originalBB79.split.split, %.split128.split
  %.reload65alteredBB = load i8*, i8** %.reg2mem64, align 8
  store i8* %.reload65alteredBB, i8** %.reload65.reg2mem, align 8
  %.reload63alteredBB = load i8*, i8** %.reg2mem62, align 8
  store i8* %.reload63alteredBB, i8** %.reload63.reg2mem, align 8
  %.reload61alteredBB = load i8*, i8** %.reg2mem60, align 8
  store i8* %.reload61alteredBB, i8** %.reload61.reg2mem, align 8
  br label %originalBB79alteredBB.split

originalBB79alteredBB.split:                      ; preds = %originalBB79alteredBB
  %654 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #11
  %655 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #11
  %.reload63.reloadalteredBB = load i8*, i8** %.reload63.reg2mem, align 8
  %656 = icmp eq i8* %.reload63.reloadalteredBB, null
  br label %originalBB79alteredBB.split.split

originalBB79alteredBB.split.split:                ; preds = %originalBB79alteredBB.split
  %657 = select i1 %656, i32 -785621681, i32 1237931105
  store i32 %657, i32* %switchVar, align 4
  br label %originalBB79

originalBB83alteredBB:                            ; preds = %originalBB83.split.split, %.split130.split
  %.reload43alteredBB = load i8*, i8** %.reg2mem42, align 8
  br label %originalBB83alteredBB.split

originalBB83alteredBB.split:                      ; preds = %originalBB83alteredBB
  %.reload46alteredBB = load i8*, i8** %.reg2mem45, align 8
  %.reload63.reload68alteredBB = load i8*, i8** %.reload63.reg2mem, align 8
  br label %originalBB83alteredBB.split.split

originalBB83alteredBB.split.split:                ; preds = %originalBB83alteredBB.split
  %658 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %.reload46alteredBB, i64 noundef 256, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %.reload63.reload68alteredBB, i8* noundef nonnull %.reload43alteredBB) #11
  store i32 306688902, i32* %switchVar, align 4
  br label %originalBB83

originalBB87alteredBB:                            ; preds = %originalBB87.split.split, %.split131.split
  %.reload47alteredBB = load i8*, i8** %.reg2mem45, align 8
  %.reload63.reload69alteredBB = load i8*, i8** %.reload63.reg2mem, align 8
  %659 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %.reload47alteredBB, i64 noundef 256, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %.reload63.reload69alteredBB) #11
  br label %originalBB87alteredBB.split

originalBB87alteredBB.split:                      ; preds = %originalBB87alteredBB
  store i32 306688902, i32* %switchVar, align 4
  br label %originalBB87alteredBB.split.split

originalBB87alteredBB.split.split:                ; preds = %originalBB87alteredBB.split
  br label %originalBB87

originalBB91alteredBB:                            ; preds = %originalBB91.split.split, %.split132.split
  %.reload65.reloadalteredBB = load i8*, i8** %.reload65.reg2mem, align 8
  br label %originalBB91alteredBB.split

originalBB91alteredBB.split:                      ; preds = %originalBB91alteredBB
  %660 = icmp eq i8* %.reload65.reloadalteredBB, null
  br label %originalBB91alteredBB.split.split

originalBB91alteredBB.split.split:                ; preds = %originalBB91alteredBB.split
  %661 = select i1 %660, i32 306688902, i32 298399602
  store i32 %661, i32* %switchVar, align 4
  br label %originalBB91

originalBB95alteredBB:                            ; preds = %originalBB95.split.split, %.split133.split
  %.reload15alteredBB = load i8**, i8*** %.reg2mem12, align 8
  %662 = load i8*, i8** %.reload15alteredBB, align 8, !tbaa !16
  br label %originalBB95alteredBB.split

originalBB95alteredBB.split:                      ; preds = %originalBB95alteredBB
  store i8* %662, i8** %.reg2mem48, align 8
  %.reload50alteredBB = load i8*, i8** %.reg2mem48, align 8
  br label %originalBB95alteredBB.split.split

originalBB95alteredBB.split.split:                ; preds = %originalBB95alteredBB.split
  %663 = icmp eq i8* %.reload50alteredBB, null
  %664 = getelementptr inbounds %struct.BlockDriverState, %struct.BlockDriverState* %4, i64 0, i32 1, i64 0
  store i8* %664, i8** %.reg2mem51, align 8
  %665 = select i1 %663, i32 -1009252670, i32 929163142
  store i32 %665, i32* %switchVar, align 4
  br label %originalBB95

originalBB99alteredBB:                            ; preds = %originalBB99.split.split, %.split134.split
  %.reload49alteredBB = load i8*, i8** %.reg2mem48, align 8
  %.reload52alteredBB = load i8*, i8** %.reg2mem51, align 8
  %.reload65.reload66alteredBB = load i8*, i8** %.reload65.reg2mem, align 8
  br label %originalBB99alteredBB.split

originalBB99alteredBB.split:                      ; preds = %originalBB99alteredBB
  %.reload61.reloadalteredBB = load i8*, i8** %.reload61.reg2mem, align 8
  %666 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %.reload52alteredBB, i64 noundef 256, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* noundef nonnull %.reload65.reload66alteredBB, i8* noundef %.reload61.reloadalteredBB, i8* noundef nonnull %.reload49alteredBB) #11
  store i32 306688902, i32* %switchVar, align 4
  br label %originalBB99alteredBB.split.split

originalBB99alteredBB.split.split:                ; preds = %originalBB99alteredBB.split
  br label %originalBB99

originalBB103alteredBB:                           ; preds = %originalBB103.split.split, %.split136.split
  %667 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.21, i64 0, i64 0)) #11
  br label %originalBB103alteredBB.split

originalBB103alteredBB.split:                     ; preds = %originalBB103alteredBB
  %668 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #11
  %.reload14alteredBB = load i8**, i8*** %.reg2mem12, align 8
  %669 = load i8*, i8** %.reload14alteredBB, align 8, !tbaa !16
  br label %originalBB103alteredBB.split.split

originalBB103alteredBB.split.split:               ; preds = %originalBB103alteredBB.split
  store i8* %669, i8** %.reg2mem54, align 8
  %.reload56alteredBB = load i8*, i8** %.reg2mem54, align 8
  %670 = icmp eq i8* %.reload56alteredBB, null
  %671 = select i1 %670, i32 -1294255648, i32 -1467429064
  store i32 %671, i32* %switchVar, align 4
  br label %originalBB103

originalBB107alteredBB:                           ; preds = %originalBB107.split.split, %.split138.split
  %.reload18alteredBB = load i8**, i8*** %.reg2mem17, align 8
  %672 = load i8*, i8** %.reload18alteredBB, align 8, !tbaa !17
  store i8* %672, i8** %.reg2mem57, align 8
  %.reload59alteredBB = load i8*, i8** %.reg2mem57, align 8
  br label %originalBB107alteredBB.split

originalBB107alteredBB.split:                     ; preds = %originalBB107alteredBB
  %673 = icmp eq i8* %.reload59alteredBB, null
  %674 = select i1 %673, i32 1047511498, i32 -68901117
  br label %originalBB107alteredBB.split.split

originalBB107alteredBB.split.split:               ; preds = %originalBB107alteredBB.split
  store i32 %674, i32* %switchVar, align 4
  br label %originalBB107

originalBB111alteredBB:                           ; preds = %originalBB111.split.split, %.split139.split
  %.reload58alteredBB = load i8*, i8** %.reg2mem57, align 8
  %675 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %.reload58alteredBB) #11
  br label %originalBB111alteredBB.split

originalBB111alteredBB.split:                     ; preds = %originalBB111alteredBB
  %676 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #11
  store i32 1047511498, i32* %switchVar, align 4
  br label %originalBB111alteredBB.split.split

originalBB111alteredBB.split.split:               ; preds = %originalBB111alteredBB.split
  br label %originalBB111

originalBB115alteredBB:                           ; preds = %originalBB115.split.split, %.split140.split
  %677 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str, i64 0, i64 0)) #11
  %678 = getelementptr inbounds %struct.BlockDriverState, %struct.BlockDriverState* %4, i64 0, i32 2
  %679 = bitcast %struct.QDict** %678 to i8**
  %.reload25alteredBB = load i8*, i8** %.reg2mem24, align 8
  store i8* %.reload25alteredBB, i8** %679, align 8, !tbaa !27
  br label %originalBB115alteredBB.split

originalBB115alteredBB.split:                     ; preds = %originalBB115alteredBB
  %680 = getelementptr inbounds %struct.BlockDriverState, %struct.BlockDriverState* %4, i64 0, i32 1, i64 0
  %681 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %680)
  %.reload21alteredBB = load i8*, i8** %.reg2mem20, align 8
  br label %originalBB115alteredBB.split.split

originalBB115alteredBB.split.split:               ; preds = %originalBB115alteredBB.split
  call void @llvm.lifetime.end.p0i8(i64 272, i8* nonnull %.reload21alteredBB) #11
  %.reload10alteredBB = load i8*, i8** %.reg2mem9, align 8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %.reload10alteredBB) #11
  %.reload7alteredBB = load i8*, i8** %.reg2mem6, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %.reload7alteredBB) #11
  %.reloadalteredBB = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %.reloadalteredBB) #11
  br label %originalBB115

originalBB119alteredBB:                           ; preds = %originalBB119.split.split, %loopEnd.split.split
  br label %originalBB119
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @snprintf(i8* noalias nocapture noundef writeonly, i64 noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #10

attributes #0 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"QObject", !9, i64 0}
!9 = !{!"int", !5, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"", !9, i64 0, !5, i64 8}
!12 = !{!13, !4, i64 0}
!13 = !{!"", !4, i64 0}
!14 = !{!15, !4, i64 0}
!15 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16}
!16 = !{!15, !4, i64 8}
!17 = !{!15, !4, i64 16}
!18 = !{!19, !4, i64 0}
!19 = !{!"", !4, i64 0, !5, i64 8, !4, i64 264}
!20 = !{!5, !5, i64 0}
!21 = !{!22, !9, i64 16}
!22 = !{!"", !4, i64 0, !4, i64 8, !9, i64 16, !9, i64 20, !9, i64 24}
!23 = !{!22, !9, i64 20}
!24 = !{!22, !9, i64 24}
!25 = !{!22, !4, i64 0}
!26 = !{!22, !4, i64 8}
!27 = !{!19, !4, i64 264}

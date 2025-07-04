; ModuleID = 'nbd_refresh_filename.bc'
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

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.QDict* @qdict_new() local_unnamed_addr #0 {
  %1 = call noalias i8* @malloc(i64 noundef 0) #11
  %2 = bitcast i8* %1 to %struct.QDict*
  ret %struct.QDict* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @qdict_put(%struct.QDict* nocapture readnone %0, i8* noundef %1, i8* nocapture readnone %2) local_unnamed_addr #2 {
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef %1)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @qdict_put_obj(%struct.QDict* nocapture readnone %0, i8* noundef %1, %struct.QObject* nocapture readnone %2) local_unnamed_addr #2 {
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef %1)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @qdict_flatten(%struct.QDict* nocapture readnone %0) local_unnamed_addr #2 {
  %2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias %struct.QObject* @qstring_from_str(i8* noundef %0) local_unnamed_addr #2 {
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef %0)
  %3 = call noalias dereferenceable_or_null(4) i8* @malloc(i64 noundef 4) #11
  %4 = bitcast i8* %3 to %struct.QObject*
  ret %struct.QObject* %4
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.Visitor* @qobject_output_visitor_new(%struct.QObject** nocapture readnone %0) local_unnamed_addr #0 {
  %2 = call noalias i8* @malloc(i64 noundef 0) #11
  %3 = bitcast i8* %2 to %struct.Visitor*
  ret %struct.Visitor* %3
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @visit_type_SocketAddress(%struct.Visitor* nocapture readnone %0, i8* nocapture readnone %1, %struct.SocketAddress** nocapture readnone %2, void (i8*)* nocapture readnone %3) local_unnamed_addr #2 {
  %5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.21, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @visit_complete(%struct.Visitor* nocapture readnone %0, %struct.QObject** nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = call noalias dereferenceable_or_null(4) i8* @malloc(i64 noundef 4) #11
  %4 = bitcast i8* %3 to %struct.QObject*
  %5 = bitcast %struct.QObject** %1 to i8**
  store i8* %3, i8** %5, align 8, !tbaa !3
  %6 = getelementptr inbounds %struct.QObject, %struct.QObject* %4, i64 0, i32 0
  store i32 1, i32* %6, align 4, !tbaa !7
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @error_abort(i8* noundef %0) local_unnamed_addr #4 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* noundef %0) #12
  call void @exit(i32 noundef 1) #13
  unreachable
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @qobject_type(%struct.QObject* nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.QObject, %struct.QObject* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 4, !tbaa !7
  ret i32 %3
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = alloca %struct.InetSocketAddress, align 8
  %2 = alloca %struct.SocketAddress, align 8
  %3 = alloca %struct.BDRVNBDState, align 8
  %4 = alloca %struct.BlockDriverState, align 8
  %5 = bitcast %struct.InetSocketAddress* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %5, i8* noundef nonnull align 8 dereferenceable(32) bitcast (%struct.InetSocketAddress* @__const.main.inet to i8*), i64 32, i1 false)
  %6 = bitcast %struct.SocketAddress* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #11
  %7 = getelementptr inbounds %struct.SocketAddress, %struct.SocketAddress* %2, i64 0, i32 0
  store i32 0, i32* %7, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.SocketAddress, %struct.SocketAddress* %2, i64 0, i32 1, i32 0, i32 0
  store %struct.InetSocketAddress* %1, %struct.InetSocketAddress** %8, align 8, !tbaa !12
  %9 = bitcast %struct.BDRVNBDState* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #11
  %10 = getelementptr inbounds %struct.BDRVNBDState, %struct.BDRVNBDState* %3, i64 0, i32 0
  store %struct.SocketAddress* %2, %struct.SocketAddress** %10, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.BDRVNBDState, %struct.BDRVNBDState* %3, i64 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.BDRVNBDState, %struct.BDRVNBDState* %3, i64 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8, !tbaa !17
  %13 = bitcast %struct.BlockDriverState* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 272, i8* nonnull %13) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(272) %13, i8 0, i64 272, i1 false)
  %14 = getelementptr inbounds %struct.BlockDriverState, %struct.BlockDriverState* %4, i64 0, i32 0
  store %struct.BDRVNBDState* %3, %struct.BDRVNBDState** %14, align 8, !tbaa !18
  %15 = call noalias i8* @malloc(i64 noundef 0) #11
  %16 = load %struct.SocketAddress*, %struct.SocketAddress** %10, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.SocketAddress, %struct.SocketAddress* %16, i64 0, i32 0
  %18 = load i32, i32* %17, align 8, !tbaa !10
  switch i32 %18, label %44 [
    i32 0, label %19
    i32 1, label %38
  ]

19:                                               ; preds = %0
  %20 = getelementptr inbounds %struct.SocketAddress, %struct.SocketAddress* %16, i64 0, i32 1, i32 0, i32 0
  %21 = load %struct.InetSocketAddress*, %struct.InetSocketAddress** %20, align 8, !tbaa !20
  %22 = getelementptr inbounds %struct.InetSocketAddress, %struct.InetSocketAddress* %21, i64 0, i32 2
  %23 = load i32, i32* %22, align 8, !tbaa !21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.InetSocketAddress, %struct.InetSocketAddress* %21, i64 0, i32 3
  %27 = load i32, i32* %26, align 4, !tbaa !23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.InetSocketAddress, %struct.InetSocketAddress* %21, i64 0, i32 4
  %31 = load i32, i32* %30, align 8, !tbaa !24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.InetSocketAddress, %struct.InetSocketAddress* %21, i64 0, i32 0
  %35 = load i8*, i8** %34, align 8, !tbaa !25
  %36 = getelementptr inbounds %struct.InetSocketAddress, %struct.InetSocketAddress* %21, i64 0, i32 1
  %37 = load i8*, i8** %36, align 8, !tbaa !26
  br label %44

38:                                               ; preds = %0
  %39 = getelementptr inbounds %struct.SocketAddress, %struct.SocketAddress* %16, i64 0, i32 1
  %40 = bitcast %union.SocketUnion* %39 to %struct.UnixSocketAddress**
  %41 = load %struct.UnixSocketAddress*, %struct.UnixSocketAddress** %40, align 8, !tbaa !20
  %42 = getelementptr inbounds %struct.UnixSocketAddress, %struct.UnixSocketAddress* %41, i64 0, i32 0
  %43 = load i8*, i8** %42, align 8, !tbaa !12
  br label %44

44:                                               ; preds = %38, %33, %29, %25, %19, %0
  %45 = phi i8* [ null, %38 ], [ null, %19 ], [ null, %25 ], [ null, %29 ], [ %37, %33 ], [ null, %0 ]
  %46 = phi i8* [ %43, %38 ], [ null, %19 ], [ null, %25 ], [ null, %29 ], [ null, %33 ], [ null, %0 ]
  %47 = phi i8* [ null, %38 ], [ null, %19 ], [ null, %25 ], [ null, %29 ], [ %35, %33 ], [ null, %0 ]
  %48 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #11
  %49 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #11
  %50 = icmp eq i8* %46, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %44
  %52 = load i8*, i8** %11, align 8, !tbaa !16
  %53 = icmp eq i8* %52, null
  %54 = getelementptr inbounds %struct.BlockDriverState, %struct.BlockDriverState* %4, i64 0, i32 1, i64 0
  br i1 %53, label %57, label %55

55:                                               ; preds = %51
  %56 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %54, i64 noundef 256, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %46, i8* noundef nonnull %52) #11
  br label %69

57:                                               ; preds = %51
  %58 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %54, i64 noundef 256, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %46) #11
  br label %69

59:                                               ; preds = %44
  %60 = icmp eq i8* %47, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %59
  %62 = load i8*, i8** %11, align 8, !tbaa !16
  %63 = icmp eq i8* %62, null
  %64 = getelementptr inbounds %struct.BlockDriverState, %struct.BlockDriverState* %4, i64 0, i32 1, i64 0
  br i1 %63, label %67, label %65

65:                                               ; preds = %61
  %66 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %64, i64 noundef 256, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* noundef nonnull %47, i8* noundef %45, i8* noundef nonnull %62) #11
  br label %69

67:                                               ; preds = %61
  %68 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %64, i64 noundef 256, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* noundef nonnull %47, i8* noundef %45) #11
  br label %69

69:                                               ; preds = %67, %65, %59, %57, %55
  %70 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.21, i64 0, i64 0)) #11
  %71 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #11
  %72 = load i8*, i8** %11, align 8, !tbaa !16
  %73 = icmp eq i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %72) #11
  %76 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #11
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i8*, i8** %12, align 8, !tbaa !17
  %79 = icmp eq i8* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %78) #11
  %82 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #11
  br label %83

83:                                               ; preds = %77, %80
  %84 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str, i64 0, i64 0)) #11
  %85 = getelementptr inbounds %struct.BlockDriverState, %struct.BlockDriverState* %4, i64 0, i32 2
  %86 = bitcast %struct.QDict** %85 to i8**
  store i8* %15, i8** %86, align 8, !tbaa !27
  %87 = getelementptr inbounds %struct.BlockDriverState, %struct.BlockDriverState* %4, i64 0, i32 1, i64 0
  %88 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %87)
  call void @llvm.lifetime.end.p0i8(i64 272, i8* nonnull %13) #11
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #11
  ret i32 0
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

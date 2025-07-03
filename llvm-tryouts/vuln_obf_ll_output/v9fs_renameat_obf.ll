; ModuleID = 'v9fs_renameat_obf.bc'
source_filename = "v9fs_renameat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.V9fsString = type { i8* }
%struct.V9fsState = type { i32 }
%struct.V9fsPDU = type { %struct.V9fsState* }

@.str = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Renaming '%s' (fid %d) to '%s' (fid %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Error: %zd\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Rename successful, offset: %zd\0A\00", align 1
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
define dso_local void @v9fs_string_init(%struct.V9fsString* nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #12
  br label %.split

.split:                                           ; preds = %1
  %3 = getelementptr inbounds %struct.V9fsString, %struct.V9fsString* %0, i64 0, i32 0
  store i8* %2, i8** %3, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %2, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 6, i1 false) #12
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @v9fs_string_free(%struct.V9fsString* nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.V9fsString, %struct.V9fsString* %0, i64 0, i32 0
  br label %.split

.split:                                           ; preds = %1
  %3 = load i8*, i8** %2, align 8, !tbaa !3
  br label %.split.split

.split.split:                                     ; preds = %.split
  call void @free(i8* noundef %3) #12
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i32 @name_is_illegal(i8* noundef readonly %0) local_unnamed_addr #4 {
  %2 = load i32, i32* @x.3, align 4
  br label %.split

.split:                                           ; preds = %1
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
  br label %.split.split

.split.split:                                     ; preds = %.split
  %16 = and i1 %12, true
  %17 = and i1 %10, %13
  %18 = or i1 %14, %15
  %19 = or i1 %16, %17
  %20 = xor i1 %18, %19
  %21 = or i1 %11, %12
  %22 = xor i1 %21, true
  %23 = or i1 true, %13
  %24 = and i1 %22, %23
  %25 = or i1 %20, %24
  %26 = or i1 %9, %10
  br i1 %25, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %27 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 47) #13
  %28 = icmp ne i8* %27, null
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @x.3, align 4
  %31 = load i32, i32* @y.4, align 4
  %32 = sub i32 %30, -1820144822
  %33 = sub i32 %32, 1
  %34 = add i32 %33, -1820144822
  %35 = sub i32 %30, 1
  %36 = mul i32 %30, %34
  %37 = urem i32 %36, 2
  %38 = icmp eq i32 %37, 0
  %39 = icmp slt i32 %31, 10
  %40 = and i1 %38, %39
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %41 = xor i1 %38, %39
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %42 = or i1 %40, %41
  %43 = or i1 %38, %39
  br i1 %42, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 %29

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %44 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 47) #13
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %45 = icmp ne i8* %44, null
  %46 = zext i1 %45 to i32
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @v9fs_path_write_lock(%struct.V9fsState* nocapture %0) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @v9fs_path_unlock(%struct.V9fsState* nocapture %0) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local i64 @pdu_unmarshal(%struct.V9fsPDU* nocapture readnone %0, i64 %1, i8* nocapture readnone %2, i32* nocapture noundef writeonly %3, %struct.V9fsString* nocapture noundef readonly %4, i32* nocapture noundef writeonly %5, %struct.V9fsString* nocapture noundef readonly %6) local_unnamed_addr #7 {
  store i32 1, i32* %3, align 4, !tbaa !8
  store i32 2, i32* %5, align 4, !tbaa !8
  %8 = getelementptr inbounds %struct.V9fsString, %struct.V9fsString* %4, i64 0, i32 0
  br label %.split

.split:                                           ; preds = %7
  %9 = load i8*, i8** %8, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %9, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 6, i1 false) #12
  br label %.split.split

.split.split:                                     ; preds = %.split
  %10 = getelementptr inbounds %struct.V9fsString, %struct.V9fsString* %6, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %11, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6, i1 false) #12
  ret i64 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @v9fs_complete_renameat(%struct.V9fsPDU* nocapture readnone %0, i32 noundef %1, %struct.V9fsString* nocapture noundef readonly %2, i32 noundef %3, %struct.V9fsString* nocapture noundef readonly %4) local_unnamed_addr #8 {
  %6 = load i32, i32* @x.11, align 4
  %7 = load i32, i32* @y.12, align 4
  %8 = add i32 %6, 1567815802
  %9 = sub i32 %8, 1
  %10 = sub i32 %9, 1567815802
  %11 = sub i32 %6, 1
  %12 = mul i32 %6, %10
  %13 = urem i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = icmp slt i32 %7, 10
  %16 = xor i1 %14, true
  %17 = xor i1 %15, true
  %18 = xor i1 false, true
  %19 = and i1 %16, false
  %20 = and i1 %14, %18
  %21 = and i1 %17, false
  br label %.split

.split:                                           ; preds = %5
  %22 = and i1 %15, %18
  %23 = or i1 %19, %20
  %24 = or i1 %21, %22
  %25 = xor i1 %23, %24
  %26 = or i1 %16, %17
  %27 = xor i1 %26, true
  %28 = or i1 false, %18
  %29 = and i1 %27, %28
  %30 = or i1 %25, %29
  %31 = or i1 %14, %15
  br label %.split.split

.split.split:                                     ; preds = %.split
  br i1 %30, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %32 = getelementptr inbounds %struct.V9fsString, %struct.V9fsString* %2, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !3
  %34 = getelementptr inbounds %struct.V9fsString, %struct.V9fsString* %4, i64 0, i32 0
  %35 = load i8*, i8** %34, align 8, !tbaa !3
  %36 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* noundef %33, i32 noundef %1, i8* noundef %35, i32 noundef %3)
  %37 = load i32, i32* @x.11, align 4
  %38 = load i32, i32* @y.12, align 4
  %39 = sub i32 0, 1
  %40 = add i32 %37, %39
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %41 = sub i32 %37, 1
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %42 = mul i32 %37, %40
  %43 = urem i32 %42, 2
  %44 = icmp eq i32 %43, 0
  %45 = icmp slt i32 %38, 10
  %46 = and i1 %44, %45
  %47 = xor i1 %44, %45
  %48 = or i1 %46, %47
  %49 = or i1 %44, %45
  br i1 %48, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 0

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %50 = getelementptr inbounds %struct.V9fsString, %struct.V9fsString* %2, i64 0, i32 0
  %51 = load i8*, i8** %50, align 8, !tbaa !3
  %52 = getelementptr inbounds %struct.V9fsString, %struct.V9fsString* %4, i64 0, i32 0
  %53 = load i8*, i8** %52, align 8, !tbaa !3
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %54 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* noundef %51, i32 noundef %1, i8* noundef %53, i32 noundef %3)
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define dso_local void @pdu_complete(%struct.V9fsPDU* nocapture readnone %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = icmp slt i64 %1, 0
  br label %.split

.split:                                           ; preds = %2
  %4 = select i1 %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0)
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) %4, i64 noundef %1)
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #10 {
  %.reg2mem12 = alloca i8*, align 8
  %.reg2mem6 = alloca i8*, align 8
  %.reg2mem = alloca i8*, align 8
  %1 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #12
  store i8* %1, i8** %.reg2mem, align 8
  %.reload5 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %.reload5, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 6, i1 false) #12
  %2 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #12
  store i8* %2, i8** %.reg2mem6, align 8
  %.reload11 = load i8*, i8** %.reg2mem6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %.reload11, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 6, i1 false) #12
  %.reload4 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %.reload4, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 6, i1 false) #12
  %.reload10 = load i8*, i8** %.reg2mem6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %.reload10, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6, i1 false) #12
  br label %.split

.split:                                           ; preds = %0
  %.reload3 = load i8*, i8** %.reg2mem, align 8
  %3 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %.reload3, i32 noundef 47) #13
  store i8* %3, i8** %.reg2mem12, align 8
  %switchVar = alloca i32, align 4
  store i32 -585096460, i32* %switchVar, align 4
  %.reg2mem14 = alloca i8*, align 8
  %.reg2mem16 = alloca i64, align 8
  br label %.split.split

.split.split:                                     ; preds = %.split
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %originalBBpart228
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 -585096460, label %first
    i32 375868197, label %73
    i32 4548453, label %77
    i32 204771994, label %79
  ]

switchDefault:                                    ; preds = %loopEntry.split
  %4 = load i32, i32* @x.15, align 4
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %5 = load i32, i32* @y.16, align 4
  %6 = add i32 %4, -1882910190
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %7 = sub i32 %6, 1
  %8 = sub i32 %7, -1882910190
  %9 = sub i32 %4, 1
  %10 = mul i32 %4, %8
  %11 = urem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = icmp slt i32 %5, 10
  %14 = and i1 %12, %13
  %15 = xor i1 %12, %13
  %16 = or i1 %14, %15
  %17 = or i1 %12, %13
  br i1 %16, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %switchDefault.split.split, %originalBBalteredBB
  %18 = load i32, i32* @x.15, align 4
  %19 = load i32, i32* @y.16, align 4
  %20 = add i32 %18, 1036312989
  %21 = sub i32 %20, 1
  %22 = sub i32 %21, 1036312989
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
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %39 = xor i1 %38, true
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %40 = or i1 true, %30
  %41 = and i1 %39, %40
  %42 = or i1 %37, %41
  %43 = or i1 %26, %27
  br i1 %42, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %44 = load i32, i32* @x.15, align 4
  br label %first.split

first.split:                                      ; preds = %first
  %45 = load i32, i32* @y.16, align 4
  %46 = sub i32 %44, 1894149577
  %47 = sub i32 %46, 1
  %48 = add i32 %47, 1894149577
  %49 = sub i32 %44, 1
  %50 = mul i32 %44, %48
  %51 = urem i32 %50, 2
  %52 = icmp eq i32 %51, 0
  %53 = icmp slt i32 %45, 10
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  %54 = and i1 %52, %53
  %55 = xor i1 %52, %53
  %56 = or i1 %54, %55
  %57 = or i1 %52, %53
  br i1 %56, label %originalBB18, label %originalBB18alteredBB

originalBB18:                                     ; preds = %first.split.split, %originalBB18alteredBB.split.split
  %.reload13 = load i8*, i8** %.reg2mem12, align 8
  %58 = icmp eq i8* %.reload13, null
  %59 = select i1 %58, i32 375868197, i32 204771994
  store i32 %59, i32* %switchVar, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %.reg2mem14, align 8
  store i64 -2, i64* %.reg2mem16, align 8
  %60 = load i32, i32* @x.15, align 4
  %61 = load i32, i32* @y.16, align 4
  %62 = sub i32 0, 1
  %63 = add i32 %60, %62
  br label %originalBB18.split

originalBB18.split:                               ; preds = %originalBB18
  %64 = sub i32 %60, 1
  br label %originalBB18.split.split

originalBB18.split.split:                         ; preds = %originalBB18.split
  %65 = mul i32 %60, %63
  %66 = urem i32 %65, 2
  %67 = icmp eq i32 %66, 0
  %68 = icmp slt i32 %61, 10
  %69 = and i1 %67, %68
  %70 = xor i1 %67, %68
  %71 = or i1 %69, %70
  %72 = or i1 %67, %68
  br i1 %71, label %originalBBpart220, label %originalBB18alteredBB

originalBBpart220:                                ; preds = %originalBB18.split.split
  br label %loopEnd

73:                                               ; preds = %loopEntry.split
  %.reload8 = load i8*, i8** %.reg2mem6, align 8
  %74 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %.reload8, i32 noundef 47) #13
  %75 = icmp eq i8* %74, null
  br label %.split30

.split30:                                         ; preds = %73
  %76 = select i1 %75, i32 4548453, i32 204771994
  store i32 %76, i32* %switchVar, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %.reg2mem14, align 8
  br label %.split30.split

.split30.split:                                   ; preds = %.split30
  store i64 -2, i64* %.reg2mem16, align 8
  br label %loopEnd

77:                                               ; preds = %loopEntry.split
  %.reload = load i8*, i8** %.reg2mem, align 8
  %.reload7 = load i8*, i8** %.reg2mem6, align 8
  %78 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* noundef %.reload, i32 noundef 1, i8* noundef %.reload7, i32 noundef 2) #12
  br label %.split31

.split31:                                         ; preds = %77
  store i32 204771994, i32* %switchVar, align 4
  br label %.split31.split

.split31.split:                                   ; preds = %.split31
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8** %.reg2mem14, align 8
  store i64 7, i64* %.reg2mem16, align 8
  br label %loopEnd

79:                                               ; preds = %loopEntry.split
  %80 = load i32, i32* @x.15, align 4
  %81 = load i32, i32* @y.16, align 4
  %82 = add i32 %80, -2084462708
  %83 = sub i32 %82, 1
  br label %.split32

.split32:                                         ; preds = %79
  %84 = sub i32 %83, -2084462708
  %85 = sub i32 %80, 1
  %86 = mul i32 %80, %84
  %87 = urem i32 %86, 2
  %88 = icmp eq i32 %87, 0
  br label %.split32.split

.split32.split:                                   ; preds = %.split32
  %89 = icmp slt i32 %81, 10
  %90 = xor i1 %88, true
  %91 = xor i1 %89, true
  %92 = xor i1 false, true
  %93 = and i1 %90, false
  %94 = and i1 %88, %92
  %95 = and i1 %91, false
  %96 = and i1 %89, %92
  %97 = or i1 %93, %94
  %98 = or i1 %95, %96
  %99 = xor i1 %97, %98
  %100 = or i1 %90, %91
  %101 = xor i1 %100, true
  %102 = or i1 false, %92
  %103 = and i1 %101, %102
  %104 = or i1 %99, %103
  %105 = or i1 %88, %89
  br i1 %104, label %originalBB22, label %originalBB22alteredBB

originalBB22:                                     ; preds = %.split32.split, %originalBB22alteredBB.split.split
  %.reload17 = load i64, i64* %.reg2mem16, align 8
  %.reload15 = load i8*, i8** %.reg2mem14, align 8
  %106 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) %.reload15, i64 noundef %.reload17) #12
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  call void @free(i8* noundef %.reload2) #12
  %.reload9 = load i8*, i8** %.reg2mem6, align 8
  call void @free(i8* noundef %.reload9) #12
  %107 = load i32, i32* @x.15, align 4
  br label %originalBB22.split

originalBB22.split:                               ; preds = %originalBB22
  %108 = load i32, i32* @y.16, align 4
  %109 = sub i32 %107, -1142478043
  %110 = sub i32 %109, 1
  %111 = add i32 %110, -1142478043
  br label %originalBB22.split.split

originalBB22.split.split:                         ; preds = %originalBB22.split
  %112 = sub i32 %107, 1
  %113 = mul i32 %107, %111
  %114 = urem i32 %113, 2
  %115 = icmp eq i32 %114, 0
  %116 = icmp slt i32 %108, 10
  %117 = and i1 %115, %116
  %118 = xor i1 %115, %116
  %119 = or i1 %117, %118
  %120 = or i1 %115, %116
  br i1 %119, label %originalBBpart224, label %originalBB22alteredBB

originalBBpart224:                                ; preds = %originalBB22.split.split
  ret i32 0

loopEnd:                                          ; preds = %.split31.split, %.split30.split, %originalBBpart220, %originalBBpart2
  %121 = load i32, i32* @x.15, align 4
  %122 = load i32, i32* @y.16, align 4
  %123 = sub i32 0, 1
  %124 = add i32 %121, %123
  br label %loopEnd.split

loopEnd.split:                                    ; preds = %loopEnd
  %125 = sub i32 %121, 1
  %126 = mul i32 %121, %124
  %127 = urem i32 %126, 2
  %128 = icmp eq i32 %127, 0
  br label %loopEnd.split.split

loopEnd.split.split:                              ; preds = %loopEnd.split
  %129 = icmp slt i32 %122, 10
  %130 = and i1 %128, %129
  %131 = xor i1 %128, %129
  %132 = or i1 %130, %131
  %133 = or i1 %128, %129
  br i1 %132, label %originalBB26, label %originalBB26alteredBB

originalBB26:                                     ; preds = %loopEnd.split.split, %originalBB26alteredBB
  %134 = load i32, i32* @x.15, align 4
  br label %originalBB26.split

originalBB26.split:                               ; preds = %originalBB26
  %135 = load i32, i32* @y.16, align 4
  %136 = sub i32 0, 1
  %137 = add i32 %134, %136
  %138 = sub i32 %134, 1
  %139 = mul i32 %134, %137
  %140 = urem i32 %139, 2
  %141 = icmp eq i32 %140, 0
  %142 = icmp slt i32 %135, 10
  %143 = and i1 %141, %142
  %144 = xor i1 %141, %142
  %145 = or i1 %143, %144
  br label %originalBB26.split.split

originalBB26.split.split:                         ; preds = %originalBB26.split
  %146 = or i1 %141, %142
  br i1 %145, label %originalBBpart228, label %originalBB26alteredBB

originalBBpart228:                                ; preds = %originalBB26.split.split
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %switchDefault.split.split
  br label %originalBB

originalBB18alteredBB:                            ; preds = %originalBB18.split.split, %first.split.split
  %.reload13alteredBB = load i8*, i8** %.reg2mem12, align 8
  br label %originalBB18alteredBB.split

originalBB18alteredBB.split:                      ; preds = %originalBB18alteredBB
  %147 = icmp eq i8* %.reload13alteredBB, null
  %148 = select i1 %147, i32 375868197, i32 204771994
  store i32 %148, i32* %switchVar, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %.reg2mem14, align 8
  br label %originalBB18alteredBB.split.split

originalBB18alteredBB.split.split:                ; preds = %originalBB18alteredBB.split
  store i64 -2, i64* %.reg2mem16, align 8
  br label %originalBB18

originalBB22alteredBB:                            ; preds = %originalBB22.split.split, %.split32.split
  %.reload17alteredBB = load i64, i64* %.reg2mem16, align 8
  %.reload15alteredBB = load i8*, i8** %.reg2mem14, align 8
  %149 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) %.reload15alteredBB, i64 noundef %.reload17alteredBB) #12
  br label %originalBB22alteredBB.split

originalBB22alteredBB.split:                      ; preds = %originalBB22alteredBB
  %.reload2alteredBB = load i8*, i8** %.reg2mem, align 8
  call void @free(i8* noundef %.reload2alteredBB) #12
  %.reload9alteredBB = load i8*, i8** %.reg2mem6, align 8
  call void @free(i8* noundef %.reload9alteredBB) #12
  br label %originalBB22alteredBB.split.split

originalBB22alteredBB.split.split:                ; preds = %originalBB22alteredBB.split
  br label %originalBB22

originalBB26alteredBB:                            ; preds = %originalBB26.split.split, %loopEnd.split.split
  br label %originalBB26
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

attributes #0 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}

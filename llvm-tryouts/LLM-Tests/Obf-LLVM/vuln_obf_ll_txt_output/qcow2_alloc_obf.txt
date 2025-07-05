; ModuleID = 'qcow2_alloc_obf.bc'
source_filename = "qcow2_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BDRVQcowState = type { i32, i32, i32, %struct.QCowL2Meta* }
%struct.QCowL2Meta = type { i64, i32, i32, i32, %struct.QCowL2Meta*, %struct.QCowL2Meta* }
%struct.BlockDriverState = type { i8* }

@get_cluster_table.dummy_table = internal global [1024 x i64] zeroinitializer, align 16
@__const.main.state = private unnamed_addr constant %struct.BDRVQcowState { i32 512, i32 9, i32 1024, %struct.QCowL2Meta* null }, align 8
@.str = private unnamed_addr constant [32 x i8] c"Cluster offset: 0x%lx, num: %d\0A\00", align 1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @get_cluster_table(%struct.BlockDriverState* nocapture readnone %0, i64 %1, i64** nocapture noundef writeonly %2, i64* nocapture noundef writeonly %3, i32* nocapture noundef writeonly %4) local_unnamed_addr #0 {
  store i64* getelementptr inbounds ([1024 x i64], [1024 x i64]* @get_cluster_table.dummy_table, i64 0, i64 0), i64** %2, align 8, !tbaa !3
  br label %.split

.split:                                           ; preds = %5
  store i64 0, i64* %3, align 8, !tbaa !7
  br label %.split.split

.split.split:                                     ; preds = %.split
  store i32 0, i32* %4, align 4, !tbaa !9
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @size_to_clusters(%struct.BDRVQcowState* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, i32* @x.1, align 4
  %4 = load i32, i32* @y.2, align 4
  %5 = sub i32 %3, 1025525526
  %6 = sub i32 %5, 1
  %7 = add i32 %6, 1025525526
  %8 = sub i32 %3, 1
  br label %.split

.split:                                           ; preds = %2
  %9 = mul i32 %3, %7
  %10 = urem i32 %9, 2
  br label %.split.split

.split.split:                                     ; preds = %.split
  %11 = icmp eq i32 %10, 0
  %12 = icmp slt i32 %4, 10
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
  %24 = xor i1 %23, true
  %25 = or i1 false, %15
  %26 = and i1 %24, %25
  %27 = or i1 %22, %26
  %28 = or i1 %11, %12
  br i1 %27, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %29 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %0, i64 0, i32 0
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %30 = load i32, i32* %29, align 8, !tbaa !11
  %31 = sdiv i32 %1, %30
  %32 = load i32, i32* @x.1, align 4
  %33 = load i32, i32* @y.2, align 4
  %34 = sub i32 0, 1
  %35 = add i32 %32, %34
  %36 = sub i32 %32, 1
  %37 = mul i32 %32, %35
  %38 = urem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = icmp slt i32 %33, 10
  %41 = and i1 %39, %40
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %42 = xor i1 %39, %40
  %43 = or i1 %41, %42
  %44 = or i1 %39, %40
  br i1 %43, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 %31

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %45 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %0, i64 0, i32 0
  %46 = load i32, i32* %45, align 8, !tbaa !11
  %47 = sub i32 0, 872600556
  %48 = sub i32 %47, %1
  %49 = add i32 %48, 872600556
  %_ = sub i32 0, %1
  %50 = sub i32 0, %49
  %51 = sub i32 0, %46
  %52 = add i32 %50, %51
  %53 = sub i32 0, %52
  %gen = add i32 %49, %46
  %54 = add i32 %1, -1127894992
  %55 = sub i32 %54, %46
  %56 = sub i32 %55, -1127894992
  %_1 = sub i32 %1, %46
  %gen2 = mul i32 %56, %46
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %_3 = shl i32 %1, %46
  %57 = add i32 0, 307578740
  %58 = sub i32 %57, %1
  %59 = sub i32 %58, 307578740
  %_4 = sub i32 0, %1
  %60 = add i32 %59, -1023259849
  %61 = add i32 %60, %46
  %62 = sub i32 %61, -1023259849
  %gen5 = add i32 %59, %46
  %_6 = shl i32 %1, %46
  %63 = add i32 0, -1886270009
  %64 = sub i32 %63, %1
  %65 = sub i32 %64, -1886270009
  %_7 = sub i32 0, %1
  %66 = sub i32 0, %46
  %67 = sub i32 %65, %66
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  %gen8 = add i32 %65, %46
  %68 = add i32 0, -2077862564
  %69 = sub i32 %68, %1
  %70 = sub i32 %69, -2077862564
  %_9 = sub i32 0, %1
  %71 = add i32 %70, -1518497714
  %72 = add i32 %71, %46
  %73 = sub i32 %72, -1518497714
  %gen10 = add i32 %70, %46
  %74 = sub i32 0, %46
  %75 = add i32 %1, %74
  %_11 = sub i32 %1, %46
  %gen12 = mul i32 %75, %46
  %76 = sdiv i32 %1, %46
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @be64_to_cpu(i64 noundef returned %0) local_unnamed_addr #2 {
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @count_contiguous_clusters(i32 noundef returned %0, i32 %1, i64* nocapture readnone %2, i32 %3, i32 %4) local_unnamed_addr #2 {
  %6 = load i32, i32* @x.5, align 4
  %7 = load i32, i32* @y.6, align 4
  br label %.split

.split:                                           ; preds = %5
  %8 = sub i32 0, 1
  %9 = add i32 %6, %8
  %10 = sub i32 %6, 1
  %11 = mul i32 %6, %9
  %12 = urem i32 %11, 2
  %13 = icmp eq i32 %12, 0
  %14 = icmp slt i32 %7, 10
  %15 = and i1 %13, %14
  %16 = xor i1 %13, %14
  %17 = or i1 %15, %16
  br label %.split.split

.split.split:                                     ; preds = %.split
  %18 = or i1 %13, %14
  br i1 %17, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %19 = load i32, i32* @x.5, align 4
  %20 = load i32, i32* @y.6, align 4
  %21 = add i32 %19, 1531893529
  %22 = sub i32 %21, 1
  %23 = sub i32 %22, 1531893529
  %24 = sub i32 %19, 1
  %25 = mul i32 %19, %23
  %26 = urem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = icmp slt i32 %20, 10
  %29 = xor i1 %27, true
  %30 = xor i1 %28, true
  %31 = xor i1 true, true
  %32 = and i1 %29, true
  %33 = and i1 %27, %31
  %34 = and i1 %30, true
  %35 = and i1 %28, %31
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %36 = or i1 %32, %33
  %37 = or i1 %34, %35
  %38 = xor i1 %36, %37
  %39 = or i1 %29, %30
  %40 = xor i1 %39, true
  %41 = or i1 true, %31
  %42 = and i1 %40, %41
  %43 = or i1 %38, %42
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %44 = or i1 %27, %28
  br i1 %43, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 %0

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @count_contiguous_free_clusters(i32 noundef returned %0, i64* nocapture readnone %1) local_unnamed_addr #2 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @qcow2_alloc_clusters(%struct.BlockDriverState* nocapture readnone %0, i32 %1) local_unnamed_addr #2 {
  %3 = load i32, i32* @x.9, align 4
  %4 = load i32, i32* @y.10, align 4
  %5 = sub i32 0, 1
  %6 = add i32 %3, %5
  %7 = sub i32 %3, 1
  %8 = mul i32 %3, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %4, 10
  %12 = xor i1 %10, true
  br label %.split

.split:                                           ; preds = %2
  %13 = xor i1 %11, true
  %14 = xor i1 false, true
  %15 = and i1 %12, false
  %16 = and i1 %10, %14
  %17 = and i1 %13, false
  %18 = and i1 %11, %14
  br label %.split.split

.split.split:                                     ; preds = %.split
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
  %28 = load i32, i32* @x.9, align 4
  %29 = load i32, i32* @y.10, align 4
  %30 = sub i32 %28, 1064658451
  %31 = sub i32 %30, 1
  %32 = add i32 %31, 1064658451
  %33 = sub i32 %28, 1
  %34 = mul i32 %28, %32
  %35 = urem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  %37 = icmp slt i32 %29, 10
  %38 = and i1 %36, %37
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %39 = xor i1 %36, %37
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %40 = or i1 %38, %39
  %41 = or i1 %36, %37
  br i1 %40, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i64 1048576

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @QLIST_INSERT_HEAD(%struct.QCowL2Meta** nocapture noundef %0, %struct.QCowL2Meta* noundef %1, i32 %2) local_unnamed_addr #3 {
  %4 = load i32, i32* @x.11, align 4
  %5 = load i32, i32* @y.12, align 4
  %6 = sub i32 %4, -1928705573
  %7 = sub i32 %6, 1
  %8 = add i32 %7, -1928705573
  %9 = sub i32 %4, 1
  %10 = mul i32 %4, %8
  %11 = urem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = icmp slt i32 %5, 10
  br label %.split

.split:                                           ; preds = %3
  %14 = xor i1 %12, true
  %15 = xor i1 %13, true
  %16 = xor i1 true, true
  %17 = and i1 %14, true
  br label %.split.split

.split.split:                                     ; preds = %.split
  %18 = and i1 %12, %16
  %19 = and i1 %15, true
  %20 = and i1 %13, %16
  %21 = or i1 %17, %18
  %22 = or i1 %19, %20
  %23 = xor i1 %21, %22
  %24 = or i1 %14, %15
  %25 = xor i1 %24, true
  %26 = or i1 true, %16
  %27 = and i1 %25, %26
  %28 = or i1 %23, %27
  %29 = or i1 %12, %13
  br i1 %28, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %30 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %0, align 8, !tbaa !3
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %31 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %1, i64 0, i32 5
  store %struct.QCowL2Meta* %30, %struct.QCowL2Meta** %31, align 8, !tbaa !13
  store %struct.QCowL2Meta* %1, %struct.QCowL2Meta** %0, align 8, !tbaa !3
  %32 = load i32, i32* @x.11, align 4
  %33 = load i32, i32* @y.12, align 4
  %34 = add i32 %32, -848815900
  %35 = sub i32 %34, 1
  %36 = sub i32 %35, -848815900
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %37 = sub i32 %32, 1
  %38 = mul i32 %32, %36
  %39 = urem i32 %38, 2
  %40 = icmp eq i32 %39, 0
  %41 = icmp slt i32 %33, 10
  %42 = xor i1 %40, true
  %43 = xor i1 %41, true
  %44 = xor i1 false, true
  %45 = and i1 %42, false
  %46 = and i1 %40, %44
  %47 = and i1 %43, false
  %48 = and i1 %41, %44
  %49 = or i1 %45, %46
  %50 = or i1 %47, %48
  %51 = xor i1 %49, %50
  %52 = or i1 %42, %43
  %53 = xor i1 %52, true
  %54 = or i1 false, %44
  %55 = and i1 %53, %54
  %56 = or i1 %51, %55
  %57 = or i1 %40, %41
  br i1 %56, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %58 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %0, align 8, !tbaa !3
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %59 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %1, i64 0, i32 5
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  store %struct.QCowL2Meta* %58, %struct.QCowL2Meta** %59, align 8, !tbaa !13
  store %struct.QCowL2Meta* %1, %struct.QCowL2Meta** %0, align 8, !tbaa !3
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.QCowL2Meta* @QLIST_FOREACH(%struct.QCowL2Meta* noundef readnone returned %0, i8* nocapture noundef readnone %1, i8* nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret %struct.QCowL2Meta* %0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @qcow2_alloc_cluster_offset(%struct.BlockDriverState* nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32* nocapture noundef writeonly %4, %struct.QCowL2Meta* noundef %5) local_unnamed_addr #4 {
  %7 = load i32, i32* @x.15, align 4
  %8 = load i32, i32* @y.16, align 4
  %9 = sub i32 0, 1
  %10 = add i32 %7, %9
  br label %.split

.split:                                           ; preds = %6
  %11 = sub i32 %7, 1
  %12 = mul i32 %7, %10
  %13 = urem i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = icmp slt i32 %8, 10
  %16 = and i1 %14, %15
  %17 = xor i1 %14, %15
  %18 = or i1 %16, %17
  %19 = or i1 %14, %15
  br label %.split.split

.split.split:                                     ; preds = %.split
  br i1 %18, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %.reload59.reg2mem = alloca i32, align 4
  %.reload55.reg2mem = alloca i32, align 4
  %.reload57.reg2mem = alloca i32, align 4
  %.reload49.reg2mem = alloca %struct.QCowL2Meta*, align 8
  %.reload51.reg2mem = alloca i32, align 4
  %.reload47.reg2mem = alloca i32, align 4
  %.reg2mem39 = alloca i64, align 8
  %.reg2mem36 = alloca i32, align 4
  %.reg2mem34 = alloca i32*, align 8
  %.reg2mem32 = alloca %struct.QCowL2Meta**, align 8
  %.reg2mem30 = alloca i32*, align 8
  %.reg2mem27 = alloca %struct.QCowL2Meta*, align 8
  %.reg2mem23 = alloca %struct.QCowL2Meta**, align 8
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %.reg2mem21 = alloca i64*, align 8
  %.reg2mem16 = alloca i32, align 4
  %.reg2mem12 = alloca i64, align 8
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem6 = alloca i32*, align 8
  %.reg2mem = alloca %struct.BDRVQcowState*, align 8
  %20 = bitcast %struct.BlockDriverState* %0 to %struct.BDRVQcowState**
  %21 = load %struct.BDRVQcowState*, %struct.BDRVQcowState** %20, align 8, !tbaa !15
  store %struct.BDRVQcowState* %21, %struct.BDRVQcowState** %.reg2mem, align 8
  %22 = shl i32 %3, 9
  %.reload = load %struct.BDRVQcowState*, %struct.BDRVQcowState** %.reg2mem, align 8
  %23 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %.reload, i64 0, i32 0
  store i32* %23, i32** %.reg2mem6, align 8
  %.reload8 = load i32*, i32** %.reg2mem6, align 8
  %24 = load i32, i32* %.reload8, align 8, !tbaa !11
  %25 = sdiv i32 %22, %24
  %.reload5 = load %struct.BDRVQcowState*, %struct.BDRVQcowState** %.reg2mem, align 8
  %26 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %.reload5, i64 0, i32 2
  %27 = load i32, i32* %26, align 8, !tbaa !17
  %28 = icmp slt i32 %25, %27
  %29 = select i1 %28, i32 %25, i32 %27
  store i32 %29, i32* %.reg2mem9, align 4
  %30 = load i64, i64* getelementptr inbounds ([1024 x i64], [1024 x i64]* @get_cluster_table.dummy_table, i64 0, i64 0), align 16, !tbaa !7
  store i64 %30, i64* %.reg2mem12, align 8
  %switchVar = alloca i32, align 4
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  store i32 247423726, i32* %switchVar, align 4
  %.reg2mem44 = alloca i32, align 4
  %.reg2mem46 = alloca i32, align 4
  %.reg2mem48 = alloca %struct.QCowL2Meta*, align 8
  %.reg2mem50 = alloca i32, align 4
  %.reg2mem52 = alloca i32, align 4
  %.reg2mem54 = alloca i32, align 4
  %.reg2mem56 = alloca i32, align 4
  %.reg2mem58 = alloca i32, align 4
  %.reg2mem60 = alloca i32, align 4
  %.reg2mem62 = alloca i32, align 4
  %.reg2mem64 = alloca i64, align 8
  %.reg2mem66 = alloca i64, align 8
  %31 = load i32, i32* @x.15, align 4
  %32 = load i32, i32* @y.16, align 4
  %33 = sub i32 %31, -157745069
  %34 = sub i32 %33, 1
  %35 = add i32 %34, -157745069
  %36 = sub i32 %31, 1
  %37 = mul i32 %31, %35
  %38 = urem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = icmp slt i32 %32, 10
  %41 = xor i1 %39, true
  %42 = xor i1 %40, true
  %43 = xor i1 true, true
  %44 = and i1 %41, true
  %45 = and i1 %39, %43
  %46 = and i1 %42, true
  %47 = and i1 %40, %43
  %48 = or i1 %44, %45
  %49 = or i1 %46, %47
  %50 = xor i1 %48, %49
  %51 = or i1 %41, %42
  %52 = xor i1 %51, true
  %53 = or i1 true, %43
  %54 = and i1 %52, %53
  %55 = or i1 %50, %54
  %56 = or i1 %39, %40
  br i1 %55, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %originalBBpart2171
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 247423726, label %first
    i32 426568751, label %59
    i32 1134984347, label %64
    i32 -1315802804, label %112
    i32 1804992907, label %155
    i32 1527416444, label %159
    i32 9286357, label %164
    i32 450958615, label %168
    i32 -1778398224, label %180
    i32 650836615, label %191
    i32 769477527, label %232
    i32 2067903852, label %293
    i32 232654484, label %296
    i32 963774220, label %297
    i32 -680288178, label %NodeBlock
    i32 560734557, label %LeafBlock
    i32 -281362571, label %300
    i32 -1293298544, label %357
    i32 -1589077611, label %399
    i32 381175084, label %400
    i32 -1543715373, label %444
    i32 1490655442, label %NewDefault
    i32 1247842735, label %485
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload15 = load i64, i64* %.reg2mem12, align 8
  %57 = icmp sgt i64 %.reload15, -1
  %58 = select i1 %57, i32 1134984347, i32 426568751
  br label %first.split

first.split:                                      ; preds = %first
  store i32 %58, i32* %switchVar, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br label %loopEnd

59:                                               ; preds = %loopEntry.split
  %.reload13 = load i64, i64* %.reg2mem12, align 8
  %60 = xor i64 9223372036854775807, -1
  %61 = xor i64 %.reload13, %60
  %62 = and i64 %61, %.reload13
  %63 = and i64 %.reload13, 9223372036854775807
  store i32 -1543715373, i32* %switchVar, align 4
  %.reload10 = load i32, i32* %.reg2mem9, align 4
  store i32 0, i32* %.reg2mem60, align 4
  store i32 %.reload10, i32* %.reg2mem62, align 4
  br label %.split173

.split173:                                        ; preds = %59
  store i64 %62, i64* %.reg2mem64, align 8
  br label %.split173.split

.split173.split:                                  ; preds = %.split173
  br label %loopEnd

64:                                               ; preds = %loopEntry.split
  %65 = load i32, i32* @x.15, align 4
  %66 = load i32, i32* @y.16, align 4
  br label %.split174

.split174:                                        ; preds = %64
  %67 = sub i32 0, 1
  %68 = add i32 %65, %67
  br label %.split174.split

.split174.split:                                  ; preds = %.split174
  %69 = sub i32 %65, 1
  %70 = mul i32 %65, %68
  %71 = urem i32 %70, 2
  %72 = icmp eq i32 %71, 0
  %73 = icmp slt i32 %66, 10
  %74 = and i1 %72, %73
  %75 = xor i1 %72, %73
  %76 = or i1 %74, %75
  %77 = or i1 %72, %73
  br i1 %76, label %originalBB94, label %originalBB94alteredBB

originalBB94:                                     ; preds = %.split174.split, %originalBB94alteredBB.split.split
  %.reload14 = load i64, i64* %.reg2mem12, align 8
  %78 = xor i64 4611686018427387904, -1
  br label %originalBB94.split

originalBB94.split:                               ; preds = %originalBB94
  %79 = xor i64 %.reload14, %78
  %80 = and i64 %79, %.reload14
  %81 = and i64 %.reload14, 4611686018427387904
  %82 = icmp eq i64 %80, 0
  %.reload11 = load i32, i32* %.reg2mem9, align 4
  %83 = select i1 %82, i32 %.reload11, i32 1
  br label %originalBB94.split.split

originalBB94.split.split:                         ; preds = %originalBB94.split
  store i32 %83, i32* %.reg2mem16, align 4
  %.reload18 = load i32, i32* %.reg2mem16, align 4
  %84 = sext i32 %.reload18 to i64
  %85 = getelementptr inbounds [1024 x i64], [1024 x i64]* @get_cluster_table.dummy_table, i64 0, i64 %84
  store i64* %85, i64** %.reg2mem21, align 8
  store i32 -1315802804, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem44, align 4
  %86 = load i32, i32* @x.15, align 4
  %87 = load i32, i32* @y.16, align 4
  %88 = sub i32 %86, -1715691421
  %89 = sub i32 %88, 1
  %90 = add i32 %89, -1715691421
  %91 = sub i32 %86, 1
  %92 = mul i32 %86, %90
  %93 = urem i32 %92, 2
  %94 = icmp eq i32 %93, 0
  %95 = icmp slt i32 %87, 10
  %96 = xor i1 %94, true
  %97 = xor i1 %95, true
  %98 = xor i1 true, true
  %99 = and i1 %96, true
  %100 = and i1 %94, %98
  %101 = and i1 %97, true
  %102 = and i1 %95, %98
  %103 = or i1 %99, %100
  %104 = or i1 %101, %102
  %105 = xor i1 %103, %104
  %106 = or i1 %96, %97
  %107 = xor i1 %106, true
  %108 = or i1 true, %98
  %109 = and i1 %107, %108
  %110 = or i1 %105, %109
  %111 = or i1 %94, %95
  br i1 %110, label %originalBBpart2102, label %originalBB94alteredBB

originalBBpart2102:                               ; preds = %originalBB94.split.split
  br label %loopEnd

112:                                              ; preds = %loopEntry.split
  %113 = load i32, i32* @x.15, align 4
  br label %.split175

.split175:                                        ; preds = %112
  %114 = load i32, i32* @y.16, align 4
  %115 = add i32 %113, -620989363
  %116 = sub i32 %115, 1
  %117 = sub i32 %116, -620989363
  %118 = sub i32 %113, 1
  %119 = mul i32 %113, %117
  %120 = urem i32 %119, 2
  %121 = icmp eq i32 %120, 0
  %122 = icmp slt i32 %114, 10
  %123 = and i1 %121, %122
  %124 = xor i1 %121, %122
  br label %.split175.split

.split175.split:                                  ; preds = %.split175
  %125 = or i1 %123, %124
  %126 = or i1 %121, %122
  br i1 %125, label %originalBB104, label %originalBB104alteredBB

originalBB104:                                    ; preds = %.split175.split, %originalBB104alteredBB.split.split
  %.reload45 = load i32, i32* %.reg2mem44, align 4
  %.reload20 = load i32, i32* %.reg2mem16, align 4
  br label %originalBB104.split

originalBB104.split:                              ; preds = %originalBB104
  %127 = icmp sgt i32 %.reload20, %.reload45
  %128 = select i1 %127, i32 1804992907, i32 1527416444
  store i32 %128, i32* %switchVar, align 4
  store i32 %.reload45, i32* %.reg2mem46, align 4
  %129 = load i32, i32* @x.15, align 4
  br label %originalBB104.split.split

originalBB104.split.split:                        ; preds = %originalBB104.split
  %130 = load i32, i32* @y.16, align 4
  %131 = add i32 %129, -1679937743
  %132 = sub i32 %131, 1
  %133 = sub i32 %132, -1679937743
  %134 = sub i32 %129, 1
  %135 = mul i32 %129, %133
  %136 = urem i32 %135, 2
  %137 = icmp eq i32 %136, 0
  %138 = icmp slt i32 %130, 10
  %139 = xor i1 %137, true
  %140 = xor i1 %138, true
  %141 = xor i1 true, true
  %142 = and i1 %139, true
  %143 = and i1 %137, %141
  %144 = and i1 %140, true
  %145 = and i1 %138, %141
  %146 = or i1 %142, %143
  %147 = or i1 %144, %145
  %148 = xor i1 %146, %147
  %149 = or i1 %139, %140
  %150 = xor i1 %149, true
  %151 = or i1 true, %141
  %152 = and i1 %150, %151
  %153 = or i1 %148, %152
  %154 = or i1 %137, %138
  br i1 %153, label %originalBBpart2106, label %originalBB104alteredBB

originalBBpart2106:                               ; preds = %originalBB104.split.split
  br label %loopEnd

155:                                              ; preds = %loopEntry.split
  %.reload22 = load i64*, i64** %.reg2mem21, align 8
  %156 = load i64, i64* %.reload22, align 8, !tbaa !7
  %157 = icmp eq i64 %156, 0
  %158 = select i1 %157, i32 -1315802804, i32 1527416444
  br label %.split176

.split176:                                        ; preds = %155
  store i32 %158, i32* %switchVar, align 4
  %.reload17 = load i32, i32* %.reg2mem16, align 4
  %.reload19 = load i32, i32* %.reg2mem16, align 4
  store i32 %.reload17, i32* %.reg2mem44, align 4
  br label %.split176.split

.split176.split:                                  ; preds = %.split176
  store i32 %.reload19, i32* %.reg2mem46, align 4
  br label %loopEnd

159:                                              ; preds = %loopEntry.split
  %.reload47 = load i32, i32* %.reg2mem46, align 4
  store i32 %.reload47, i32* %.reload47.reg2mem, align 4
  %.reload4 = load %struct.BDRVQcowState*, %struct.BDRVQcowState** %.reg2mem, align 8
  %160 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %.reload4, i64 0, i32 3
  store %struct.QCowL2Meta** %160, %struct.QCowL2Meta*** %.reg2mem23, align 8
  %.reload24 = load %struct.QCowL2Meta**, %struct.QCowL2Meta*** %.reg2mem23, align 8
  %161 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %.reload24, align 8, !tbaa !3
  store %struct.QCowL2Meta* %161, %struct.QCowL2Meta** %.reg2mem27, align 8
  %.reload29 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %.reg2mem27, align 8
  %162 = icmp eq %struct.QCowL2Meta* %.reload29, null
  %163 = select i1 %162, i32 -1293298544, i32 9286357
  br label %.split177

.split177:                                        ; preds = %159
  store i32 %163, i32* %switchVar, align 4
  %.reload47.reload = load i32, i32* %.reload47.reg2mem, align 4
  br label %.split177.split

.split177.split:                                  ; preds = %.split177
  store i32 %.reload47.reload, i32* %.reg2mem58, align 4
  br label %loopEnd

164:                                              ; preds = %loopEntry.split
  %.reload3 = load %struct.BDRVQcowState*, %struct.BDRVQcowState** %.reg2mem, align 8
  %165 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %.reload3, i64 0, i32 1
  store i32* %165, i32** %.reg2mem30, align 8
  br label %.split178

.split178:                                        ; preds = %164
  %166 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 4
  store %struct.QCowL2Meta** %166, %struct.QCowL2Meta*** %.reg2mem32, align 8
  %167 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 2
  store i32* %167, i32** %.reg2mem34, align 8
  store i32 450958615, i32* %switchVar, align 4
  %.reload28 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %.reg2mem27, align 8
  br label %.split178.split

.split178.split:                                  ; preds = %.split178
  store %struct.QCowL2Meta* %.reload28, %struct.QCowL2Meta** %.reg2mem48, align 8
  %.reload47.reload68 = load i32, i32* %.reload47.reg2mem, align 4
  store i32 %.reload47.reload68, i32* %.reg2mem50, align 4
  br label %loopEnd

168:                                              ; preds = %loopEntry.split
  %.reload51 = load i32, i32* %.reg2mem50, align 4
  store i32 %.reload51, i32* %.reload51.reg2mem, align 4
  %.reload49 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %.reg2mem48, align 8
  br label %.split179

.split179:                                        ; preds = %168
  store %struct.QCowL2Meta* %.reload49, %struct.QCowL2Meta** %.reload49.reg2mem, align 8
  %.reload7 = load i32*, i32** %.reg2mem6, align 8
  %169 = load i32, i32* %.reload7, align 8, !tbaa !11
  store i32 %169, i32* %.reg2mem36, align 4
  %.reload38 = load i32, i32* %.reg2mem36, align 4
  %.reload51.reload70 = load i32, i32* %.reload51.reg2mem, align 4
  %170 = mul nsw i32 %.reload38, %.reload51.reload70
  %171 = sext i32 %170 to i64
  %172 = add i64 %171, -2703980169598064620
  %173 = add i64 %172, %1
  %174 = sub i64 %173, -2703980169598064620
  br label %.split179.split

.split179.split:                                  ; preds = %.split179
  %175 = add i64 %171, %1
  %.reload49.reload72 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %.reload49.reg2mem, align 8
  %176 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %.reload49.reload72, i64 0, i32 0
  %177 = load i64, i64* %176, align 8, !tbaa !18
  store i64 %177, i64* %.reg2mem39, align 8
  %.reload43 = load i64, i64* %.reg2mem39, align 8
  %178 = icmp ult i64 %174, %.reload43
  %179 = select i1 %178, i32 963774220, i32 -1778398224
  store i32 %179, i32* %switchVar, align 4
  store i32 7, i32* %.reg2mem54, align 4
  %.reload51.reload = load i32, i32* %.reload51.reg2mem, align 4
  store i32 %.reload51.reload, i32* %.reg2mem56, align 4
  br label %loopEnd

180:                                              ; preds = %loopEntry.split
  %.reload49.reload71 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %.reload49.reg2mem, align 8
  %181 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %.reload49.reload71, i64 0, i32 2
  %182 = load i32, i32* %181, align 4, !tbaa !19
  %.reload37 = load i32, i32* %.reg2mem36, align 4
  %183 = mul nsw i32 %182, %.reload37
  br label %.split180

.split180:                                        ; preds = %180
  %184 = sext i32 %183 to i64
  %.reload42 = load i64, i64* %.reg2mem39, align 8
  %185 = sub i64 %.reload42, 2199592456431323131
  %186 = add i64 %185, %184
  %187 = add i64 %186, 2199592456431323131
  br label %.split180.split

.split180.split:                                  ; preds = %.split180
  %188 = add i64 %.reload42, %184
  %189 = icmp ult i64 %187, %1
  %190 = select i1 %189, i32 963774220, i32 650836615
  store i32 %190, i32* %switchVar, align 4
  store i32 7, i32* %.reg2mem54, align 4
  %.reload51.reload69 = load i32, i32* %.reload51.reg2mem, align 4
  store i32 %.reload51.reload69, i32* %.reg2mem56, align 4
  br label %loopEnd

191:                                              ; preds = %loopEntry.split
  %192 = load i32, i32* @x.15, align 4
  %193 = load i32, i32* @y.16, align 4
  %194 = sub i32 0, 1
  %195 = add i32 %192, %194
  %196 = sub i32 %192, 1
  br label %.split181

.split181:                                        ; preds = %191
  %197 = mul i32 %192, %195
  %198 = urem i32 %197, 2
  %199 = icmp eq i32 %198, 0
  %200 = icmp slt i32 %193, 10
  %201 = and i1 %199, %200
  %202 = xor i1 %199, %200
  br label %.split181.split

.split181.split:                                  ; preds = %.split181
  %203 = or i1 %201, %202
  %204 = or i1 %199, %200
  br i1 %203, label %originalBB108, label %originalBB108alteredBB

originalBB108:                                    ; preds = %.split181.split, %originalBB108alteredBB.split.split
  %.reload41 = load i64, i64* %.reg2mem39, align 8
  %205 = icmp ugt i64 %.reload41, %1
  %206 = select i1 %205, i32 769477527, i32 2067903852
  store i32 %206, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem52, align 4
  %207 = load i32, i32* @x.15, align 4
  %208 = load i32, i32* @y.16, align 4
  %209 = sub i32 0, 1
  %210 = add i32 %207, %209
  %211 = sub i32 %207, 1
  %212 = mul i32 %207, %210
  %213 = urem i32 %212, 2
  %214 = icmp eq i32 %213, 0
  br label %originalBB108.split

originalBB108.split:                              ; preds = %originalBB108
  %215 = icmp slt i32 %208, 10
  %216 = xor i1 %214, true
  br label %originalBB108.split.split

originalBB108.split.split:                        ; preds = %originalBB108.split
  %217 = xor i1 %215, true
  %218 = xor i1 false, true
  %219 = and i1 %216, false
  %220 = and i1 %214, %218
  %221 = and i1 %217, false
  %222 = and i1 %215, %218
  %223 = or i1 %219, %220
  %224 = or i1 %221, %222
  %225 = xor i1 %223, %224
  %226 = or i1 %216, %217
  %227 = xor i1 %226, true
  %228 = or i1 false, %218
  %229 = and i1 %227, %228
  %230 = or i1 %225, %229
  %231 = or i1 %214, %215
  br i1 %230, label %originalBBpart2110, label %originalBB108alteredBB

originalBBpart2110:                               ; preds = %originalBB108.split.split
  br label %loopEnd

232:                                              ; preds = %loopEntry.split
  %233 = load i32, i32* @x.15, align 4
  %234 = load i32, i32* @y.16, align 4
  %235 = add i32 %233, 1434690314
  %236 = sub i32 %235, 1
  %237 = sub i32 %236, 1434690314
  %238 = sub i32 %233, 1
  %239 = mul i32 %233, %237
  %240 = urem i32 %239, 2
  br label %.split182

.split182:                                        ; preds = %232
  %241 = icmp eq i32 %240, 0
  %242 = icmp slt i32 %234, 10
  %243 = xor i1 %241, true
  %244 = xor i1 %242, true
  %245 = xor i1 true, true
  %246 = and i1 %243, true
  %247 = and i1 %241, %245
  %248 = and i1 %244, true
  %249 = and i1 %242, %245
  br label %.split182.split

.split182.split:                                  ; preds = %.split182
  %250 = or i1 %246, %247
  %251 = or i1 %248, %249
  %252 = xor i1 %250, %251
  %253 = or i1 %243, %244
  %254 = xor i1 %253, true
  %255 = or i1 true, %245
  %256 = and i1 %254, %255
  %257 = or i1 %252, %256
  %258 = or i1 %241, %242
  br i1 %257, label %originalBB112, label %originalBB112alteredBB

originalBB112:                                    ; preds = %.split182.split, %originalBB112alteredBB.split.split
  %.reload40 = load i64, i64* %.reg2mem39, align 8
  %259 = add i64 %.reload40, 7180960601605103040
  %260 = sub i64 %259, %1
  %261 = sub i64 %260, 7180960601605103040
  %262 = sub i64 %.reload40, %1
  %.reload31 = load i32*, i32** %.reg2mem30, align 8
  %263 = load i32, i32* %.reload31, align 4, !tbaa !20
  %264 = zext i32 %263 to i64
  %265 = lshr i64 %261, %264
  %266 = trunc i64 %265 to i32
  store i32 2067903852, i32* %switchVar, align 4
  store i32 %266, i32* %.reg2mem52, align 4
  %267 = load i32, i32* @x.15, align 4
  %268 = load i32, i32* @y.16, align 4
  %269 = sub i32 %267, 2111042883
  %270 = sub i32 %269, 1
  %271 = add i32 %270, 2111042883
  %272 = sub i32 %267, 1
  %273 = mul i32 %267, %271
  br label %originalBB112.split

originalBB112.split:                              ; preds = %originalBB112
  %274 = urem i32 %273, 2
  %275 = icmp eq i32 %274, 0
  %276 = icmp slt i32 %268, 10
  %277 = xor i1 %275, true
  %278 = xor i1 %276, true
  %279 = xor i1 false, true
  %280 = and i1 %277, false
  %281 = and i1 %275, %279
  %282 = and i1 %278, false
  %283 = and i1 %276, %279
  %284 = or i1 %280, %281
  %285 = or i1 %282, %283
  %286 = xor i1 %284, %285
  %287 = or i1 %277, %278
  %288 = xor i1 %287, true
  %289 = or i1 false, %279
  br label %originalBB112.split.split

originalBB112.split.split:                        ; preds = %originalBB112.split
  %290 = and i1 %288, %289
  %291 = or i1 %286, %290
  %292 = or i1 %275, %276
  br i1 %291, label %originalBBpart2130, label %originalBB112alteredBB

originalBBpart2130:                               ; preds = %originalBB112.split.split
  br label %loopEnd

293:                                              ; preds = %loopEntry.split
  %.reload53 = load i32, i32* %.reg2mem52, align 4
  %294 = icmp eq i32 %.reload53, 0
  %295 = select i1 %294, i32 232654484, i32 963774220
  store i32 %295, i32* %switchVar, align 4
  br label %.split183

.split183:                                        ; preds = %293
  store i32 0, i32* %.reg2mem54, align 4
  br label %.split183.split

.split183.split:                                  ; preds = %.split183
  store i32 %.reload53, i32* %.reg2mem56, align 4
  br label %loopEnd

296:                                              ; preds = %loopEntry.split
  %.reload33 = load %struct.QCowL2Meta**, %struct.QCowL2Meta*** %.reg2mem32, align 8
  %.reload49.reload = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %.reload49.reg2mem, align 8
  store %struct.QCowL2Meta* %.reload49.reload, %struct.QCowL2Meta** %.reload33, align 8, !tbaa !21
  %.reload35 = load i32*, i32** %.reg2mem34, align 8
  store i32 0, i32* %.reload35, align 4, !tbaa !19
  br label %.split184

.split184:                                        ; preds = %296
  store i32 0, i32* %4, align 4, !tbaa !9
  store i32 963774220, i32* %switchVar, align 4
  store i32 1, i32* %.reg2mem54, align 4
  br label %.split184.split

.split184.split:                                  ; preds = %.split184
  store i32 0, i32* %.reg2mem56, align 4
  br label %loopEnd

297:                                              ; preds = %loopEntry.split
  %.reload57 = load i32, i32* %.reg2mem56, align 4
  store i32 %.reload57, i32* %.reload57.reg2mem, align 4
  %.reload55 = load i32, i32* %.reg2mem54, align 4
  store i32 %.reload55, i32* %.reload55.reg2mem, align 4
  br label %.split185

.split185:                                        ; preds = %297
  store i32 -680288178, i32* %switchVar, align 4
  br label %.split185.split

.split185.split:                                  ; preds = %.split185
  br label %loopEnd

NodeBlock:                                        ; preds = %loopEntry.split
  %.reload55.reload = load i32, i32* %.reload55.reg2mem, align 4
  br label %NodeBlock.split

NodeBlock.split:                                  ; preds = %NodeBlock
  %Pivot = icmp slt i32 %.reload55.reload, 7
  br label %NodeBlock.split.split

NodeBlock.split.split:                            ; preds = %NodeBlock.split
  %298 = select i1 %Pivot, i32 560734557, i32 -281362571
  store i32 %298, i32* %switchVar, align 4
  br label %loopEnd

LeafBlock:                                        ; preds = %loopEntry.split
  %.reload55.reload75 = load i32, i32* %.reload55.reg2mem, align 4
  br label %LeafBlock.split

LeafBlock.split:                                  ; preds = %LeafBlock
  %SwitchLeaf = icmp eq i32 %.reload55.reload75, 0
  br label %LeafBlock.split.split

LeafBlock.split.split:                            ; preds = %LeafBlock.split
  %299 = select i1 %SwitchLeaf, i32 -281362571, i32 1490655442
  store i32 %299, i32* %switchVar, align 4
  br label %loopEnd

300:                                              ; preds = %loopEntry.split
  %301 = load i32, i32* @x.15, align 4
  %302 = load i32, i32* @y.16, align 4
  %303 = sub i32 %301, 465430373
  %304 = sub i32 %303, 1
  %305 = add i32 %304, 465430373
  %306 = sub i32 %301, 1
  %307 = mul i32 %301, %305
  %308 = urem i32 %307, 2
  %309 = icmp eq i32 %308, 0
  %310 = icmp slt i32 %302, 10
  %311 = xor i1 %309, true
  %312 = xor i1 %310, true
  %313 = xor i1 true, true
  %314 = and i1 %311, true
  %315 = and i1 %309, %313
  br label %.split186

.split186:                                        ; preds = %300
  %316 = and i1 %312, true
  %317 = and i1 %310, %313
  %318 = or i1 %314, %315
  br label %.split186.split

.split186.split:                                  ; preds = %.split186
  %319 = or i1 %316, %317
  %320 = xor i1 %318, %319
  %321 = or i1 %311, %312
  %322 = xor i1 %321, true
  %323 = or i1 true, %313
  %324 = and i1 %322, %323
  %325 = or i1 %320, %324
  %326 = or i1 %309, %310
  br i1 %325, label %originalBB132, label %originalBB132alteredBB

originalBB132:                                    ; preds = %.split186.split, %originalBB132alteredBB.split.split
  %.reload49.reload73 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %.reload49.reg2mem, align 8
  %327 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %.reload49.reload73, i64 0, i32 5
  %328 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %327, align 8, !tbaa !3
  %329 = icmp eq %struct.QCowL2Meta* %328, null
  %330 = select i1 %329, i32 -1293298544, i32 450958615
  store i32 %330, i32* %switchVar, align 4
  store %struct.QCowL2Meta* %328, %struct.QCowL2Meta** %.reg2mem48, align 8
  %.reload57.reload74 = load i32, i32* %.reload57.reg2mem, align 4
  store i32 %.reload57.reload74, i32* %.reg2mem50, align 4
  %.reload57.reload = load i32, i32* %.reload57.reg2mem, align 4
  store i32 %.reload57.reload, i32* %.reg2mem58, align 4
  %331 = load i32, i32* @x.15, align 4
  %332 = load i32, i32* @y.16, align 4
  %333 = add i32 %331, -2132176490
  %334 = sub i32 %333, 1
  %335 = sub i32 %334, -2132176490
  %336 = sub i32 %331, 1
  br label %originalBB132.split

originalBB132.split:                              ; preds = %originalBB132
  %337 = mul i32 %331, %335
  %338 = urem i32 %337, 2
  %339 = icmp eq i32 %338, 0
  %340 = icmp slt i32 %332, 10
  %341 = xor i1 %339, true
  %342 = xor i1 %340, true
  %343 = xor i1 true, true
  %344 = and i1 %341, true
  %345 = and i1 %339, %343
  %346 = and i1 %342, true
  %347 = and i1 %340, %343
  %348 = or i1 %344, %345
  %349 = or i1 %346, %347
  %350 = xor i1 %348, %349
  %351 = or i1 %341, %342
  %352 = xor i1 %351, true
  %353 = or i1 true, %343
  br label %originalBB132.split.split

originalBB132.split.split:                        ; preds = %originalBB132.split
  %354 = and i1 %352, %353
  %355 = or i1 %350, %354
  %356 = or i1 %339, %340
  br i1 %355, label %originalBBpart2134, label %originalBB132alteredBB

originalBBpart2134:                               ; preds = %originalBB132.split.split
  br label %loopEnd

357:                                              ; preds = %loopEntry.split
  %358 = load i32, i32* @x.15, align 4
  %359 = load i32, i32* @y.16, align 4
  %360 = sub i32 0, 1
  %361 = add i32 %358, %360
  %362 = sub i32 %358, 1
  br label %.split187

.split187:                                        ; preds = %357
  %363 = mul i32 %358, %361
  br label %.split187.split

.split187.split:                                  ; preds = %.split187
  %364 = urem i32 %363, 2
  %365 = icmp eq i32 %364, 0
  %366 = icmp slt i32 %359, 10
  %367 = and i1 %365, %366
  %368 = xor i1 %365, %366
  %369 = or i1 %367, %368
  %370 = or i1 %365, %366
  br i1 %369, label %originalBB136, label %originalBB136alteredBB

originalBB136:                                    ; preds = %.split187.split, %originalBB136alteredBB.split.split
  %.reload59 = load i32, i32* %.reg2mem58, align 4
  store i32 %.reload59, i32* %.reload59.reg2mem, align 4
  %.reload59.reload77 = load i32, i32* %.reload59.reg2mem, align 4
  %371 = icmp eq i32 %.reload59.reload77, 0
  %372 = select i1 %371, i32 -1589077611, i32 381175084
  store i32 %372, i32* %switchVar, align 4
  %373 = load i32, i32* @x.15, align 4
  %374 = load i32, i32* @y.16, align 4
  %375 = sub i32 %373, -417343370
  %376 = sub i32 %375, 1
  br label %originalBB136.split

originalBB136.split:                              ; preds = %originalBB136
  %377 = add i32 %376, -417343370
  %378 = sub i32 %373, 1
  %379 = mul i32 %373, %377
  %380 = urem i32 %379, 2
  %381 = icmp eq i32 %380, 0
  %382 = icmp slt i32 %374, 10
  %383 = xor i1 %381, true
  %384 = xor i1 %382, true
  %385 = xor i1 false, true
  %386 = and i1 %383, false
  %387 = and i1 %381, %385
  br label %originalBB136.split.split

originalBB136.split.split:                        ; preds = %originalBB136.split
  %388 = and i1 %384, false
  %389 = and i1 %382, %385
  %390 = or i1 %386, %387
  %391 = or i1 %388, %389
  %392 = xor i1 %390, %391
  %393 = or i1 %383, %384
  %394 = xor i1 %393, true
  %395 = or i1 false, %385
  %396 = and i1 %394, %395
  %397 = or i1 %392, %396
  %398 = or i1 %381, %382
  br i1 %397, label %originalBBpart2138, label %originalBB136alteredBB

originalBBpart2138:                               ; preds = %originalBB136.split.split
  br label %loopEnd

399:                                              ; preds = %loopEntry.split
  call void @abort() #10
  br label %.split188

.split188:                                        ; preds = %399
  unreachable

400:                                              ; preds = %loopEntry.split
  %401 = load i32, i32* @x.15, align 4
  %402 = load i32, i32* @y.16, align 4
  %403 = sub i32 0, 1
  %404 = add i32 %401, %403
  %405 = sub i32 %401, 1
  br label %.split189

.split189:                                        ; preds = %400
  %406 = mul i32 %401, %404
  %407 = urem i32 %406, 2
  %408 = icmp eq i32 %407, 0
  %409 = icmp slt i32 %402, 10
  %410 = and i1 %408, %409
  %411 = xor i1 %408, %409
  br label %.split189.split

.split189.split:                                  ; preds = %.split189
  %412 = or i1 %410, %411
  %413 = or i1 %408, %409
  br i1 %412, label %originalBB140, label %originalBB140alteredBB

originalBB140:                                    ; preds = %.split189.split, %originalBB140alteredBB.split.split
  %.reload26 = load %struct.QCowL2Meta**, %struct.QCowL2Meta*** %.reg2mem23, align 8
  %414 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %.reload26, align 8, !tbaa !3
  %415 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 5
  store %struct.QCowL2Meta* %414, %struct.QCowL2Meta** %415, align 8, !tbaa !13
  %.reload25 = load %struct.QCowL2Meta**, %struct.QCowL2Meta*** %.reg2mem23, align 8
  store %struct.QCowL2Meta* %5, %struct.QCowL2Meta** %.reload25, align 8, !tbaa !3
  %416 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 0
  store i64 %1, i64* %416, align 8, !tbaa !18
  %417 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 1
  store i32 %2, i32* %417, align 8, !tbaa !22
  store i32 -1543715373, i32* %switchVar, align 4
  %.reload59.reload76 = load i32, i32* %.reload59.reg2mem, align 4
  store i32 %.reload59.reload76, i32* %.reg2mem60, align 4
  %.reload59.reload = load i32, i32* %.reload59.reg2mem, align 4
  store i32 %.reload59.reload, i32* %.reg2mem62, align 4
  store i64 1048576, i64* %.reg2mem64, align 8
  br label %originalBB140.split

originalBB140.split:                              ; preds = %originalBB140
  %418 = load i32, i32* @x.15, align 4
  %419 = load i32, i32* @y.16, align 4
  %420 = sub i32 %418, 1252170006
  %421 = sub i32 %420, 1
  %422 = add i32 %421, 1252170006
  %423 = sub i32 %418, 1
  %424 = mul i32 %418, %422
  %425 = urem i32 %424, 2
  %426 = icmp eq i32 %425, 0
  %427 = icmp slt i32 %419, 10
  %428 = xor i1 %426, true
  %429 = xor i1 %427, true
  %430 = xor i1 false, true
  %431 = and i1 %428, false
  %432 = and i1 %426, %430
  %433 = and i1 %429, false
  %434 = and i1 %427, %430
  %435 = or i1 %431, %432
  %436 = or i1 %433, %434
  %437 = xor i1 %435, %436
  %438 = or i1 %428, %429
  %439 = xor i1 %438, true
  %440 = or i1 false, %430
  %441 = and i1 %439, %440
  %442 = or i1 %437, %441
  br label %originalBB140.split.split

originalBB140.split.split:                        ; preds = %originalBB140.split
  %443 = or i1 %426, %427
  br i1 %442, label %originalBBpart2142, label %originalBB140alteredBB

originalBBpart2142:                               ; preds = %originalBB140.split.split
  br label %loopEnd

444:                                              ; preds = %loopEntry.split
  %445 = load i32, i32* @x.15, align 4
  %446 = load i32, i32* @y.16, align 4
  %447 = sub i32 0, 1
  %448 = add i32 %445, %447
  %449 = sub i32 %445, 1
  br label %.split190

.split190:                                        ; preds = %444
  %450 = mul i32 %445, %448
  br label %.split190.split

.split190.split:                                  ; preds = %.split190
  %451 = urem i32 %450, 2
  %452 = icmp eq i32 %451, 0
  %453 = icmp slt i32 %446, 10
  %454 = and i1 %452, %453
  %455 = xor i1 %452, %453
  %456 = or i1 %454, %455
  %457 = or i1 %452, %453
  br i1 %456, label %originalBB144, label %originalBB144alteredBB

originalBB144:                                    ; preds = %.split190.split, %originalBB144alteredBB.split.split
  %.reload65 = load i64, i64* %.reg2mem64, align 8
  %.reload63 = load i32, i32* %.reg2mem62, align 4
  %.reload61 = load i32, i32* %.reg2mem60, align 4
  %458 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 2
  store i32 %.reload61, i32* %458, align 4, !tbaa !19
  %.reload2 = load %struct.BDRVQcowState*, %struct.BDRVQcowState** %.reg2mem, align 8
  %459 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %.reload2, i64 0, i32 1
  %460 = load i32, i32* %459, align 4, !tbaa !20
  %461 = sub i32 0, -9
  %462 = sub i32 %460, %461
  %463 = add nsw i32 %460, -9
  %464 = shl i32 %.reload63, %462
  %465 = icmp slt i32 %464, %3
  %466 = select i1 %465, i32 %464, i32 %3
  %467 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 3
  store i32 %466, i32* %467, align 8, !tbaa !23
  %468 = sub i32 %466, -921312059
  %469 = sub i32 %468, %2
  %470 = add i32 %469, -921312059
  %471 = sub nsw i32 %466, %2
  br label %originalBB144.split

originalBB144.split:                              ; preds = %originalBB144
  store i32 %470, i32* %4, align 4, !tbaa !9
  store i32 1247842735, i32* %switchVar, align 4
  store i64 %.reload65, i64* %.reg2mem66, align 8
  %472 = load i32, i32* @x.15, align 4
  %473 = load i32, i32* @y.16, align 4
  %474 = sub i32 0, 1
  %475 = add i32 %472, %474
  %476 = sub i32 %472, 1
  %477 = mul i32 %472, %475
  %478 = urem i32 %477, 2
  br label %originalBB144.split.split

originalBB144.split.split:                        ; preds = %originalBB144.split
  %479 = icmp eq i32 %478, 0
  %480 = icmp slt i32 %473, 10
  %481 = and i1 %479, %480
  %482 = xor i1 %479, %480
  %483 = or i1 %481, %482
  %484 = or i1 %479, %480
  br i1 %483, label %originalBBpart2167, label %originalBB144alteredBB

originalBBpart2167:                               ; preds = %originalBB144.split.split
  br label %loopEnd

NewDefault:                                       ; preds = %loopEntry.split
  store i32 1247842735, i32* %switchVar, align 4
  br label %NewDefault.split

NewDefault.split:                                 ; preds = %NewDefault
  store i64 0, i64* %.reg2mem66, align 8
  br label %NewDefault.split.split

NewDefault.split.split:                           ; preds = %NewDefault.split
  br label %loopEnd

485:                                              ; preds = %loopEntry.split
  %.reload67 = load i64, i64* %.reg2mem66, align 8
  br label %.split191

.split191:                                        ; preds = %485
  ret i64 %.reload67

loopEnd:                                          ; preds = %NewDefault.split.split, %originalBBpart2167, %originalBBpart2142, %originalBBpart2138, %originalBBpart2134, %LeafBlock.split.split, %NodeBlock.split.split, %.split185.split, %.split184.split, %.split183.split, %originalBBpart2130, %originalBBpart2110, %.split180.split, %.split179.split, %.split178.split, %.split177.split, %.split176.split, %originalBBpart2106, %originalBBpart2102, %.split173.split, %first.split.split, %switchDefault
  %486 = load i32, i32* @x.15, align 4
  %487 = load i32, i32* @y.16, align 4
  br label %loopEnd.split

loopEnd.split:                                    ; preds = %loopEnd
  %488 = sub i32 %486, 1836265086
  %489 = sub i32 %488, 1
  %490 = add i32 %489, 1836265086
  %491 = sub i32 %486, 1
  %492 = mul i32 %486, %490
  %493 = urem i32 %492, 2
  %494 = icmp eq i32 %493, 0
  %495 = icmp slt i32 %487, 10
  br label %loopEnd.split.split

loopEnd.split.split:                              ; preds = %loopEnd.split
  %496 = and i1 %494, %495
  %497 = xor i1 %494, %495
  %498 = or i1 %496, %497
  %499 = or i1 %494, %495
  br i1 %498, label %originalBB169, label %originalBB169alteredBB

originalBB169:                                    ; preds = %loopEnd.split.split, %originalBB169alteredBB
  %500 = load i32, i32* @x.15, align 4
  %501 = load i32, i32* @y.16, align 4
  %502 = sub i32 %500, 348503865
  %503 = sub i32 %502, 1
  %504 = add i32 %503, 348503865
  %505 = sub i32 %500, 1
  %506 = mul i32 %500, %504
  %507 = urem i32 %506, 2
  %508 = icmp eq i32 %507, 0
  %509 = icmp slt i32 %501, 10
  br label %originalBB169.split

originalBB169.split:                              ; preds = %originalBB169
  %510 = and i1 %508, %509
  %511 = xor i1 %508, %509
  br label %originalBB169.split.split

originalBB169.split.split:                        ; preds = %originalBB169.split
  %512 = or i1 %510, %511
  %513 = or i1 %508, %509
  br i1 %512, label %originalBBpart2171, label %originalBB169alteredBB

originalBBpart2171:                               ; preds = %originalBB169.split.split
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %.reload59.reg2memalteredBB = alloca i32, align 4
  %.reload55.reg2memalteredBB = alloca i32, align 4
  %.reload57.reg2memalteredBB = alloca i32, align 4
  %.reload49.reg2memalteredBB = alloca %struct.QCowL2Meta*, align 8
  %.reload51.reg2memalteredBB = alloca i32, align 4
  %.reload47.reg2memalteredBB = alloca i32, align 4
  %.reg2mem39alteredBB = alloca i64, align 8
  %.reg2mem36alteredBB = alloca i32, align 4
  %.reg2mem34alteredBB = alloca i32*, align 8
  %.reg2mem32alteredBB = alloca %struct.QCowL2Meta**, align 8
  %.reg2mem30alteredBB = alloca i32*, align 8
  %.reg2mem27alteredBB = alloca %struct.QCowL2Meta*, align 8
  %.reg2mem23alteredBB = alloca %struct.QCowL2Meta**, align 8
  %.reg2mem21alteredBB = alloca i64*, align 8
  %.reg2mem16alteredBB = alloca i32, align 4
  %.reg2mem12alteredBB = alloca i64, align 8
  %.reg2mem9alteredBB = alloca i32, align 4
  %.reg2mem6alteredBB = alloca i32*, align 8
  %.reg2memalteredBB = alloca %struct.BDRVQcowState*, align 8
  %514 = bitcast %struct.BlockDriverState* %0 to %struct.BDRVQcowState**
  %515 = load %struct.BDRVQcowState*, %struct.BDRVQcowState** %514, align 8, !tbaa !15
  store %struct.BDRVQcowState* %515, %struct.BDRVQcowState** %.reg2memalteredBB, align 8
  %516 = add i32 %3, 999658244
  %517 = sub i32 %516, 9
  %518 = sub i32 %517, 999658244
  %_ = sub i32 %3, 9
  %gen = mul i32 %518, 9
  %519 = add i32 0, -702112257
  %520 = sub i32 %519, %3
  %521 = sub i32 %520, -702112257
  %_78 = sub i32 0, %3
  %522 = sub i32 0, %521
  %523 = sub i32 0, 9
  %524 = add i32 %522, %523
  %525 = sub i32 0, %524
  %gen79 = add i32 %521, 9
  %526 = add i32 %3, -1245132760
  %527 = sub i32 %526, 9
  %528 = sub i32 %527, -1245132760
  %_80 = sub i32 %3, 9
  %gen81 = mul i32 %528, 9
  %529 = shl i32 %3, 9
  %.reloadalteredBB = load %struct.BDRVQcowState*, %struct.BDRVQcowState** %.reg2memalteredBB, align 8
  %530 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %.reloadalteredBB, i64 0, i32 0
  store i32* %530, i32** %.reg2mem6alteredBB, align 8
  %.reload8alteredBB = load i32*, i32** %.reg2mem6alteredBB, align 8
  %531 = load i32, i32* %.reload8alteredBB, align 8, !tbaa !11
  %532 = add i32 %529, -2040199448
  %533 = sub i32 %532, %531
  %534 = sub i32 %533, -2040199448
  %_82 = sub i32 %529, %531
  %gen83 = mul i32 %534, %531
  %_84 = shl i32 %529, %531
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %535 = sub i32 0, %531
  %536 = add i32 %529, %535
  %_85 = sub i32 %529, %531
  %gen86 = mul i32 %536, %531
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  %537 = sub i32 0, %531
  %538 = add i32 %529, %537
  %_87 = sub i32 %529, %531
  %gen88 = mul i32 %538, %531
  %539 = sub i32 0, 626472363
  %540 = sub i32 %539, %529
  %541 = add i32 %540, 626472363
  %_89 = sub i32 0, %529
  %542 = sub i32 %541, -1321380067
  %543 = add i32 %542, %531
  %544 = add i32 %543, -1321380067
  %gen90 = add i32 %541, %531
  %_91 = shl i32 %529, %531
  %545 = sub i32 0, -641507635
  %546 = sub i32 %545, %529
  %547 = add i32 %546, -641507635
  %_92 = sub i32 0, %529
  %548 = add i32 %547, 1005409317
  %549 = add i32 %548, %531
  %550 = sub i32 %549, 1005409317
  %gen93 = add i32 %547, %531
  %551 = sdiv i32 %529, %531
  %.reload5alteredBB = load %struct.BDRVQcowState*, %struct.BDRVQcowState** %.reg2memalteredBB, align 8
  %552 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %.reload5alteredBB, i64 0, i32 2
  %553 = load i32, i32* %552, align 8, !tbaa !17
  %554 = icmp slt i32 %551, %553
  %555 = select i1 %554, i32 %551, i32 %553
  store i32 %555, i32* %.reg2mem9alteredBB, align 4
  %556 = load i64, i64* getelementptr inbounds ([1024 x i64], [1024 x i64]* @get_cluster_table.dummy_table, i64 0, i64 0), align 16, !tbaa !7
  store i64 %556, i64* %.reg2mem12alteredBB, align 8
  %switchVaralteredBB = alloca i32, align 4
  store i32 247423726, i32* %switchVaralteredBB, align 4
  %.reg2mem44alteredBB = alloca i32, align 4
  %.reg2mem46alteredBB = alloca i32, align 4
  %.reg2mem48alteredBB = alloca %struct.QCowL2Meta*, align 8
  %.reg2mem50alteredBB = alloca i32, align 4
  %.reg2mem52alteredBB = alloca i32, align 4
  %.reg2mem54alteredBB = alloca i32, align 4
  %.reg2mem56alteredBB = alloca i32, align 4
  %.reg2mem58alteredBB = alloca i32, align 4
  %.reg2mem60alteredBB = alloca i32, align 4
  %.reg2mem62alteredBB = alloca i32, align 4
  %.reg2mem64alteredBB = alloca i64, align 8
  %.reg2mem66alteredBB = alloca i64, align 8
  br label %originalBB

originalBB94alteredBB:                            ; preds = %originalBB94.split.split, %.split174.split
  %.reload14alteredBB = load i64, i64* %.reg2mem12, align 8
  br label %originalBB94alteredBB.split

originalBB94alteredBB.split:                      ; preds = %originalBB94alteredBB
  %557 = sub i64 0, 4611686018427387904
  %558 = add i64 %.reload14alteredBB, %557
  %_95 = sub i64 %.reload14alteredBB, 4611686018427387904
  %gen96 = mul i64 %558, 4611686018427387904
  %559 = sub i64 0, 4611686018427387904
  %560 = add i64 %.reload14alteredBB, %559
  %_97 = sub i64 %.reload14alteredBB, 4611686018427387904
  %gen98 = mul i64 %560, 4611686018427387904
  %561 = sub i64 %.reload14alteredBB, 3265146648741897363
  %562 = sub i64 %561, 4611686018427387904
  %563 = add i64 %562, 3265146648741897363
  %_99 = sub i64 %.reload14alteredBB, 4611686018427387904
  %gen100 = mul i64 %563, 4611686018427387904
  %564 = xor i64 %.reload14alteredBB, -1
  %565 = xor i64 4611686018427387904, -1
  br label %originalBB94alteredBB.split.split

originalBB94alteredBB.split.split:                ; preds = %originalBB94alteredBB.split
  %566 = xor i64 -6321073647654663852, -1
  %567 = or i64 %564, %565
  %568 = or i64 -6321073647654663852, %566
  %569 = xor i64 %567, -1
  %570 = and i64 %569, %568
  %571 = and i64 %.reload14alteredBB, 4611686018427387904
  %572 = icmp eq i64 %570, 0
  %.reload11alteredBB = load i32, i32* %.reg2mem9, align 4
  %573 = select i1 %572, i32 %.reload11alteredBB, i32 1
  store i32 %573, i32* %.reg2mem16, align 4
  %.reload18alteredBB = load i32, i32* %.reg2mem16, align 4
  %574 = sext i32 %.reload18alteredBB to i64
  %575 = getelementptr inbounds [1024 x i64], [1024 x i64]* @get_cluster_table.dummy_table, i64 0, i64 %574
  store i64* %575, i64** %.reg2mem21, align 8
  store i32 -1315802804, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem44, align 4
  br label %originalBB94

originalBB104alteredBB:                           ; preds = %originalBB104.split.split, %.split175.split
  %.reload45alteredBB = load i32, i32* %.reg2mem44, align 4
  %.reload20alteredBB = load i32, i32* %.reg2mem16, align 4
  %576 = icmp sgt i32 %.reload20alteredBB, %.reload45alteredBB
  br label %originalBB104alteredBB.split

originalBB104alteredBB.split:                     ; preds = %originalBB104alteredBB
  %577 = select i1 %576, i32 1804992907, i32 1527416444
  store i32 %577, i32* %switchVar, align 4
  br label %originalBB104alteredBB.split.split

originalBB104alteredBB.split.split:               ; preds = %originalBB104alteredBB.split
  store i32 %.reload45alteredBB, i32* %.reg2mem46, align 4
  br label %originalBB104

originalBB108alteredBB:                           ; preds = %originalBB108.split.split, %.split181.split
  %.reload41alteredBB = load i64, i64* %.reg2mem39, align 8
  br label %originalBB108alteredBB.split

originalBB108alteredBB.split:                     ; preds = %originalBB108alteredBB
  %578 = icmp ugt i64 %.reload41alteredBB, %1
  %579 = select i1 %578, i32 769477527, i32 2067903852
  store i32 %579, i32* %switchVar, align 4
  br label %originalBB108alteredBB.split.split

originalBB108alteredBB.split.split:               ; preds = %originalBB108alteredBB.split
  store i32 0, i32* %.reg2mem52, align 4
  br label %originalBB108

originalBB112alteredBB:                           ; preds = %originalBB112.split.split, %.split182.split
  %.reload40alteredBB = load i64, i64* %.reg2mem39, align 8
  %_113 = shl i64 %.reload40alteredBB, %1
  %580 = sub i64 0, %1
  %581 = add i64 %.reload40alteredBB, %580
  %_114 = sub i64 %.reload40alteredBB, %1
  %gen115 = mul i64 %581, %1
  br label %originalBB112alteredBB.split

originalBB112alteredBB.split:                     ; preds = %originalBB112alteredBB
  %582 = sub i64 0, %.reload40alteredBB
  %583 = add i64 0, %582
  %_116 = sub i64 0, %.reload40alteredBB
  %584 = sub i64 %583, -1579701666275371761
  %585 = add i64 %584, %1
  %586 = add i64 %585, -1579701666275371761
  %gen117 = add i64 %583, %1
  %_118 = shl i64 %.reload40alteredBB, %1
  %587 = sub i64 0, 787666045889867324
  %588 = sub i64 %587, %.reload40alteredBB
  %589 = add i64 %588, 787666045889867324
  %_119 = sub i64 0, %.reload40alteredBB
  %590 = add i64 %589, 1291826326666739022
  %591 = add i64 %590, %1
  %592 = sub i64 %591, 1291826326666739022
  %gen120 = add i64 %589, %1
  %593 = sub i64 %.reload40alteredBB, 1403285203237420181
  %594 = sub i64 %593, %1
  %595 = add i64 %594, 1403285203237420181
  %596 = sub i64 %.reload40alteredBB, %1
  br label %originalBB112alteredBB.split.split

originalBB112alteredBB.split.split:               ; preds = %originalBB112alteredBB.split
  %.reload31alteredBB = load i32*, i32** %.reg2mem30, align 8
  %597 = load i32, i32* %.reload31alteredBB, align 4, !tbaa !20
  %598 = zext i32 %597 to i64
  %_121 = shl i64 %595, %598
  %599 = sub i64 %595, 2191489942853520493
  %600 = sub i64 %599, %598
  %601 = add i64 %600, 2191489942853520493
  %_122 = sub i64 %595, %598
  %gen123 = mul i64 %601, %598
  %_124 = shl i64 %595, %598
  %602 = sub i64 0, %595
  %603 = add i64 0, %602
  %_125 = sub i64 0, %595
  %604 = sub i64 0, %598
  %605 = sub i64 %603, %604
  %gen126 = add i64 %603, %598
  %606 = add i64 %595, 7783534054550002813
  %607 = sub i64 %606, %598
  %608 = sub i64 %607, 7783534054550002813
  %_127 = sub i64 %595, %598
  %gen128 = mul i64 %608, %598
  %609 = lshr i64 %595, %598
  %610 = trunc i64 %609 to i32
  store i32 2067903852, i32* %switchVar, align 4
  store i32 %610, i32* %.reg2mem52, align 4
  br label %originalBB112

originalBB132alteredBB:                           ; preds = %originalBB132.split.split, %.split186.split
  %.reload49.reload73alteredBB = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %.reload49.reg2mem, align 8
  %611 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %.reload49.reload73alteredBB, i64 0, i32 5
  %612 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %611, align 8, !tbaa !3
  %613 = icmp eq %struct.QCowL2Meta* %612, null
  %614 = select i1 %613, i32 -1293298544, i32 450958615
  br label %originalBB132alteredBB.split

originalBB132alteredBB.split:                     ; preds = %originalBB132alteredBB
  store i32 %614, i32* %switchVar, align 4
  br label %originalBB132alteredBB.split.split

originalBB132alteredBB.split.split:               ; preds = %originalBB132alteredBB.split
  store %struct.QCowL2Meta* %612, %struct.QCowL2Meta** %.reg2mem48, align 8
  %.reload57.reload74alteredBB = load i32, i32* %.reload57.reg2mem, align 4
  store i32 %.reload57.reload74alteredBB, i32* %.reg2mem50, align 4
  %.reload57.reloadalteredBB = load i32, i32* %.reload57.reg2mem, align 4
  store i32 %.reload57.reloadalteredBB, i32* %.reg2mem58, align 4
  br label %originalBB132

originalBB136alteredBB:                           ; preds = %originalBB136.split.split, %.split187.split
  %.reload59alteredBB = load i32, i32* %.reg2mem58, align 4
  store i32 %.reload59alteredBB, i32* %.reload59.reg2mem, align 4
  %.reload59.reload77alteredBB = load i32, i32* %.reload59.reg2mem, align 4
  br label %originalBB136alteredBB.split

originalBB136alteredBB.split:                     ; preds = %originalBB136alteredBB
  %615 = icmp eq i32 %.reload59.reload77alteredBB, 0
  br label %originalBB136alteredBB.split.split

originalBB136alteredBB.split.split:               ; preds = %originalBB136alteredBB.split
  %616 = select i1 %615, i32 -1589077611, i32 381175084
  store i32 %616, i32* %switchVar, align 4
  br label %originalBB136

originalBB140alteredBB:                           ; preds = %originalBB140.split.split, %.split189.split
  %.reload26alteredBB = load %struct.QCowL2Meta**, %struct.QCowL2Meta*** %.reg2mem23, align 8
  %617 = load %struct.QCowL2Meta*, %struct.QCowL2Meta** %.reload26alteredBB, align 8, !tbaa !3
  %618 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 5
  store %struct.QCowL2Meta* %617, %struct.QCowL2Meta** %618, align 8, !tbaa !13
  %.reload25alteredBB = load %struct.QCowL2Meta**, %struct.QCowL2Meta*** %.reg2mem23, align 8
  br label %originalBB140alteredBB.split

originalBB140alteredBB.split:                     ; preds = %originalBB140alteredBB
  store %struct.QCowL2Meta* %5, %struct.QCowL2Meta** %.reload25alteredBB, align 8, !tbaa !3
  %619 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 0
  store i64 %1, i64* %619, align 8, !tbaa !18
  %620 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 1
  store i32 %2, i32* %620, align 8, !tbaa !22
  store i32 -1543715373, i32* %switchVar, align 4
  br label %originalBB140alteredBB.split.split

originalBB140alteredBB.split.split:               ; preds = %originalBB140alteredBB.split
  %.reload59.reload76alteredBB = load i32, i32* %.reload59.reg2mem, align 4
  store i32 %.reload59.reload76alteredBB, i32* %.reg2mem60, align 4
  %.reload59.reloadalteredBB = load i32, i32* %.reload59.reg2mem, align 4
  store i32 %.reload59.reloadalteredBB, i32* %.reg2mem62, align 4
  store i64 1048576, i64* %.reg2mem64, align 8
  br label %originalBB140

originalBB144alteredBB:                           ; preds = %originalBB144.split.split, %.split190.split
  %.reload65alteredBB = load i64, i64* %.reg2mem64, align 8
  %.reload63alteredBB = load i32, i32* %.reg2mem62, align 4
  %.reload61alteredBB = load i32, i32* %.reg2mem60, align 4
  %621 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 2
  store i32 %.reload61alteredBB, i32* %621, align 4, !tbaa !19
  %.reload2alteredBB = load %struct.BDRVQcowState*, %struct.BDRVQcowState** %.reg2mem, align 8
  %622 = getelementptr inbounds %struct.BDRVQcowState, %struct.BDRVQcowState* %.reload2alteredBB, i64 0, i32 1
  %623 = load i32, i32* %622, align 4, !tbaa !20
  %624 = sub i32 0, %623
  %625 = add i32 0, %624
  %_145 = sub i32 0, %623
  %626 = sub i32 0, -9
  %627 = sub i32 %625, %626
  %gen146 = add i32 %625, -9
  %628 = sub i32 0, -9
  %629 = add i32 %623, %628
  %_147 = sub i32 %623, -9
  %gen148 = mul i32 %629, -9
  %630 = sub i32 0, %623
  %631 = sub i32 0, -9
  %632 = add i32 %630, %631
  %633 = sub i32 0, %632
  %634 = add nsw i32 %623, -9
  %_149 = shl i32 %.reload63alteredBB, %633
  %635 = sub i32 0, %.reload63alteredBB
  %636 = add i32 0, %635
  %_150 = sub i32 0, %.reload63alteredBB
  %637 = add i32 %636, -618246102
  %638 = add i32 %637, %633
  %639 = sub i32 %638, -618246102
  %gen151 = add i32 %636, %633
  %640 = add i32 %.reload63alteredBB, -1580393589
  %641 = sub i32 %640, %633
  %642 = sub i32 %641, -1580393589
  %_152 = sub i32 %.reload63alteredBB, %633
  %gen153 = mul i32 %642, %633
  %643 = add i32 0, -1752503594
  %644 = sub i32 %643, %.reload63alteredBB
  %645 = sub i32 %644, -1752503594
  %_154 = sub i32 0, %.reload63alteredBB
  %646 = sub i32 %645, -2041106994
  %647 = add i32 %646, %633
  %648 = add i32 %647, -2041106994
  %gen155 = add i32 %645, %633
  %649 = add i32 0, -1613133117
  br label %originalBB144alteredBB.split

originalBB144alteredBB.split:                     ; preds = %originalBB144alteredBB
  %650 = sub i32 %649, %.reload63alteredBB
  %651 = sub i32 %650, -1613133117
  %_156 = sub i32 0, %.reload63alteredBB
  %652 = sub i32 0, %651
  %653 = sub i32 0, %633
  %654 = add i32 %652, %653
  %655 = sub i32 0, %654
  %gen157 = add i32 %651, %633
  %_158 = shl i32 %.reload63alteredBB, %633
  %656 = shl i32 %.reload63alteredBB, %633
  %657 = icmp slt i32 %656, %3
  %658 = select i1 %657, i32 %656, i32 %3
  %659 = getelementptr inbounds %struct.QCowL2Meta, %struct.QCowL2Meta* %5, i64 0, i32 3
  store i32 %658, i32* %659, align 8, !tbaa !23
  %660 = sub i32 0, %2
  %661 = add i32 %658, %660
  %_159 = sub i32 %658, %2
  br label %originalBB144alteredBB.split.split

originalBB144alteredBB.split.split:               ; preds = %originalBB144alteredBB.split
  %gen160 = mul i32 %661, %2
  %662 = sub i32 0, %2
  %663 = add i32 %658, %662
  %_161 = sub i32 %658, %2
  %gen162 = mul i32 %663, %2
  %664 = sub i32 %658, 1259125796
  %665 = sub i32 %664, %2
  %666 = add i32 %665, 1259125796
  %_163 = sub i32 %658, %2
  %gen164 = mul i32 %666, %2
  %_165 = shl i32 %658, %2
  %667 = sub i32 0, %2
  %668 = add i32 %658, %667
  %669 = sub nsw i32 %658, %2
  store i32 %668, i32* %4, align 4, !tbaa !9
  store i32 1247842735, i32* %switchVar, align 4
  store i64 %.reload65alteredBB, i64* %.reg2mem66, align 8
  br label %originalBB144

originalBB169alteredBB:                           ; preds = %originalBB169.split.split, %loopEnd.split.split
  br label %originalBB169
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #4 {
  %1 = alloca %struct.BDRVQcowState, align 8
  %2 = alloca %struct.BlockDriverState, align 8
  %3 = alloca %struct.QCowL2Meta, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.BDRVQcowState* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %5, i8* noundef nonnull align 8 dereferenceable(24) bitcast (%struct.BDRVQcowState* @__const.main.state to i8*), i64 24, i1 false)
  %6 = bitcast %struct.BlockDriverState* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #11
  %7 = bitcast %struct.BlockDriverState* %2 to %struct.BDRVQcowState**
  br label %.split

.split:                                           ; preds = %0
  store %struct.BDRVQcowState* %1, %struct.BDRVQcowState** %7, align 8, !tbaa !15
  %8 = bitcast %struct.QCowL2Meta* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #11
  br label %.split.split

.split.split:                                     ; preds = %.split
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #11
  %10 = call i64 @qcow2_alloc_cluster_offset(%struct.BlockDriverState* noundef nonnull %2, i64 noundef 4096, i32 noundef 0, i32 noundef 16, i32* noundef nonnull %4, %struct.QCowL2Meta* noundef nonnull %3)
  %11 = load i32, i32* %4, align 4, !tbaa !9
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 noundef %10, i32 noundef %11)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #11
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #11
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"BDRVQcowState", !10, i64 0, !10, i64 4, !10, i64 8, !4, i64 16}
!13 = !{!14, !4, i64 32}
!14 = !{!"QCowL2Meta", !8, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !4, i64 24, !4, i64 32}
!15 = !{!16, !4, i64 0}
!16 = !{!"BlockDriverState", !4, i64 0}
!17 = !{!12, !10, i64 8}
!18 = !{!14, !8, i64 0}
!19 = !{!14, !10, i64 12}
!20 = !{!12, !10, i64 4}
!21 = !{!14, !4, i64 24}
!22 = !{!14, !10, i64 8}
!23 = !{!14, !10, i64 16}

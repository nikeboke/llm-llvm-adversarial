; ModuleID = 'dynticks_start_timer_obf.bc'
source_filename = "dynticks_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigevent = type { %union.sigval, i32, i32, %union.anon }
%union.sigval = type { i8* }
%union.anon = type { %struct.anon, [32 x i8] }
%struct.anon = type { void (i8*)*, %union.pthread_attr_t* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.sigaction = type { %union.anon.0, %struct.__sigset_t, i32, void ()* }
%union.anon.0 = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }

@.str.1 = private unnamed_addr constant [13 x i8] c"timer_create\00", align 1
@str = private unnamed_addr constant [28 x i8] c"Timer started successfully.\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0
@x.3 = common global i32 0
@y.4 = common global i32 0
@x.5 = common global i32 0
@y.6 = common global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @qemu_signalfd_available() local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @qemu_get_thread_id() local_unnamed_addr #1 {
  %1 = load i32, i32* @x.1, align 4
  %2 = load i32, i32* @y.2, align 4
  %3 = sub i32 0, 1
  %4 = add i32 %1, %3
  %5 = sub i32 %1, 1
  br label %.split

.split:                                           ; preds = %0
  %6 = mul i32 %1, %4
  %7 = urem i32 %6, 2
  br label %.split.split

.split.split:                                     ; preds = %.split
  %8 = icmp eq i32 %7, 0
  %9 = icmp slt i32 %2, 10
  %10 = xor i1 %8, true
  %11 = xor i1 %9, true
  %12 = xor i1 false, true
  %13 = and i1 %10, false
  %14 = and i1 %8, %12
  %15 = and i1 %11, false
  %16 = and i1 %9, %12
  %17 = or i1 %13, %14
  %18 = or i1 %15, %16
  %19 = xor i1 %17, %18
  %20 = or i1 %10, %11
  %21 = xor i1 %20, true
  %22 = or i1 false, %12
  %23 = and i1 %21, %22
  %24 = or i1 %19, %23
  %25 = or i1 %8, %9
  br i1 %24, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split
  %26 = call i32 (...) @getpid() #8
  %27 = load i32, i32* @x.1, align 4
  %28 = load i32, i32* @y.2, align 4
  %29 = add i32 %27, 187840531
  %30 = sub i32 %29, 1
  %31 = sub i32 %30, 187840531
  %32 = sub i32 %27, 1
  %33 = mul i32 %27, %31
  %34 = urem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = icmp slt i32 %28, 10
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %37 = xor i1 %35, true
  %38 = xor i1 %36, true
  %39 = xor i1 true, true
  %40 = and i1 %37, true
  %41 = and i1 %35, %39
  %42 = and i1 %38, true
  %43 = and i1 %36, %39
  %44 = or i1 %40, %41
  %45 = or i1 %42, %43
  %46 = xor i1 %44, %45
  %47 = or i1 %37, %38
  %48 = xor i1 %47, true
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %49 = or i1 true, %39
  %50 = and i1 %48, %49
  %51 = or i1 %46, %50
  %52 = or i1 %35, %36
  br i1 %51, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 %26

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %53 = call i32 (...) @getpid() #8
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB
}

declare dso_local i32 @getpid(...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @host_alarm_handler(i32 %0) #0 {
  %2 = load i32, i32* @x.3, align 4
  %3 = load i32, i32* @y.4, align 4
  %4 = add i32 %2, -1063531289
  %5 = sub i32 %4, 1
  %6 = sub i32 %5, -1063531289
  br label %.split

.split:                                           ; preds = %1
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  %12 = and i1 %10, %11
  br label %.split.split

.split.split:                                     ; preds = %.split
  %13 = xor i1 %10, %11
  %14 = or i1 %12, %13
  %15 = or i1 %10, %11
  br i1 %14, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %16 = load i32, i32* @x.3, align 4
  %17 = load i32, i32* @y.4, align 4
  %18 = sub i32 %16, -318643043
  %19 = sub i32 %18, 1
  %20 = add i32 %19, -318643043
  %21 = sub i32 %16, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %22 = mul i32 %16, %20
  %23 = urem i32 %22, 2
  %24 = icmp eq i32 %23, 0
  %25 = icmp slt i32 %17, 10
  %26 = and i1 %24, %25
  %27 = xor i1 %24, %25
  %28 = or i1 %26, %27
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %29 = or i1 %24, %25
  br i1 %28, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %.reg2mem13 = alloca i32, align 4
  %.reg2mem9 = alloca i8*, align 8
  %.reg2mem5 = alloca i8*, align 8
  %.reg2mem = alloca i8*, align 8
  %1 = alloca %struct.sigevent, align 8
  br label %.split

.split:                                           ; preds = %0
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sigaction, align 8
  %4 = bitcast %struct.sigevent* %1 to i8*
  store i8* %4, i8** %.reg2mem, align 8
  %.reload4 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %.reload4) #8
  %5 = bitcast i8** %2 to i8*
  store i8* %5, i8** %.reg2mem5, align 8
  %.reload8 = load i8*, i8** %.reg2mem5, align 8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %.reload8) #8
  %6 = bitcast %struct.sigaction* %3 to i8*
  store i8* %6, i8** %.reg2mem9, align 8
  %.reload12 = load i8*, i8** %.reg2mem9, align 8
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %.reload12) #8
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i64 0, i32 1
  %8 = call i32 @sigfillset(%struct.__sigset_t* noundef nonnull %7) #8
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i64 0, i32 2
  store i32 0, i32* %9, align 8, !tbaa !3
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i64 0, i32 0, i32 0
  store void (i32)* @host_alarm_handler, void (i32)** %10, align 8, !tbaa !10
  %11 = call i32 @sigaction(i32 noundef 14, %struct.sigaction* noundef nonnull %3, %struct.sigaction* noundef null) #8
  %12 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %1, i64 0, i32 2
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %.reload2, i8 0, i64 64, i1 false) #8
  store i32 4, i32* %12, align 4, !tbaa !11
  %13 = call i32 (...) @getpid() #8
  %14 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %1, i64 0, i32 3
  %15 = bitcast %union.anon* %14 to i32*
  store i32 %13, i32* %15, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %1, i64 0, i32 1
  store i32 14, i32* %16, align 8, !tbaa !13
  %17 = call i32 @timer_create(i32 noundef 0, %struct.sigevent* noundef nonnull %1, i8** noundef nonnull %2) #8
  store i32 %17, i32* %.reg2mem13, align 4
  %switchVar = alloca i32, align 4
  br label %.split.split

.split.split:                                     ; preds = %.split
  store i32 58369003, i32* %switchVar, align 4
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 58369003, label %first
    i32 -428368249, label %20
    i32 1227996117, label %59
    i32 -650348102, label %113
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload14 = load i32, i32* %.reg2mem13, align 4
  br label %first.split

first.split:                                      ; preds = %first
  %18 = icmp eq i32 %.reload14, 0
  %19 = select i1 %18, i32 1227996117, i32 -428368249
  store i32 %19, i32* %switchVar, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br label %loopEnd

20:                                               ; preds = %loopEntry.split
  %21 = load i32, i32* @x.5, align 4
  %22 = load i32, i32* @y.6, align 4
  %23 = sub i32 0, 1
  %24 = add i32 %21, %23
  %25 = sub i32 %21, 1
  %26 = mul i32 %21, %24
  %27 = urem i32 %26, 2
  br label %.split23

.split23:                                         ; preds = %20
  %28 = icmp eq i32 %27, 0
  %29 = icmp slt i32 %22, 10
  %30 = xor i1 %28, true
  br label %.split23.split

.split23.split:                                   ; preds = %.split23
  %31 = xor i1 %29, true
  %32 = xor i1 true, true
  %33 = and i1 %30, true
  %34 = and i1 %28, %32
  %35 = and i1 %31, true
  %36 = and i1 %29, %32
  %37 = or i1 %33, %34
  %38 = or i1 %35, %36
  %39 = xor i1 %37, %38
  %40 = or i1 %30, %31
  %41 = xor i1 %40, true
  %42 = or i1 true, %32
  %43 = and i1 %41, %42
  %44 = or i1 %39, %43
  %45 = or i1 %28, %29
  br i1 %44, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split23.split, %originalBBalteredBB.split.split
  call void @perror(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #9
  %.reload11 = load i8*, i8** %.reg2mem9, align 8
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %.reload11) #8
  %.reload7 = load i8*, i8** %.reg2mem5, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %.reload7) #8
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %.reload3 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %.reload3) #8
  store i32 -650348102, i32* %switchVar, align 4
  %46 = load i32, i32* @x.5, align 4
  %47 = load i32, i32* @y.6, align 4
  %48 = sub i32 0, 1
  %49 = add i32 %46, %48
  %50 = sub i32 %46, 1
  %51 = mul i32 %46, %49
  %52 = urem i32 %51, 2
  %53 = icmp eq i32 %52, 0
  %54 = icmp slt i32 %47, 10
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %55 = and i1 %53, %54
  %56 = xor i1 %53, %54
  %57 = or i1 %55, %56
  %58 = or i1 %53, %54
  br i1 %57, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

59:                                               ; preds = %loopEntry.split
  %60 = load i32, i32* @x.5, align 4
  %61 = load i32, i32* @y.6, align 4
  %62 = sub i32 %60, -1731468973
  %63 = sub i32 %62, 1
  br label %.split24

.split24:                                         ; preds = %59
  %64 = add i32 %63, -1731468973
  %65 = sub i32 %60, 1
  %66 = mul i32 %60, %64
  %67 = urem i32 %66, 2
  %68 = icmp eq i32 %67, 0
  %69 = icmp slt i32 %61, 10
  %70 = xor i1 %68, true
  %71 = xor i1 %69, true
  %72 = xor i1 true, true
  %73 = and i1 %70, true
  %74 = and i1 %68, %72
  %75 = and i1 %71, true
  br label %.split24.split

.split24.split:                                   ; preds = %.split24
  %76 = and i1 %69, %72
  %77 = or i1 %73, %74
  %78 = or i1 %75, %76
  %79 = xor i1 %77, %78
  %80 = or i1 %70, %71
  %81 = xor i1 %80, true
  %82 = or i1 true, %72
  %83 = and i1 %81, %82
  %84 = or i1 %79, %83
  %85 = or i1 %68, %69
  br i1 %84, label %originalBB15, label %originalBB15alteredBB

originalBB15:                                     ; preds = %.split24.split, %originalBB15alteredBB.split.split
  %.reload10 = load i8*, i8** %.reg2mem9, align 8
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %.reload10) #8
  %.reload6 = load i8*, i8** %.reg2mem5, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %.reload6) #8
  br label %originalBB15.split

originalBB15.split:                               ; preds = %originalBB15
  %.reload = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %.reload) #8
  %86 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str, i64 0, i64 0))
  store i32 -650348102, i32* %switchVar, align 4
  %87 = load i32, i32* @x.5, align 4
  %88 = load i32, i32* @y.6, align 4
  %89 = add i32 %87, -1587404835
  %90 = sub i32 %89, 1
  %91 = sub i32 %90, -1587404835
  br label %originalBB15.split.split

originalBB15.split.split:                         ; preds = %originalBB15.split
  %92 = sub i32 %87, 1
  %93 = mul i32 %87, %91
  %94 = urem i32 %93, 2
  %95 = icmp eq i32 %94, 0
  %96 = icmp slt i32 %88, 10
  %97 = xor i1 %95, true
  %98 = xor i1 %96, true
  %99 = xor i1 true, true
  %100 = and i1 %97, true
  %101 = and i1 %95, %99
  %102 = and i1 %98, true
  %103 = and i1 %96, %99
  %104 = or i1 %100, %101
  %105 = or i1 %102, %103
  %106 = xor i1 %104, %105
  %107 = or i1 %97, %98
  %108 = xor i1 %107, true
  %109 = or i1 true, %99
  %110 = and i1 %108, %109
  %111 = or i1 %106, %110
  %112 = or i1 %95, %96
  br i1 %111, label %originalBBpart217, label %originalBB15alteredBB

originalBBpart217:                                ; preds = %originalBB15.split.split
  br label %loopEnd

113:                                              ; preds = %loopEntry.split
  %114 = load i32, i32* @x.5, align 4
  %115 = load i32, i32* @y.6, align 4
  %116 = add i32 %114, -1405999552
  br label %.split25

.split25:                                         ; preds = %113
  %117 = sub i32 %116, 1
  %118 = sub i32 %117, -1405999552
  %119 = sub i32 %114, 1
  %120 = mul i32 %114, %118
  br label %.split25.split

.split25.split:                                   ; preds = %.split25
  %121 = urem i32 %120, 2
  %122 = icmp eq i32 %121, 0
  %123 = icmp slt i32 %115, 10
  %124 = and i1 %122, %123
  %125 = xor i1 %122, %123
  %126 = or i1 %124, %125
  %127 = or i1 %122, %123
  br i1 %126, label %originalBB19, label %originalBB19alteredBB

originalBB19:                                     ; preds = %.split25.split, %originalBB19alteredBB
  %128 = load i32, i32* @x.5, align 4
  %129 = load i32, i32* @y.6, align 4
  %130 = sub i32 0, 1
  %131 = add i32 %128, %130
  %132 = sub i32 %128, 1
  %133 = mul i32 %128, %131
  %134 = urem i32 %133, 2
  %135 = icmp eq i32 %134, 0
  br label %originalBB19.split

originalBB19.split:                               ; preds = %originalBB19
  %136 = icmp slt i32 %129, 10
  %137 = and i1 %135, %136
  %138 = xor i1 %135, %136
  %139 = or i1 %137, %138
  %140 = or i1 %135, %136
  br label %originalBB19.split.split

originalBB19.split.split:                         ; preds = %originalBB19.split
  br i1 %139, label %originalBBpart221, label %originalBB19alteredBB

originalBBpart221:                                ; preds = %originalBB19.split.split
  ret i32 0

loopEnd:                                          ; preds = %originalBBpart217, %originalBBpart2, %first.split.split, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split23.split
  call void @perror(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %.reload11alteredBB = load i8*, i8** %.reg2mem9, align 8
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %.reload11alteredBB) #8
  %.reload7alteredBB = load i8*, i8** %.reg2mem5, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %.reload7alteredBB) #8
  %.reload3alteredBB = load i8*, i8** %.reg2mem, align 8
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %.reload3alteredBB) #8
  store i32 -650348102, i32* %switchVar, align 4
  br label %originalBB

originalBB15alteredBB:                            ; preds = %originalBB15.split.split, %.split24.split
  %.reload10alteredBB = load i8*, i8** %.reg2mem9, align 8
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %.reload10alteredBB) #8
  %.reload6alteredBB = load i8*, i8** %.reg2mem5, align 8
  br label %originalBB15alteredBB.split

originalBB15alteredBB.split:                      ; preds = %originalBB15alteredBB
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %.reload6alteredBB) #8
  %.reloadalteredBB = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %.reloadalteredBB) #8
  br label %originalBB15alteredBB.split.split

originalBB15alteredBB.split.split:                ; preds = %originalBB15alteredBB.split
  %141 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str, i64 0, i64 0))
  store i32 -650348102, i32* %switchVar, align 4
  br label %originalBB15

originalBB19alteredBB:                            ; preds = %originalBB19.split.split, %.split25.split
  br label %originalBB19
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare dso_local i32 @sigfillset(%struct.__sigset_t* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @sigaction(i32 noundef, %struct.sigaction* noundef, %struct.sigaction* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i32 @timer_create(i32 noundef, %struct.sigevent* noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: cold nofree nounwind
declare dso_local void @perror(i8* nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !8, i64 136}
!4 = !{!"sigaction", !5, i64 0, !7, i64 8, !8, i64 136, !9, i64 144}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"", !5, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !8, i64 12}
!12 = !{!"sigevent", !5, i64 0, !8, i64 8, !8, i64 12, !5, i64 16}
!13 = !{!12, !8, i64 8}

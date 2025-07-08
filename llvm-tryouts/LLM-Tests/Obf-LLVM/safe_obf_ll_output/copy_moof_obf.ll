; ModuleID = 'copy_moof_obf.bc'
source_filename = "copy_moof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVIOContext = type { %struct._IO_FILE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.AVIOInterruptCB = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"input.bin\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"output.bin\00", align 1
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

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @avio_open2(%struct.AVIOContext** nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, %struct.AVIOInterruptCB* nocapture readnone %3, i8* nocapture readnone %4) local_unnamed_addr #0 {
  %.reg2mem = alloca %struct._IO_FILE*, align 8
  %6 = icmp eq i32 %2, 1
  %7 = select i1 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %8 = call noalias %struct._IO_FILE* @fopen(i8* noundef %1, i8* noundef %7)
  store %struct._IO_FILE* %8, %struct._IO_FILE** %.reg2mem, align 8
  %switchVar = alloca i32, align 4
  store i32 1338113744, i32* %switchVar, align 4
  br label %.split

.split:                                           ; preds = %5
  %.reg2mem3 = alloca i32, align 4
  br label %.split.split

.split.split:                                     ; preds = %.split
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 1338113744, label %first
    i32 1007906919, label %11
    i32 -939928735, label %18
    i32 -206769737, label %75
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload2 = load %struct._IO_FILE*, %struct._IO_FILE** %.reg2mem, align 8
  br label %first.split

first.split:                                      ; preds = %first
  %9 = icmp eq %struct._IO_FILE* %.reload2, null
  %10 = select i1 %9, i32 1007906919, i32 -939928735
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  store i32 %10, i32* %switchVar, align 4
  br label %loopEnd

11:                                               ; preds = %loopEntry.split
  %12 = call i32* @__errno_location() #7
  %13 = load i32, i32* %12, align 4, !tbaa !3
  %14 = add i32 0, 396279262
  %15 = sub i32 %14, %13
  br label %.split5

.split5:                                          ; preds = %11
  %16 = sub i32 %15, 396279262
  %17 = sub nsw i32 0, %13
  store i32 -206769737, i32* %switchVar, align 4
  store i32 %16, i32* %.reg2mem3, align 4
  br label %.split5.split

.split5.split:                                    ; preds = %.split5
  br label %loopEnd

18:                                               ; preds = %loopEntry.split
  %19 = load i32, i32* @x, align 4
  %20 = load i32, i32* @y, align 4
  %21 = sub i32 %19, 1669931387
  %22 = sub i32 %21, 1
  br label %.split6

.split6:                                          ; preds = %18
  %23 = add i32 %22, 1669931387
  %24 = sub i32 %19, 1
  %25 = mul i32 %19, %23
  br label %.split6.split

.split6.split:                                    ; preds = %.split6
  %26 = urem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = icmp slt i32 %20, 10
  %29 = xor i1 %27, true
  %30 = xor i1 %28, true
  %31 = xor i1 false, true
  %32 = and i1 %29, false
  %33 = and i1 %27, %31
  %34 = and i1 %30, false
  %35 = and i1 %28, %31
  %36 = or i1 %32, %33
  %37 = or i1 %34, %35
  %38 = xor i1 %36, %37
  %39 = or i1 %29, %30
  %40 = xor i1 %39, true
  %41 = or i1 false, %31
  %42 = and i1 %40, %41
  %43 = or i1 %38, %42
  %44 = or i1 %27, %28
  br i1 %43, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split6.split, %originalBBalteredBB.split.split
  %45 = call dereferenceable_or_null(8) i8* @malloc(i64 noundef 8)
  %46 = bitcast i8* %45 to %struct.AVIOContext*
  %47 = bitcast %struct.AVIOContext** %0 to i8**
  store i8* %45, i8** %47, align 8, !tbaa !7
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %48 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %46, i64 0, i32 0
  %.reload = load %struct._IO_FILE*, %struct._IO_FILE** %.reg2mem, align 8
  store %struct._IO_FILE* %.reload, %struct._IO_FILE** %48, align 8, !tbaa !9
  store i32 -206769737, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem3, align 4
  %49 = load i32, i32* @x, align 4
  %50 = load i32, i32* @y, align 4
  %51 = sub i32 %49, 1612823763
  %52 = sub i32 %51, 1
  %53 = add i32 %52, 1612823763
  %54 = sub i32 %49, 1
  %55 = mul i32 %49, %53
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %56 = urem i32 %55, 2
  %57 = icmp eq i32 %56, 0
  %58 = icmp slt i32 %50, 10
  %59 = xor i1 %57, true
  %60 = xor i1 %58, true
  %61 = xor i1 true, true
  %62 = and i1 %59, true
  %63 = and i1 %57, %61
  %64 = and i1 %60, true
  %65 = and i1 %58, %61
  %66 = or i1 %62, %63
  %67 = or i1 %64, %65
  %68 = xor i1 %66, %67
  %69 = or i1 %59, %60
  %70 = xor i1 %69, true
  %71 = or i1 true, %61
  %72 = and i1 %70, %71
  %73 = or i1 %68, %72
  %74 = or i1 %57, %58
  br i1 %73, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

75:                                               ; preds = %loopEntry.split
  %.reload4 = load i32, i32* %.reg2mem3, align 4
  br label %.split7

.split7:                                          ; preds = %75
  ret i32 %.reload4

loopEnd:                                          ; preds = %originalBBpart2, %.split5.split, %first.split.split, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split6.split
  %76 = call dereferenceable_or_null(8) i8* @malloc(i64 noundef 8)
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %77 = bitcast i8* %76 to %struct.AVIOContext*
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  %78 = bitcast %struct.AVIOContext** %0 to i8**
  store i8* %76, i8** %78, align 8, !tbaa !7
  %79 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %77, i64 0, i32 0
  %.reloadalteredBB = load %struct._IO_FILE*, %struct._IO_FILE** %.reg2mem, align 8
  store %struct._IO_FILE* %.reloadalteredBB, %struct._IO_FILE** %79, align 8, !tbaa !9
  store i32 -206769737, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem3, align 4
  br label %originalBB
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @avio_read(%struct.AVIOContext* nocapture noundef readonly %0, i8* nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %0, i64 0, i32 0
  br label %.split

.split:                                           ; preds = %3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !tbaa !9
  br label %.split.split

.split.split:                                     ; preds = %.split
  %7 = call i64 @fread(i8* noundef %1, i64 noundef 1, i64 noundef %4, %struct._IO_FILE* noundef %6)
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @avio_write(%struct.AVIOContext* nocapture noundef readonly %0, i8* nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, i32* @x.3, align 4
  %5 = load i32, i32* @y.4, align 4
  %6 = sub i32 %4, -1388793048
  br label %.split

.split:                                           ; preds = %3
  %7 = sub i32 %6, 1
  %8 = add i32 %7, -1388793048
  %9 = sub i32 %4, 1
  %10 = mul i32 %4, %8
  %11 = urem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = icmp slt i32 %5, 10
  %14 = xor i1 %12, true
  %15 = xor i1 %13, true
  %16 = xor i1 false, true
  %17 = and i1 %14, false
  %18 = and i1 %12, %16
  %19 = and i1 %15, false
  %20 = and i1 %13, %16
  %21 = or i1 %17, %18
  %22 = or i1 %19, %20
  br label %.split.split

.split.split:                                     ; preds = %.split
  %23 = xor i1 %21, %22
  %24 = or i1 %14, %15
  %25 = xor i1 %24, true
  %26 = or i1 false, %16
  %27 = and i1 %25, %26
  %28 = or i1 %23, %27
  %29 = or i1 %12, %13
  br i1 %28, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %30 = sext i32 %2 to i64
  %31 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %0, i64 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8, !tbaa !9
  %33 = call i64 @fwrite(i8* noundef %1, i64 noundef 1, i64 noundef %30, %struct._IO_FILE* noundef %32)
  %34 = load i32, i32* @x.3, align 4
  %35 = load i32, i32* @y.4, align 4
  %36 = sub i32 0, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %37 = add i32 %34, %36
  %38 = sub i32 %34, 1
  %39 = mul i32 %34, %37
  %40 = urem i32 %39, 2
  %41 = icmp eq i32 %40, 0
  %42 = icmp slt i32 %35, 10
  %43 = xor i1 %41, true
  %44 = xor i1 %42, true
  %45 = xor i1 true, true
  %46 = and i1 %43, true
  %47 = and i1 %41, %45
  %48 = and i1 %44, true
  %49 = and i1 %42, %45
  %50 = or i1 %46, %47
  %51 = or i1 %48, %49
  %52 = xor i1 %50, %51
  %53 = or i1 %43, %44
  %54 = xor i1 %53, true
  %55 = or i1 true, %45
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %56 = and i1 %54, %55
  %57 = or i1 %52, %56
  %58 = or i1 %41, %42
  br i1 %57, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %59 = sext i32 %2 to i64
  %60 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %0, i64 0, i32 0
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %60, align 8, !tbaa !9
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %62 = call i64 @fwrite(i8* noundef %1, i64 noundef 1, i64 noundef %59, %struct._IO_FILE* noundef %61)
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @avio_flush(%struct.AVIOContext* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %0, i64 0, i32 0
  br label %.split

.split:                                           ; preds = %1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !tbaa !9
  br label %.split.split

.split.split:                                     ; preds = %.split
  %4 = call i32 @fflush(%struct._IO_FILE* noundef %3)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @avio_close(%struct.AVIOContext* noundef %0) local_unnamed_addr #5 {
  %2 = load i32, i32* @x.7, align 4
  %3 = load i32, i32* @y.8, align 4
  %4 = add i32 %2, 1618311190
  %5 = sub i32 %4, 1
  %6 = sub i32 %5, 1618311190
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  br label %.split

.split:                                           ; preds = %1
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
  %23 = xor i1 %22, true
  br label %.split.split

.split.split:                                     ; preds = %.split
  %24 = or i1 false, %14
  %25 = and i1 %23, %24
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %switchVar = alloca i32, align 4
  store i32 -1164883150, i32* %switchVar, align 4
  %28 = load i32, i32* @x.7, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %29 = load i32, i32* @y.8, align 4
  %30 = add i32 %28, -1753777606
  %31 = sub i32 %30, 1
  %32 = sub i32 %31, -1753777606
  %33 = sub i32 %28, 1
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
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
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %originalBBpart220
  %42 = load i32, i32* @x.7, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  %43 = load i32, i32* @y.8, align 4
  %44 = sub i32 0, 1
  %45 = add i32 %42, %44
  %46 = sub i32 %42, 1
  %47 = mul i32 %42, %45
  %48 = urem i32 %47, 2
  %49 = icmp eq i32 %48, 0
  %50 = icmp slt i32 %43, 10
  %51 = xor i1 %49, true
  %52 = xor i1 %50, true
  %53 = xor i1 true, true
  %54 = and i1 %51, true
  %55 = and i1 %49, %53
  %56 = and i1 %52, true
  %57 = and i1 %50, %53
  %58 = or i1 %54, %55
  %59 = or i1 %56, %57
  %60 = xor i1 %58, %59
  br label %loopEntry.split.split

loopEntry.split.split:                            ; preds = %loopEntry.split
  %61 = or i1 %51, %52
  %62 = xor i1 %61, true
  %63 = or i1 true, %53
  %64 = and i1 %62, %63
  %65 = or i1 %60, %64
  %66 = or i1 %49, %50
  br i1 %65, label %originalBB2, label %originalBB2alteredBB

originalBB2:                                      ; preds = %loopEntry.split.split, %originalBB2alteredBB.split
  %switchVar1 = load i32, i32* %switchVar, align 4
  %67 = load i32, i32* @x.7, align 4
  br label %originalBB2.split

originalBB2.split:                                ; preds = %originalBB2
  %68 = load i32, i32* @y.8, align 4
  br label %originalBB2.split.split

originalBB2.split.split:                          ; preds = %originalBB2.split
  %69 = sub i32 0, 1
  %70 = add i32 %67, %69
  %71 = sub i32 %67, 1
  %72 = mul i32 %67, %70
  %73 = urem i32 %72, 2
  %74 = icmp eq i32 %73, 0
  %75 = icmp slt i32 %68, 10
  %76 = and i1 %74, %75
  %77 = xor i1 %74, %75
  %78 = or i1 %76, %77
  %79 = or i1 %74, %75
  br i1 %78, label %originalBBpart24, label %originalBB2alteredBB

originalBBpart24:                                 ; preds = %originalBB2.split.split
  switch i32 %switchVar1, label %switchDefault [
    i32 -1164883150, label %first
    i32 301661176, label %162
    i32 -744701364, label %167
  ]

switchDefault:                                    ; preds = %originalBBpart24
  %80 = load i32, i32* @x.7, align 4
  %81 = load i32, i32* @y.8, align 4
  %82 = sub i32 %80, 1487146696
  %83 = sub i32 %82, 1
  %84 = add i32 %83, 1487146696
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %85 = sub i32 %80, 1
  %86 = mul i32 %80, %84
  %87 = urem i32 %86, 2
  %88 = icmp eq i32 %87, 0
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
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %101 = xor i1 %100, true
  %102 = or i1 false, %92
  %103 = and i1 %101, %102
  %104 = or i1 %99, %103
  %105 = or i1 %88, %89
  br i1 %104, label %originalBB6, label %originalBB6alteredBB

originalBB6:                                      ; preds = %switchDefault.split.split, %originalBB6alteredBB
  %106 = load i32, i32* @x.7, align 4
  br label %originalBB6.split

originalBB6.split:                                ; preds = %originalBB6
  %107 = load i32, i32* @y.8, align 4
  %108 = sub i32 %106, 1299874450
  %109 = sub i32 %108, 1
  br label %originalBB6.split.split

originalBB6.split.split:                          ; preds = %originalBB6.split
  %110 = add i32 %109, 1299874450
  %111 = sub i32 %106, 1
  %112 = mul i32 %106, %110
  %113 = urem i32 %112, 2
  %114 = icmp eq i32 %113, 0
  %115 = icmp slt i32 %107, 10
  %116 = and i1 %114, %115
  %117 = xor i1 %114, %115
  %118 = or i1 %116, %117
  %119 = or i1 %114, %115
  br i1 %118, label %originalBBpart28, label %originalBB6alteredBB

originalBBpart28:                                 ; preds = %originalBB6.split.split
  br label %loopEnd

first:                                            ; preds = %originalBBpart24
  %120 = load i32, i32* @x.7, align 4
  %121 = load i32, i32* @y.8, align 4
  %122 = add i32 %120, -2089854817
  %123 = sub i32 %122, 1
  %124 = sub i32 %123, -2089854817
  %125 = sub i32 %120, 1
  %126 = mul i32 %120, %124
  %127 = urem i32 %126, 2
  %128 = icmp eq i32 %127, 0
  %129 = icmp slt i32 %121, 10
  %130 = and i1 %128, %129
  %131 = xor i1 %128, %129
  %132 = or i1 %130, %131
  br label %first.split

first.split:                                      ; preds = %first
  %133 = or i1 %128, %129
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br i1 %132, label %originalBB10, label %originalBB10alteredBB

originalBB10:                                     ; preds = %first.split.split, %originalBB10alteredBB.split.split
  %134 = icmp eq %struct.AVIOContext* %0, null
  %135 = select i1 %134, i32 -744701364, i32 301661176
  store i32 %135, i32* %switchVar, align 4
  %136 = load i32, i32* @x.7, align 4
  %137 = load i32, i32* @y.8, align 4
  %138 = sub i32 %136, -1717984070
  %139 = sub i32 %138, 1
  %140 = add i32 %139, -1717984070
  %141 = sub i32 %136, 1
  %142 = mul i32 %136, %140
  %143 = urem i32 %142, 2
  %144 = icmp eq i32 %143, 0
  %145 = icmp slt i32 %137, 10
  %146 = xor i1 %144, true
  %147 = xor i1 %145, true
  br label %originalBB10.split

originalBB10.split:                               ; preds = %originalBB10
  %148 = xor i1 false, true
  %149 = and i1 %146, false
  %150 = and i1 %144, %148
  %151 = and i1 %147, false
  %152 = and i1 %145, %148
  %153 = or i1 %149, %150
  %154 = or i1 %151, %152
  %155 = xor i1 %153, %154
  %156 = or i1 %146, %147
  br label %originalBB10.split.split

originalBB10.split.split:                         ; preds = %originalBB10.split
  %157 = xor i1 %156, true
  %158 = or i1 false, %148
  %159 = and i1 %157, %158
  %160 = or i1 %155, %159
  %161 = or i1 %144, %145
  br i1 %160, label %originalBBpart212, label %originalBB10alteredBB

originalBBpart212:                                ; preds = %originalBB10.split.split
  br label %loopEnd

162:                                              ; preds = %originalBBpart24
  %163 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %0, i64 0, i32 0
  br label %.split22

.split22:                                         ; preds = %162
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %163, align 8, !tbaa !9
  br label %.split22.split

.split22.split:                                   ; preds = %.split22
  %165 = call i32 @fclose(%struct._IO_FILE* noundef %164)
  %166 = bitcast %struct.AVIOContext* %0 to i8*
  call void @free(i8* noundef %166)
  store i32 -744701364, i32* %switchVar, align 4
  br label %loopEnd

167:                                              ; preds = %originalBBpart24
  %168 = load i32, i32* @x.7, align 4
  %169 = load i32, i32* @y.8, align 4
  %170 = sub i32 %168, -76415395
  br label %.split23

.split23:                                         ; preds = %167
  %171 = sub i32 %170, 1
  %172 = add i32 %171, -76415395
  %173 = sub i32 %168, 1
  %174 = mul i32 %168, %172
  %175 = urem i32 %174, 2
  br label %.split23.split

.split23.split:                                   ; preds = %.split23
  %176 = icmp eq i32 %175, 0
  %177 = icmp slt i32 %169, 10
  %178 = and i1 %176, %177
  %179 = xor i1 %176, %177
  %180 = or i1 %178, %179
  %181 = or i1 %176, %177
  br i1 %180, label %originalBB14, label %originalBB14alteredBB

originalBB14:                                     ; preds = %.split23.split, %originalBB14alteredBB
  %182 = load i32, i32* @x.7, align 4
  %183 = load i32, i32* @y.8, align 4
  %184 = sub i32 0, 1
  %185 = add i32 %182, %184
  %186 = sub i32 %182, 1
  %187 = mul i32 %182, %185
  %188 = urem i32 %187, 2
  %189 = icmp eq i32 %188, 0
  %190 = icmp slt i32 %183, 10
  br label %originalBB14.split

originalBB14.split:                               ; preds = %originalBB14
  %191 = xor i1 %189, true
  %192 = xor i1 %190, true
  br label %originalBB14.split.split

originalBB14.split.split:                         ; preds = %originalBB14.split
  %193 = xor i1 false, true
  %194 = and i1 %191, false
  %195 = and i1 %189, %193
  %196 = and i1 %192, false
  %197 = and i1 %190, %193
  %198 = or i1 %194, %195
  %199 = or i1 %196, %197
  %200 = xor i1 %198, %199
  %201 = or i1 %191, %192
  %202 = xor i1 %201, true
  %203 = or i1 false, %193
  %204 = and i1 %202, %203
  %205 = or i1 %200, %204
  %206 = or i1 %189, %190
  br i1 %205, label %originalBBpart216, label %originalBB14alteredBB

originalBBpart216:                                ; preds = %originalBB14.split.split
  ret void

loopEnd:                                          ; preds = %.split22.split, %originalBBpart212, %originalBBpart28
  %207 = load i32, i32* @x.7, align 4
  %208 = load i32, i32* @y.8, align 4
  %209 = add i32 %207, -523993500
  %210 = sub i32 %209, 1
  %211 = sub i32 %210, -523993500
  %212 = sub i32 %207, 1
  %213 = mul i32 %207, %211
  %214 = urem i32 %213, 2
  br label %loopEnd.split

loopEnd.split:                                    ; preds = %loopEnd
  %215 = icmp eq i32 %214, 0
  %216 = icmp slt i32 %208, 10
  %217 = xor i1 %215, true
  %218 = xor i1 %216, true
  %219 = xor i1 false, true
  %220 = and i1 %217, false
  %221 = and i1 %215, %219
  %222 = and i1 %218, false
  br label %loopEnd.split.split

loopEnd.split.split:                              ; preds = %loopEnd.split
  %223 = and i1 %216, %219
  %224 = or i1 %220, %221
  %225 = or i1 %222, %223
  %226 = xor i1 %224, %225
  %227 = or i1 %217, %218
  %228 = xor i1 %227, true
  %229 = or i1 false, %219
  %230 = and i1 %228, %229
  %231 = or i1 %226, %230
  %232 = or i1 %215, %216
  br i1 %231, label %originalBB18, label %originalBB18alteredBB

originalBB18:                                     ; preds = %loopEnd.split.split, %originalBB18alteredBB
  %233 = load i32, i32* @x.7, align 4
  %234 = load i32, i32* @y.8, align 4
  %235 = add i32 %233, 629749295
  %236 = sub i32 %235, 1
  %237 = sub i32 %236, 629749295
  %238 = sub i32 %233, 1
  %239 = mul i32 %233, %237
  br label %originalBB18.split

originalBB18.split:                               ; preds = %originalBB18
  %240 = urem i32 %239, 2
  %241 = icmp eq i32 %240, 0
  %242 = icmp slt i32 %234, 10
  %243 = xor i1 %241, true
  %244 = xor i1 %242, true
  %245 = xor i1 false, true
  %246 = and i1 %243, false
  %247 = and i1 %241, %245
  %248 = and i1 %244, false
  %249 = and i1 %242, %245
  %250 = or i1 %246, %247
  %251 = or i1 %248, %249
  br label %originalBB18.split.split

originalBB18.split.split:                         ; preds = %originalBB18.split
  %252 = xor i1 %250, %251
  %253 = or i1 %243, %244
  %254 = xor i1 %253, true
  %255 = or i1 false, %245
  %256 = and i1 %254, %255
  %257 = or i1 %252, %256
  %258 = or i1 %241, %242
  br i1 %257, label %originalBBpart220, label %originalBB18alteredBB

originalBBpart220:                                ; preds = %originalBB18.split.split
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %switchVaralteredBB = alloca i32, align 4
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  store i32 -1164883150, i32* %switchVaralteredBB, align 4
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB

originalBB2alteredBB:                             ; preds = %originalBB2.split.split, %loopEntry.split.split
  %switchVar1alteredBB = load i32, i32* %switchVar, align 4
  br label %originalBB2alteredBB.split

originalBB2alteredBB.split:                       ; preds = %originalBB2alteredBB
  br label %originalBB2

originalBB6alteredBB:                             ; preds = %originalBB6.split.split, %switchDefault.split.split
  br label %originalBB6

originalBB10alteredBB:                            ; preds = %originalBB10.split.split, %first.split.split
  %259 = icmp eq %struct.AVIOContext* %0, null
  br label %originalBB10alteredBB.split

originalBB10alteredBB.split:                      ; preds = %originalBB10alteredBB
  %260 = select i1 %259, i32 -744701364, i32 301661176
  store i32 %260, i32* %switchVar, align 4
  br label %originalBB10alteredBB.split.split

originalBB10alteredBB.split.split:                ; preds = %originalBB10alteredBB.split
  br label %originalBB10

originalBB14alteredBB:                            ; preds = %originalBB14.split.split, %.split23.split
  br label %originalBB14

originalBB18alteredBB:                            ; preds = %originalBB18.split.split, %loopEnd.split.split
  br label %originalBB18
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #5 {
  %.reload32.reg2mem = alloca i64, align 8
  %.reload28.reg2mem = alloca %struct.AVIOContext*, align 8
  %.reload24.reg2mem = alloca %struct.AVIOContext*, align 8
  %.reg2mem20 = alloca i1, align 1
  %.reg2mem17 = alloca i64, align 8
  %.reg2mem13 = alloca %struct._IO_FILE**, align 8
  %.reg2mem11 = alloca %struct._IO_FILE**, align 8
  br label %.split

.split:                                           ; preds = %0
  %.reg2mem6 = alloca i8*, align 8
  %.reg2mem3 = alloca %struct._IO_FILE*, align 8
  %.reg2mem = alloca %struct._IO_FILE*, align 8
  %1 = alloca [8192 x i8], align 16
  %2 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %.reg2mem, align 8
  %switchVar = alloca i32, align 4
  br label %.split.split

.split.split:                                     ; preds = %.split
  store i32 -857224247, i32* %switchVar, align 4
  %.reg2mem23 = alloca %struct.AVIOContext*, align 8
  %.reg2mem25 = alloca i1, align 1
  %.reg2mem27 = alloca %struct.AVIOContext*, align 8
  %.reg2mem29 = alloca i1, align 1
  %.reg2mem31 = alloca i64, align 8
  %.reg2mem33 = alloca i64, align 8
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 -857224247, label %first
    i32 -239044085, label %5
    i32 -574269561, label %48
    i32 1774755945, label %52
    i32 2006019101, label %81
    i32 -1236210700, label %112
    i32 1521911485, label %116
    i32 -421183759, label %120
    i32 -1707292229, label %122
    i32 -306210248, label %126
    i32 1876523297, label %129
    i32 -763961576, label %132
    i32 -1849612132, label %142
    i32 2071569121, label %189
    i32 376970884, label %191
    i32 -1388724139, label %196
    i32 548883470, label %251
    i32 -2046909494, label %254
    i32 18247021, label %286
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload2 = load %struct._IO_FILE*, %struct._IO_FILE** %.reg2mem, align 8
  %3 = icmp eq %struct._IO_FILE* %.reload2, null
  br label %first.split

first.split:                                      ; preds = %first
  %4 = select i1 %3, i32 -239044085, i32 -574269561
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  store i32 %4, i32* %switchVar, align 4
  br label %loopEnd

5:                                                ; preds = %loopEntry.split
  %6 = load i32, i32* @x.9, align 4
  %7 = load i32, i32* @y.10, align 4
  br label %.split87

.split87:                                         ; preds = %5
  %8 = sub i32 %6, 903751267
  %9 = sub i32 %8, 1
  %10 = add i32 %9, 903751267
  %11 = sub i32 %6, 1
  %12 = mul i32 %6, %10
  br label %.split87.split

.split87.split:                                   ; preds = %.split87
  %13 = urem i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = icmp slt i32 %7, 10
  %16 = and i1 %14, %15
  %17 = xor i1 %14, %15
  %18 = or i1 %16, %17
  %19 = or i1 %14, %15
  br i1 %18, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split87.split, %originalBBalteredBB.split.split
  %20 = call i32* @__errno_location() #7
  %21 = load i32, i32* %20, align 4, !tbaa !3
  %22 = icmp sgt i32 %21, 0
  store i32 1774755945, i32* %switchVar, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  store %struct.AVIOContext* undef, %struct.AVIOContext** %.reg2mem23, align 8
  store i1 %22, i1* %.reg2mem25, align 1
  %23 = load i32, i32* @x.9, align 4
  %24 = load i32, i32* @y.10, align 4
  %25 = sub i32 0, 1
  %26 = add i32 %23, %25
  %27 = sub i32 %23, 1
  %28 = mul i32 %23, %26
  %29 = urem i32 %28, 2
  %30 = icmp eq i32 %29, 0
  %31 = icmp slt i32 %24, 10
  %32 = xor i1 %30, true
  %33 = xor i1 %31, true
  %34 = xor i1 true, true
  %35 = and i1 %32, true
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %36 = and i1 %30, %34
  %37 = and i1 %33, true
  %38 = and i1 %31, %34
  %39 = or i1 %35, %36
  %40 = or i1 %37, %38
  %41 = xor i1 %39, %40
  %42 = or i1 %32, %33
  %43 = xor i1 %42, true
  %44 = or i1 true, %34
  %45 = and i1 %43, %44
  %46 = or i1 %41, %45
  %47 = or i1 %30, %31
  br i1 %46, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

48:                                               ; preds = %loopEntry.split
  %49 = call dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #8
  %50 = bitcast i8* %49 to %struct.AVIOContext*
  %51 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %50, i64 0, i32 0
  %.reload = load %struct._IO_FILE*, %struct._IO_FILE** %.reg2mem, align 8
  br label %.split88

.split88:                                         ; preds = %48
  store %struct._IO_FILE* %.reload, %struct._IO_FILE** %51, align 8, !tbaa !9
  store i32 1774755945, i32* %switchVar, align 4
  br label %.split88.split

.split88.split:                                   ; preds = %.split88
  store %struct.AVIOContext* %50, %struct.AVIOContext** %.reg2mem23, align 8
  store i1 false, i1* %.reg2mem25, align 1
  br label %loopEnd

52:                                               ; preds = %loopEntry.split
  %53 = load i32, i32* @x.9, align 4
  %54 = load i32, i32* @y.10, align 4
  %55 = sub i32 0, 1
  br label %.split89

.split89:                                         ; preds = %52
  %56 = add i32 %53, %55
  %57 = sub i32 %53, 1
  br label %.split89.split

.split89.split:                                   ; preds = %.split89
  %58 = mul i32 %53, %56
  %59 = urem i32 %58, 2
  %60 = icmp eq i32 %59, 0
  %61 = icmp slt i32 %54, 10
  %62 = and i1 %60, %61
  %63 = xor i1 %60, %61
  %64 = or i1 %62, %63
  %65 = or i1 %60, %61
  br i1 %64, label %originalBB45, label %originalBB45alteredBB

originalBB45:                                     ; preds = %.split89.split, %originalBB45alteredBB.split.split
  %.reload26 = load i1, i1* %.reg2mem25, align 1
  %.reload24 = load %struct.AVIOContext*, %struct.AVIOContext** %.reg2mem23, align 8
  store %struct.AVIOContext* %.reload24, %struct.AVIOContext** %.reload24.reg2mem, align 8
  %66 = select i1 %.reload26, i32 18247021, i32 2006019101
  store i32 %66, i32* %switchVar, align 4
  %67 = load i32, i32* @x.9, align 4
  %68 = load i32, i32* @y.10, align 4
  %69 = sub i32 %67, 992826330
  %70 = sub i32 %69, 1
  %71 = add i32 %70, 992826330
  br label %originalBB45.split

originalBB45.split:                               ; preds = %originalBB45
  %72 = sub i32 %67, 1
  %73 = mul i32 %67, %71
  %74 = urem i32 %73, 2
  %75 = icmp eq i32 %74, 0
  %76 = icmp slt i32 %68, 10
  br label %originalBB45.split.split

originalBB45.split.split:                         ; preds = %originalBB45.split
  %77 = and i1 %75, %76
  %78 = xor i1 %75, %76
  %79 = or i1 %77, %78
  %80 = or i1 %75, %76
  br i1 %79, label %originalBBpart247, label %originalBB45alteredBB

originalBBpart247:                                ; preds = %originalBB45.split.split
  br label %loopEnd

81:                                               ; preds = %loopEntry.split
  %82 = load i32, i32* @x.9, align 4
  %83 = load i32, i32* @y.10, align 4
  %84 = sub i32 %82, -498750821
  %85 = sub i32 %84, 1
  %86 = add i32 %85, -498750821
  %87 = sub i32 %82, 1
  br label %.split90

.split90:                                         ; preds = %81
  %88 = mul i32 %82, %86
  %89 = urem i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br label %.split90.split

.split90.split:                                   ; preds = %.split90
  %91 = icmp slt i32 %83, 10
  %92 = and i1 %90, %91
  %93 = xor i1 %90, %91
  %94 = or i1 %92, %93
  %95 = or i1 %90, %91
  br i1 %94, label %originalBB49, label %originalBB49alteredBB

originalBB49:                                     ; preds = %.split90.split, %originalBB49alteredBB.split.split
  %96 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8
  store %struct._IO_FILE* %96, %struct._IO_FILE** %.reg2mem3, align 8
  %.reload5 = load %struct._IO_FILE*, %struct._IO_FILE** %.reg2mem3, align 8
  %97 = icmp eq %struct._IO_FILE* %.reload5, null
  br label %originalBB49.split

originalBB49.split:                               ; preds = %originalBB49
  %98 = select i1 %97, i32 -1236210700, i32 1521911485
  store i32 %98, i32* %switchVar, align 4
  %99 = load i32, i32* @x.9, align 4
  %100 = load i32, i32* @y.10, align 4
  %101 = sub i32 0, 1
  %102 = add i32 %99, %101
  br label %originalBB49.split.split

originalBB49.split.split:                         ; preds = %originalBB49.split
  %103 = sub i32 %99, 1
  %104 = mul i32 %99, %102
  %105 = urem i32 %104, 2
  %106 = icmp eq i32 %105, 0
  %107 = icmp slt i32 %100, 10
  %108 = and i1 %106, %107
  %109 = xor i1 %106, %107
  %110 = or i1 %108, %109
  %111 = or i1 %106, %107
  br i1 %110, label %originalBBpart251, label %originalBB49alteredBB

originalBBpart251:                                ; preds = %originalBB49.split.split
  br label %loopEnd

112:                                              ; preds = %loopEntry.split
  %113 = call i32* @__errno_location() #7
  %114 = load i32, i32* %113, align 4, !tbaa !3
  %115 = icmp sgt i32 %114, 0
  store i32 -421183759, i32* %switchVar, align 4
  store %struct.AVIOContext* undef, %struct.AVIOContext** %.reg2mem27, align 8
  br label %.split91

.split91:                                         ; preds = %112
  store i1 %115, i1* %.reg2mem29, align 1
  br label %.split91.split

.split91.split:                                   ; preds = %.split91
  br label %loopEnd

116:                                              ; preds = %loopEntry.split
  %117 = call dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #8
  br label %.split92

.split92:                                         ; preds = %116
  %118 = bitcast i8* %117 to %struct.AVIOContext*
  %119 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %118, i64 0, i32 0
  %.reload4 = load %struct._IO_FILE*, %struct._IO_FILE** %.reg2mem3, align 8
  store %struct._IO_FILE* %.reload4, %struct._IO_FILE** %119, align 8, !tbaa !9
  br label %.split92.split

.split92.split:                                   ; preds = %.split92
  store i32 -421183759, i32* %switchVar, align 4
  store %struct.AVIOContext* %118, %struct.AVIOContext** %.reg2mem27, align 8
  store i1 false, i1* %.reg2mem29, align 1
  br label %loopEnd

120:                                              ; preds = %loopEntry.split
  %.reload30 = load i1, i1* %.reg2mem29, align 1
  br label %.split93

.split93:                                         ; preds = %120
  %.reload28 = load %struct.AVIOContext*, %struct.AVIOContext** %.reg2mem27, align 8
  store %struct.AVIOContext* %.reload28, %struct.AVIOContext** %.reload28.reg2mem, align 8
  %121 = select i1 %.reload30, i32 -306210248, i32 -1707292229
  br label %.split93.split

.split93.split:                                   ; preds = %.split93
  store i32 %121, i32* %switchVar, align 4
  br label %loopEnd

122:                                              ; preds = %loopEntry.split
  %123 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1, i64 0, i64 0
  store i8* %123, i8** %.reg2mem6, align 8
  br label %.split94

.split94:                                         ; preds = %122
  %.reload24.reload = load %struct.AVIOContext*, %struct.AVIOContext** %.reload24.reg2mem, align 8
  %124 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %.reload24.reload, i64 0, i32 0
  store %struct._IO_FILE** %124, %struct._IO_FILE*** %.reg2mem11, align 8
  %.reload28.reload = load %struct.AVIOContext*, %struct.AVIOContext** %.reload28.reg2mem, align 8
  %125 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %.reload28.reload, i64 0, i32 0
  store %struct._IO_FILE** %125, %struct._IO_FILE*** %.reg2mem13, align 8
  br label %.split94.split

.split94.split:                                   ; preds = %.split94
  store i32 1876523297, i32* %switchVar, align 4
  store i64 16384, i64* %.reg2mem31, align 8
  br label %loopEnd

126:                                              ; preds = %loopEntry.split
  %.reload24.reload36 = load %struct.AVIOContext*, %struct.AVIOContext** %.reload24.reg2mem, align 8
  %127 = icmp eq %struct.AVIOContext* %.reload24.reload36, null
  %128 = select i1 %127, i32 18247021, i32 -2046909494
  br label %.split95

.split95:                                         ; preds = %126
  store i32 %128, i32* %switchVar, align 4
  br label %.split95.split

.split95.split:                                   ; preds = %.split95
  br label %loopEnd

129:                                              ; preds = %loopEntry.split
  %.reload32 = load i64, i64* %.reg2mem31, align 8
  store i64 %.reload32, i64* %.reload32.reg2mem, align 8
  br label %.split96

.split96:                                         ; preds = %129
  %.reload32.reload41 = load i64, i64* %.reload32.reg2mem, align 8
  %130 = icmp sgt i64 %.reload32.reload41, 0
  br label %.split96.split

.split96.split:                                   ; preds = %.split96
  %131 = select i1 %130, i32 -763961576, i32 376970884
  store i32 %131, i32* %switchVar, align 4
  br label %loopEnd

132:                                              ; preds = %loopEntry.split
  %.reload10 = load i8*, i8** %.reg2mem6, align 8
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %.reload10) #8
  %.reload32.reload42 = load i64, i64* %.reload32.reg2mem, align 8
  %133 = icmp slt i64 %.reload32.reload42, 8192
  %.reload32.reload43 = load i64, i64* %.reload32.reg2mem, align 8
  %134 = select i1 %133, i64 %.reload32.reload43, i64 8192
  br label %.split97

.split97:                                         ; preds = %132
  %135 = shl i64 %134, 32
  %136 = ashr exact i64 %135, 32
  %.reload12 = load %struct._IO_FILE**, %struct._IO_FILE*** %.reg2mem11, align 8
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %.reload12, align 8, !tbaa !9
  %.reload9 = load i8*, i8** %.reg2mem6, align 8
  %138 = call i64 @fread(i8* noundef nonnull %.reload9, i64 noundef 1, i64 noundef %136, %struct._IO_FILE* noundef %137) #8
  store i64 %138, i64* %.reg2mem17, align 8
  %.reload19 = load i64, i64* %.reg2mem17, align 8
  %139 = trunc i64 %.reload19 to i32
  %140 = icmp slt i32 %139, 1
  store i1 %140, i1* %.reg2mem20, align 1
  %.reload22 = load i1, i1* %.reg2mem20, align 1
  br label %.split97.split

.split97.split:                                   ; preds = %.split97
  %141 = select i1 %.reload22, i32 2071569121, i32 -1849612132
  store i32 %141, i32* %switchVar, align 4
  %.reload32.reload = load i64, i64* %.reload32.reg2mem, align 8
  store i64 %.reload32.reload, i64* %.reg2mem33, align 8
  br label %loopEnd

142:                                              ; preds = %loopEntry.split
  %143 = load i32, i32* @x.9, align 4
  br label %.split98

.split98:                                         ; preds = %142
  %144 = load i32, i32* @y.10, align 4
  %145 = sub i32 0, 1
  %146 = add i32 %143, %145
  %147 = sub i32 %143, 1
  %148 = mul i32 %143, %146
  %149 = urem i32 %148, 2
  %150 = icmp eq i32 %149, 0
  %151 = icmp slt i32 %144, 10
  %152 = xor i1 %150, true
  %153 = xor i1 %151, true
  %154 = xor i1 false, true
  %155 = and i1 %152, false
  %156 = and i1 %150, %154
  %157 = and i1 %153, false
  %158 = and i1 %151, %154
  %159 = or i1 %155, %156
  %160 = or i1 %157, %158
  %161 = xor i1 %159, %160
  %162 = or i1 %152, %153
  %163 = xor i1 %162, true
  %164 = or i1 false, %154
  br label %.split98.split

.split98.split:                                   ; preds = %.split98
  %165 = and i1 %163, %164
  %166 = or i1 %161, %165
  %167 = or i1 %150, %151
  br i1 %166, label %originalBB53, label %originalBB53alteredBB

originalBB53:                                     ; preds = %.split98.split, %originalBB53alteredBB.split.split
  %.reload18 = load i64, i64* %.reg2mem17, align 8
  %168 = shl i64 %.reload18, 32
  %169 = ashr exact i64 %168, 32
  br label %originalBB53.split

originalBB53.split:                               ; preds = %originalBB53
  %.reload16 = load %struct._IO_FILE**, %struct._IO_FILE*** %.reg2mem13, align 8
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %.reload16, align 8, !tbaa !9
  %.reload8 = load i8*, i8** %.reg2mem6, align 8
  %171 = call i64 @fwrite(i8* noundef nonnull %.reload8, i64 noundef 1, i64 noundef %169, %struct._IO_FILE* noundef %170) #8
  %.reload32.reload44 = load i64, i64* %.reload32.reg2mem, align 8
  %172 = sub i64 0, %169
  %173 = add i64 %.reload32.reload44, %172
  %174 = sub nsw i64 %.reload32.reload44, %169
  store i32 2071569121, i32* %switchVar, align 4
  store i64 %173, i64* %.reg2mem33, align 8
  %175 = load i32, i32* @x.9, align 4
  %176 = load i32, i32* @y.10, align 4
  br label %originalBB53.split.split

originalBB53.split.split:                         ; preds = %originalBB53.split
  %177 = sub i32 %175, 521415243
  %178 = sub i32 %177, 1
  %179 = add i32 %178, 521415243
  %180 = sub i32 %175, 1
  %181 = mul i32 %175, %179
  %182 = urem i32 %181, 2
  %183 = icmp eq i32 %182, 0
  %184 = icmp slt i32 %176, 10
  %185 = and i1 %183, %184
  %186 = xor i1 %183, %184
  %187 = or i1 %185, %186
  %188 = or i1 %183, %184
  br i1 %187, label %originalBBpart273, label %originalBB53alteredBB

originalBBpart273:                                ; preds = %originalBB53.split.split
  br label %loopEnd

189:                                              ; preds = %loopEntry.split
  %.reload34 = load i64, i64* %.reg2mem33, align 8
  br label %.split99

.split99:                                         ; preds = %189
  %.reload7 = load i8*, i8** %.reg2mem6, align 8
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %.reload7) #8
  %.reload21 = load i1, i1* %.reg2mem20, align 1
  %190 = select i1 %.reload21, i32 376970884, i32 1876523297
  store i32 %190, i32* %switchVar, align 4
  br label %.split99.split

.split99.split:                                   ; preds = %.split99
  store i64 %.reload34, i64* %.reg2mem31, align 8
  br label %loopEnd

191:                                              ; preds = %loopEntry.split
  %.reload14 = load %struct._IO_FILE**, %struct._IO_FILE*** %.reg2mem13, align 8
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %.reload14, align 8, !tbaa !9
  %193 = call i32 @fflush(%struct._IO_FILE* noundef %192) #8
  br label %.split100

.split100:                                        ; preds = %191
  %.reload28.reload39 = load %struct.AVIOContext*, %struct.AVIOContext** %.reload28.reg2mem, align 8
  br label %.split100.split

.split100.split:                                  ; preds = %.split100
  %194 = icmp eq %struct.AVIOContext* %.reload28.reload39, null
  %195 = select i1 %194, i32 548883470, i32 -1388724139
  store i32 %195, i32* %switchVar, align 4
  br label %loopEnd

196:                                              ; preds = %loopEntry.split
  %197 = load i32, i32* @x.9, align 4
  %198 = load i32, i32* @y.10, align 4
  br label %.split101

.split101:                                        ; preds = %196
  %199 = sub i32 0, 1
  %200 = add i32 %197, %199
  %201 = sub i32 %197, 1
  %202 = mul i32 %197, %200
  %203 = urem i32 %202, 2
  %204 = icmp eq i32 %203, 0
  %205 = icmp slt i32 %198, 10
  %206 = xor i1 %204, true
  %207 = xor i1 %205, true
  %208 = xor i1 true, true
  %209 = and i1 %206, true
  %210 = and i1 %204, %208
  %211 = and i1 %207, true
  %212 = and i1 %205, %208
  br label %.split101.split

.split101.split:                                  ; preds = %.split101
  %213 = or i1 %209, %210
  %214 = or i1 %211, %212
  %215 = xor i1 %213, %214
  %216 = or i1 %206, %207
  %217 = xor i1 %216, true
  %218 = or i1 true, %208
  %219 = and i1 %217, %218
  %220 = or i1 %215, %219
  %221 = or i1 %204, %205
  br i1 %220, label %originalBB75, label %originalBB75alteredBB

originalBB75:                                     ; preds = %.split101.split, %originalBB75alteredBB.split.split
  %.reload15 = load %struct._IO_FILE**, %struct._IO_FILE*** %.reg2mem13, align 8
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %.reload15, align 8, !tbaa !9
  %223 = call i32 @fclose(%struct._IO_FILE* noundef %222) #8
  %.reload28.reload40 = load %struct.AVIOContext*, %struct.AVIOContext** %.reload28.reg2mem, align 8
  %224 = bitcast %struct.AVIOContext* %.reload28.reload40 to i8*
  call void @free(i8* noundef %224) #8
  store i32 548883470, i32* %switchVar, align 4
  %225 = load i32, i32* @x.9, align 4
  br label %originalBB75.split

originalBB75.split:                               ; preds = %originalBB75
  %226 = load i32, i32* @y.10, align 4
  %227 = add i32 %225, 936345474
  %228 = sub i32 %227, 1
  %229 = sub i32 %228, 936345474
  %230 = sub i32 %225, 1
  %231 = mul i32 %225, %229
  br label %originalBB75.split.split

originalBB75.split.split:                         ; preds = %originalBB75.split
  %232 = urem i32 %231, 2
  %233 = icmp eq i32 %232, 0
  %234 = icmp slt i32 %226, 10
  %235 = xor i1 %233, true
  %236 = xor i1 %234, true
  %237 = xor i1 false, true
  %238 = and i1 %235, false
  %239 = and i1 %233, %237
  %240 = and i1 %236, false
  %241 = and i1 %234, %237
  %242 = or i1 %238, %239
  %243 = or i1 %240, %241
  %244 = xor i1 %242, %243
  %245 = or i1 %235, %236
  %246 = xor i1 %245, true
  %247 = or i1 false, %237
  %248 = and i1 %246, %247
  %249 = or i1 %244, %248
  %250 = or i1 %233, %234
  br i1 %249, label %originalBBpart277, label %originalBB75alteredBB

originalBBpart277:                                ; preds = %originalBB75.split.split
  br label %loopEnd

251:                                              ; preds = %loopEntry.split
  %.reload24.reload35 = load %struct.AVIOContext*, %struct.AVIOContext** %.reload24.reg2mem, align 8
  %252 = icmp eq %struct.AVIOContext* %.reload24.reload35, null
  %253 = select i1 %252, i32 18247021, i32 -2046909494
  br label %.split102

.split102:                                        ; preds = %251
  store i32 %253, i32* %switchVar, align 4
  br label %.split102.split

.split102.split:                                  ; preds = %.split102
  br label %loopEnd

254:                                              ; preds = %loopEntry.split
  %255 = load i32, i32* @x.9, align 4
  %256 = load i32, i32* @y.10, align 4
  %257 = sub i32 %255, 1541982275
  %258 = sub i32 %257, 1
  %259 = add i32 %258, 1541982275
  br label %.split103

.split103:                                        ; preds = %254
  %260 = sub i32 %255, 1
  %261 = mul i32 %255, %259
  br label %.split103.split

.split103.split:                                  ; preds = %.split103
  %262 = urem i32 %261, 2
  %263 = icmp eq i32 %262, 0
  %264 = icmp slt i32 %256, 10
  %265 = and i1 %263, %264
  %266 = xor i1 %263, %264
  %267 = or i1 %265, %266
  %268 = or i1 %263, %264
  br i1 %267, label %originalBB79, label %originalBB79alteredBB

originalBB79:                                     ; preds = %.split103.split, %originalBB79alteredBB.split.split
  %.reload24.reload38 = load %struct.AVIOContext*, %struct.AVIOContext** %.reload24.reg2mem, align 8
  %269 = getelementptr %struct.AVIOContext, %struct.AVIOContext* %.reload24.reload38, i64 0, i32 0
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** %269, align 8, !tbaa !9
  %271 = call i32 @fclose(%struct._IO_FILE* noundef %270) #8
  %.reload24.reload37 = load %struct.AVIOContext*, %struct.AVIOContext** %.reload24.reg2mem, align 8
  %272 = bitcast %struct.AVIOContext* %.reload24.reload37 to i8*
  call void @free(i8* noundef %272) #8
  store i32 18247021, i32* %switchVar, align 4
  %273 = load i32, i32* @x.9, align 4
  %274 = load i32, i32* @y.10, align 4
  %275 = sub i32 0, 1
  %276 = add i32 %273, %275
  %277 = sub i32 %273, 1
  %278 = mul i32 %273, %276
  %279 = urem i32 %278, 2
  %280 = icmp eq i32 %279, 0
  br label %originalBB79.split

originalBB79.split:                               ; preds = %originalBB79
  %281 = icmp slt i32 %274, 10
  %282 = and i1 %280, %281
  %283 = xor i1 %280, %281
  %284 = or i1 %282, %283
  br label %originalBB79.split.split

originalBB79.split.split:                         ; preds = %originalBB79.split
  %285 = or i1 %280, %281
  br i1 %284, label %originalBBpart281, label %originalBB79alteredBB

originalBBpart281:                                ; preds = %originalBB79.split.split
  br label %loopEnd

286:                                              ; preds = %loopEntry.split
  %287 = load i32, i32* @x.9, align 4
  %288 = load i32, i32* @y.10, align 4
  %289 = sub i32 %287, 591671713
  br label %.split104

.split104:                                        ; preds = %286
  %290 = sub i32 %289, 1
  %291 = add i32 %290, 591671713
  %292 = sub i32 %287, 1
  %293 = mul i32 %287, %291
  %294 = urem i32 %293, 2
  %295 = icmp eq i32 %294, 0
  %296 = icmp slt i32 %288, 10
  %297 = and i1 %295, %296
  %298 = xor i1 %295, %296
  br label %.split104.split

.split104.split:                                  ; preds = %.split104
  %299 = or i1 %297, %298
  %300 = or i1 %295, %296
  br i1 %299, label %originalBB83, label %originalBB83alteredBB

originalBB83:                                     ; preds = %.split104.split, %originalBB83alteredBB
  %301 = load i32, i32* @x.9, align 4
  br label %originalBB83.split

originalBB83.split:                               ; preds = %originalBB83
  %302 = load i32, i32* @y.10, align 4
  %303 = add i32 %301, -1270497705
  br label %originalBB83.split.split

originalBB83.split.split:                         ; preds = %originalBB83.split
  %304 = sub i32 %303, 1
  %305 = sub i32 %304, -1270497705
  %306 = sub i32 %301, 1
  %307 = mul i32 %301, %305
  %308 = urem i32 %307, 2
  %309 = icmp eq i32 %308, 0
  %310 = icmp slt i32 %302, 10
  %311 = and i1 %309, %310
  %312 = xor i1 %309, %310
  %313 = or i1 %311, %312
  %314 = or i1 %309, %310
  br i1 %313, label %originalBBpart285, label %originalBB83alteredBB

originalBBpart285:                                ; preds = %originalBB83.split.split
  ret i32 0

loopEnd:                                          ; preds = %originalBBpart281, %.split102.split, %originalBBpart277, %.split100.split, %.split99.split, %originalBBpart273, %.split97.split, %.split96.split, %.split95.split, %.split94.split, %.split93.split, %.split92.split, %.split91.split, %originalBBpart251, %originalBBpart247, %.split88.split, %originalBBpart2, %first.split.split, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split87.split
  %315 = call i32* @__errno_location() #7
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %316 = load i32, i32* %315, align 4, !tbaa !3
  %317 = icmp sgt i32 %316, 0
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  store i32 1774755945, i32* %switchVar, align 4
  store %struct.AVIOContext* undef, %struct.AVIOContext** %.reg2mem23, align 8
  store i1 %317, i1* %.reg2mem25, align 1
  br label %originalBB

originalBB45alteredBB:                            ; preds = %originalBB45.split.split, %.split89.split
  %.reload26alteredBB = load i1, i1* %.reg2mem25, align 1
  br label %originalBB45alteredBB.split

originalBB45alteredBB.split:                      ; preds = %originalBB45alteredBB
  %.reload24alteredBB = load %struct.AVIOContext*, %struct.AVIOContext** %.reg2mem23, align 8
  br label %originalBB45alteredBB.split.split

originalBB45alteredBB.split.split:                ; preds = %originalBB45alteredBB.split
  store %struct.AVIOContext* %.reload24alteredBB, %struct.AVIOContext** %.reload24.reg2mem, align 8
  %318 = select i1 %.reload26alteredBB, i32 18247021, i32 2006019101
  store i32 %318, i32* %switchVar, align 4
  br label %originalBB45

originalBB49alteredBB:                            ; preds = %originalBB49.split.split, %.split90.split
  %319 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8
  store %struct._IO_FILE* %319, %struct._IO_FILE** %.reg2mem3, align 8
  %.reload5alteredBB = load %struct._IO_FILE*, %struct._IO_FILE** %.reg2mem3, align 8
  br label %originalBB49alteredBB.split

originalBB49alteredBB.split:                      ; preds = %originalBB49alteredBB
  %320 = icmp eq %struct._IO_FILE* %.reload5alteredBB, null
  %321 = select i1 %320, i32 -1236210700, i32 1521911485
  br label %originalBB49alteredBB.split.split

originalBB49alteredBB.split.split:                ; preds = %originalBB49alteredBB.split
  store i32 %321, i32* %switchVar, align 4
  br label %originalBB49

originalBB53alteredBB:                            ; preds = %originalBB53.split.split, %.split98.split
  %.reload18alteredBB = load i64, i64* %.reg2mem17, align 8
  %322 = sub i64 0, 32
  %323 = add i64 %.reload18alteredBB, %322
  %_ = sub i64 %.reload18alteredBB, 32
  %gen = mul i64 %323, 32
  %324 = shl i64 %.reload18alteredBB, 32
  %325 = add i64 0, -6905735592836242954
  %326 = sub i64 %325, %324
  %327 = sub i64 %326, -6905735592836242954
  %_54 = sub i64 0, %324
  br label %originalBB53alteredBB.split

originalBB53alteredBB.split:                      ; preds = %originalBB53alteredBB
  %328 = sub i64 %327, -7080049161189011129
  %329 = add i64 %328, 32
  %330 = add i64 %329, -7080049161189011129
  %gen55 = add i64 %327, 32
  %_56 = shl i64 %324, 32
  %_57 = shl i64 %324, 32
  %_58 = shl i64 %324, 32
  %_59 = shl i64 %324, 32
  %331 = add i64 0, 1465139555350222455
  %332 = sub i64 %331, %324
  %333 = sub i64 %332, 1465139555350222455
  %_60 = sub i64 0, %324
  %334 = sub i64 %333, -4101067434705023703
  %335 = add i64 %334, 32
  %336 = add i64 %335, -4101067434705023703
  %gen61 = add i64 %333, 32
  %337 = sub i64 %324, -1454428454857046491
  %338 = sub i64 %337, 32
  %339 = add i64 %338, -1454428454857046491
  %_62 = sub i64 %324, 32
  %gen63 = mul i64 %339, 32
  %340 = sub i64 0, 32
  %341 = add i64 %324, %340
  %_64 = sub i64 %324, 32
  %gen65 = mul i64 %341, 32
  %342 = sub i64 0, -2652807446452129931
  %343 = sub i64 %342, %324
  %344 = add i64 %343, -2652807446452129931
  %_66 = sub i64 0, %324
  %345 = sub i64 0, 32
  %346 = sub i64 %344, %345
  %gen67 = add i64 %344, 32
  %347 = ashr exact i64 %324, 32
  %.reload16alteredBB = load %struct._IO_FILE**, %struct._IO_FILE*** %.reg2mem13, align 8
  %348 = load %struct._IO_FILE*, %struct._IO_FILE** %.reload16alteredBB, align 8, !tbaa !9
  %.reload8alteredBB = load i8*, i8** %.reg2mem6, align 8
  %349 = call i64 @fwrite(i8* noundef nonnull %.reload8alteredBB, i64 noundef 1, i64 noundef %347, %struct._IO_FILE* noundef %348) #8
  %.reload32.reload44alteredBB = load i64, i64* %.reload32.reg2mem, align 8
  %350 = sub i64 %.reload32.reload44alteredBB, 2175773727595715085
  %351 = sub i64 %350, %347
  %352 = add i64 %351, 2175773727595715085
  %_68 = sub i64 %.reload32.reload44alteredBB, %347
  %gen69 = mul i64 %352, %347
  %353 = sub i64 0, %.reload32.reload44alteredBB
  %354 = add i64 0, %353
  %_70 = sub i64 0, %.reload32.reload44alteredBB
  %355 = sub i64 %354, -8273202409135614417
  %356 = add i64 %355, %347
  %357 = add i64 %356, -8273202409135614417
  %gen71 = add i64 %354, %347
  %358 = sub i64 0, %347
  %359 = add i64 %.reload32.reload44alteredBB, %358
  br label %originalBB53alteredBB.split.split

originalBB53alteredBB.split.split:                ; preds = %originalBB53alteredBB.split
  %360 = sub nsw i64 %.reload32.reload44alteredBB, %347
  store i32 2071569121, i32* %switchVar, align 4
  store i64 %359, i64* %.reg2mem33, align 8
  br label %originalBB53

originalBB75alteredBB:                            ; preds = %originalBB75.split.split, %.split101.split
  %.reload15alteredBB = load %struct._IO_FILE**, %struct._IO_FILE*** %.reg2mem13, align 8
  %361 = load %struct._IO_FILE*, %struct._IO_FILE** %.reload15alteredBB, align 8, !tbaa !9
  %362 = call i32 @fclose(%struct._IO_FILE* noundef %361) #8
  %.reload28.reload40alteredBB = load %struct.AVIOContext*, %struct.AVIOContext** %.reload28.reg2mem, align 8
  %363 = bitcast %struct.AVIOContext* %.reload28.reload40alteredBB to i8*
  br label %originalBB75alteredBB.split

originalBB75alteredBB.split:                      ; preds = %originalBB75alteredBB
  call void @free(i8* noundef %363) #8
  store i32 548883470, i32* %switchVar, align 4
  br label %originalBB75alteredBB.split.split

originalBB75alteredBB.split.split:                ; preds = %originalBB75alteredBB.split
  br label %originalBB75

originalBB79alteredBB:                            ; preds = %originalBB79.split.split, %.split103.split
  %.reload24.reload38alteredBB = load %struct.AVIOContext*, %struct.AVIOContext** %.reload24.reg2mem, align 8
  %364 = getelementptr %struct.AVIOContext, %struct.AVIOContext* %.reload24.reload38alteredBB, i64 0, i32 0
  br label %originalBB79alteredBB.split

originalBB79alteredBB.split:                      ; preds = %originalBB79alteredBB
  %365 = load %struct._IO_FILE*, %struct._IO_FILE** %364, align 8, !tbaa !9
  %366 = call i32 @fclose(%struct._IO_FILE* noundef %365) #8
  %.reload24.reload37alteredBB = load %struct.AVIOContext*, %struct.AVIOContext** %.reload24.reg2mem, align 8
  br label %originalBB79alteredBB.split.split

originalBB79alteredBB.split.split:                ; preds = %originalBB79alteredBB.split
  %367 = bitcast %struct.AVIOContext* %.reload24.reload37alteredBB to i8*
  call void @free(i8* noundef %367) #8
  store i32 18247021, i32* %switchVar, align 4
  br label %originalBB79

originalBB83alteredBB:                            ; preds = %originalBB83.split.split, %.split104.split
  br label %originalBB83
}

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !8, i64 0}
!10 = !{!"AVIOContext", !8, i64 0}

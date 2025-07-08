; ModuleID = 'sunrast_encode_init_obf.bc'
source_filename = "sunrast_encode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.AVFrame = type { i32, i32 }
%struct.AVCodecContext = type { i32, i32, i32, i32, %struct.AVFrame*, i8* }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [12 x i8] c"LOG[%d]: %s\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Init successful. Encoded size = %d bytes\0A\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0
@x.3 = common global i32 0
@y.4 = common global i32 0

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.AVFrame* @av_frame_alloc() local_unnamed_addr #0 {
  %.reg2mem = alloca i8*, align 8
  %1 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #5
  store i8* %1, i8** %.reg2mem, align 8
  br label %.split

.split:                                           ; preds = %0
  %switchVar = alloca i32, align 4
  br label %.split.split

.split.split:                                     ; preds = %.split
  store i32 1547578311, i32* %switchVar, align 4
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %originalBBpart210
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 1547578311, label %first
    i32 444520421, label %43
    i32 1510298752, label %73
  ]

switchDefault:                                    ; preds = %loopEntry.split
  %2 = load i32, i32* @x, align 4
  %3 = load i32, i32* @y, align 4
  %4 = sub i32 0, 1
  %5 = add i32 %2, %4
  %6 = sub i32 %2, 1
  %7 = mul i32 %2, %5
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
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
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %22 = xor i1 %21, true
  %23 = or i1 false, %13
  %24 = and i1 %22, %23
  %25 = or i1 %20, %24
  %26 = or i1 %9, %10
  br i1 %25, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %switchDefault.split.split, %originalBBalteredBB
  %27 = load i32, i32* @x, align 4
  %28 = load i32, i32* @y, align 4
  %29 = sub i32 %27, -908885496
  %30 = sub i32 %29, 1
  %31 = add i32 %30, -908885496
  %32 = sub i32 %27, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %33 = mul i32 %27, %31
  %34 = urem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = icmp slt i32 %28, 10
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %37 = and i1 %35, %36
  %38 = xor i1 %35, %36
  %39 = or i1 %37, %38
  %40 = or i1 %35, %36
  br i1 %39, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  %41 = icmp eq i8* %.reload2, null
  br label %first.split

first.split:                                      ; preds = %first
  %42 = select i1 %41, i32 1510298752, i32 444520421
  store i32 %42, i32* %switchVar, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br label %loopEnd

43:                                               ; preds = %loopEntry.split
  %44 = load i32, i32* @x, align 4
  br label %.split12

.split12:                                         ; preds = %43
  %45 = load i32, i32* @y, align 4
  %46 = add i32 %44, -347826716
  %47 = sub i32 %46, 1
  %48 = sub i32 %47, -347826716
  %49 = sub i32 %44, 1
  %50 = mul i32 %44, %48
  %51 = urem i32 %50, 2
  %52 = icmp eq i32 %51, 0
  %53 = icmp slt i32 %45, 10
  %54 = and i1 %52, %53
  %55 = xor i1 %52, %53
  %56 = or i1 %54, %55
  br label %.split12.split

.split12.split:                                   ; preds = %.split12
  %57 = or i1 %52, %53
  br i1 %56, label %originalBB4, label %originalBB4alteredBB

originalBB4:                                      ; preds = %.split12.split, %originalBB4alteredBB.split.split
  %.reload = load i8*, i8** %.reg2mem, align 8
  %58 = bitcast i8* %.reload to i64*
  br label %originalBB4.split

originalBB4.split:                                ; preds = %originalBB4
  store i64 0, i64* %58, align 4
  store i32 1510298752, i32* %switchVar, align 4
  %59 = load i32, i32* @x, align 4
  %60 = load i32, i32* @y, align 4
  %61 = sub i32 %59, 1758963197
  %62 = sub i32 %61, 1
  %63 = add i32 %62, 1758963197
  %64 = sub i32 %59, 1
  br label %originalBB4.split.split

originalBB4.split.split:                          ; preds = %originalBB4.split
  %65 = mul i32 %59, %63
  %66 = urem i32 %65, 2
  %67 = icmp eq i32 %66, 0
  %68 = icmp slt i32 %60, 10
  %69 = and i1 %67, %68
  %70 = xor i1 %67, %68
  %71 = or i1 %69, %70
  %72 = or i1 %67, %68
  br i1 %71, label %originalBBpart26, label %originalBB4alteredBB

originalBBpart26:                                 ; preds = %originalBB4.split.split
  br label %loopEnd

73:                                               ; preds = %loopEntry.split
  %.reload3 = load i8*, i8** %.reg2mem, align 8
  br label %.split13

.split13:                                         ; preds = %73
  %74 = bitcast i8* %.reload3 to %struct.AVFrame*
  br label %.split13.split

.split13.split:                                   ; preds = %.split13
  ret %struct.AVFrame* %74

loopEnd:                                          ; preds = %originalBBpart26, %first.split.split, %originalBBpart2
  %75 = load i32, i32* @x, align 4
  %76 = load i32, i32* @y, align 4
  %77 = add i32 %75, -1439785622
  %78 = sub i32 %77, 1
  %79 = sub i32 %78, -1439785622
  %80 = sub i32 %75, 1
  %81 = mul i32 %75, %79
  %82 = urem i32 %81, 2
  %83 = icmp eq i32 %82, 0
  %84 = icmp slt i32 %76, 10
  %85 = xor i1 %83, true
  %86 = xor i1 %84, true
  %87 = xor i1 true, true
  br label %loopEnd.split

loopEnd.split:                                    ; preds = %loopEnd
  %88 = and i1 %85, true
  br label %loopEnd.split.split

loopEnd.split.split:                              ; preds = %loopEnd.split
  %89 = and i1 %83, %87
  %90 = and i1 %86, true
  %91 = and i1 %84, %87
  %92 = or i1 %88, %89
  %93 = or i1 %90, %91
  %94 = xor i1 %92, %93
  %95 = or i1 %85, %86
  %96 = xor i1 %95, true
  %97 = or i1 true, %87
  %98 = and i1 %96, %97
  %99 = or i1 %94, %98
  %100 = or i1 %83, %84
  br i1 %99, label %originalBB8, label %originalBB8alteredBB

originalBB8:                                      ; preds = %loopEnd.split.split, %originalBB8alteredBB
  %101 = load i32, i32* @x, align 4
  %102 = load i32, i32* @y, align 4
  %103 = sub i32 %101, -1865874194
  br label %originalBB8.split

originalBB8.split:                                ; preds = %originalBB8
  %104 = sub i32 %103, 1
  %105 = add i32 %104, -1865874194
  %106 = sub i32 %101, 1
  %107 = mul i32 %101, %105
  %108 = urem i32 %107, 2
  %109 = icmp eq i32 %108, 0
  %110 = icmp slt i32 %102, 10
  %111 = and i1 %109, %110
  %112 = xor i1 %109, %110
  br label %originalBB8.split.split

originalBB8.split.split:                          ; preds = %originalBB8.split
  %113 = or i1 %111, %112
  %114 = or i1 %109, %110
  br i1 %113, label %originalBBpart210, label %originalBB8alteredBB

originalBBpart210:                                ; preds = %originalBB8.split.split
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %switchDefault.split.split
  br label %originalBB

originalBB4alteredBB:                             ; preds = %originalBB4.split.split, %.split12.split
  %.reloadalteredBB = load i8*, i8** %.reg2mem, align 8
  br label %originalBB4alteredBB.split

originalBB4alteredBB.split:                       ; preds = %originalBB4alteredBB
  %115 = bitcast i8* %.reloadalteredBB to i64*
  store i64 0, i64* %115, align 4
  store i32 1510298752, i32* %switchVar, align 4
  br label %originalBB4alteredBB.split.split

originalBB4alteredBB.split.split:                 ; preds = %originalBB4alteredBB.split
  br label %originalBB4

originalBB8alteredBB:                             ; preds = %originalBB8.split.split, %loopEnd.split.split
  br label %originalBB8
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @av_log(%struct.AVCodecContext* nocapture readnone %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #2 {
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  br label %.split

.split:                                           ; preds = %3
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %1, i8* noundef %2) #6
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #4 {
  %1 = load i32, i32* @x.3, align 4
  %2 = load i32, i32* @y.4, align 4
  %3 = sub i32 %1, -1043300858
  %4 = sub i32 %3, 1
  br label %.split

.split:                                           ; preds = %0
  %5 = add i32 %4, -1043300858
  %6 = sub i32 %1, 1
  %7 = mul i32 %1, %5
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %2, 10
  %11 = and i1 %9, %10
  %12 = xor i1 %9, %10
  %13 = or i1 %11, %12
  br label %.split.split

.split.split:                                     ; preds = %.split
  %14 = or i1 %9, %10
  br i1 %13, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 noundef 307232)
  %16 = load i32, i32* @x.3, align 4
  %17 = load i32, i32* @y.4, align 4
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
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %29 = and i1 %23, %27
  %30 = and i1 %26, false
  %31 = and i1 %24, %27
  %32 = or i1 %28, %29
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %33 = or i1 %30, %31
  %34 = xor i1 %32, %33
  %35 = or i1 %25, %26
  %36 = xor i1 %35, true
  %37 = or i1 false, %27
  %38 = and i1 %36, %37
  %39 = or i1 %34, %38
  %40 = or i1 %23, %24
  br i1 %39, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 0

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %41 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 noundef 307232)
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}

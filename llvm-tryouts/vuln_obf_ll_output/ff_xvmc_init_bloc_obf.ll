; ModuleID = 'ff_xvmc_init_bloc_obf.bc'
source_filename = "ff_xvmc_init_bloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MpegEncContext = type { i16*, %struct.Picture }
%struct.Picture = type { [3 x i8*] }
%struct.xvmc_render_state = type { i32, i16*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"render\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ff_xvmc_init_bloc.c\00", align 1
@__PRETTY_FUNCTION__.ff_xvmc_init_block = private unnamed_addr constant [42 x i8] c"void ff_xvmc_init_block(MpegEncContext *)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0

; Function Attrs: nounwind uwtable
define dso_local void @ff_xvmc_init_block(%struct.MpegEncContext* nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @x, align 4
  %3 = load i32, i32* @y, align 4
  %4 = add i32 %2, 1882387772
  %5 = sub i32 %4, 1
  %6 = sub i32 %5, 1882387772
  br label %.split

.split:                                           ; preds = %1
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  %12 = xor i1 %10, true
  %13 = xor i1 %11, true
  %14 = xor i1 false, true
  %15 = and i1 %12, false
  br label %.split.split

.split.split:                                     ; preds = %.split
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

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %.reg2mem = alloca %struct.xvmc_render_state*, align 8
  %28 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %0, i64 0, i32 1, i32 0, i64 2
  %29 = bitcast i8** %28 to %struct.xvmc_render_state**
  %30 = load %struct.xvmc_render_state*, %struct.xvmc_render_state** %29, align 8, !tbaa !3
  store %struct.xvmc_render_state* %30, %struct.xvmc_render_state** %.reg2mem, align 8
  %switchVar = alloca i32, align 4
  store i32 -20021193, i32* %switchVar, align 4
  %31 = load i32, i32* @x, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %32 = load i32, i32* @y, align 4
  %33 = add i32 %31, -652296801
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %34 = sub i32 %33, 1
  %35 = sub i32 %34, -652296801
  %36 = sub i32 %31, 1
  %37 = mul i32 %31, %35
  %38 = urem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = icmp slt i32 %32, 10
  %41 = and i1 %39, %40
  %42 = xor i1 %39, %40
  %43 = or i1 %41, %42
  %44 = or i1 %39, %40
  br i1 %43, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %originalBBpart211
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 -20021193, label %first
    i32 1061434626, label %75
    i32 358449540, label %76
    i32 1312506493, label %81
    i32 -138095969, label %82
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %45 = load i32, i32* @x, align 4
  %46 = load i32, i32* @y, align 4
  %47 = sub i32 %45, -170106469
  %48 = sub i32 %47, 1
  %49 = add i32 %48, -170106469
  %50 = sub i32 %45, 1
  br label %first.split

first.split:                                      ; preds = %first
  %51 = mul i32 %45, %49
  %52 = urem i32 %51, 2
  %53 = icmp eq i32 %52, 0
  %54 = icmp slt i32 %46, 10
  %55 = and i1 %53, %54
  %56 = xor i1 %53, %54
  %57 = or i1 %55, %56
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  %58 = or i1 %53, %54
  br i1 %57, label %originalBB5, label %originalBB5alteredBB

originalBB5:                                      ; preds = %first.split.split, %originalBB5alteredBB.split.split
  %.reload = load %struct.xvmc_render_state*, %struct.xvmc_render_state** %.reg2mem, align 8
  %59 = icmp eq %struct.xvmc_render_state* %.reload, null
  %60 = select i1 %59, i32 1061434626, i32 358449540
  store i32 %60, i32* %switchVar, align 4
  %61 = load i32, i32* @x, align 4
  %62 = load i32, i32* @y, align 4
  %63 = sub i32 %61, 1811679037
  %64 = sub i32 %63, 1
  %65 = add i32 %64, 1811679037
  %66 = sub i32 %61, 1
  br label %originalBB5.split

originalBB5.split:                                ; preds = %originalBB5
  %67 = mul i32 %61, %65
  %68 = urem i32 %67, 2
  %69 = icmp eq i32 %68, 0
  %70 = icmp slt i32 %62, 10
  br label %originalBB5.split.split

originalBB5.split.split:                          ; preds = %originalBB5.split
  %71 = and i1 %69, %70
  %72 = xor i1 %69, %70
  %73 = or i1 %71, %72
  %74 = or i1 %69, %70
  br i1 %73, label %originalBBpart27, label %originalBB5alteredBB

originalBBpart27:                                 ; preds = %originalBB5.split.split
  br label %loopEnd

75:                                               ; preds = %loopEntry.split
  call void @__assert_fail(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.ff_xvmc_init_block, i64 0, i64 0)) #2
  br label %.split13

.split13:                                         ; preds = %75
  unreachable

76:                                               ; preds = %loopEntry.split
  %.reload4 = load %struct.xvmc_render_state*, %struct.xvmc_render_state** %.reg2mem, align 8
  %77 = getelementptr inbounds %struct.xvmc_render_state, %struct.xvmc_render_state* %.reload4, i64 0, i32 0
  %78 = load i32, i32* %77, align 8, !tbaa !7
  %79 = icmp eq i32 %78, 1447904077
  br label %.split14

.split14:                                         ; preds = %76
  %80 = select i1 %79, i32 -138095969, i32 1312506493
  store i32 %80, i32* %switchVar, align 4
  br label %.split14.split

.split14.split:                                   ; preds = %.split14
  br label %loopEnd

81:                                               ; preds = %loopEntry.split
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.ff_xvmc_init_block, i64 0, i64 0)) #2
  br label %.split15

.split15:                                         ; preds = %81
  unreachable

82:                                               ; preds = %loopEntry.split
  %.reload3 = load %struct.xvmc_render_state*, %struct.xvmc_render_state** %.reg2mem, align 8
  br label %.split16

.split16:                                         ; preds = %82
  %83 = getelementptr inbounds %struct.xvmc_render_state, %struct.xvmc_render_state* %.reload3, i64 0, i32 1
  %84 = load i16*, i16** %83, align 8, !tbaa !10
  %.reload2 = load %struct.xvmc_render_state*, %struct.xvmc_render_state** %.reg2mem, align 8
  %85 = getelementptr inbounds %struct.xvmc_render_state, %struct.xvmc_render_state* %.reload2, i64 0, i32 2
  %86 = load i32, i32* %85, align 8, !tbaa !11
  br label %.split16.split

.split16.split:                                   ; preds = %.split16
  %87 = shl nsw i32 %86, 6
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16, i16* %84, i64 %88
  %90 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %0, i64 0, i32 0
  store i16* %89, i16** %90, align 8, !tbaa !12
  ret void

loopEnd:                                          ; preds = %.split14.split, %originalBBpart27, %switchDefault
  %91 = load i32, i32* @x, align 4
  %92 = load i32, i32* @y, align 4
  %93 = add i32 %91, 842011908
  %94 = sub i32 %93, 1
  %95 = sub i32 %94, 842011908
  %96 = sub i32 %91, 1
  %97 = mul i32 %91, %95
  %98 = urem i32 %97, 2
  %99 = icmp eq i32 %98, 0
  %100 = icmp slt i32 %92, 10
  br label %loopEnd.split

loopEnd.split:                                    ; preds = %loopEnd
  %101 = xor i1 %99, true
  %102 = xor i1 %100, true
  %103 = xor i1 true, true
  %104 = and i1 %101, true
  %105 = and i1 %99, %103
  %106 = and i1 %102, true
  %107 = and i1 %100, %103
  %108 = or i1 %104, %105
  %109 = or i1 %106, %107
  %110 = xor i1 %108, %109
  %111 = or i1 %101, %102
  %112 = xor i1 %111, true
  %113 = or i1 true, %103
  %114 = and i1 %112, %113
  %115 = or i1 %110, %114
  %116 = or i1 %99, %100
  br label %loopEnd.split.split

loopEnd.split.split:                              ; preds = %loopEnd.split
  br i1 %115, label %originalBB9, label %originalBB9alteredBB

originalBB9:                                      ; preds = %loopEnd.split.split, %originalBB9alteredBB
  %117 = load i32, i32* @x, align 4
  br label %originalBB9.split

originalBB9.split:                                ; preds = %originalBB9
  %118 = load i32, i32* @y, align 4
  %119 = sub i32 %117, 1908864565
  %120 = sub i32 %119, 1
  %121 = add i32 %120, 1908864565
  %122 = sub i32 %117, 1
  %123 = mul i32 %117, %121
  br label %originalBB9.split.split

originalBB9.split.split:                          ; preds = %originalBB9.split
  %124 = urem i32 %123, 2
  %125 = icmp eq i32 %124, 0
  %126 = icmp slt i32 %118, 10
  %127 = and i1 %125, %126
  %128 = xor i1 %125, %126
  %129 = or i1 %127, %128
  %130 = or i1 %125, %126
  br i1 %129, label %originalBBpart211, label %originalBB9alteredBB

originalBBpart211:                                ; preds = %originalBB9.split.split
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %.reg2memalteredBB = alloca %struct.xvmc_render_state*, align 8
  %131 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %0, i64 0, i32 1, i32 0, i64 2
  %132 = bitcast i8** %131 to %struct.xvmc_render_state**
  %133 = load %struct.xvmc_render_state*, %struct.xvmc_render_state** %132, align 8, !tbaa !3
  store %struct.xvmc_render_state* %133, %struct.xvmc_render_state** %.reg2memalteredBB, align 8
  %switchVaralteredBB = alloca i32, align 4
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  store i32 -20021193, i32* %switchVaralteredBB, align 4
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB

originalBB5alteredBB:                             ; preds = %originalBB5.split.split, %first.split.split
  %.reloadalteredBB = load %struct.xvmc_render_state*, %struct.xvmc_render_state** %.reg2mem, align 8
  %134 = icmp eq %struct.xvmc_render_state* %.reloadalteredBB, null
  br label %originalBB5alteredBB.split

originalBB5alteredBB.split:                       ; preds = %originalBB5alteredBB
  %135 = select i1 %134, i32 1061434626, i32 358449540
  store i32 %135, i32* %switchVar, align 4
  br label %originalBB5alteredBB.split.split

originalBB5alteredBB.split.split:                 ; preds = %originalBB5alteredBB.split
  br label %originalBB5

originalBB9alteredBB:                             ; preds = %originalBB9.split.split, %loopEnd.split.split
  br label %originalBB9
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = load i32, i32* @x.1, align 4
  %2 = load i32, i32* @y.2, align 4
  %3 = sub i32 %1, -1548123809
  %4 = sub i32 %3, 1
  %5 = add i32 %4, -1548123809
  %6 = sub i32 %1, 1
  %7 = mul i32 %1, %5
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %2, 10
  %11 = xor i1 %9, true
  %12 = xor i1 %10, true
  %13 = xor i1 false, true
  %14 = and i1 %11, false
  %15 = and i1 %9, %13
  %16 = and i1 %12, false
  br label %.split

.split:                                           ; preds = %0
  %17 = and i1 %10, %13
  %18 = or i1 %14, %15
  %19 = or i1 %16, %17
  br label %.split.split

.split.split:                                     ; preds = %.split
  %20 = xor i1 %18, %19
  %21 = or i1 %11, %12
  %22 = xor i1 %21, true
  %23 = or i1 false, %13
  %24 = and i1 %22, %23
  %25 = or i1 %20, %24
  %26 = or i1 %9, %10
  br i1 %25, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %27 = load i32, i32* @x.1, align 4
  %28 = load i32, i32* @y.2, align 4
  %29 = sub i32 %27, 772199093
  %30 = sub i32 %29, 1
  %31 = add i32 %30, 772199093
  %32 = sub i32 %27, 1
  %33 = mul i32 %27, %31
  %34 = urem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = icmp slt i32 %28, 10
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
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %50 = and i1 %48, %49
  %51 = or i1 %46, %50
  %52 = or i1 %35, %36
  br i1 %51, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 0

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
!8 = !{!"xvmc_render_state", !9, i64 0, !4, i64 8, !9, i64 16}
!9 = !{!"int", !5, i64 0}
!10 = !{!8, !4, i64 8}
!11 = !{!8, !9, i64 16}
!12 = !{!13, !4, i64 0}
!13 = !{!"MpegEncContext", !4, i64 0, !14, i64 8}
!14 = !{!"Picture", !5, i64 0}

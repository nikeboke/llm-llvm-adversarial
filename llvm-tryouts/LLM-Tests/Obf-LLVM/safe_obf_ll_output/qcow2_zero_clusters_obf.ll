; ModuleID = 'qcow2_zero_clusters_obf.bc'
source_filename = "qcow2_zero_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BDRVQcow2State = type { i32, i8, i64 }
%struct.BlockDriverState = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"Result: %d\0A\00", align 1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @size_to_clusters(%struct.BDRVQcow2State* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  br label %.split

.split:                                           ; preds = %2
  %4 = getelementptr inbounds %struct.BDRVQcow2State, %struct.BDRVQcow2State* %0, i64 0, i32 2
  %5 = load i64, i64* %4, align 8, !tbaa !3
  %6 = udiv i64 %3, %5
  br label %.split.split

.split.split:                                     ; preds = %.split
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @zero_single_l2(%struct.BlockDriverState* nocapture readnone %0, i64 %1, i32 noundef returned %2) local_unnamed_addr #1 {
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @qcow2_process_discards(%struct.BlockDriverState* nocapture %0, i32 %1) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i32 @qcow2_zero_clusters(%struct.BlockDriverState* nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %.reload10.reg2mem = alloca i32, align 4
  %.reg2mem6 = alloca i8*, align 8
  br label %.split

.split:                                           ; preds = %3
  %.reg2mem4 = alloca i32, align 4
  %.reg2mem = alloca %struct.BDRVQcow2State*, align 8
  %4 = bitcast %struct.BlockDriverState* %0 to %struct.BDRVQcow2State**
  %5 = load %struct.BDRVQcow2State*, %struct.BDRVQcow2State** %4, align 8, !tbaa !10
  store %struct.BDRVQcow2State* %5, %struct.BDRVQcow2State** %.reg2mem, align 8
  br label %.split.split

.split.split:                                     ; preds = %.split
  %.reload3 = load %struct.BDRVQcow2State*, %struct.BDRVQcow2State** %.reg2mem, align 8
  %6 = getelementptr inbounds %struct.BDRVQcow2State, %struct.BDRVQcow2State* %.reload3, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !13
  store i32 %7, i32* %.reg2mem4, align 4
  %switchVar = alloca i32, align 4
  store i32 -383924427, i32* %switchVar, align 4
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem11 = alloca i32, align 4
  %.reg2mem13 = alloca i32, align 4
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 -383924427, label %first
    i32 414969441, label %49
    i32 -962363576, label %57
    i32 2145617797, label %110
    i32 1816973807, label %113
    i32 1677938725, label %114
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %8 = load i32, i32* @x.5, align 4
  %9 = load i32, i32* @y.6, align 4
  %10 = sub i32 %8, -1785462536
  %11 = sub i32 %10, 1
  %12 = add i32 %11, -1785462536
  %13 = sub i32 %8, 1
  %14 = mul i32 %8, %12
  %15 = urem i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = icmp slt i32 %9, 10
  %18 = xor i1 %16, true
  %19 = xor i1 %17, true
  br label %first.split

first.split:                                      ; preds = %first
  %20 = xor i1 false, true
  %21 = and i1 %18, false
  %22 = and i1 %16, %20
  %23 = and i1 %19, false
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  %24 = and i1 %17, %20
  %25 = or i1 %21, %22
  %26 = or i1 %23, %24
  %27 = xor i1 %25, %26
  %28 = or i1 %18, %19
  %29 = xor i1 %28, true
  %30 = or i1 false, %20
  %31 = and i1 %29, %30
  %32 = or i1 %27, %31
  %33 = or i1 %16, %17
  br i1 %32, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %first.split.split, %originalBBalteredBB.split.split
  %.reload5 = load i32, i32* %.reg2mem4, align 4
  %34 = icmp slt i32 %.reload5, 3
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %35 = select i1 %34, i32 1677938725, i32 414969441
  store i32 %35, i32* %switchVar, align 4
  store i32 -95, i32* %.reg2mem13, align 4
  %36 = load i32, i32* @x.5, align 4
  %37 = load i32, i32* @y.6, align 4
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %38 = sub i32 0, 1
  %39 = add i32 %36, %38
  %40 = sub i32 %36, 1
  %41 = mul i32 %36, %39
  %42 = urem i32 %41, 2
  %43 = icmp eq i32 %42, 0
  %44 = icmp slt i32 %37, 10
  %45 = and i1 %43, %44
  %46 = xor i1 %43, %44
  %47 = or i1 %45, %46
  %48 = or i1 %43, %44
  br i1 %47, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

49:                                               ; preds = %loopEntry.split
  %50 = shl i32 %2, 9
  %51 = sext i32 %50 to i64
  %.reload = load %struct.BDRVQcow2State*, %struct.BDRVQcow2State** %.reg2mem, align 8
  %52 = getelementptr inbounds %struct.BDRVQcow2State, %struct.BDRVQcow2State* %.reload, i64 0, i32 2
  %53 = load i64, i64* %52, align 8, !tbaa !3
  %54 = udiv i64 %51, %53
  %55 = trunc i64 %54 to i32
  %.reload2 = load %struct.BDRVQcow2State*, %struct.BDRVQcow2State** %.reg2mem, align 8
  br label %.split21

.split21:                                         ; preds = %49
  %56 = getelementptr inbounds %struct.BDRVQcow2State, %struct.BDRVQcow2State* %.reload2, i64 0, i32 1
  br label %.split21.split

.split21.split:                                   ; preds = %.split21
  store i8* %56, i8** %.reg2mem6, align 8
  %.reload8 = load i8*, i8** %.reg2mem6, align 8
  store i8 1, i8* %.reload8, align 4, !tbaa !14
  store i32 -962363576, i32* %switchVar, align 4
  store i32 %55, i32* %.reg2mem9, align 4
  br label %loopEnd

57:                                               ; preds = %loopEntry.split
  %58 = load i32, i32* @x.5, align 4
  %59 = load i32, i32* @y.6, align 4
  %60 = sub i32 0, 1
  %61 = add i32 %58, %60
  %62 = sub i32 %58, 1
  br label %.split22

.split22:                                         ; preds = %57
  %63 = mul i32 %58, %61
  %64 = urem i32 %63, 2
  %65 = icmp eq i32 %64, 0
  %66 = icmp slt i32 %59, 10
  %67 = xor i1 %65, true
  %68 = xor i1 %66, true
  %69 = xor i1 false, true
  %70 = and i1 %67, false
  %71 = and i1 %65, %69
  %72 = and i1 %68, false
  %73 = and i1 %66, %69
  %74 = or i1 %70, %71
  %75 = or i1 %72, %73
  br label %.split22.split

.split22.split:                                   ; preds = %.split22
  %76 = xor i1 %74, %75
  %77 = or i1 %67, %68
  %78 = xor i1 %77, true
  %79 = or i1 false, %69
  %80 = and i1 %78, %79
  %81 = or i1 %76, %80
  %82 = or i1 %65, %66
  br i1 %81, label %originalBB17, label %originalBB17alteredBB

originalBB17:                                     ; preds = %.split22.split, %originalBB17alteredBB.split.split
  %.reload10 = load i32, i32* %.reg2mem9, align 4
  store i32 %.reload10, i32* %.reload10.reg2mem, align 4
  %.reload10.reload15 = load i32, i32* %.reload10.reg2mem, align 4
  %83 = icmp eq i32 %.reload10.reload15, 0
  %84 = select i1 %83, i32 1816973807, i32 2145617797
  store i32 %84, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem11, align 4
  %85 = load i32, i32* @x.5, align 4
  %86 = load i32, i32* @y.6, align 4
  %87 = sub i32 0, 1
  %88 = add i32 %85, %87
  %89 = sub i32 %85, 1
  %90 = mul i32 %85, %88
  %91 = urem i32 %90, 2
  %92 = icmp eq i32 %91, 0
  %93 = icmp slt i32 %86, 10
  %94 = xor i1 %92, true
  br label %originalBB17.split

originalBB17.split:                               ; preds = %originalBB17
  %95 = xor i1 %93, true
  %96 = xor i1 true, true
  %97 = and i1 %94, true
  %98 = and i1 %92, %96
  %99 = and i1 %95, true
  %100 = and i1 %93, %96
  %101 = or i1 %97, %98
  %102 = or i1 %99, %100
  %103 = xor i1 %101, %102
  %104 = or i1 %94, %95
  %105 = xor i1 %104, true
  %106 = or i1 true, %96
  %107 = and i1 %105, %106
  %108 = or i1 %103, %107
  br label %originalBB17.split.split

originalBB17.split.split:                         ; preds = %originalBB17.split
  %109 = or i1 %92, %93
  br i1 %108, label %originalBBpart219, label %originalBB17alteredBB

originalBBpart219:                                ; preds = %originalBB17.split.split
  br label %loopEnd

110:                                              ; preds = %loopEntry.split
  %.reload10.reload16 = load i32, i32* %.reload10.reg2mem, align 4
  %111 = icmp slt i32 %.reload10.reload16, 0
  %112 = select i1 %111, i32 1816973807, i32 -962363576
  store i32 %112, i32* %switchVar, align 4
  br label %.split23

.split23:                                         ; preds = %110
  store i32 0, i32* %.reg2mem9, align 4
  %.reload10.reload = load i32, i32* %.reload10.reg2mem, align 4
  br label %.split23.split

.split23.split:                                   ; preds = %.split23
  store i32 %.reload10.reload, i32* %.reg2mem11, align 4
  br label %loopEnd

113:                                              ; preds = %loopEntry.split
  %.reload12 = load i32, i32* %.reg2mem11, align 4
  %.reload7 = load i8*, i8** %.reg2mem6, align 8
  br label %.split24

.split24:                                         ; preds = %113
  store i8 0, i8* %.reload7, align 4, !tbaa !14
  store i32 1677938725, i32* %switchVar, align 4
  store i32 %.reload12, i32* %.reg2mem13, align 4
  br label %.split24.split

.split24.split:                                   ; preds = %.split24
  br label %loopEnd

114:                                              ; preds = %loopEntry.split
  %.reload14 = load i32, i32* %.reg2mem13, align 4
  br label %.split25

.split25:                                         ; preds = %114
  ret i32 %.reload14

loopEnd:                                          ; preds = %.split24.split, %.split23.split, %originalBBpart219, %.split21.split, %originalBBpart2, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %first.split.split
  %.reload5alteredBB = load i32, i32* %.reg2mem4, align 4
  %115 = icmp slt i32 %.reload5alteredBB, 3
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %116 = select i1 %115, i32 1677938725, i32 414969441
  store i32 %116, i32* %switchVar, align 4
  store i32 -95, i32* %.reg2mem13, align 4
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB

originalBB17alteredBB:                            ; preds = %originalBB17.split.split, %.split22.split
  %.reload10alteredBB = load i32, i32* %.reg2mem9, align 4
  store i32 %.reload10alteredBB, i32* %.reload10.reg2mem, align 4
  %.reload10.reload15alteredBB = load i32, i32* %.reload10.reg2mem, align 4
  %117 = icmp eq i32 %.reload10.reload15alteredBB, 0
  br label %originalBB17alteredBB.split

originalBB17alteredBB.split:                      ; preds = %originalBB17alteredBB
  %118 = select i1 %117, i32 1816973807, i32 2145617797
  store i32 %118, i32* %switchVar, align 4
  br label %originalBB17alteredBB.split.split

originalBB17alteredBB.split.split:                ; preds = %originalBB17alteredBB.split
  store i32 0, i32* %.reg2mem11, align 4
  br label %originalBB17
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 0)
  br label %.split

.split:                                           ; preds = %0
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !9, i64 8}
!4 = !{!"BDRVQcow2State", !5, i64 0, !8, i64 4, !9, i64 8}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"_Bool", !6, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"BlockDriverState", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!4, !5, i64 0}
!14 = !{!4, !8, i64 4}

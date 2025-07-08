; ModuleID = 's390_pci_sclp_configure_obf.bc'
source_filename = "s390_pci_sclp_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S390PCIBusDevice = type { i8, i32 }
%struct.SCCB = type { %struct.SCCBHeader }
%struct.SCCBHeader = type { i16 }

@global_dev = dso_local global %struct.S390PCIBusDevice { i8 0, i32 -559038737 }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Response code: 0x%04X\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"sclp config no dev found\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0
@x.3 = common global i32 0
@y.4 = common global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct.S390PCIBusDevice* @s390_pci_find_dev_by_fid(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 1), align 4, !tbaa !3
  br label %.split

.split:                                           ; preds = %1
  %3 = icmp eq i32 %2, %0
  %4 = select i1 %3, %struct.S390PCIBusDevice* @global_dev, %struct.S390PCIBusDevice* null
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret %struct.S390PCIBusDevice* %4
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @s390_pci_sclp_configure(%struct.SCCB* nocapture noundef %0) local_unnamed_addr #1 {
  %.reg2mem = alloca i16, align 2
  br label %.split

.split:                                           ; preds = %1
  %2 = getelementptr inbounds %struct.SCCB, %struct.SCCB* %0, i64 0, i32 0, i32 0
  br label %.split.split

.split.split:                                     ; preds = %.split
  %3 = load i16, i16* %2, align 2, !tbaa !9
  store i16 %3, i16* %.reg2mem, align 2
  %switchVar = alloca i32, align 4
  store i32 -90231235, i32* %switchVar, align 4
  %.reg2mem2 = alloca i16, align 2
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 -90231235, label %first
    i32 -542265016, label %6
    i32 892874098, label %13
    i32 -1422401834, label %17
    i32 -2076051498, label %18
    i32 1149013870, label %59
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload = load i16, i16* %.reg2mem, align 2
  br label %first.split

first.split:                                      ; preds = %first
  %4 = icmp ult i16 %.reload, 16
  %5 = select i1 %4, i32 1149013870, i32 -542265016
  store i32 %5, i32* %switchVar, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  store i16 16, i16* %.reg2mem2, align 2
  br label %loopEnd

6:                                                ; preds = %loopEntry.split
  %7 = load i32, i32* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 1), align 4, !tbaa !3
  br label %.split4

.split4:                                          ; preds = %6
  %8 = getelementptr inbounds %struct.SCCB, %struct.SCCB* %0, i64 2
  %9 = bitcast %struct.SCCB* %8 to i32*
  br label %.split4.split

.split4.split:                                    ; preds = %.split4
  %10 = load i32, i32* %9, align 4, !tbaa !13
  %11 = icmp eq i32 %7, %10
  %12 = select i1 %11, i32 892874098, i32 -2076051498
  store i32 %12, i32* %switchVar, align 4
  br label %loopEnd

13:                                               ; preds = %loopEntry.split
  %14 = load i8, i8* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 0), align 4, !tbaa !15, !range !16
  %15 = icmp eq i8 %14, 0
  br label %.split5

.split5:                                          ; preds = %13
  %16 = select i1 %15, i32 -1422401834, i32 1149013870
  br label %.split5.split

.split5.split:                                    ; preds = %.split5
  store i32 %16, i32* %switchVar, align 4
  store i16 32, i16* %.reg2mem2, align 2
  br label %loopEnd

17:                                               ; preds = %loopEntry.split
  store i8 1, i8* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 0), align 4, !tbaa !15
  br label %.split6

.split6:                                          ; preds = %17
  store i32 1149013870, i32* %switchVar, align 4
  store i16 36, i16* %.reg2mem2, align 2
  br label %.split6.split

.split6.split:                                    ; preds = %.split6
  br label %loopEnd

18:                                               ; preds = %loopEntry.split
  %19 = load i32, i32* @x.1, align 4
  %20 = load i32, i32* @y.2, align 4
  %21 = sub i32 %19, 1346354755
  %22 = sub i32 %21, 1
  %23 = add i32 %22, 1346354755
  %24 = sub i32 %19, 1
  %25 = mul i32 %19, %23
  %26 = urem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = icmp slt i32 %20, 10
  br label %.split7

.split7:                                          ; preds = %18
  %29 = and i1 %27, %28
  %30 = xor i1 %27, %28
  %31 = or i1 %29, %30
  br label %.split7.split

.split7.split:                                    ; preds = %.split7
  %32 = or i1 %27, %28
  br i1 %31, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split7.split, %originalBBalteredBB.split.split
  %33 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0))
  store i32 1149013870, i32* %switchVar, align 4
  store i16 48, i16* %.reg2mem2, align 2
  %34 = load i32, i32* @x.1, align 4
  %35 = load i32, i32* @y.2, align 4
  %36 = sub i32 0, 1
  %37 = add i32 %34, %36
  %38 = sub i32 %34, 1
  %39 = mul i32 %34, %37
  %40 = urem i32 %39, 2
  %41 = icmp eq i32 %40, 0
  %42 = icmp slt i32 %35, 10
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %43 = xor i1 %41, true
  %44 = xor i1 %42, true
  %45 = xor i1 false, true
  %46 = and i1 %43, false
  %47 = and i1 %41, %45
  %48 = and i1 %44, false
  %49 = and i1 %42, %45
  %50 = or i1 %46, %47
  %51 = or i1 %48, %49
  %52 = xor i1 %50, %51
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %53 = or i1 %43, %44
  %54 = xor i1 %53, true
  %55 = or i1 false, %45
  %56 = and i1 %54, %55
  %57 = or i1 %52, %56
  %58 = or i1 %41, %42
  br i1 %57, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

59:                                               ; preds = %loopEntry.split
  %.reload3 = load i16, i16* %.reg2mem2, align 2
  br label %.split8

.split8:                                          ; preds = %59
  %60 = getelementptr inbounds %struct.SCCB, %struct.SCCB* %0, i64 4, i32 0, i32 0
  br label %.split8.split

.split8.split:                                    ; preds = %.split8
  store i16 %.reload3, i16* %60, align 4, !tbaa !17
  ret void

loopEnd:                                          ; preds = %originalBBpart2, %.split6.split, %.split5.split, %.split4.split, %first.split.split, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split7.split
  %61 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0))
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  store i32 1149013870, i32* %switchVar, align 4
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  store i16 48, i16* %.reg2mem2, align 2
  br label %originalBB
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = load i32, i32* @x.3, align 4
  %2 = load i32, i32* @y.4, align 4
  %3 = add i32 %1, 603527018
  %4 = sub i32 %3, 1
  %5 = sub i32 %4, 603527018
  %6 = sub i32 %1, 1
  %7 = mul i32 %1, %5
  br label %.split

.split:                                           ; preds = %0
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %2, 10
  %11 = xor i1 %9, true
  %12 = xor i1 %10, true
  %13 = xor i1 true, true
  %14 = and i1 %11, true
  %15 = and i1 %9, %13
  %16 = and i1 %12, true
  %17 = and i1 %10, %13
  %18 = or i1 %14, %15
  br label %.split.split

.split.split:                                     ; preds = %.split
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
  %.reg2mem = alloca i32, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 1), align 4, !tbaa !3
  store i32 %27, i32* %.reg2mem, align 4
  %switchVar = alloca i32, align 4
  store i32 -301762870, i32* %switchVar, align 4
  %.reg2mem2 = alloca i32, align 4
  %28 = load i32, i32* @x.3, align 4
  %29 = load i32, i32* @y.4, align 4
  %30 = add i32 %28, 488282392
  %31 = sub i32 %30, 1
  %32 = sub i32 %31, 488282392
  %33 = sub i32 %28, 1
  %34 = mul i32 %28, %32
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %35 = urem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  %37 = icmp slt i32 %29, 10
  %38 = xor i1 %36, true
  %39 = xor i1 %37, true
  %40 = xor i1 false, true
  %41 = and i1 %38, false
  %42 = and i1 %36, %40
  %43 = and i1 %39, false
  %44 = and i1 %37, %40
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %45 = or i1 %41, %42
  %46 = or i1 %43, %44
  %47 = xor i1 %45, %46
  %48 = or i1 %38, %39
  %49 = xor i1 %48, true
  %50 = or i1 false, %40
  %51 = and i1 %49, %50
  %52 = or i1 %47, %51
  %53 = or i1 %36, %37
  br i1 %52, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %loopEnd
  %54 = load i32, i32* @x.3, align 4
  %55 = load i32, i32* @y.4, align 4
  %56 = add i32 %54, -2131998910
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  %57 = sub i32 %56, 1
  %58 = sub i32 %57, -2131998910
  %59 = sub i32 %54, 1
  %60 = mul i32 %54, %58
  br label %loopEntry.split.split

loopEntry.split.split:                            ; preds = %loopEntry.split
  %61 = urem i32 %60, 2
  %62 = icmp eq i32 %61, 0
  %63 = icmp slt i32 %55, 10
  %64 = and i1 %62, %63
  %65 = xor i1 %62, %63
  %66 = or i1 %64, %65
  %67 = or i1 %62, %63
  br i1 %66, label %originalBB4, label %originalBB4alteredBB

originalBB4:                                      ; preds = %loopEntry.split.split, %originalBB4alteredBB.split
  %switchVar1 = load i32, i32* %switchVar, align 4
  %68 = load i32, i32* @x.3, align 4
  %69 = load i32, i32* @y.4, align 4
  %70 = sub i32 %68, -1505086150
  %71 = sub i32 %70, 1
  %72 = add i32 %71, -1505086150
  br label %originalBB4.split

originalBB4.split:                                ; preds = %originalBB4
  %73 = sub i32 %68, 1
  br label %originalBB4.split.split

originalBB4.split.split:                          ; preds = %originalBB4.split
  %74 = mul i32 %68, %72
  %75 = urem i32 %74, 2
  %76 = icmp eq i32 %75, 0
  %77 = icmp slt i32 %69, 10
  %78 = and i1 %76, %77
  %79 = xor i1 %76, %77
  %80 = or i1 %78, %79
  %81 = or i1 %76, %77
  br i1 %80, label %originalBBpart26, label %originalBB4alteredBB

originalBBpart26:                                 ; preds = %originalBB4.split.split
  switch i32 %switchVar1, label %switchDefault [
    i32 -301762870, label %first
    i32 -136019809, label %84
    i32 1014206485, label %126
    i32 360869028, label %127
    i32 851488712, label %157
  ]

switchDefault:                                    ; preds = %originalBBpart26
  br label %loopEnd

first:                                            ; preds = %originalBBpart26
  %.reload = load i32, i32* %.reg2mem, align 4
  %82 = icmp eq i32 %.reload, -559038737
  %83 = select i1 %82, i32 -136019809, i32 360869028
  br label %first.split

first.split:                                      ; preds = %first
  store i32 %83, i32* %switchVar, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br label %loopEnd

84:                                               ; preds = %originalBBpart26
  %85 = load i32, i32* @x.3, align 4
  %86 = load i32, i32* @y.4, align 4
  %87 = sub i32 0, 1
  %88 = add i32 %85, %87
  %89 = sub i32 %85, 1
  br label %.split16

.split16:                                         ; preds = %84
  %90 = mul i32 %85, %88
  %91 = urem i32 %90, 2
  %92 = icmp eq i32 %91, 0
  %93 = icmp slt i32 %86, 10
  br label %.split16.split

.split16.split:                                   ; preds = %.split16
  %94 = and i1 %92, %93
  %95 = xor i1 %92, %93
  %96 = or i1 %94, %95
  %97 = or i1 %92, %93
  br i1 %96, label %originalBB8, label %originalBB8alteredBB

originalBB8:                                      ; preds = %.split16.split, %originalBB8alteredBB.split.split
  %98 = load i8, i8* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 0), align 4, !tbaa !15, !range !16
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %99, i32 1014206485, i32 851488712
  store i32 %100, i32* %switchVar, align 4
  store i32 32, i32* %.reg2mem2, align 4
  %101 = load i32, i32* @x.3, align 4
  %102 = load i32, i32* @y.4, align 4
  br label %originalBB8.split

originalBB8.split:                                ; preds = %originalBB8
  %103 = sub i32 0, 1
  %104 = add i32 %101, %103
  %105 = sub i32 %101, 1
  %106 = mul i32 %101, %104
  %107 = urem i32 %106, 2
  %108 = icmp eq i32 %107, 0
  %109 = icmp slt i32 %102, 10
  %110 = xor i1 %108, true
  %111 = xor i1 %109, true
  %112 = xor i1 true, true
  %113 = and i1 %110, true
  %114 = and i1 %108, %112
  %115 = and i1 %111, true
  %116 = and i1 %109, %112
  %117 = or i1 %113, %114
  %118 = or i1 %115, %116
  %119 = xor i1 %117, %118
  br label %originalBB8.split.split

originalBB8.split.split:                          ; preds = %originalBB8.split
  %120 = or i1 %110, %111
  %121 = xor i1 %120, true
  %122 = or i1 true, %112
  %123 = and i1 %121, %122
  %124 = or i1 %119, %123
  %125 = or i1 %108, %109
  br i1 %124, label %originalBBpart210, label %originalBB8alteredBB

originalBBpart210:                                ; preds = %originalBB8.split.split
  br label %loopEnd

126:                                              ; preds = %originalBBpart26
  store i8 1, i8* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 0), align 4, !tbaa !15
  store i32 851488712, i32* %switchVar, align 4
  br label %.split17

.split17:                                         ; preds = %126
  store i32 36, i32* %.reg2mem2, align 4
  br label %.split17.split

.split17.split:                                   ; preds = %.split17
  br label %loopEnd

127:                                              ; preds = %originalBBpart26
  %128 = load i32, i32* @x.3, align 4
  %129 = load i32, i32* @y.4, align 4
  %130 = sub i32 %128, 1013114642
  %131 = sub i32 %130, 1
  %132 = add i32 %131, 1013114642
  %133 = sub i32 %128, 1
  %134 = mul i32 %128, %132
  %135 = urem i32 %134, 2
  %136 = icmp eq i32 %135, 0
  %137 = icmp slt i32 %129, 10
  %138 = and i1 %136, %137
  br label %.split18

.split18:                                         ; preds = %127
  %139 = xor i1 %136, %137
  %140 = or i1 %138, %139
  br label %.split18.split

.split18.split:                                   ; preds = %.split18
  %141 = or i1 %136, %137
  br i1 %140, label %originalBB12, label %originalBB12alteredBB

originalBB12:                                     ; preds = %.split18.split, %originalBB12alteredBB.split.split
  %142 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0)) #4
  store i32 851488712, i32* %switchVar, align 4
  store i32 48, i32* %.reg2mem2, align 4
  %143 = load i32, i32* @x.3, align 4
  %144 = load i32, i32* @y.4, align 4
  %145 = add i32 %143, 641616402
  %146 = sub i32 %145, 1
  %147 = sub i32 %146, 641616402
  %148 = sub i32 %143, 1
  %149 = mul i32 %143, %147
  %150 = urem i32 %149, 2
  br label %originalBB12.split

originalBB12.split:                               ; preds = %originalBB12
  %151 = icmp eq i32 %150, 0
  %152 = icmp slt i32 %144, 10
  %153 = and i1 %151, %152
  %154 = xor i1 %151, %152
  %155 = or i1 %153, %154
  br label %originalBB12.split.split

originalBB12.split.split:                         ; preds = %originalBB12.split
  %156 = or i1 %151, %152
  br i1 %155, label %originalBBpart214, label %originalBB12alteredBB

originalBBpart214:                                ; preds = %originalBB12.split.split
  br label %loopEnd

157:                                              ; preds = %originalBBpart26
  %.reload3 = load i32, i32* %.reg2mem2, align 4
  br label %.split19

.split19:                                         ; preds = %157
  %158 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.reload3)
  br label %.split19.split

.split19.split:                                   ; preds = %.split19
  ret i32 0

loopEnd:                                          ; preds = %originalBBpart214, %.split17.split, %originalBBpart210, %first.split.split, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %.reg2memalteredBB = alloca i32, align 4
  %159 = load i32, i32* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 1), align 4, !tbaa !3
  store i32 %159, i32* %.reg2memalteredBB, align 4
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %switchVaralteredBB = alloca i32, align 4
  store i32 -301762870, i32* %switchVaralteredBB, align 4
  %.reg2mem2alteredBB = alloca i32, align 4
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB

originalBB4alteredBB:                             ; preds = %originalBB4.split.split, %loopEntry.split.split
  %switchVar1alteredBB = load i32, i32* %switchVar, align 4
  br label %originalBB4alteredBB.split

originalBB4alteredBB.split:                       ; preds = %originalBB4alteredBB
  br label %originalBB4

originalBB8alteredBB:                             ; preds = %originalBB8.split.split, %.split16.split
  %160 = load i8, i8* getelementptr inbounds (%struct.S390PCIBusDevice, %struct.S390PCIBusDevice* @global_dev, i64 0, i32 0), align 4, !tbaa !15, !range !16
  br label %originalBB8alteredBB.split

originalBB8alteredBB.split:                       ; preds = %originalBB8alteredBB
  %161 = icmp eq i8 %160, 0
  %162 = select i1 %161, i32 1014206485, i32 851488712
  store i32 %162, i32* %switchVar, align 4
  br label %originalBB8alteredBB.split.split

originalBB8alteredBB.split.split:                 ; preds = %originalBB8alteredBB.split
  store i32 32, i32* %.reg2mem2, align 4
  br label %originalBB8

originalBB12alteredBB:                            ; preds = %originalBB12.split.split, %.split18.split
  %163 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0)) #4
  br label %originalBB12alteredBB.split

originalBB12alteredBB.split:                      ; preds = %originalBB12alteredBB
  store i32 851488712, i32* %switchVar, align 4
  store i32 48, i32* %.reg2mem2, align 4
  br label %originalBB12alteredBB.split.split

originalBB12alteredBB.split.split:                ; preds = %originalBB12alteredBB.split
  br label %originalBB12
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !8, i64 4}
!4 = !{!"", !5, i64 0, !8, i64 4}
!5 = !{!"_Bool", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!10, !12, i64 0}
!10 = !{!"", !11, i64 0}
!11 = !{!"", !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!14, !8, i64 4}
!14 = !{!"", !11, i64 0, !8, i64 4, !11, i64 8}
!15 = !{!4, !5, i64 0}
!16 = !{i8 0, i8 2}
!17 = !{!14, !12, i64 8}

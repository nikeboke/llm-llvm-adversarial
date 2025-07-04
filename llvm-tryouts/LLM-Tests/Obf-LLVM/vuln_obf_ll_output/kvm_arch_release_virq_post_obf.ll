; ModuleID = 'kvm_arch_release_virq_post_obf.bc'
source_filename = "kvm_arch_release_virq_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_route_head = type { %struct.MSIRouteEntry* }
%struct.MSIRouteEntry = type { i32, %struct.anon }
%struct.anon = type { %struct.MSIRouteEntry*, %struct.MSIRouteEntry** }

@msi_route_list = dso_local global %struct.msi_route_head zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"Removed VIRQ %d\0A\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0
@x.3 = common global i32 0
@y.4 = common global i32 0

; Function Attrs: nofree nounwind uwtable
define dso_local void @trace_kvm_x86_remove_msi_route(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @x, align 4
  %3 = load i32, i32* @y, align 4
  %4 = sub i32 %2, 1840838217
  %5 = sub i32 %4, 1
  %6 = add i32 %5, 1840838217
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br label %.split

.split:                                           ; preds = %1
  %11 = icmp slt i32 %3, 10
  %12 = xor i1 %10, true
  br label %.split.split

.split.split:                                     ; preds = %.split
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
  %24 = or i1 false, %14
  %25 = and i1 %23, %24
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split
  %28 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef %0)
  %29 = load i32, i32* @x, align 4
  %30 = load i32, i32* @y, align 4
  %31 = add i32 %29, -1387024102
  %32 = sub i32 %31, 1
  %33 = sub i32 %32, -1387024102
  %34 = sub i32 %29, 1
  %35 = mul i32 %29, %33
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %36 = urem i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = icmp slt i32 %30, 10
  %39 = and i1 %37, %38
  %40 = xor i1 %37, %38
  %41 = or i1 %39, %40
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %42 = or i1 %37, %38
  br i1 %41, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %43 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef %0)
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @kvm_arch_release_virq_post(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @x.1, align 4
  %3 = load i32, i32* @y.2, align 4
  %4 = add i32 %2, -1600353146
  %5 = sub i32 %4, 1
  %6 = sub i32 %5, -1600353146
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  %12 = xor i1 %10, true
  %13 = xor i1 %11, true
  %14 = xor i1 true, true
  %15 = and i1 %12, true
  %16 = and i1 %10, %14
  %17 = and i1 %13, true
  br label %.split

.split:                                           ; preds = %1
  %18 = and i1 %11, %14
  %19 = or i1 %15, %16
  %20 = or i1 %17, %18
  %21 = xor i1 %19, %20
  %22 = or i1 %12, %13
  %23 = xor i1 %22, true
  br label %.split.split

.split.split:                                     ; preds = %.split
  %24 = or i1 true, %14
  %25 = and i1 %23, %24
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %.reg2mem9 = alloca %struct.MSIRouteEntry*, align 8
  %.reg2mem6 = alloca %struct.MSIRouteEntry**, align 8
  %.reg2mem = alloca %struct.MSIRouteEntry*, align 8
  %switchVar = alloca i32, align 4
  store i32 -1966873760, i32* %switchVar, align 4
  %.reg2mem13 = alloca %struct.MSIRouteEntry**, align 8
  %28 = load i32, i32* @x.1, align 4
  %29 = load i32, i32* @y.2, align 4
  %30 = sub i32 0, 1
  %31 = add i32 %28, %30
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %32 = sub i32 %28, 1
  %33 = mul i32 %28, %31
  %34 = urem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = icmp slt i32 %29, 10
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %37 = and i1 %35, %36
  %38 = xor i1 %35, %36
  %39 = or i1 %37, %38
  %40 = or i1 %35, %36
  br i1 %39, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %loopEnd
  %41 = load i32, i32* @x.1, align 4
  %42 = load i32, i32* @y.2, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  %43 = sub i32 %41, -765697728
  %44 = sub i32 %43, 1
  %45 = add i32 %44, -765697728
  %46 = sub i32 %41, 1
  %47 = mul i32 %41, %45
  %48 = urem i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br label %loopEntry.split.split

loopEntry.split.split:                            ; preds = %loopEntry.split
  %50 = icmp slt i32 %42, 10
  %51 = xor i1 %49, true
  %52 = xor i1 %50, true
  %53 = xor i1 false, true
  %54 = and i1 %51, false
  %55 = and i1 %49, %53
  %56 = and i1 %52, false
  %57 = and i1 %50, %53
  %58 = or i1 %54, %55
  %59 = or i1 %56, %57
  %60 = xor i1 %58, %59
  %61 = or i1 %51, %52
  %62 = xor i1 %61, true
  %63 = or i1 false, %53
  %64 = and i1 %62, %63
  %65 = or i1 %60, %64
  %66 = or i1 %49, %50
  br i1 %65, label %originalBB15, label %originalBB15alteredBB

originalBB15:                                     ; preds = %loopEntry.split.split, %originalBB15alteredBB.split
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %originalBB15.split

originalBB15.split:                               ; preds = %originalBB15
  %67 = load i32, i32* @x.1, align 4
  br label %originalBB15.split.split

originalBB15.split.split:                         ; preds = %originalBB15.split
  %68 = load i32, i32* @y.2, align 4
  %69 = sub i32 %67, 1089147302
  %70 = sub i32 %69, 1
  %71 = add i32 %70, 1089147302
  %72 = sub i32 %67, 1
  %73 = mul i32 %67, %71
  %74 = urem i32 %73, 2
  %75 = icmp eq i32 %74, 0
  %76 = icmp slt i32 %68, 10
  %77 = and i1 %75, %76
  %78 = xor i1 %75, %76
  %79 = or i1 %77, %78
  %80 = or i1 %75, %76
  br i1 %79, label %originalBBpart217, label %originalBB15alteredBB

originalBBpart217:                                ; preds = %originalBB15.split.split
  switch i32 %switchVar1, label %switchDefault [
    i32 -1966873760, label %first
    i32 913037619, label %137
    i32 1929107733, label %141
    i32 -1869396783, label %147
    i32 -1240007670, label %152
    i32 -584154698, label %156
    i32 -1694998712, label %159
  ]

switchDefault:                                    ; preds = %originalBBpart217
  %81 = load i32, i32* @x.1, align 4
  %82 = load i32, i32* @y.2, align 4
  %83 = sub i32 %81, -397712329
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %84 = sub i32 %83, 1
  %85 = add i32 %84, -397712329
  %86 = sub i32 %81, 1
  %87 = mul i32 %81, %85
  %88 = urem i32 %87, 2
  %89 = icmp eq i32 %88, 0
  %90 = icmp slt i32 %82, 10
  %91 = and i1 %89, %90
  %92 = xor i1 %89, %90
  %93 = or i1 %91, %92
  %94 = or i1 %89, %90
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  br i1 %93, label %originalBB19, label %originalBB19alteredBB

originalBB19:                                     ; preds = %switchDefault.split.split, %originalBB19alteredBB
  %95 = load i32, i32* @x.1, align 4
  %96 = load i32, i32* @y.2, align 4
  %97 = add i32 %95, -355651532
  br label %originalBB19.split

originalBB19.split:                               ; preds = %originalBB19
  %98 = sub i32 %97, 1
  %99 = sub i32 %98, -355651532
  %100 = sub i32 %95, 1
  %101 = mul i32 %95, %99
  %102 = urem i32 %101, 2
  %103 = icmp eq i32 %102, 0
  %104 = icmp slt i32 %96, 10
  %105 = and i1 %103, %104
  br label %originalBB19.split.split

originalBB19.split.split:                         ; preds = %originalBB19.split
  %106 = xor i1 %103, %104
  %107 = or i1 %105, %106
  %108 = or i1 %103, %104
  br i1 %107, label %originalBBpart221, label %originalBB19alteredBB

originalBBpart221:                                ; preds = %originalBB19.split.split
  br label %loopEnd

first:                                            ; preds = %originalBBpart217
  %109 = load i32, i32* @x.1, align 4
  %110 = load i32, i32* @y.2, align 4
  %111 = add i32 %109, -72297021
  %112 = sub i32 %111, 1
  %113 = sub i32 %112, -72297021
  %114 = sub i32 %109, 1
  br label %first.split

first.split:                                      ; preds = %first
  %115 = mul i32 %109, %113
  %116 = urem i32 %115, 2
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  %117 = icmp eq i32 %116, 0
  %118 = icmp slt i32 %110, 10
  %119 = and i1 %117, %118
  %120 = xor i1 %117, %118
  %121 = or i1 %119, %120
  %122 = or i1 %117, %118
  br i1 %121, label %originalBB23, label %originalBB23alteredBB

originalBB23:                                     ; preds = %first.split.split, %originalBB23alteredBB.split.split
  store i32 913037619, i32* %switchVar, align 4
  store %struct.MSIRouteEntry** getelementptr inbounds (%struct.msi_route_head, %struct.msi_route_head* @msi_route_list, i64 0, i32 0), %struct.MSIRouteEntry*** %.reg2mem13, align 8
  %123 = load i32, i32* @x.1, align 4
  %124 = load i32, i32* @y.2, align 4
  br label %originalBB23.split

originalBB23.split:                               ; preds = %originalBB23
  %125 = sub i32 %123, -327084598
  %126 = sub i32 %125, 1
  %127 = add i32 %126, -327084598
  %128 = sub i32 %123, 1
  %129 = mul i32 %123, %127
  %130 = urem i32 %129, 2
  %131 = icmp eq i32 %130, 0
  %132 = icmp slt i32 %124, 10
  %133 = and i1 %131, %132
  %134 = xor i1 %131, %132
  br label %originalBB23.split.split

originalBB23.split.split:                         ; preds = %originalBB23.split
  %135 = or i1 %133, %134
  %136 = or i1 %131, %132
  br i1 %135, label %originalBBpart225, label %originalBB23alteredBB

originalBBpart225:                                ; preds = %originalBB23.split.split
  br label %loopEnd

137:                                              ; preds = %originalBBpart217
  %.reload14 = load %struct.MSIRouteEntry**, %struct.MSIRouteEntry*** %.reg2mem13, align 8
  %138 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reload14, align 8, !tbaa !3
  store %struct.MSIRouteEntry* %138, %struct.MSIRouteEntry** %.reg2mem, align 8
  br label %.split27

.split27:                                         ; preds = %137
  %.reload4 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem, align 8
  %139 = icmp eq %struct.MSIRouteEntry* %.reload4, null
  br label %.split27.split

.split27.split:                                   ; preds = %.split27
  %140 = select i1 %139, i32 -1694998712, i32 1929107733
  store i32 %140, i32* %switchVar, align 4
  br label %loopEnd

141:                                              ; preds = %originalBBpart217
  %.reload3 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem, align 8
  br label %.split28

.split28:                                         ; preds = %141
  %142 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %.reload3, i64 0, i32 1, i32 0
  store %struct.MSIRouteEntry** %142, %struct.MSIRouteEntry*** %.reg2mem6, align 8
  %.reload5 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem, align 8
  %143 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %.reload5, i64 0, i32 0
  %144 = load i32, i32* %143, align 8, !tbaa !7
  %145 = icmp eq i32 %144, %0
  br label %.split28.split

.split28.split:                                   ; preds = %.split28
  %146 = select i1 %145, i32 -1869396783, i32 913037619
  store i32 %146, i32* %switchVar, align 4
  %.reload8 = load %struct.MSIRouteEntry**, %struct.MSIRouteEntry*** %.reg2mem6, align 8
  store %struct.MSIRouteEntry** %.reload8, %struct.MSIRouteEntry*** %.reg2mem13, align 8
  br label %loopEnd

147:                                              ; preds = %originalBBpart217
  %148 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef %0) #3
  %.reload7 = load %struct.MSIRouteEntry**, %struct.MSIRouteEntry*** %.reg2mem6, align 8
  %149 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reload7, align 8, !tbaa !11
  store %struct.MSIRouteEntry* %149, %struct.MSIRouteEntry** %.reg2mem9, align 8
  %.reload12 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem9, align 8
  br label %.split29

.split29:                                         ; preds = %147
  %150 = icmp eq %struct.MSIRouteEntry* %.reload12, null
  br label %.split29.split

.split29.split:                                   ; preds = %.split29
  %151 = select i1 %150, i32 -584154698, i32 -1240007670
  store i32 %151, i32* %switchVar, align 4
  br label %loopEnd

152:                                              ; preds = %originalBBpart217
  %.reload2 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem, align 8
  br label %.split30

.split30:                                         ; preds = %152
  %153 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %.reload2, i64 0, i32 1, i32 1
  br label %.split30.split

.split30.split:                                   ; preds = %.split30
  %154 = load %struct.MSIRouteEntry**, %struct.MSIRouteEntry*** %153, align 8, !tbaa !12
  %.reload11 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem9, align 8
  %155 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %.reload11, i64 0, i32 1, i32 1
  store %struct.MSIRouteEntry** %154, %struct.MSIRouteEntry*** %155, align 8, !tbaa !12
  store i32 -584154698, i32* %switchVar, align 4
  br label %loopEnd

156:                                              ; preds = %originalBBpart217
  %.reload = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem, align 8
  br label %.split31

.split31:                                         ; preds = %156
  %157 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %.reload, i64 0, i32 1, i32 1
  %158 = load %struct.MSIRouteEntry**, %struct.MSIRouteEntry*** %157, align 8, !tbaa !12
  %.reload10 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem9, align 8
  store %struct.MSIRouteEntry* %.reload10, %struct.MSIRouteEntry** %158, align 8, !tbaa !3
  store i32 -1694998712, i32* %switchVar, align 4
  br label %.split31.split

.split31.split:                                   ; preds = %.split31
  br label %loopEnd

159:                                              ; preds = %originalBBpart217
  ret i32 0

loopEnd:                                          ; preds = %.split31.split, %.split30.split, %.split29.split, %.split28.split, %.split27.split, %originalBBpart225, %originalBBpart221
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %.reg2mem9alteredBB = alloca %struct.MSIRouteEntry*, align 8
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %.reg2mem6alteredBB = alloca %struct.MSIRouteEntry**, align 8
  %.reg2memalteredBB = alloca %struct.MSIRouteEntry*, align 8
  %switchVaralteredBB = alloca i32, align 4
  store i32 -1966873760, i32* %switchVaralteredBB, align 4
  %.reg2mem13alteredBB = alloca %struct.MSIRouteEntry**, align 8
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB

originalBB15alteredBB:                            ; preds = %originalBB15.split.split, %loopEntry.split.split
  %switchVar1alteredBB = load i32, i32* %switchVar, align 4
  br label %originalBB15alteredBB.split

originalBB15alteredBB.split:                      ; preds = %originalBB15alteredBB
  br label %originalBB15

originalBB19alteredBB:                            ; preds = %originalBB19.split.split, %switchDefault.split.split
  br label %originalBB19

originalBB23alteredBB:                            ; preds = %originalBB23.split.split, %first.split.split
  store i32 913037619, i32* %switchVar, align 4
  br label %originalBB23alteredBB.split

originalBB23alteredBB.split:                      ; preds = %originalBB23alteredBB
  store %struct.MSIRouteEntry** getelementptr inbounds (%struct.msi_route_head, %struct.msi_route_head* @msi_route_list, i64 0, i32 0), %struct.MSIRouteEntry*** %.reg2mem13, align 8
  br label %originalBB23alteredBB.split.split

originalBB23alteredBB.split.split:                ; preds = %originalBB23alteredBB.split
  br label %originalBB23
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = load i32, i32* @x.3, align 4
  br label %.split

.split:                                           ; preds = %0
  %2 = load i32, i32* @y.4, align 4
  %3 = add i32 %1, 1908930197
  %4 = sub i32 %3, 1
  %5 = sub i32 %4, 1908930197
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
  %17 = and i1 %10, %13
  %18 = or i1 %14, %15
  %19 = or i1 %16, %17
  %20 = xor i1 %18, %19
  %21 = or i1 %11, %12
  %22 = xor i1 %21, true
  %23 = or i1 false, %13
  br label %.split.split

.split.split:                                     ; preds = %.split
  %24 = and i1 %22, %23
  %25 = or i1 %20, %24
  %26 = or i1 %9, %10
  br i1 %25, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %.reg2mem12 = alloca %struct.MSIRouteEntry*, align 8
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %.reg2mem9 = alloca %struct.MSIRouteEntry**, align 8
  %.reg2mem3 = alloca %struct.MSIRouteEntry*, align 8
  %.reg2mem = alloca i8*, align 8
  %27 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #3
  store i8* %27, i8** %.reg2mem, align 8
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  %28 = bitcast i8* %.reload2 to %struct.MSIRouteEntry*
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %29 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %28, i64 0, i32 0
  store i32 5, i32* %29, align 8, !tbaa !7
  %30 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %28, i64 0, i32 1, i32 0
  store %struct.MSIRouteEntry* null, %struct.MSIRouteEntry** %30, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %28, i64 0, i32 1, i32 1
  store %struct.MSIRouteEntry** getelementptr inbounds (%struct.msi_route_head, %struct.msi_route_head* @msi_route_list, i64 0, i32 0), %struct.MSIRouteEntry*** %31, align 8, !tbaa !12
  %switchVar = alloca i32, align 4
  store i32 -1609000225, i32* %switchVar, align 4
  %.reg2mem16 = alloca %struct.MSIRouteEntry**, align 8
  %32 = load i32, i32* @x.3, align 4
  %33 = load i32, i32* @y.4, align 4
  %34 = sub i32 %32, -591316859
  %35 = sub i32 %34, 1
  %36 = add i32 %35, -591316859
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
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %loopEnd
  %58 = load i32, i32* @x.3, align 4
  %59 = load i32, i32* @y.4, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  %60 = add i32 %58, 1860533543
  %61 = sub i32 %60, 1
  %62 = sub i32 %61, 1860533543
  %63 = sub i32 %58, 1
  %64 = mul i32 %58, %62
  %65 = urem i32 %64, 2
  %66 = icmp eq i32 %65, 0
  %67 = icmp slt i32 %59, 10
  %68 = and i1 %66, %67
  %69 = xor i1 %66, %67
  %70 = or i1 %68, %69
  br label %loopEntry.split.split

loopEntry.split.split:                            ; preds = %loopEntry.split
  %71 = or i1 %66, %67
  br i1 %70, label %originalBB18, label %originalBB18alteredBB

originalBB18:                                     ; preds = %loopEntry.split.split, %originalBB18alteredBB.split
  %switchVar1 = load i32, i32* %switchVar, align 4
  %72 = load i32, i32* @x.3, align 4
  %73 = load i32, i32* @y.4, align 4
  %74 = sub i32 %72, 544834660
  %75 = sub i32 %74, 1
  %76 = add i32 %75, 544834660
  br label %originalBB18.split

originalBB18.split:                               ; preds = %originalBB18
  %77 = sub i32 %72, 1
  %78 = mul i32 %72, %76
  %79 = urem i32 %78, 2
  %80 = icmp eq i32 %79, 0
  %81 = icmp slt i32 %73, 10
  %82 = and i1 %80, %81
  %83 = xor i1 %80, %81
  br label %originalBB18.split.split

originalBB18.split.split:                         ; preds = %originalBB18.split
  %84 = or i1 %82, %83
  %85 = or i1 %80, %81
  br i1 %84, label %originalBBpart220, label %originalBB18alteredBB

originalBBpart220:                                ; preds = %originalBB18.split.split
  switch i32 %switchVar1, label %switchDefault [
    i32 -1609000225, label %first
    i32 -1034877580, label %86
    i32 -960363651, label %90
    i32 279502264, label %96
    i32 -66070492, label %101
    i32 2015857657, label %105
    i32 1052713605, label %108
  ]

switchDefault:                                    ; preds = %originalBBpart220
  br label %loopEnd

first:                                            ; preds = %originalBBpart220
  %.reload = load i8*, i8** %.reg2mem, align 8
  br label %first.split

first.split:                                      ; preds = %first
  store i8* %.reload, i8** bitcast (%struct.msi_route_head* @msi_route_list to i8**), align 8, !tbaa !13
  store i32 -1034877580, i32* %switchVar, align 4
  store %struct.MSIRouteEntry** getelementptr inbounds (%struct.msi_route_head, %struct.msi_route_head* @msi_route_list, i64 0, i32 0), %struct.MSIRouteEntry*** %.reg2mem16, align 8
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br label %loopEnd

86:                                               ; preds = %originalBBpart220
  %.reload17 = load %struct.MSIRouteEntry**, %struct.MSIRouteEntry*** %.reg2mem16, align 8
  %87 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reload17, align 8, !tbaa !3
  store %struct.MSIRouteEntry* %87, %struct.MSIRouteEntry** %.reg2mem3, align 8
  br label %.split22

.split22:                                         ; preds = %86
  %.reload8 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem3, align 8
  %88 = icmp eq %struct.MSIRouteEntry* %.reload8, null
  %89 = select i1 %88, i32 1052713605, i32 -960363651
  store i32 %89, i32* %switchVar, align 4
  br label %.split22.split

.split22.split:                                   ; preds = %.split22
  br label %loopEnd

90:                                               ; preds = %originalBBpart220
  %.reload7 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem3, align 8
  %91 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %.reload7, i64 0, i32 1, i32 0
  store %struct.MSIRouteEntry** %91, %struct.MSIRouteEntry*** %.reg2mem9, align 8
  br label %.split23

.split23:                                         ; preds = %90
  %.reload6 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem3, align 8
  br label %.split23.split

.split23.split:                                   ; preds = %.split23
  %92 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %.reload6, i64 0, i32 0
  %93 = load i32, i32* %92, align 8, !tbaa !7
  %94 = icmp eq i32 %93, 5
  %95 = select i1 %94, i32 279502264, i32 -1034877580
  store i32 %95, i32* %switchVar, align 4
  %.reload11 = load %struct.MSIRouteEntry**, %struct.MSIRouteEntry*** %.reg2mem9, align 8
  store %struct.MSIRouteEntry** %.reload11, %struct.MSIRouteEntry*** %.reg2mem16, align 8
  br label %loopEnd

96:                                               ; preds = %originalBBpart220
  %97 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #3
  %.reload10 = load %struct.MSIRouteEntry**, %struct.MSIRouteEntry*** %.reg2mem9, align 8
  %98 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reload10, align 8, !tbaa !11
  store %struct.MSIRouteEntry* %98, %struct.MSIRouteEntry** %.reg2mem12, align 8
  %.reload15 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem12, align 8
  br label %.split24

.split24:                                         ; preds = %96
  %99 = icmp eq %struct.MSIRouteEntry* %.reload15, null
  %100 = select i1 %99, i32 2015857657, i32 -66070492
  br label %.split24.split

.split24.split:                                   ; preds = %.split24
  store i32 %100, i32* %switchVar, align 4
  br label %loopEnd

101:                                              ; preds = %originalBBpart220
  %.reload5 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem3, align 8
  %102 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %.reload5, i64 0, i32 1, i32 1
  br label %.split25

.split25:                                         ; preds = %101
  %103 = load %struct.MSIRouteEntry**, %struct.MSIRouteEntry*** %102, align 8, !tbaa !12
  %.reload14 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem12, align 8
  %104 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %.reload14, i64 0, i32 1, i32 1
  store %struct.MSIRouteEntry** %103, %struct.MSIRouteEntry*** %104, align 8, !tbaa !12
  store i32 2015857657, i32* %switchVar, align 4
  br label %.split25.split

.split25.split:                                   ; preds = %.split25
  br label %loopEnd

105:                                              ; preds = %originalBBpart220
  %.reload4 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem3, align 8
  %106 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %.reload4, i64 0, i32 1, i32 1
  br label %.split26

.split26:                                         ; preds = %105
  %107 = load %struct.MSIRouteEntry**, %struct.MSIRouteEntry*** %106, align 8, !tbaa !12
  %.reload13 = load %struct.MSIRouteEntry*, %struct.MSIRouteEntry** %.reg2mem12, align 8
  store %struct.MSIRouteEntry* %.reload13, %struct.MSIRouteEntry** %107, align 8, !tbaa !3
  store i32 1052713605, i32* %switchVar, align 4
  br label %.split26.split

.split26.split:                                   ; preds = %.split26
  br label %loopEnd

108:                                              ; preds = %originalBBpart220
  ret i32 0

loopEnd:                                          ; preds = %.split26.split, %.split25.split, %.split24.split, %.split23.split, %.split22.split, %first.split.split, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %.reg2mem12alteredBB = alloca %struct.MSIRouteEntry*, align 8
  %.reg2mem9alteredBB = alloca %struct.MSIRouteEntry**, align 8
  %.reg2mem3alteredBB = alloca %struct.MSIRouteEntry*, align 8
  %.reg2memalteredBB = alloca i8*, align 8
  %109 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #3
  store i8* %109, i8** %.reg2memalteredBB, align 8
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %.reload2alteredBB = load i8*, i8** %.reg2memalteredBB, align 8
  %110 = bitcast i8* %.reload2alteredBB to %struct.MSIRouteEntry*
  %111 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %110, i64 0, i32 0
  store i32 5, i32* %111, align 8, !tbaa !7
  %112 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %110, i64 0, i32 1, i32 0
  store %struct.MSIRouteEntry* null, %struct.MSIRouteEntry** %112, align 8, !tbaa !11
  %113 = getelementptr inbounds %struct.MSIRouteEntry, %struct.MSIRouteEntry* %110, i64 0, i32 1, i32 1
  store %struct.MSIRouteEntry** getelementptr inbounds (%struct.msi_route_head, %struct.msi_route_head* @msi_route_list, i64 0, i32 0), %struct.MSIRouteEntry*** %113, align 8, !tbaa !12
  %switchVaralteredBB = alloca i32, align 4
  store i32 -1609000225, i32* %switchVaralteredBB, align 4
  %.reg2mem16alteredBB = alloca %struct.MSIRouteEntry**, align 8
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB

originalBB18alteredBB:                            ; preds = %originalBB18.split.split, %loopEntry.split.split
  %switchVar1alteredBB = load i32, i32* %switchVar, align 4
  br label %originalBB18alteredBB.split

originalBB18alteredBB.split:                      ; preds = %originalBB18alteredBB
  br label %originalBB18
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = !{!"MSIRouteEntry", !9, i64 0, !10, i64 8}
!9 = !{!"int", !5, i64 0}
!10 = !{!"", !4, i64 0, !4, i64 8}
!11 = !{!8, !4, i64 8}
!12 = !{!8, !4, i64 16}
!13 = !{!14, !4, i64 0}
!14 = !{!"msi_route_head", !4, i64 0}

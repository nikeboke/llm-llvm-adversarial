; ModuleID = 'vmdk_free_obf.bc'
source_filename = "vmdk_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VmdkExtent = type { i8*, i8*, i8* }

@x = common global i32 0
@y = common global i32 0

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %.reg2mem3 = alloca %struct.VmdkExtent*, align 8
  br label %.split

.split:                                           ; preds = %0
  %.reg2mem = alloca i8*, align 8
  %1 = call noalias dereferenceable_or_null(48) i8* @calloc(i64 noundef 2, i64 noundef 24) #3
  br label %.split.split

.split.split:                                     ; preds = %.split
  store i8* %1, i8** %.reg2mem, align 8
  %switchVar = alloca i32, align 4
  store i32 -1718552816, i32* %switchVar, align 4
  %.reg2mem10 = alloca i64, align 8
  %.reg2mem12 = alloca i64, align 8
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 -1718552816, label %first
    i32 1898689559, label %71
    i32 166217178, label %110
    i32 451704819, label %111
  ]

switchDefault:                                    ; preds = %loopEntry.split
  %2 = load i32, i32* @x, align 4
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %3 = load i32, i32* @y, align 4
  %4 = add i32 %2, 1066957027
  %5 = sub i32 %4, 1
  %6 = sub i32 %5, 1066957027
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  %9 = urem i32 %8, 2
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  %12 = and i1 %10, %11
  %13 = xor i1 %10, %11
  %14 = or i1 %12, %13
  %15 = or i1 %10, %11
  br i1 %14, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %switchDefault.split.split, %originalBBalteredBB
  %16 = load i32, i32* @x, align 4
  %17 = load i32, i32* @y, align 4
  %18 = add i32 %16, 88087885
  %19 = sub i32 %18, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %20 = sub i32 %19, 88087885
  %21 = sub i32 %16, 1
  %22 = mul i32 %16, %20
  %23 = urem i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %25 = icmp slt i32 %17, 10
  %26 = and i1 %24, %25
  %27 = xor i1 %24, %25
  %28 = or i1 %26, %27
  %29 = or i1 %24, %25
  br i1 %28, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %30 = load i32, i32* @x, align 4
  %31 = load i32, i32* @y, align 4
  %32 = add i32 %30, 2009733616
  %33 = sub i32 %32, 1
  %34 = sub i32 %33, 2009733616
  %35 = sub i32 %30, 1
  %36 = mul i32 %30, %34
  %37 = urem i32 %36, 2
  %38 = icmp eq i32 %37, 0
  %39 = icmp slt i32 %31, 10
  %40 = xor i1 %38, true
  %41 = xor i1 %39, true
  %42 = xor i1 false, true
  br label %first.split

first.split:                                      ; preds = %first
  %43 = and i1 %40, false
  %44 = and i1 %38, %42
  %45 = and i1 %41, false
  %46 = and i1 %39, %42
  %47 = or i1 %43, %44
  %48 = or i1 %45, %46
  %49 = xor i1 %47, %48
  %50 = or i1 %40, %41
  %51 = xor i1 %50, true
  %52 = or i1 false, %42
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  %53 = and i1 %51, %52
  %54 = or i1 %49, %53
  %55 = or i1 %38, %39
  br i1 %54, label %originalBB14, label %originalBB14alteredBB

originalBB14:                                     ; preds = %first.split.split, %originalBB14alteredBB.split.split
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  %56 = bitcast i8* %.reload2 to %struct.VmdkExtent*
  store %struct.VmdkExtent* %56, %struct.VmdkExtent** %.reg2mem3, align 8
  store i32 451704819, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem12, align 8
  %57 = load i32, i32* @x, align 4
  %58 = load i32, i32* @y, align 4
  %59 = sub i32 %57, -1073575338
  br label %originalBB14.split

originalBB14.split:                               ; preds = %originalBB14
  %60 = sub i32 %59, 1
  %61 = add i32 %60, -1073575338
  %62 = sub i32 %57, 1
  %63 = mul i32 %57, %61
  %64 = urem i32 %63, 2
  %65 = icmp eq i32 %64, 0
  %66 = icmp slt i32 %58, 10
  %67 = and i1 %65, %66
  %68 = xor i1 %65, %66
  br label %originalBB14.split.split

originalBB14.split.split:                         ; preds = %originalBB14.split
  %69 = or i1 %67, %68
  %70 = or i1 %65, %66
  br i1 %69, label %originalBBpart216, label %originalBB14alteredBB

originalBBpart216:                                ; preds = %originalBB14.split.split
  br label %loopEnd

71:                                               ; preds = %loopEntry.split
  %72 = load i32, i32* @x, align 4
  %73 = load i32, i32* @y, align 4
  %74 = add i32 %72, -704679862
  %75 = sub i32 %74, 1
  %76 = sub i32 %75, -704679862
  %77 = sub i32 %72, 1
  %78 = mul i32 %72, %76
  br label %.split26

.split26:                                         ; preds = %71
  %79 = urem i32 %78, 2
  %80 = icmp eq i32 %79, 0
  %81 = icmp slt i32 %73, 10
  %82 = and i1 %80, %81
  br label %.split26.split

.split26.split:                                   ; preds = %.split26
  %83 = xor i1 %80, %81
  %84 = or i1 %82, %83
  %85 = or i1 %80, %81
  br i1 %84, label %originalBB18, label %originalBB18alteredBB

originalBB18:                                     ; preds = %.split26.split, %originalBB18alteredBB.split.split
  %.reload11 = load i64, i64* %.reg2mem10, align 8
  %.reload6 = load %struct.VmdkExtent*, %struct.VmdkExtent** %.reg2mem3, align 8
  %86 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %.reload6, i64 %.reload11, i32 0
  %87 = load i8*, i8** %86, align 8, !tbaa !3
  call void @free(i8* noundef %87) #3
  %.reload5 = load %struct.VmdkExtent*, %struct.VmdkExtent** %.reg2mem3, align 8
  %88 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %.reload5, i64 %.reload11, i32 1
  %89 = load i8*, i8** %88, align 8, !tbaa !8
  call void @free(i8* noundef %89) #3
  %.reload4 = load %struct.VmdkExtent*, %struct.VmdkExtent** %.reg2mem3, align 8
  %90 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %.reload4, i64 %.reload11, i32 2
  %91 = load i8*, i8** %90, align 8, !tbaa !9
  call void @free(i8* noundef %91) #3
  %92 = sub i64 0, 1
  %93 = sub i64 %.reload11, %92
  %94 = add nuw nsw i64 %.reload11, 1
  %95 = icmp eq i64 %.reload11, 0
  %96 = select i1 %95, i32 1898689559, i32 166217178
  store i32 %96, i32* %switchVar, align 4
  store i64 %93, i64* %.reg2mem10, align 8
  %97 = load i32, i32* @x, align 4
  %98 = load i32, i32* @y, align 4
  %99 = sub i32 0, 1
  %100 = add i32 %97, %99
  %101 = sub i32 %97, 1
  %102 = mul i32 %97, %100
  %103 = urem i32 %102, 2
  %104 = icmp eq i32 %103, 0
  %105 = icmp slt i32 %98, 10
  %106 = and i1 %104, %105
  %107 = xor i1 %104, %105
  %108 = or i1 %106, %107
  br label %originalBB18.split

originalBB18.split:                               ; preds = %originalBB18
  %109 = or i1 %104, %105
  br label %originalBB18.split.split

originalBB18.split.split:                         ; preds = %originalBB18.split
  br i1 %108, label %originalBBpart224, label %originalBB18alteredBB

originalBBpart224:                                ; preds = %originalBB18.split.split
  br label %loopEnd

110:                                              ; preds = %loopEntry.split
  %.reload = load i8*, i8** %.reg2mem, align 8
  br label %.split27

.split27:                                         ; preds = %110
  call void @free(i8* noundef %.reload) #3
  br label %.split27.split

.split27.split:                                   ; preds = %.split27
  ret i32 0

111:                                              ; preds = %loopEntry.split
  %.reload13 = load i64, i64* %.reg2mem12, align 8
  %112 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %.reload7 = load %struct.VmdkExtent*, %struct.VmdkExtent** %.reg2mem3, align 8
  %113 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %.reload7, i64 %.reload13, i32 0
  store i8* %112, i8** %113, align 8, !tbaa !3
  %114 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %.reload9 = load %struct.VmdkExtent*, %struct.VmdkExtent** %.reg2mem3, align 8
  %115 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %.reload9, i64 %.reload13, i32 1
  store i8* %114, i8** %115, align 8, !tbaa !8
  %116 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %.reload8 = load %struct.VmdkExtent*, %struct.VmdkExtent** %.reg2mem3, align 8
  %117 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %.reload8, i64 %.reload13, i32 2
  store i8* %116, i8** %117, align 8, !tbaa !9
  %118 = add i64 %.reload13, 419926630748850017
  br label %.split28

.split28:                                         ; preds = %111
  %119 = add i64 %118, 1
  %120 = sub i64 %119, 419926630748850017
  %121 = add nuw nsw i64 %.reload13, 1
  %122 = icmp eq i64 %.reload13, 0
  br label %.split28.split

.split28.split:                                   ; preds = %.split28
  %123 = select i1 %122, i32 451704819, i32 1898689559
  store i32 %123, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem10, align 8
  store i64 %120, i64* %.reg2mem12, align 8
  br label %loopEnd

loopEnd:                                          ; preds = %.split28.split, %originalBBpart224, %originalBBpart216, %originalBBpart2
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %switchDefault.split.split
  br label %originalBB

originalBB14alteredBB:                            ; preds = %originalBB14.split.split, %first.split.split
  %.reload2alteredBB = load i8*, i8** %.reg2mem, align 8
  %124 = bitcast i8* %.reload2alteredBB to %struct.VmdkExtent*
  store %struct.VmdkExtent* %124, %struct.VmdkExtent** %.reg2mem3, align 8
  br label %originalBB14alteredBB.split

originalBB14alteredBB.split:                      ; preds = %originalBB14alteredBB
  store i32 451704819, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem12, align 8
  br label %originalBB14alteredBB.split.split

originalBB14alteredBB.split.split:                ; preds = %originalBB14alteredBB.split
  br label %originalBB14

originalBB18alteredBB:                            ; preds = %originalBB18.split.split, %.split26.split
  %.reload11alteredBB = load i64, i64* %.reg2mem10, align 8
  %.reload6alteredBB = load %struct.VmdkExtent*, %struct.VmdkExtent** %.reg2mem3, align 8
  %125 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %.reload6alteredBB, i64 %.reload11alteredBB, i32 0
  %126 = load i8*, i8** %125, align 8, !tbaa !3
  call void @free(i8* noundef %126) #3
  %.reload5alteredBB = load %struct.VmdkExtent*, %struct.VmdkExtent** %.reg2mem3, align 8
  %127 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %.reload5alteredBB, i64 %.reload11alteredBB, i32 1
  %128 = load i8*, i8** %127, align 8, !tbaa !8
  call void @free(i8* noundef %128) #3
  %.reload4alteredBB = load %struct.VmdkExtent*, %struct.VmdkExtent** %.reg2mem3, align 8
  %129 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %.reload4alteredBB, i64 %.reload11alteredBB, i32 2
  %130 = load i8*, i8** %129, align 8, !tbaa !9
  call void @free(i8* noundef %130) #3
  %131 = sub i64 0, -7683624232385550909
  %132 = sub i64 %131, %.reload11alteredBB
  %133 = add i64 %132, -7683624232385550909
  %_ = sub i64 0, %.reload11alteredBB
  %134 = add i64 %133, -113492629018891604
  %135 = add i64 %134, 1
  %136 = sub i64 %135, -113492629018891604
  %gen = add i64 %133, 1
  br label %originalBB18alteredBB.split

originalBB18alteredBB.split:                      ; preds = %originalBB18alteredBB
  %_19 = shl i64 %.reload11alteredBB, 1
  %_20 = shl i64 %.reload11alteredBB, 1
  br label %originalBB18alteredBB.split.split

originalBB18alteredBB.split.split:                ; preds = %originalBB18alteredBB.split
  %137 = add i64 0, 3910526102951490708
  %138 = sub i64 %137, %.reload11alteredBB
  %139 = sub i64 %138, 3910526102951490708
  %_21 = sub i64 0, %.reload11alteredBB
  %140 = sub i64 0, %139
  %141 = sub i64 0, 1
  %142 = add i64 %140, %141
  %143 = sub i64 0, %142
  %gen22 = add i64 %139, 1
  %144 = sub i64 0, 1
  %145 = sub i64 %.reload11alteredBB, %144
  %146 = add nuw nsw i64 %.reload11alteredBB, 1
  %147 = icmp eq i64 %.reload11alteredBB, 0
  %148 = select i1 %147, i32 1898689559, i32 166217178
  store i32 %148, i32* %switchVar, align 4
  store i64 %145, i64* %.reg2mem10, align 8
  br label %originalBB18
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!4, !5, i64 8}
!9 = !{!4, !5, i64 16}

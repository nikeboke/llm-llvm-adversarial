; ModuleID = 'sws_alloc_obf.bc'
source_filename = "sws_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVClass = type { i8* }
%struct.SwsContext = type { %struct.AVClass* }

@.str = private unnamed_addr constant [11 x i8] c"SwsContext\00", align 1
@sws_context_class = dso_local global %struct.AVClass { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Context allocated with class: %s\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0
@x.3 = common global i32 0
@y.4 = common global i32 0
@x.5 = common global i32 0
@y.6 = common global i32 0

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias i8* @av_mallocz(i64 noundef %0) local_unnamed_addr #0 {
  %2 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %0) #7
  br label %.split

.split:                                           ; preds = %1
  ret i8* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @av_opt_set_defaults(i8* nocapture %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.SwsContext* @sws_alloc_context() local_unnamed_addr #0 {
  %1 = call noalias dereferenceable_or_null(8) i8* @calloc(i64 noundef 1, i64 noundef 8) #7
  br label %.split

.split:                                           ; preds = %0
  %2 = bitcast i8* %1 to %struct.SwsContext*
  %3 = bitcast i8* %1 to %struct.AVClass**
  br label %.split.split

.split.split:                                     ; preds = %.split
  store %struct.AVClass* @sws_context_class, %struct.AVClass** %3, align 8, !tbaa !3
  ret %struct.SwsContext* %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %.reg2mem = alloca i8*, align 8
  %1 = call noalias dereferenceable_or_null(8) i8* @calloc(i64 noundef 1, i64 noundef 8) #7
  store i8* %1, i8** %.reg2mem, align 8
  %.reload3 = load i8*, i8** %.reg2mem, align 8
  %2 = bitcast i8* %.reload3 to %struct.AVClass**
  br label %.split

.split:                                           ; preds = %0
  store %struct.AVClass* @sws_context_class, %struct.AVClass** %2, align 8, !tbaa !3
  %switchVar = alloca i32, align 4
  store i32 1425117945, i32* %switchVar, align 4
  %.reg2mem5 = alloca i32, align 4
  br label %.split.split

.split.split:                                     ; preds = %.split
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %originalBBpart2
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 1425117945, label %first
    i32 -1574505250, label %5
    i32 1224544977, label %7
    i32 1542456754, label %14
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload = load i8*, i8** %.reg2mem, align 8
  br label %first.split

first.split:                                      ; preds = %first
  %3 = icmp eq i8* %.reload, null
  %4 = select i1 %3, i32 -1574505250, i32 1224544977
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  store i32 %4, i32* %switchVar, align 4
  br label %loopEnd

5:                                                ; preds = %loopEntry.split
  %6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  br label %.split7

.split7:                                          ; preds = %5
  store i32 1542456754, i32* %switchVar, align 4
  br label %.split7.split

.split7.split:                                    ; preds = %.split7
  store i32 1, i32* %.reg2mem5, align 4
  br label %loopEnd

7:                                                ; preds = %loopEntry.split
  %.reload4 = load i8*, i8** %.reg2mem, align 8
  br label %.split8

.split8:                                          ; preds = %7
  %8 = bitcast i8* %.reload4 to %struct.SwsContext*
  %9 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %8, i64 0, i32 0
  %10 = load %struct.AVClass*, %struct.AVClass** %9, align 8, !tbaa !3
  %11 = getelementptr inbounds %struct.AVClass, %struct.AVClass* %10, i64 0, i32 0
  %12 = load i8*, i8** %11, align 8, !tbaa !8
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* noundef %12)
  %.reload2 = load i8*, i8** %.reg2mem, align 8
  call void @free(i8* noundef %.reload2) #7
  br label %.split8.split

.split8.split:                                    ; preds = %.split8
  store i32 1542456754, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem5, align 4
  br label %loopEnd

14:                                               ; preds = %loopEntry.split
  %.reload6 = load i32, i32* %.reg2mem5, align 4
  br label %.split9

.split9:                                          ; preds = %14
  ret i32 %.reload6

loopEnd:                                          ; preds = %.split8.split, %.split7.split, %first.split.split, %switchDefault
  %15 = load i32, i32* @x.5, align 4
  br label %loopEnd.split

loopEnd.split:                                    ; preds = %loopEnd
  %16 = load i32, i32* @y.6, align 4
  %17 = add i32 %15, -657857919
  %18 = sub i32 %17, 1
  %19 = sub i32 %18, -657857919
  %20 = sub i32 %15, 1
  %21 = mul i32 %15, %19
  %22 = urem i32 %21, 2
  %23 = icmp eq i32 %22, 0
  %24 = icmp slt i32 %16, 10
  %25 = and i1 %23, %24
  %26 = xor i1 %23, %24
  %27 = or i1 %25, %26
  %28 = or i1 %23, %24
  br label %loopEnd.split.split

loopEnd.split.split:                              ; preds = %loopEnd.split
  br i1 %27, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %loopEnd.split.split, %originalBBalteredBB
  %29 = load i32, i32* @x.5, align 4
  %30 = load i32, i32* @y.6, align 4
  %31 = sub i32 %29, 1970353979
  %32 = sub i32 %31, 1
  %33 = add i32 %32, 1970353979
  %34 = sub i32 %29, 1
  %35 = mul i32 %29, %33
  %36 = urem i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = icmp slt i32 %30, 10
  %39 = and i1 %37, %38
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %40 = xor i1 %37, %38
  %41 = or i1 %39, %40
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %42 = or i1 %37, %38
  br i1 %41, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %loopEnd.split.split
  br label %originalBB
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"SwsContext", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"AVClass", !5, i64 0}

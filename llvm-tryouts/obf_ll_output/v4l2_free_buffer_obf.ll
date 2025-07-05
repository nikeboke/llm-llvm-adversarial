; ModuleID = 'v4l2_free_buffer_obf.bc'
source_filename = "v4l2_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.V4L2m2mContext = type { i32, i32, %union.sem_t }
%union.sem_t = type { i64, [24 x i8] }
%struct.AVBufferRef = type { i32 }
%struct.V4L2Buffer = type { i32, %struct.V4L2Context*, %struct.AVBufferRef* }
%struct.V4L2Context = type { i32, %struct.AVBufferRef* }

@buf_to_m2mctx.dummy_ctx = internal global %struct.V4L2m2mContext zeroinitializer, align 8
@str = private unnamed_addr constant [16 x i8] c"Buffer enqueued\00", align 1
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0
@x.3 = common global i32 0
@y.4 = common global i32 0
@x.5 = common global i32 0
@y.6 = common global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @av_buffer_unref(%struct.AVBufferRef** noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @x, align 4
  %3 = load i32, i32* @y, align 4
  %4 = add i32 %2, -304933561
  %5 = sub i32 %4, 1
  %6 = sub i32 %5, -304933561
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  br label %.split

.split:                                           ; preds = %1
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  %12 = xor i1 %10, true
  %13 = xor i1 %11, true
  %14 = xor i1 true, true
  %15 = and i1 %12, true
  %16 = and i1 %10, %14
  %17 = and i1 %13, true
  %18 = and i1 %11, %14
  %19 = or i1 %15, %16
  %20 = or i1 %17, %18
  %21 = xor i1 %19, %20
  %22 = or i1 %12, %13
  %23 = xor i1 %22, true
  %24 = or i1 true, %14
  %25 = and i1 %23, %24
  br label %.split.split

.split.split:                                     ; preds = %.split
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %switchVar = alloca i32, align 4
  store i32 207722579, i32* %switchVar, align 4
  %28 = load i32, i32* @x, align 4
  %29 = load i32, i32* @y, align 4
  %30 = add i32 %28, -1963521253
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %31 = sub i32 %30, 1
  %32 = sub i32 %31, -1963521253
  %33 = sub i32 %28, 1
  %34 = mul i32 %28, %32
  %35 = urem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %37 = icmp slt i32 %29, 10
  %38 = and i1 %36, %37
  %39 = xor i1 %36, %37
  %40 = or i1 %38, %39
  %41 = or i1 %36, %37
  br i1 %40, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 207722579, label %first
    i32 917648345, label %44
    i32 615404638, label %48
    i32 -1670911664, label %49
  ]

switchDefault:                                    ; preds = %loopEntry.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %42 = icmp eq %struct.AVBufferRef** %0, null
  br label %first.split

first.split:                                      ; preds = %first
  %43 = select i1 %42, i32 -1670911664, i32 917648345
  store i32 %43, i32* %switchVar, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br label %loopEnd

44:                                               ; preds = %loopEntry.split
  %45 = load %struct.AVBufferRef*, %struct.AVBufferRef** %0, align 8, !tbaa !3
  br label %.split6

.split6:                                          ; preds = %44
  %46 = icmp eq %struct.AVBufferRef* %45, null
  %47 = select i1 %46, i32 -1670911664, i32 615404638
  store i32 %47, i32* %switchVar, align 4
  br label %.split6.split

.split6.split:                                    ; preds = %.split6
  br label %loopEnd

48:                                               ; preds = %loopEntry.split
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %0, align 8, !tbaa !3
  br label %.split7

.split7:                                          ; preds = %48
  store i32 -1670911664, i32* %switchVar, align 4
  br label %.split7.split

.split7.split:                                    ; preds = %.split7
  br label %loopEnd

49:                                               ; preds = %loopEntry.split
  %50 = load i32, i32* @x, align 4
  %51 = load i32, i32* @y, align 4
  %52 = add i32 %50, -25926703
  %53 = sub i32 %52, 1
  %54 = sub i32 %53, -25926703
  %55 = sub i32 %50, 1
  br label %.split8

.split8:                                          ; preds = %49
  %56 = mul i32 %50, %54
  %57 = urem i32 %56, 2
  %58 = icmp eq i32 %57, 0
  %59 = icmp slt i32 %51, 10
  br label %.split8.split

.split8.split:                                    ; preds = %.split8
  %60 = xor i1 %58, true
  %61 = xor i1 %59, true
  %62 = xor i1 false, true
  %63 = and i1 %60, false
  %64 = and i1 %58, %62
  %65 = and i1 %61, false
  %66 = and i1 %59, %62
  %67 = or i1 %63, %64
  %68 = or i1 %65, %66
  %69 = xor i1 %67, %68
  %70 = or i1 %60, %61
  %71 = xor i1 %70, true
  %72 = or i1 false, %62
  %73 = and i1 %71, %72
  %74 = or i1 %69, %73
  %75 = or i1 %58, %59
  br i1 %74, label %originalBB2, label %originalBB2alteredBB

originalBB2:                                      ; preds = %.split8.split, %originalBB2alteredBB
  %76 = load i32, i32* @x, align 4
  %77 = load i32, i32* @y, align 4
  %78 = sub i32 0, 1
  %79 = add i32 %76, %78
  %80 = sub i32 %76, 1
  %81 = mul i32 %76, %79
  %82 = urem i32 %81, 2
  %83 = icmp eq i32 %82, 0
  %84 = icmp slt i32 %77, 10
  %85 = and i1 %83, %84
  br label %originalBB2.split

originalBB2.split:                                ; preds = %originalBB2
  %86 = xor i1 %83, %84
  %87 = or i1 %85, %86
  %88 = or i1 %83, %84
  br label %originalBB2.split.split

originalBB2.split.split:                          ; preds = %originalBB2.split
  br i1 %87, label %originalBBpart24, label %originalBB2alteredBB

originalBBpart24:                                 ; preds = %originalBB2.split.split
  ret void

loopEnd:                                          ; preds = %.split7.split, %.split6.split, %first.split.split, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %switchVaralteredBB = alloca i32, align 4
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  store i32 207722579, i32* %switchVaralteredBB, align 4
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB

originalBB2alteredBB:                             ; preds = %originalBB2.split.split, %.split8.split
  br label %originalBB2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local nonnull %struct.V4L2m2mContext* @buf_to_m2mctx(%struct.V4L2Buffer* nocapture noundef readnone %0) local_unnamed_addr #1 {
  ret %struct.V4L2m2mContext* @buf_to_m2mctx.dummy_ctx
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @ff_v4l2_buffer_enqueue(%struct.V4L2Buffer* nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str, i64 0, i64 0))
  br label %.split

.split:                                           ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @main() local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}

; ModuleID = 'dvvideo_decode_frame_obf.bc'
source_filename = "dvvideo_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.AVCodecContext = type { i32 }
%struct.AVPacket = type { i8*, i32 }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [21 x i8] c"Invalid packet size\0A\00", align 1
@x = common global i32 0
@y = common global i32 0

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @dvvideo_decode_frame(%struct.AVCodecContext* nocapture noundef readnone %0, i8* nocapture noundef readnone %1, i32* nocapture noundef writeonly %2, %struct.AVPacket* nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load i32, i32* @x, align 4
  %6 = load i32, i32* @y, align 4
  %7 = sub i32 %5, 1738982061
  %8 = sub i32 %7, 1
  %9 = add i32 %8, 1738982061
  %10 = sub i32 %5, 1
  %11 = mul i32 %5, %9
  %12 = urem i32 %11, 2
  %13 = icmp eq i32 %12, 0
  %14 = icmp slt i32 %6, 10
  %15 = xor i1 %13, true
  %16 = xor i1 %14, true
  %17 = xor i1 false, true
  %18 = and i1 %15, false
  br label %.split

.split:                                           ; preds = %4
  %19 = and i1 %13, %17
  %20 = and i1 %16, false
  %21 = and i1 %14, %17
  %22 = or i1 %18, %19
  %23 = or i1 %20, %21
  %24 = xor i1 %22, %23
  %25 = or i1 %15, %16
  br label %.split.split

.split.split:                                     ; preds = %.split
  %26 = xor i1 %25, true
  %27 = or i1 false, %17
  %28 = and i1 %26, %27
  %29 = or i1 %24, %28
  %30 = or i1 %13, %14
  br i1 %29, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %.reg2mem = alloca i32, align 4
  %31 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %3, i64 0, i32 1
  %32 = load i32, i32* %31, align 8, !tbaa !3
  store i32 %32, i32* %.reg2mem, align 4
  %switchVar = alloca i32, align 4
  store i32 -86935773, i32* %switchVar, align 4
  %.reg2mem3 = alloca i32, align 4
  %33 = load i32, i32* @x, align 4
  %34 = load i32, i32* @y, align 4
  %35 = sub i32 %33, -1835732138
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %36 = sub i32 %35, 1
  %37 = add i32 %36, -1835732138
  %38 = sub i32 %33, 1
  %39 = mul i32 %33, %37
  %40 = urem i32 %39, 2
  %41 = icmp eq i32 %40, 0
  %42 = icmp slt i32 %34, 10
  %43 = xor i1 %41, true
  %44 = xor i1 %42, true
  %45 = xor i1 false, true
  %46 = and i1 %43, false
  %47 = and i1 %41, %45
  %48 = and i1 %44, false
  %49 = and i1 %42, %45
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %50 = or i1 %46, %47
  %51 = or i1 %48, %49
  %52 = xor i1 %50, %51
  %53 = or i1 %43, %44
  %54 = xor i1 %53, true
  %55 = or i1 false, %45
  %56 = and i1 %54, %55
  %57 = or i1 %52, %56
  %58 = or i1 %41, %42
  br i1 %57, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %loopEnd
  %switchVar1 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar1, label %switchDefault [
    i32 -86935773, label %first
    i32 -1969942279, label %99
    i32 -830348759, label %153
    i32 59708278, label %154
  ]

switchDefault:                                    ; preds = %loopEntry.split
  %59 = load i32, i32* @x, align 4
  %60 = load i32, i32* @y, align 4
  %61 = sub i32 0, 1
  %62 = add i32 %59, %61
  %63 = sub i32 %59, 1
  %64 = mul i32 %59, %62
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %65 = urem i32 %64, 2
  %66 = icmp eq i32 %65, 0
  %67 = icmp slt i32 %60, 10
  %68 = xor i1 %66, true
  %69 = xor i1 %67, true
  %70 = xor i1 false, true
  %71 = and i1 %68, false
  %72 = and i1 %66, %70
  %73 = and i1 %69, false
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %74 = and i1 %67, %70
  %75 = or i1 %71, %72
  %76 = or i1 %73, %74
  %77 = xor i1 %75, %76
  %78 = or i1 %68, %69
  %79 = xor i1 %78, true
  %80 = or i1 false, %70
  %81 = and i1 %79, %80
  %82 = or i1 %77, %81
  %83 = or i1 %66, %67
  br i1 %82, label %originalBB5, label %originalBB5alteredBB

originalBB5:                                      ; preds = %switchDefault.split.split, %originalBB5alteredBB
  %84 = load i32, i32* @x, align 4
  %85 = load i32, i32* @y, align 4
  %86 = sub i32 0, 1
  br label %originalBB5.split

originalBB5.split:                                ; preds = %originalBB5
  %87 = add i32 %84, %86
  %88 = sub i32 %84, 1
  %89 = mul i32 %84, %87
  %90 = urem i32 %89, 2
  %91 = icmp eq i32 %90, 0
  br label %originalBB5.split.split

originalBB5.split.split:                          ; preds = %originalBB5.split
  %92 = icmp slt i32 %85, 10
  %93 = and i1 %91, %92
  %94 = xor i1 %91, %92
  %95 = or i1 %93, %94
  %96 = or i1 %91, %92
  br i1 %95, label %originalBBpart27, label %originalBB5alteredBB

originalBBpart27:                                 ; preds = %originalBB5.split.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload2 = load i32, i32* %.reg2mem, align 4
  br label %first.split

first.split:                                      ; preds = %first
  %97 = icmp slt i32 %.reload2, 4
  %98 = select i1 %97, i32 -1969942279, i32 -830348759
  store i32 %98, i32* %switchVar, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br label %loopEnd

99:                                               ; preds = %loopEntry.split
  %100 = load i32, i32* @x, align 4
  %101 = load i32, i32* @y, align 4
  %102 = add i32 %100, 726300195
  %103 = sub i32 %102, 1
  br label %.split13

.split13:                                         ; preds = %99
  %104 = sub i32 %103, 726300195
  %105 = sub i32 %100, 1
  %106 = mul i32 %100, %104
  %107 = urem i32 %106, 2
  %108 = icmp eq i32 %107, 0
  %109 = icmp slt i32 %101, 10
  %110 = xor i1 %108, true
  %111 = xor i1 %109, true
  br label %.split13.split

.split13.split:                                   ; preds = %.split13
  %112 = xor i1 false, true
  %113 = and i1 %110, false
  %114 = and i1 %108, %112
  %115 = and i1 %111, false
  %116 = and i1 %109, %112
  %117 = or i1 %113, %114
  %118 = or i1 %115, %116
  %119 = xor i1 %117, %118
  %120 = or i1 %110, %111
  %121 = xor i1 %120, true
  %122 = or i1 false, %112
  %123 = and i1 %121, %122
  %124 = or i1 %119, %123
  %125 = or i1 %108, %109
  br i1 %124, label %originalBB9, label %originalBB9alteredBB

originalBB9:                                      ; preds = %.split13.split, %originalBB9alteredBB.split.split
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %127 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %126) #2
  store i32 59708278, i32* %switchVar, align 4
  store i32 -1, i32* %.reg2mem3, align 4
  %128 = load i32, i32* @x, align 4
  %129 = load i32, i32* @y, align 4
  %130 = sub i32 0, 1
  %131 = add i32 %128, %130
  %132 = sub i32 %128, 1
  %133 = mul i32 %128, %131
  %134 = urem i32 %133, 2
  %135 = icmp eq i32 %134, 0
  %136 = icmp slt i32 %129, 10
  %137 = xor i1 %135, true
  %138 = xor i1 %136, true
  %139 = xor i1 true, true
  br label %originalBB9.split

originalBB9.split:                                ; preds = %originalBB9
  %140 = and i1 %137, true
  %141 = and i1 %135, %139
  %142 = and i1 %138, true
  %143 = and i1 %136, %139
  %144 = or i1 %140, %141
  %145 = or i1 %142, %143
  %146 = xor i1 %144, %145
  %147 = or i1 %137, %138
  %148 = xor i1 %147, true
  %149 = or i1 true, %139
  %150 = and i1 %148, %149
  br label %originalBB9.split.split

originalBB9.split.split:                          ; preds = %originalBB9.split
  %151 = or i1 %146, %150
  %152 = or i1 %135, %136
  br i1 %151, label %originalBBpart211, label %originalBB9alteredBB

originalBBpart211:                                ; preds = %originalBB9.split.split
  br label %loopEnd

153:                                              ; preds = %loopEntry.split
  store i32 1, i32* %2, align 4, !tbaa !10
  store i32 59708278, i32* %switchVar, align 4
  br label %.split14

.split14:                                         ; preds = %153
  %.reload = load i32, i32* %.reg2mem, align 4
  store i32 %.reload, i32* %.reg2mem3, align 4
  br label %.split14.split

.split14.split:                                   ; preds = %.split14
  br label %loopEnd

154:                                              ; preds = %loopEntry.split
  %.reload4 = load i32, i32* %.reg2mem3, align 4
  br label %.split15

.split15:                                         ; preds = %154
  ret i32 %.reload4

loopEnd:                                          ; preds = %.split14.split, %originalBBpart211, %first.split.split, %originalBBpart27
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %.reg2memalteredBB = alloca i32, align 4
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %155 = getelementptr inbounds %struct.AVPacket, %struct.AVPacket* %3, i64 0, i32 1
  %156 = load i32, i32* %155, align 8, !tbaa !3
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  store i32 %156, i32* %.reg2memalteredBB, align 4
  %switchVaralteredBB = alloca i32, align 4
  store i32 -86935773, i32* %switchVaralteredBB, align 4
  %.reg2mem3alteredBB = alloca i32, align 4
  br label %originalBB

originalBB5alteredBB:                             ; preds = %originalBB5.split.split, %switchDefault.split.split
  br label %originalBB5

originalBB9alteredBB:                             ; preds = %originalBB9.split.split, %.split13.split
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %158 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %157) #2
  br label %originalBB9alteredBB.split

originalBB9alteredBB.split:                       ; preds = %originalBB9alteredBB
  store i32 59708278, i32* %switchVar, align 4
  br label %originalBB9alteredBB.split.split

originalBB9alteredBB.split.split:                 ; preds = %originalBB9alteredBB.split
  store i32 -1, i32* %.reg2mem3, align 4
  br label %originalBB9
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !8, i64 8}
!4 = !{!"AVPacket", !5, i64 0, !8, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!8, !8, i64 0}

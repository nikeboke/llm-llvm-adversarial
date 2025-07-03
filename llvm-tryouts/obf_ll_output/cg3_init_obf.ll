; ModuleID = 'cg3_init_obf.bc'
source_filename = "cg3_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.SysBusDevice = type { [2 x i8*] }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Initialized RAM: %s (%zu bytes)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Set region to readonly: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Initialized IO region: %s (%zu bytes)\0A\00", align 1
@cg3_reg_ops = dso_local local_unnamed_addr global i8* null, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"cg3.prom\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"cg3.reg\00", align 1
@str = private unnamed_addr constant [19 x i8] c"Mapped MMIO region\00", align 1
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
define dso_local void @error_abort(i8* noundef %0) local_unnamed_addr #0 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  br label %.split

.split:                                           ; preds = %1
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #4
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @memory_region_init_ram(i8* nocapture noundef writeonly %0, i8* nocapture readnone %1, i8* noundef %2, i64 noundef %3, void (i8*)* nocapture readnone %4) local_unnamed_addr #0 {
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %3, i1 false)
  br label %.split

.split:                                           ; preds = %5
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* noundef %2, i64 noundef %3)
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @memory_region_set_readonly(i8* nocapture readnone %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = select i1 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  br label %.split

.split:                                           ; preds = %2
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* noundef %3)
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @memory_region_init_io(i8* nocapture noundef writeonly %0, i8* nocapture readnone %1, i8* nocapture readnone %2, i8* nocapture readnone %3, i8* noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %5, i1 false)
  br label %.split

.split:                                           ; preds = %6
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* noundef %4, i64 noundef %5)
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @sysbus_init_mmio(%struct.SysBusDevice* nocapture readnone %0, i8* nocapture readnone %1) local_unnamed_addr #0 {
  %3 = load i32, i32* @x.7, align 4
  br label %.split

.split:                                           ; preds = %2
  %4 = load i32, i32* @y.8, align 4
  %5 = add i32 %3, 834800932
  %6 = sub i32 %5, 1
  %7 = sub i32 %6, 834800932
  %8 = sub i32 %3, 1
  %9 = mul i32 %3, %7
  %10 = urem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = icmp slt i32 %4, 10
  %13 = and i1 %11, %12
  %14 = xor i1 %11, %12
  %15 = or i1 %13, %14
  %16 = or i1 %11, %12
  br label %.split.split

.split.split:                                     ; preds = %.split
  br i1 %15, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split
  %17 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str, i64 0, i64 0))
  %18 = load i32, i32* @x.7, align 4
  %19 = load i32, i32* @y.8, align 4
  %20 = sub i32 %18, 1789266151
  %21 = sub i32 %20, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %22 = add i32 %21, 1789266151
  %23 = sub i32 %18, 1
  %24 = mul i32 %18, %22
  %25 = urem i32 %24, 2
  %26 = icmp eq i32 %25, 0
  %27 = icmp slt i32 %19, 10
  %28 = and i1 %26, %27
  %29 = xor i1 %26, %27
  %30 = or i1 %28, %29
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %31 = or i1 %26, %27
  br i1 %30, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %32 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str, i64 0, i64 0))
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 noundef 8192) #5
  br label %.split

.split:                                           ; preds = %0
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %.split.split

.split.split:                                     ; preds = %.split
  %3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str, i64 0, i64 0)) #5
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 noundef 256) #5
  %5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str, i64 0, i64 0)) #5
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind }
attributes #4 = { cold }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}

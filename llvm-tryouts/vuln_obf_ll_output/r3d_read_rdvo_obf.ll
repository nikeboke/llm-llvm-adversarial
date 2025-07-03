; ModuleID = 'r3d_read_rdvo_obf.bc'
source_filename = "r3d_read_rdvo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.AVIOContext = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@str = private unnamed_addr constant [23 x i8] c"Compiled successfully.\00", align 1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @avio_rb32(%struct.AVIOContext* nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !3
  %4 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 8, !tbaa !9
  %6 = sub i32 0, 1
  %7 = sub i32 %5, %6
  %8 = add nsw i32 %5, 1
  store i32 %7, i32* %4, align 8, !tbaa !9
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds i8, i8* %3, i64 %9
  %11 = load i8, i8* %10, align 1, !tbaa !10
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 %12, 24
  %14 = sub i32 %5, 983941152
  %15 = add i32 %14, 2
  %16 = add i32 %15, 983941152
  %17 = add nsw i32 %5, 2
  store i32 %16, i32* %4, align 8, !tbaa !9
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds i8, i8* %3, i64 %18
  %20 = load i8, i8* %19, align 1, !tbaa !10
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 16
  %23 = and i32 %22, %13
  %24 = xor i32 %22, %13
  %25 = or i32 %23, %24
  %26 = or i32 %22, %13
  br label %.split

.split:                                           ; preds = %1
  %27 = sub i32 %5, 531943288
  %28 = add i32 %27, 3
  %29 = add i32 %28, 531943288
  %30 = add nsw i32 %5, 3
  store i32 %29, i32* %4, align 8, !tbaa !9
  %31 = sext i32 %16 to i64
  %32 = getelementptr inbounds i8, i8* %3, i64 %31
  %33 = load i8, i8* %32, align 1, !tbaa !10
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = xor i32 %25, -1
  %37 = xor i32 %35, -1
  %38 = xor i32 -1649841995, -1
  %39 = and i32 %36, -1649841995
  %40 = and i32 %25, %38
  %41 = and i32 %37, -1649841995
  br label %.split.split

.split.split:                                     ; preds = %.split
  %42 = and i32 %35, %38
  %43 = or i32 %39, %40
  %44 = or i32 %41, %42
  %45 = xor i32 %43, %44
  %46 = or i32 %36, %37
  %47 = xor i32 %46, -1
  %48 = or i32 -1649841995, %38
  %49 = and i32 %47, %48
  %50 = or i32 %45, %49
  %51 = or i32 %25, %35
  %52 = sub i32 0, 4
  %53 = sub i32 %5, %52
  %54 = add nsw i32 %5, 4
  store i32 %53, i32* %4, align 8, !tbaa !9
  %55 = sext i32 %29 to i64
  %56 = getelementptr inbounds i8, i8* %3, i64 %55
  %57 = load i8, i8* %56, align 1, !tbaa !10
  %58 = zext i8 %57 to i32
  %59 = and i32 %50, %58
  %60 = xor i32 %50, %58
  %61 = or i32 %59, %60
  %62 = or i32 %50, %58
  ret i32 %61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @av_rescale_q(i64 noundef %0, i64 %1, i64 %2) local_unnamed_addr #1 {
  %4 = ashr i64 %2, 32
  br label %.split

.split:                                           ; preds = %3
  %5 = mul nsw i64 %4, %0
  %6 = shl i64 %1, 32
  %7 = ashr exact i64 %6, 32
  %8 = mul nsw i64 %5, %7
  %9 = ashr i64 %1, 32
  %10 = shl i64 %2, 32
  %11 = ashr exact i64 %10, 32
  br label %.split.split

.split.split:                                     ; preds = %.split
  %12 = mul nsw i64 %11, %9
  %13 = sdiv i64 %8, %12
  ret i64 %13
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @av_dlog(i8* nocapture noundef readnone %0, i8* nocapture noundef readonly %1, ...) local_unnamed_addr #2 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #9
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %4)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !11, !noalias !12
  %7 = call i32 @vfprintf(%struct._IO_FILE* noundef %6, i8* noundef %1, %struct.__va_list_tag* noundef nonnull %5) #9
  call void @llvm.va_end(i8* %4)
  br label %.split

.split:                                           ; preds = %2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #9
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias i8* @av_malloc(i64 noundef %0) local_unnamed_addr #5 {
  %2 = load i32, i32* @x.5, align 4
  %3 = load i32, i32* @y.6, align 4
  %4 = add i32 %2, -508617938
  %5 = sub i32 %4, 1
  %6 = sub i32 %5, -508617938
  br label %.split

.split:                                           ; preds = %1
  %7 = sub i32 %2, 1
  %8 = mul i32 %2, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %3, 10
  %12 = and i1 %10, %11
  %13 = xor i1 %10, %11
  %14 = or i1 %12, %13
  br label %.split.split

.split.split:                                     ; preds = %.split
  %15 = or i1 %10, %11
  br i1 %14, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split
  %16 = call noalias i8* @malloc(i64 noundef %0) #9
  %17 = load i32, i32* @x.5, align 4
  %18 = load i32, i32* @y.6, align 4
  %19 = add i32 %17, -225545841
  %20 = sub i32 %19, 1
  %21 = sub i32 %20, -225545841
  %22 = sub i32 %17, 1
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %23 = mul i32 %17, %21
  %24 = urem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %26 = icmp slt i32 %18, 10
  %27 = and i1 %25, %26
  %28 = xor i1 %25, %26
  %29 = or i1 %27, %28
  %30 = or i1 %25, %26
  br i1 %29, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i8* %16

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %31 = call noalias i8* @malloc(i64 noundef %0) #9
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @str, i64 0, i64 0))
  br label %.split

.split:                                           ; preds = %0
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @vfprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, %struct.__va_list_tag* noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0, !8, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !8, i64 8}
!10 = !{!6, !6, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!13}
!13 = distinct !{!13, !14, !"vprintf: argument 0"}
!14 = distinct !{!14, !"vprintf"}

; ModuleID = 'r3d_read_rdvo.bc'
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @avio_rb32(%struct.AVIOContext* nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !3
  %4 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 8, !tbaa !9
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 8, !tbaa !9
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i8, i8* %3, i64 %7
  %9 = load i8, i8* %8, align 1, !tbaa !10
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = add nsw i32 %5, 2
  store i32 %12, i32* %4, align 8, !tbaa !9
  %13 = sext i32 %6 to i64
  %14 = getelementptr inbounds i8, i8* %3, i64 %13
  %15 = load i8, i8* %14, align 1, !tbaa !10
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = or i32 %17, %11
  %19 = add nsw i32 %5, 3
  store i32 %19, i32* %4, align 8, !tbaa !9
  %20 = sext i32 %12 to i64
  %21 = getelementptr inbounds i8, i8* %3, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !10
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = or i32 %18, %24
  %26 = add nsw i32 %5, 4
  store i32 %26, i32* %4, align 8, !tbaa !9
  %27 = sext i32 %19 to i64
  %28 = getelementptr inbounds i8, i8* %3, i64 %27
  %29 = load i8, i8* %28, align 1, !tbaa !10
  %30 = zext i8 %29 to i32
  %31 = or i32 %25, %30
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @av_rescale_q(i64 noundef %0, i64 %1, i64 %2) local_unnamed_addr #1 {
  %4 = ashr i64 %2, 32
  %5 = mul nsw i64 %4, %0
  %6 = shl i64 %1, 32
  %7 = ashr exact i64 %6, 32
  %8 = mul nsw i64 %5, %7
  %9 = ashr i64 %1, 32
  %10 = shl i64 %2, 32
  %11 = ashr exact i64 %10, 32
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
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #9
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
  %2 = call noalias i8* @malloc(i64 noundef %0) #9
  ret i8* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @str, i64 0, i64 0))
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

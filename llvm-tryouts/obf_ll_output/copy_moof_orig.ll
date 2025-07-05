; ModuleID = 'copy_moof.bc'
source_filename = "copy_moof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVIOContext = type { %struct._IO_FILE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.AVIOInterruptCB = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"input.bin\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"output.bin\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @avio_open2(%struct.AVIOContext** nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, %struct.AVIOInterruptCB* nocapture readnone %3, i8* nocapture readnone %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %2, 1
  %7 = select i1 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %8 = call noalias %struct._IO_FILE* @fopen(i8* noundef %1, i8* noundef %7)
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = call i32* @__errno_location() #7
  %12 = load i32, i32* %11, align 4, !tbaa !3
  %13 = sub nsw i32 0, %12
  br label %19

14:                                               ; preds = %5
  %15 = call dereferenceable_or_null(8) i8* @malloc(i64 noundef 8)
  %16 = bitcast i8* %15 to %struct.AVIOContext*
  %17 = bitcast %struct.AVIOContext** %0 to i8**
  store i8* %15, i8** %17, align 8, !tbaa !7
  %18 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %16, i64 0, i32 0
  store %struct._IO_FILE* %8, %struct._IO_FILE** %18, align 8, !tbaa !9
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i32 [ 0, %14 ], [ %13, %10 ]
  ret i32 %20
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @avio_read(%struct.AVIOContext* nocapture noundef readonly %0, i8* nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %0, i64 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !tbaa !9
  %7 = call i64 @fread(i8* noundef %1, i64 noundef 1, i64 noundef %4, %struct._IO_FILE* noundef %6)
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @avio_write(%struct.AVIOContext* nocapture noundef readonly %0, i8* nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %0, i64 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !tbaa !9
  %7 = call i64 @fwrite(i8* noundef %1, i64 noundef 1, i64 noundef %4, %struct._IO_FILE* noundef %6)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @avio_flush(%struct.AVIOContext* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %0, i64 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !tbaa !9
  %4 = call i32 @fflush(%struct._IO_FILE* noundef %3)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @avio_close(%struct.AVIOContext* noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq %struct.AVIOContext* %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %0, i64 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !tbaa !9
  %6 = call i32 @fclose(%struct._IO_FILE* noundef %5)
  %7 = bitcast %struct.AVIOContext* %0 to i8*
  call void @free(i8* noundef %7)
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #5 {
  %1 = alloca [8192 x i8], align 16
  %2 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8
  %3 = icmp eq %struct._IO_FILE* %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = call i32* @__errno_location() #7
  %6 = load i32, i32* %5, align 4, !tbaa !3
  %7 = icmp sgt i32 %6, 0
  br label %12

8:                                                ; preds = %0
  %9 = call dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #8
  %10 = bitcast i8* %9 to %struct.AVIOContext*
  %11 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %10, i64 0, i32 0
  store %struct._IO_FILE* %2, %struct._IO_FILE** %11, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi %struct.AVIOContext* [ undef, %4 ], [ %10, %8 ]
  %14 = phi i1 [ %7, %4 ], [ false, %8 ]
  br i1 %14, label %70, label %15

15:                                               ; preds = %12
  %16 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8
  %17 = icmp eq %struct._IO_FILE* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = call i32* @__errno_location() #7
  %20 = load i32, i32* %19, align 4, !tbaa !3
  %21 = icmp sgt i32 %20, 0
  br label %26

22:                                               ; preds = %15
  %23 = call dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #8
  %24 = bitcast i8* %23 to %struct.AVIOContext*
  %25 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %24, i64 0, i32 0
  store %struct._IO_FILE* %16, %struct._IO_FILE** %25, align 8, !tbaa !9
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi %struct.AVIOContext* [ undef, %18 ], [ %24, %22 ]
  %28 = phi i1 [ %21, %18 ], [ false, %22 ]
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1, i64 0, i64 0
  %31 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %13, i64 0, i32 0
  %32 = getelementptr inbounds %struct.AVIOContext, %struct.AVIOContext* %27, i64 0, i32 0
  br label %35

33:                                               ; preds = %26
  %34 = icmp eq %struct.AVIOContext* %13, null
  br i1 %34, label %70, label %65

35:                                               ; preds = %53, %29
  %36 = phi i64 [ %54, %53 ], [ 16384, %29 ]
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %30) #8
  %39 = icmp slt i64 %36, 8192
  %40 = select i1 %39, i64 %36, i64 8192
  %41 = shl i64 %40, 32
  %42 = ashr exact i64 %41, 32
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8, !tbaa !9
  %44 = call i64 @fread(i8* noundef nonnull %30, i64 noundef 1, i64 noundef %42, %struct._IO_FILE* noundef %43) #8
  %45 = trunc i64 %44 to i32
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %53, label %47

47:                                               ; preds = %38
  %48 = shl i64 %44, 32
  %49 = ashr exact i64 %48, 32
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8, !tbaa !9
  %51 = call i64 @fwrite(i8* noundef nonnull %30, i64 noundef 1, i64 noundef %49, %struct._IO_FILE* noundef %50) #8
  %52 = sub nsw i64 %36, %49
  br label %53

53:                                               ; preds = %47, %38
  %54 = phi i64 [ %52, %47 ], [ %36, %38 ]
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %30) #8
  br i1 %46, label %55, label %35

55:                                               ; preds = %53, %35
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8, !tbaa !9
  %57 = call i32 @fflush(%struct._IO_FILE* noundef %56) #8
  %58 = icmp eq %struct.AVIOContext* %27, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8, !tbaa !9
  %61 = call i32 @fclose(%struct._IO_FILE* noundef %60) #8
  %62 = bitcast %struct.AVIOContext* %27 to i8*
  call void @free(i8* noundef %62) #8
  br label %63

63:                                               ; preds = %59, %55
  %64 = icmp eq %struct.AVIOContext* %13, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %33, %63
  %66 = getelementptr %struct.AVIOContext, %struct.AVIOContext* %13, i64 0, i32 0
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %66, align 8, !tbaa !9
  %68 = call i32 @fclose(%struct._IO_FILE* noundef %67) #8
  %69 = bitcast %struct.AVIOContext* %13 to i8*
  call void @free(i8* noundef %69) #8
  br label %70

70:                                               ; preds = %65, %12, %33, %63
  ret i32 0
}

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !8, i64 0}
!10 = !{!"AVIOContext", !8, i64 0}

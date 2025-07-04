; ModuleID = 'protocol_client_msg.bc'
source_filename = "protocol_client_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.VncState = type { i32 }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [23 x i8] c"Client error occurred\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Msg: %d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i8 @read_u8(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i8, i8* %0, i64 %3
  %5 = load i8, i8* %4, align 1, !tbaa !3
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i16 @read_u16(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i8, i8* %0, i64 %3
  %5 = load i8, i8* %4, align 1, !tbaa !3
  %6 = zext i8 %5 to i16
  %7 = shl nuw i16 %6, 8
  %8 = add nsw i32 %1, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = load i8, i8* %10, align 1, !tbaa !3
  %12 = zext i8 %11 to i16
  %13 = or i16 %7, %12
  ret i16 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @read_u32(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i8, i8* %0, i64 %3
  %5 = load i8, i8* %4, align 1, !tbaa !3
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = add nsw i32 %1, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = load i8, i8* %10, align 1, !tbaa !3
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or i32 %13, %7
  %15 = add nsw i32 %1, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %0, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !3
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or i32 %14, %20
  %22 = add nsw i32 %1, 3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %0, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !3
  %26 = zext i8 %25 to i32
  %27 = or i32 %21, %26
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @read_s32(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i8, i8* %0, i64 %3
  %5 = bitcast i8* %4 to i32*
  %6 = load i32, i32* %5, align 1
  ret i32 %6
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @set_pixel_format(%struct.VncState* nocapture %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4, i16 zeroext %5, i16 zeroext %6, i16 zeroext %7, i8 zeroext %8, i8 zeroext %9, i8 zeroext %10) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @set_encodings(%struct.VncState* nocapture %0, i32* nocapture %1, i16 zeroext %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @framebuffer_update_request(%struct.VncState* nocapture %0, i8 zeroext %1, i16 zeroext %2, i16 zeroext %3, i16 zeroext %4, i16 zeroext %5) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @key_event(%struct.VncState* nocapture %0, i8 zeroext %1, i32 %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @pointer_event(%struct.VncState* nocapture %0, i8 zeroext %1, i16 zeroext %2, i16 zeroext %3) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @client_cut_text(%struct.VncState* nocapture %0, i32 %1, i8* nocapture %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @vnc_client_error(%struct.VncState* nocapture readnone %0) local_unnamed_addr #3 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %2) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @vnc_read_when(%struct.VncState* nocapture %0, i32 (%struct.VncState*, i8*, i64)* nocapture %1, i32 %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @protocol_client_msg(%struct.VncState* nocapture readnone %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = load i8, i8* %1, align 1, !tbaa !3
  %5 = sext i8 %4 to i32
  switch i32 %5, label %76 [
    i32 0, label %6
    i32 2, label %9
    i32 3, label %45
    i32 4, label %48
    i32 5, label %51
    i32 6, label %54
  ]

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 1
  %8 = select i1 %7, i32 20, i32 0
  br label %80

9:                                                ; preds = %3
  switch i64 %2, label %21 [
    i64 1, label %80
    i64 4, label %10
  ]

10:                                               ; preds = %9
  %11 = getelementptr inbounds i8, i8* %1, i64 2
  %12 = load i8, i8* %11, align 1, !tbaa !3
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, i8* %1, i64 3
  %15 = load i8, i8* %14, align 1, !tbaa !3
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %13, 10
  %18 = shl nuw nsw i32 %16, 2
  %19 = or i32 %18, %17
  %20 = add nuw nsw i32 %19, 4
  br label %80

21:                                               ; preds = %9
  %22 = getelementptr inbounds i8, i8* %1, i64 2
  %23 = load i8, i8* %22, align 1, !tbaa !3
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = getelementptr inbounds i8, i8* %1, i64 3
  %27 = load i8, i8* %26, align 1, !tbaa !3
  %28 = zext i8 %27 to i32
  %29 = or i32 %25, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %80, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds i8, i8* %1, i64 4
  %33 = zext i32 %29 to i64
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i64 [ 0, %31 ], [ %43, %34 ]
  %36 = shl nsw i64 %35, 2
  %37 = add nuw nsw i64 %36, 4
  %38 = getelementptr inbounds i8, i8* %1, i64 %37
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 1
  %41 = getelementptr inbounds i8, i8* %32, i64 %36
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 1
  %43 = add nuw nsw i64 %35, 1
  %44 = icmp eq i64 %43, %33
  br i1 %44, label %80, label %34, !llvm.loop !8

45:                                               ; preds = %3
  %46 = icmp eq i64 %2, 1
  %47 = select i1 %46, i32 10, i32 0
  br label %80

48:                                               ; preds = %3
  %49 = icmp eq i64 %2, 1
  %50 = select i1 %49, i32 8, i32 0
  br label %80

51:                                               ; preds = %3
  %52 = icmp eq i64 %2, 1
  %53 = select i1 %52, i32 6, i32 0
  br label %80

54:                                               ; preds = %3
  switch i64 %2, label %75 [
    i64 1, label %80
    i64 8, label %55
  ]

55:                                               ; preds = %54
  %56 = getelementptr inbounds i8, i8* %1, i64 4
  %57 = load i8, i8* %56, align 1, !tbaa !3
  %58 = zext i8 %57 to i32
  %59 = shl nuw i32 %58, 24
  %60 = getelementptr inbounds i8, i8* %1, i64 5
  %61 = load i8, i8* %60, align 1, !tbaa !3
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  %64 = or i32 %63, %59
  %65 = getelementptr inbounds i8, i8* %1, i64 6
  %66 = load i8, i8* %65, align 1, !tbaa !3
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = or i32 %64, %68
  %70 = getelementptr inbounds i8, i8* %1, i64 7
  %71 = load i8, i8* %70, align 1, !tbaa !3
  %72 = zext i8 %71 to i32
  %73 = or i32 %69, %72
  %74 = add i32 %73, 8
  br label %80

75:                                               ; preds = %54
  br label %80

76:                                               ; preds = %3
  %77 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 noundef %5)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %79 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %78) #8
  br label %80

80:                                               ; preds = %34, %21, %51, %48, %45, %6, %75, %76, %54, %9, %55, %10
  %81 = phi i32 [ %74, %55 ], [ %20, %10 ], [ 4, %9 ], [ 8, %54 ], [ 0, %76 ], [ 0, %75 ], [ %8, %6 ], [ %47, %45 ], [ %50, %48 ], [ %53, %51 ], [ 0, %21 ], [ 0, %34 ]
  ret i32 %81
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %1 = alloca [32 x i8], align 16
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %3 = load i8, i8* %2, align 16, !tbaa !3
  %4 = sext i8 %3 to i32
  switch i32 %4, label %29 [
    i32 0, label %33
    i32 2, label %5
    i32 3, label %33
    i32 4, label %33
    i32 5, label %33
    i32 6, label %33
  ]

5:                                                ; preds = %0
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 2
  %7 = load i8, i8* %6, align 2, !tbaa !3
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 3
  %11 = load i8, i8* %10, align 1, !tbaa !3
  %12 = zext i8 %11 to i32
  %13 = or i32 %9, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 4
  %17 = zext i32 %13 to i64
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i64 [ 0, %15 ], [ %27, %18 ]
  %20 = shl nsw i64 %19, 2
  %21 = add nuw nsw i64 %20, 4
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 %21
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds i8, i8* %16, i64 %20
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 4
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %27, %17
  br i1 %28, label %33, label %18, !llvm.loop !8

29:                                               ; preds = %0
  %30 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 noundef %4) #9
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %31) #8
  br label %33

33:                                               ; preds = %18, %0, %0, %0, %0, %0, %5, %29
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #9
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind }
attributes #7 = { cold }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}

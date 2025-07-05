; ModuleID = 'vmdk_free.bc'
source_filename = "vmdk_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VmdkExtent = type { i8*, i8*, i8* }

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = call noalias dereferenceable_or_null(48) i8* @calloc(i64 noundef 2, i64 noundef 24) #3
  %2 = bitcast i8* %1 to %struct.VmdkExtent*
  br label %14

3:                                                ; preds = %14, %3
  %4 = phi i64 [ %11, %3 ], [ 0, %14 ]
  %5 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %2, i64 %4, i32 0
  %6 = load i8*, i8** %5, align 8, !tbaa !3
  call void @free(i8* noundef %6) #3
  %7 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %2, i64 %4, i32 1
  %8 = load i8*, i8** %7, align 8, !tbaa !8
  call void @free(i8* noundef %8) #3
  %9 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %2, i64 %4, i32 2
  %10 = load i8*, i8** %9, align 8, !tbaa !9
  call void @free(i8* noundef %10) #3
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %4, 0
  br i1 %12, label %3, label %13, !llvm.loop !10

13:                                               ; preds = %3
  call void @free(i8* noundef %1) #3
  ret i32 0

14:                                               ; preds = %0, %14
  %15 = phi i64 [ 0, %0 ], [ %22, %14 ]
  %16 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %17 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %2, i64 %15, i32 0
  store i8* %16, i8** %17, align 8, !tbaa !3
  %18 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %19 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %2, i64 %15, i32 1
  store i8* %18, i8** %19, align 8, !tbaa !8
  %20 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %21 = getelementptr inbounds %struct.VmdkExtent, %struct.VmdkExtent* %2, i64 %15, i32 2
  store i8* %20, i8** %21, align 8, !tbaa !9
  %22 = add nuw nsw i64 %15, 1
  %23 = icmp eq i64 %15, 0
  br i1 %23, label %14, label %3, !llvm.loop !13
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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}

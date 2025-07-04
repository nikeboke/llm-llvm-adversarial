; ModuleID = 'v9fs_renameat.bc'
source_filename = "v9fs_renameat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.V9fsString = type { i8* }
%struct.V9fsState = type { i32 }
%struct.V9fsPDU = type { %struct.V9fsState* }

@.str = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Renaming '%s' (fid %d) to '%s' (fid %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Error: %zd\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Rename successful, offset: %zd\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @v9fs_string_init(%struct.V9fsString* nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #12
  %3 = getelementptr inbounds %struct.V9fsString, %struct.V9fsString* %0, i64 0, i32 0
  store i8* %2, i8** %3, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %2, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 6, i1 false) #12
  ret void
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @v9fs_string_free(%struct.V9fsString* nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.V9fsString, %struct.V9fsString* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !3
  call void @free(i8* noundef %3) #12
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i32 @name_is_illegal(i8* noundef readonly %0) local_unnamed_addr #4 {
  %2 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 47) #13
  %3 = icmp ne i8* %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @v9fs_path_write_lock(%struct.V9fsState* nocapture %0) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @v9fs_path_unlock(%struct.V9fsState* nocapture %0) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local i64 @pdu_unmarshal(%struct.V9fsPDU* nocapture readnone %0, i64 %1, i8* nocapture readnone %2, i32* nocapture noundef writeonly %3, %struct.V9fsString* nocapture noundef readonly %4, i32* nocapture noundef writeonly %5, %struct.V9fsString* nocapture noundef readonly %6) local_unnamed_addr #7 {
  store i32 1, i32* %3, align 4, !tbaa !8
  store i32 2, i32* %5, align 4, !tbaa !8
  %8 = getelementptr inbounds %struct.V9fsString, %struct.V9fsString* %4, i64 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %9, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 6, i1 false) #12
  %10 = getelementptr inbounds %struct.V9fsString, %struct.V9fsString* %6, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %11, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6, i1 false) #12
  ret i64 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @v9fs_complete_renameat(%struct.V9fsPDU* nocapture readnone %0, i32 noundef %1, %struct.V9fsString* nocapture noundef readonly %2, i32 noundef %3, %struct.V9fsString* nocapture noundef readonly %4) local_unnamed_addr #8 {
  %6 = getelementptr inbounds %struct.V9fsString, %struct.V9fsString* %2, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !3
  %8 = getelementptr inbounds %struct.V9fsString, %struct.V9fsString* %4, i64 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !3
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* noundef %7, i32 noundef %1, i8* noundef %9, i32 noundef %3)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define dso_local void @pdu_complete(%struct.V9fsPDU* nocapture readnone %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = icmp slt i64 %1, 0
  %4 = select i1 %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0)
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) %4, i64 noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #10 {
  %1 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %1, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 6, i1 false) #12
  %2 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %2, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 6, i1 false) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %1, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 6, i1 false) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %2, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6, i1 false) #12
  %3 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %1, i32 noundef 47) #13
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %2, i32 noundef 47) #13
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* noundef %1, i32 noundef 1, i8* noundef %2, i32 noundef 2) #12
  br label %10

10:                                               ; preds = %8, %5, %0
  %11 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %0 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %5 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), %8 ]
  %12 = phi i64 [ -2, %0 ], [ -2, %5 ], [ 7, %8 ]
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) %11, i64 noundef %12) #12
  call void @free(i8* noundef %1) #12
  call void @free(i8* noundef %2) #12
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

attributes #0 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}

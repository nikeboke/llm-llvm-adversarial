; ModuleID = 'sws_alloc.bc'
source_filename = "sws_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVClass = type { i8* }
%struct.SwsContext = type { %struct.AVClass* }

@.str = private unnamed_addr constant [11 x i8] c"SwsContext\00", align 1
@sws_context_class = dso_local global %struct.AVClass { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Context allocated with class: %s\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias i8* @av_mallocz(i64 noundef %0) local_unnamed_addr #0 {
  %2 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %0) #7
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
  %2 = bitcast i8* %1 to %struct.SwsContext*
  %3 = bitcast i8* %1 to %struct.AVClass**
  store %struct.AVClass* @sws_context_class, %struct.AVClass** %3, align 8, !tbaa !3
  ret %struct.SwsContext* %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %1 = call noalias dereferenceable_or_null(8) i8* @calloc(i64 noundef 1, i64 noundef 8) #7
  %2 = bitcast i8* %1 to %struct.AVClass**
  store %struct.AVClass* @sws_context_class, %struct.AVClass** %2, align 8, !tbaa !3
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  br label %13

6:                                                ; preds = %0
  %7 = bitcast i8* %1 to %struct.SwsContext*
  %8 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %7, i64 0, i32 0
  %9 = load %struct.AVClass*, %struct.AVClass** %8, align 8, !tbaa !3
  %10 = getelementptr inbounds %struct.AVClass, %struct.AVClass* %9, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !tbaa !8
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* noundef %11)
  call void @free(i8* noundef %1) #7
  br label %13

13:                                               ; preds = %6, %4
  %14 = phi i32 [ 0, %6 ], [ 1, %4 ]
  ret i32 %14
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

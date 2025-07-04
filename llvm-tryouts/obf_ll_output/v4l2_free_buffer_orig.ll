; ModuleID = 'v4l2_free_buffer.bc'
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @av_buffer_unref(%struct.AVBufferRef** noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.AVBufferRef** %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load %struct.AVBufferRef*, %struct.AVBufferRef** %0, align 8, !tbaa !3
  %5 = icmp eq %struct.AVBufferRef* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %0, align 8, !tbaa !3
  br label %7

7:                                                ; preds = %6, %3, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local nonnull %struct.V4L2m2mContext* @buf_to_m2mctx(%struct.V4L2Buffer* nocapture noundef readnone %0) local_unnamed_addr #1 {
  ret %struct.V4L2m2mContext* @buf_to_m2mctx.dummy_ctx
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @ff_v4l2_buffer_enqueue(%struct.V4L2Buffer* nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str, i64 0, i64 0))
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

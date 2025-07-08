; ModuleID = 'protocol_client_msg_obf.bc'
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
@x.11 = common global i32 0
@y.12 = common global i32 0
@x.13 = common global i32 0
@y.14 = common global i32 0
@x.15 = common global i32 0
@y.16 = common global i32 0
@x.17 = common global i32 0
@y.18 = common global i32 0
@x.19 = common global i32 0
@y.20 = common global i32 0
@x.21 = common global i32 0
@y.22 = common global i32 0
@x.23 = common global i32 0
@y.24 = common global i32 0
@x.25 = common global i32 0
@y.26 = common global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i8 @read_u8(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i8, i8* %0, i64 %3
  br label %.split

.split:                                           ; preds = %2
  %5 = load i8, i8* %4, align 1, !tbaa !3
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i16 @read_u16(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i8, i8* %0, i64 %3
  %5 = load i8, i8* %4, align 1, !tbaa !3
  %6 = zext i8 %5 to i16
  %7 = shl nuw i16 %6, 8
  br label %.split

.split:                                           ; preds = %2
  %8 = add i32 %1, 772042315
  %9 = add i32 %8, 1
  br label %.split.split

.split.split:                                     ; preds = %.split
  %10 = sub i32 %9, 772042315
  %11 = add nsw i32 %1, 1
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i8, i8* %0, i64 %12
  %14 = load i8, i8* %13, align 1, !tbaa !3
  %15 = zext i8 %14 to i16
  %16 = xor i16 %7, -1
  %17 = xor i16 %15, -1
  %18 = xor i16 7752, -1
  %19 = and i16 %16, 7752
  %20 = and i16 %7, %18
  %21 = and i16 %17, 7752
  %22 = and i16 %15, %18
  %23 = or i16 %19, %20
  %24 = or i16 %21, %22
  %25 = xor i16 %23, %24
  %26 = or i16 %16, %17
  %27 = xor i16 %26, -1
  %28 = or i16 7752, %18
  %29 = and i16 %27, %28
  %30 = or i16 %25, %29
  %31 = or i16 %7, %15
  ret i16 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @read_u32(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, i32* @x.3, align 4
  %4 = load i32, i32* @y.4, align 4
  %5 = sub i32 0, 1
  %6 = add i32 %3, %5
  %7 = sub i32 %3, 1
  %8 = mul i32 %3, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %4, 10
  %12 = xor i1 %10, true
  %13 = xor i1 %11, true
  %14 = xor i1 true, true
  %15 = and i1 %12, true
  %16 = and i1 %10, %14
  %17 = and i1 %13, true
  %18 = and i1 %11, %14
  br label %.split

.split:                                           ; preds = %2
  %19 = or i1 %15, %16
  %20 = or i1 %17, %18
  %21 = xor i1 %19, %20
  %22 = or i1 %12, %13
  br label %.split.split

.split.split:                                     ; preds = %.split
  %23 = xor i1 %22, true
  %24 = or i1 true, %14
  %25 = and i1 %23, %24
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds i8, i8* %0, i64 %28
  %30 = load i8, i8* %29, align 1, !tbaa !3
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 %31, 24
  %33 = add i32 %1, 1937847002
  %34 = add i32 %33, 1
  %35 = sub i32 %34, 1937847002
  %36 = add nsw i32 %1, 1
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %0, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !3
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 16
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %42 = and i32 %41, %32
  %43 = xor i32 %41, %32
  %44 = or i32 %42, %43
  %45 = or i32 %41, %32
  %46 = add i32 %1, 613139447
  %47 = add i32 %46, 2
  %48 = sub i32 %47, 613139447
  %49 = add nsw i32 %1, 2
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %0, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !3
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = and i32 %44, %54
  %56 = xor i32 %44, %54
  %57 = or i32 %55, %56
  %58 = or i32 %44, %54
  %59 = sub i32 0, %1
  %60 = sub i32 0, 3
  %61 = add i32 %59, %60
  %62 = sub i32 0, %61
  %63 = add nsw i32 %1, 3
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %0, i64 %64
  %66 = load i8, i8* %65, align 1, !tbaa !3
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %67 = zext i8 %66 to i32
  %68 = and i32 %57, %67
  %69 = xor i32 %57, %67
  %70 = or i32 %68, %69
  %71 = or i32 %57, %67
  %72 = load i32, i32* @x.3, align 4
  %73 = load i32, i32* @y.4, align 4
  %74 = sub i32 0, 1
  %75 = add i32 %72, %74
  %76 = sub i32 %72, 1
  %77 = mul i32 %72, %75
  %78 = urem i32 %77, 2
  %79 = icmp eq i32 %78, 0
  %80 = icmp slt i32 %73, 10
  %81 = xor i1 %79, true
  %82 = xor i1 %80, true
  %83 = xor i1 true, true
  %84 = and i1 %81, true
  %85 = and i1 %79, %83
  %86 = and i1 %82, true
  %87 = and i1 %80, %83
  %88 = or i1 %84, %85
  %89 = or i1 %86, %87
  %90 = xor i1 %88, %89
  %91 = or i1 %81, %82
  %92 = xor i1 %91, true
  %93 = or i1 true, %83
  %94 = and i1 %92, %93
  %95 = or i1 %90, %94
  %96 = or i1 %79, %80
  br i1 %95, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 %70

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %97 = sext i32 %1 to i64
  %98 = getelementptr inbounds i8, i8* %0, i64 %97
  %99 = load i8, i8* %98, align 1, !tbaa !3
  %100 = zext i8 %99 to i32
  %101 = add i32 0, 2067265966
  %102 = sub i32 %101, %100
  %103 = sub i32 %102, 2067265966
  %_ = sub i32 0, %100
  %104 = sub i32 0, 24
  %105 = sub i32 %103, %104
  %gen = add i32 %103, 24
  %_1 = shl i32 %100, 24
  %106 = shl nuw i32 %100, 24
  %_2 = shl i32 %1, 1
  %107 = sub i32 0, 1
  %108 = sub i32 %1, %107
  %109 = add nsw i32 %1, 1
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %0, i64 %110
  %112 = load i8, i8* %111, align 1, !tbaa !3
  %113 = zext i8 %112 to i32
  %114 = sub i32 0, 16
  %115 = add i32 %113, %114
  %_3 = sub i32 %113, 16
  %gen4 = mul i32 %115, 16
  %116 = sub i32 0, %113
  %117 = add i32 0, %116
  %_5 = sub i32 0, %113
  %118 = add i32 %117, -1097233330
  %119 = add i32 %118, 16
  %120 = sub i32 %119, -1097233330
  %gen6 = add i32 %117, 16
  %121 = sub i32 0, %113
  %122 = add i32 0, %121
  %_7 = sub i32 0, %113
  %123 = sub i32 0, 16
  %124 = sub i32 %122, %123
  %gen8 = add i32 %122, 16
  %125 = sub i32 %113, -525069354
  %126 = sub i32 %125, 16
  %127 = add i32 %126, -525069354
  %_9 = sub i32 %113, 16
  %gen10 = mul i32 %127, 16
  %_11 = shl i32 %113, 16
  %128 = shl nuw nsw i32 %113, 16
  %129 = add i32 %128, -126216061
  %130 = sub i32 %129, %106
  %131 = sub i32 %130, -126216061
  %_12 = sub i32 %128, %106
  %gen13 = mul i32 %131, %106
  %132 = add i32 %128, -2046102968
  %133 = sub i32 %132, %106
  %134 = sub i32 %133, -2046102968
  %_14 = sub i32 %128, %106
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %gen15 = mul i32 %134, %106
  %135 = xor i32 %128, -1
  %136 = xor i32 %106, -1
  %137 = xor i32 -636653721, -1
  %138 = and i32 %135, -636653721
  %139 = and i32 %128, %137
  %140 = and i32 %136, -636653721
  %141 = and i32 %106, %137
  %142 = or i32 %138, %139
  %143 = or i32 %140, %141
  %144 = xor i32 %142, %143
  %145 = or i32 %135, %136
  %146 = xor i32 %145, -1
  %147 = or i32 -636653721, %137
  %148 = and i32 %146, %147
  %149 = or i32 %144, %148
  %150 = or i32 %128, %106
  %151 = sub i32 0, %1
  %152 = add i32 0, %151
  %_16 = sub i32 0, %1
  %153 = sub i32 0, 2
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  %154 = sub i32 %152, %153
  %gen17 = add i32 %152, 2
  %_18 = shl i32 %1, 2
  %155 = add i32 %1, -1595360707
  %156 = add i32 %155, 2
  %157 = sub i32 %156, -1595360707
  %158 = add nsw i32 %1, 2
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %0, i64 %159
  %161 = load i8, i8* %160, align 1, !tbaa !3
  %162 = zext i8 %161 to i32
  %_19 = shl i32 %162, 8
  %163 = sub i32 %162, -1084786929
  %164 = sub i32 %163, 8
  %165 = add i32 %164, -1084786929
  %_20 = sub i32 %162, 8
  %gen21 = mul i32 %165, 8
  %_22 = shl i32 %162, 8
  %166 = shl nuw nsw i32 %162, 8
  %167 = sub i32 0, %166
  %168 = add i32 %149, %167
  %_23 = sub i32 %149, %166
  %gen24 = mul i32 %168, %166
  %169 = add i32 %149, 686909017
  %170 = sub i32 %169, %166
  %171 = sub i32 %170, 686909017
  %_25 = sub i32 %149, %166
  %gen26 = mul i32 %171, %166
  %_27 = shl i32 %149, %166
  %172 = add i32 %149, 1385147634
  %173 = sub i32 %172, %166
  %174 = sub i32 %173, 1385147634
  %_28 = sub i32 %149, %166
  %gen29 = mul i32 %174, %166
  %_30 = shl i32 %149, %166
  %_31 = shl i32 %149, %166
  %175 = sub i32 %149, -250702630
  %176 = sub i32 %175, %166
  %177 = add i32 %176, -250702630
  %_32 = sub i32 %149, %166
  %gen33 = mul i32 %177, %166
  %178 = xor i32 %149, -1
  %179 = xor i32 %166, -1
  %180 = xor i32 -1967888191, -1
  %181 = and i32 %178, -1967888191
  %182 = and i32 %149, %180
  %183 = and i32 %179, -1967888191
  %184 = and i32 %166, %180
  %185 = or i32 %181, %182
  %186 = or i32 %183, %184
  %187 = xor i32 %185, %186
  %188 = or i32 %178, %179
  %189 = xor i32 %188, -1
  %190 = or i32 -1967888191, %180
  %191 = and i32 %189, %190
  %192 = or i32 %187, %191
  %193 = or i32 %149, %166
  %194 = sub i32 0, %1
  %195 = add i32 0, %194
  %_34 = sub i32 0, %1
  %196 = add i32 %195, 331313308
  %197 = add i32 %196, 3
  %198 = sub i32 %197, 331313308
  %gen35 = add i32 %195, 3
  %_36 = shl i32 %1, 3
  %199 = sub i32 %1, 1661544657
  %200 = sub i32 %199, 3
  %201 = add i32 %200, 1661544657
  %_37 = sub i32 %1, 3
  %gen38 = mul i32 %201, 3
  %202 = sub i32 %1, -370769166
  %203 = add i32 %202, 3
  %204 = add i32 %203, -370769166
  %205 = add nsw i32 %1, 3
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %0, i64 %206
  %208 = load i8, i8* %207, align 1, !tbaa !3
  %209 = zext i8 %208 to i32
  %210 = sub i32 0, %192
  %211 = add i32 0, %210
  %_39 = sub i32 0, %192
  %212 = sub i32 0, %209
  %213 = sub i32 %211, %212
  %gen40 = add i32 %211, %209
  %_41 = shl i32 %192, %209
  %214 = sub i32 0, %192
  %215 = add i32 0, %214
  %_42 = sub i32 0, %192
  %216 = add i32 %215, -102847724
  %217 = add i32 %216, %209
  %218 = sub i32 %217, -102847724
  %gen43 = add i32 %215, %209
  %219 = xor i32 %192, -1
  %220 = xor i32 %209, -1
  %221 = xor i32 -869936653, -1
  %222 = and i32 %219, -869936653
  %223 = and i32 %192, %221
  %224 = and i32 %220, -869936653
  %225 = and i32 %209, %221
  %226 = or i32 %222, %223
  %227 = or i32 %224, %225
  %228 = xor i32 %226, %227
  %229 = or i32 %219, %220
  %230 = xor i32 %229, -1
  %231 = or i32 -869936653, %221
  %232 = and i32 %230, %231
  %233 = or i32 %228, %232
  %234 = or i32 %192, %209
  br label %originalBB
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @read_s32(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, i32* @x.5, align 4
  %4 = load i32, i32* @y.6, align 4
  %5 = sub i32 0, 1
  %6 = add i32 %3, %5
  %7 = sub i32 %3, 1
  %8 = mul i32 %3, %6
  %9 = urem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp slt i32 %4, 10
  %12 = xor i1 %10, true
  %13 = xor i1 %11, true
  %14 = xor i1 false, true
  %15 = and i1 %12, false
  %16 = and i1 %10, %14
  %17 = and i1 %13, false
  %18 = and i1 %11, %14
  %19 = or i1 %15, %16
  %20 = or i1 %17, %18
  br label %.split

.split:                                           ; preds = %2
  %21 = xor i1 %19, %20
  %22 = or i1 %12, %13
  br label %.split.split

.split.split:                                     ; preds = %.split
  %23 = xor i1 %22, true
  %24 = or i1 false, %14
  %25 = and i1 %23, %24
  %26 = or i1 %21, %25
  %27 = or i1 %10, %11
  br i1 %26, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds i8, i8* %0, i64 %28
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 1
  %32 = load i32, i32* @x.5, align 4
  %33 = load i32, i32* @y.6, align 4
  %34 = sub i32 0, 1
  %35 = add i32 %32, %34
  %36 = sub i32 %32, 1
  %37 = mul i32 %32, %35
  %38 = urem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = icmp slt i32 %33, 10
  %41 = xor i1 %39, true
  %42 = xor i1 %40, true
  %43 = xor i1 true, true
  %44 = and i1 %41, true
  %45 = and i1 %39, %43
  %46 = and i1 %42, true
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %47 = and i1 %40, %43
  %48 = or i1 %44, %45
  %49 = or i1 %46, %47
  %50 = xor i1 %48, %49
  %51 = or i1 %41, %42
  %52 = xor i1 %51, true
  %53 = or i1 true, %43
  %54 = and i1 %52, %53
  %55 = or i1 %50, %54
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %56 = or i1 %39, %40
  br i1 %55, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret i32 %31

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %57 = sext i32 %1 to i64
  %58 = getelementptr inbounds i8, i8* %0, i64 %57
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 1
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  br label %originalBB
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
  %4 = load i32, i32* @x.9, align 4
  %5 = load i32, i32* @y.10, align 4
  %6 = sub i32 0, 1
  %7 = add i32 %4, %6
  %8 = sub i32 %4, 1
  %9 = mul i32 %4, %7
  %10 = urem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = icmp slt i32 %5, 10
  %13 = xor i1 %11, true
  %14 = xor i1 %12, true
  %15 = xor i1 false, true
  %16 = and i1 %13, false
  br label %.split

.split:                                           ; preds = %3
  %17 = and i1 %11, %15
  %18 = and i1 %14, false
  %19 = and i1 %12, %15
  %20 = or i1 %16, %17
  %21 = or i1 %18, %19
  %22 = xor i1 %20, %21
  %23 = or i1 %13, %14
  %24 = xor i1 %23, true
  %25 = or i1 false, %15
  br label %.split.split

.split.split:                                     ; preds = %.split
  %26 = and i1 %24, %25
  %27 = or i1 %22, %26
  %28 = or i1 %11, %12
  br i1 %27, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %29 = load i32, i32* @x.9, align 4
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %30 = load i32, i32* @y.10, align 4
  %31 = sub i32 %29, 1720312825
  %32 = sub i32 %31, 1
  %33 = add i32 %32, 1720312825
  %34 = sub i32 %29, 1
  %35 = mul i32 %29, %33
  %36 = urem i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = icmp slt i32 %30, 10
  %39 = and i1 %37, %38
  %40 = xor i1 %37, %38
  %41 = or i1 %39, %40
  %42 = or i1 %37, %38
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  br i1 %41, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
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
  br label %.split

.split:                                           ; preds = %1
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %2) #7
  br label %.split.split

.split.split:                                     ; preds = %.split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @vnc_read_when(%struct.VncState* nocapture %0, i32 (%struct.VncState*, i8*, i64)* nocapture %1, i32 %2) local_unnamed_addr #2 {
  %4 = load i32, i32* @x.21, align 4
  %5 = load i32, i32* @y.22, align 4
  %6 = sub i32 0, 1
  %7 = add i32 %4, %6
  %8 = sub i32 %4, 1
  %9 = mul i32 %4, %7
  %10 = urem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br label %.split

.split:                                           ; preds = %3
  %12 = icmp slt i32 %5, 10
  br label %.split.split

.split.split:                                     ; preds = %.split
  %13 = and i1 %11, %12
  %14 = xor i1 %11, %12
  %15 = or i1 %13, %14
  %16 = or i1 %11, %12
  br i1 %15, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB
  %17 = load i32, i32* @x.21, align 4
  %18 = load i32, i32* @y.22, align 4
  %19 = sub i32 %17, 1294347126
  %20 = sub i32 %19, 1
  %21 = add i32 %20, 1294347126
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %22 = sub i32 %17, 1
  %23 = mul i32 %17, %21
  %24 = urem i32 %23, 2
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %25 = icmp eq i32 %24, 0
  %26 = icmp slt i32 %18, 10
  %27 = xor i1 %25, true
  %28 = xor i1 %26, true
  %29 = xor i1 true, true
  %30 = and i1 %27, true
  %31 = and i1 %25, %29
  %32 = and i1 %28, true
  %33 = and i1 %26, %29
  %34 = or i1 %30, %31
  %35 = or i1 %32, %33
  %36 = xor i1 %34, %35
  %37 = or i1 %27, %28
  %38 = xor i1 %37, true
  %39 = or i1 true, %29
  %40 = and i1 %38, %39
  %41 = or i1 %36, %40
  %42 = or i1 %25, %26
  br i1 %41, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  ret void

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  br label %originalBB
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @protocol_client_msg(%struct.VncState* nocapture readnone %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %.reg2mem40 = alloca i64, align 8
  %.reg2mem38 = alloca i8*, align 8
  %.reg2mem35 = alloca i32, align 4
  %.reg2mem26 = alloca i32, align 4
  %.reg2mem = alloca i8, align 1
  %4 = load i8, i8* %1, align 1, !tbaa !3
  store i8 %4, i8* %.reg2mem, align 1
  br label %.split

.split:                                           ; preds = %3
  %switchVar = alloca i32, align 4
  store i32 -606074566, i32* %switchVar, align 4
  br label %.split.split

.split.split:                                     ; preds = %.split
  %.reg2mem42 = alloca i64, align 8
  %.reg2mem44 = alloca i32, align 4
  br label %loopEntry

loopEntry:                                        ; preds = %.split.split, %loopEnd
  %5 = load i32, i32* @x.23, align 4
  %6 = load i32, i32* @y.24, align 4
  %7 = sub i32 %5, 1123764369
  %8 = sub i32 %7, 1
  %9 = add i32 %8, 1123764369
  %10 = sub i32 %5, 1
  %11 = mul i32 %5, %9
  %12 = urem i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  %14 = icmp slt i32 %6, 10
  %15 = xor i1 %13, true
  %16 = xor i1 %14, true
  %17 = xor i1 false, true
  %18 = and i1 %15, false
  %19 = and i1 %13, %17
  %20 = and i1 %16, false
  %21 = and i1 %14, %17
  %22 = or i1 %18, %19
  %23 = or i1 %20, %21
  %24 = xor i1 %22, %23
  %25 = or i1 %15, %16
  br label %loopEntry.split.split

loopEntry.split.split:                            ; preds = %loopEntry.split
  %26 = xor i1 %25, true
  %27 = or i1 false, %17
  %28 = and i1 %26, %27
  %29 = or i1 %24, %28
  %30 = or i1 %13, %14
  br i1 %29, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %loopEntry.split.split, %originalBBalteredBB.split
  %switchVar25 = load i32, i32* %switchVar, align 4
  %31 = load i32, i32* @x.23, align 4
  %32 = load i32, i32* @y.24, align 4
  %33 = sub i32 %31, -1931556275
  %34 = sub i32 %33, 1
  %35 = add i32 %34, -1931556275
  %36 = sub i32 %31, 1
  %37 = mul i32 %31, %35
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %38 = urem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = icmp slt i32 %32, 10
  %41 = xor i1 %39, true
  %42 = xor i1 %40, true
  %43 = xor i1 false, true
  %44 = and i1 %41, false
  %45 = and i1 %39, %43
  %46 = and i1 %42, false
  %47 = and i1 %40, %43
  %48 = or i1 %44, %45
  %49 = or i1 %46, %47
  %50 = xor i1 %48, %49
  %51 = or i1 %41, %42
  %52 = xor i1 %51, true
  %53 = or i1 false, %43
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %54 = and i1 %52, %53
  %55 = or i1 %50, %54
  %56 = or i1 %39, %40
  br i1 %55, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  switch i32 %switchVar25, label %switchDefault [
    i32 -606074566, label %first
    i32 -1705973457, label %NodeBlock9
    i32 -1129981690, label %NodeBlock7
    i32 558649457, label %NodeBlock5
    i32 1434720944, label %LeafBlock3
    i32 1348114589, label %NodeBlock1
    i32 -1356575336, label %NodeBlock
    i32 -270776436, label %LeafBlock
    i32 1823583685, label %91
    i32 -1922069623, label %133
    i32 1106788141, label %NodeBlock16
    i32 1119493429, label %LeafBlock14
    i32 -1592528404, label %LeafBlock12
    i32 2042569820, label %245
    i32 -1523272661, label %NewDefault11
    i32 -1780026864, label %300
    i32 -774535636, label %326
    i32 -137768360, label %329
    i32 893616100, label %385
    i32 -92815084, label %427
    i32 -1418590904, label %469
    i32 -727598512, label %472
    i32 1481610261, label %NodeBlock23
    i32 1857498444, label %LeafBlock21
    i32 -119634711, label %LeafBlock19
    i32 231020845, label %528
    i32 1006112288, label %NewDefault18
    i32 1216195938, label %571
    i32 704264449, label %NewDefault
    i32 1578865681, label %624
    i32 -1603414168, label %628
  ]

switchDefault:                                    ; preds = %originalBBpart2
  br label %loopEnd

first:                                            ; preds = %originalBBpart2
  %.reload = load i8, i8* %.reg2mem, align 1
  %57 = sext i8 %.reload to i32
  store i32 %57, i32* %.reg2mem26, align 4
  br label %first.split

first.split:                                      ; preds = %first
  store i32 -1705973457, i32* %switchVar, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  br label %loopEnd

NodeBlock9:                                       ; preds = %originalBBpart2
  %.reload33 = load i32, i32* %.reg2mem26, align 4
  %Pivot10 = icmp slt i32 %.reload33, 4
  br label %NodeBlock9.split

NodeBlock9.split:                                 ; preds = %NodeBlock9
  %58 = select i1 %Pivot10, i32 1348114589, i32 -1129981690
  store i32 %58, i32* %switchVar, align 4
  br label %NodeBlock9.split.split

NodeBlock9.split.split:                           ; preds = %NodeBlock9.split
  br label %loopEnd

NodeBlock7:                                       ; preds = %originalBBpart2
  %.reload29 = load i32, i32* %.reg2mem26, align 4
  %Pivot8 = icmp slt i32 %.reload29, 5
  %59 = select i1 %Pivot8, i32 -92815084, i32 558649457
  br label %NodeBlock7.split

NodeBlock7.split:                                 ; preds = %NodeBlock7
  store i32 %59, i32* %switchVar, align 4
  br label %NodeBlock7.split.split

NodeBlock7.split.split:                           ; preds = %NodeBlock7.split
  br label %loopEnd

NodeBlock5:                                       ; preds = %originalBBpart2
  %60 = load i32, i32* @x.23, align 4
  %61 = load i32, i32* @y.24, align 4
  %62 = sub i32 0, 1
  %63 = add i32 %60, %62
  %64 = sub i32 %60, 1
  br label %NodeBlock5.split

NodeBlock5.split:                                 ; preds = %NodeBlock5
  %65 = mul i32 %60, %63
  br label %NodeBlock5.split.split

NodeBlock5.split.split:                           ; preds = %NodeBlock5.split
  %66 = urem i32 %65, 2
  %67 = icmp eq i32 %66, 0
  %68 = icmp slt i32 %61, 10
  %69 = and i1 %67, %68
  %70 = xor i1 %67, %68
  %71 = or i1 %69, %70
  %72 = or i1 %67, %68
  br i1 %71, label %originalBB46, label %originalBB46alteredBB

originalBB46:                                     ; preds = %NodeBlock5.split.split, %originalBB46alteredBB.split.split
  %.reload28 = load i32, i32* %.reg2mem26, align 4
  br label %originalBB46.split

originalBB46.split:                               ; preds = %originalBB46
  %Pivot6 = icmp slt i32 %.reload28, 6
  %73 = select i1 %Pivot6, i32 -1418590904, i32 1434720944
  store i32 %73, i32* %switchVar, align 4
  %74 = load i32, i32* @x.23, align 4
  %75 = load i32, i32* @y.24, align 4
  %76 = sub i32 0, 1
  %77 = add i32 %74, %76
  %78 = sub i32 %74, 1
  %79 = mul i32 %74, %77
  %80 = urem i32 %79, 2
  %81 = icmp eq i32 %80, 0
  %82 = icmp slt i32 %75, 10
  %83 = and i1 %81, %82
  %84 = xor i1 %81, %82
  %85 = or i1 %83, %84
  %86 = or i1 %81, %82
  br label %originalBB46.split.split

originalBB46.split.split:                         ; preds = %originalBB46.split
  br i1 %85, label %originalBBpart248, label %originalBB46alteredBB

originalBBpart248:                                ; preds = %originalBB46.split.split
  br label %loopEnd

LeafBlock3:                                       ; preds = %originalBBpart2
  %.reload27 = load i32, i32* %.reg2mem26, align 4
  %SwitchLeaf4 = icmp eq i32 %.reload27, 6
  %87 = select i1 %SwitchLeaf4, i32 -727598512, i32 704264449
  br label %LeafBlock3.split

LeafBlock3.split:                                 ; preds = %LeafBlock3
  store i32 %87, i32* %switchVar, align 4
  br label %LeafBlock3.split.split

LeafBlock3.split.split:                           ; preds = %LeafBlock3.split
  br label %loopEnd

NodeBlock1:                                       ; preds = %originalBBpart2
  %.reload32 = load i32, i32* %.reg2mem26, align 4
  %Pivot2 = icmp slt i32 %.reload32, 2
  br label %NodeBlock1.split

NodeBlock1.split:                                 ; preds = %NodeBlock1
  %88 = select i1 %Pivot2, i32 -270776436, i32 -1356575336
  br label %NodeBlock1.split.split

NodeBlock1.split.split:                           ; preds = %NodeBlock1.split
  store i32 %88, i32* %switchVar, align 4
  br label %loopEnd

NodeBlock:                                        ; preds = %originalBBpart2
  %.reload30 = load i32, i32* %.reg2mem26, align 4
  %Pivot = icmp slt i32 %.reload30, 3
  br label %NodeBlock.split

NodeBlock.split:                                  ; preds = %NodeBlock
  %89 = select i1 %Pivot, i32 -1922069623, i32 893616100
  br label %NodeBlock.split.split

NodeBlock.split.split:                            ; preds = %NodeBlock.split
  store i32 %89, i32* %switchVar, align 4
  br label %loopEnd

LeafBlock:                                        ; preds = %originalBBpart2
  %.reload31 = load i32, i32* %.reg2mem26, align 4
  br label %LeafBlock.split

LeafBlock.split:                                  ; preds = %LeafBlock
  %SwitchLeaf = icmp eq i32 %.reload31, 0
  %90 = select i1 %SwitchLeaf, i32 1823583685, i32 704264449
  br label %LeafBlock.split.split

LeafBlock.split.split:                            ; preds = %LeafBlock.split
  store i32 %90, i32* %switchVar, align 4
  br label %loopEnd

91:                                               ; preds = %originalBBpart2
  %92 = load i32, i32* @x.23, align 4
  %93 = load i32, i32* @y.24, align 4
  %94 = sub i32 %92, 1626297290
  %95 = sub i32 %94, 1
  %96 = add i32 %95, 1626297290
  %97 = sub i32 %92, 1
  %98 = mul i32 %92, %96
  %99 = urem i32 %98, 2
  %100 = icmp eq i32 %99, 0
  %101 = icmp slt i32 %93, 10
  %102 = xor i1 %100, true
  %103 = xor i1 %101, true
  %104 = xor i1 false, true
  %105 = and i1 %102, false
  %106 = and i1 %100, %104
  %107 = and i1 %103, false
  %108 = and i1 %101, %104
  %109 = or i1 %105, %106
  %110 = or i1 %107, %108
  %111 = xor i1 %109, %110
  br label %.split141

.split141:                                        ; preds = %91
  %112 = or i1 %102, %103
  %113 = xor i1 %112, true
  br label %.split141.split

.split141.split:                                  ; preds = %.split141
  %114 = or i1 false, %104
  %115 = and i1 %113, %114
  %116 = or i1 %111, %115
  %117 = or i1 %100, %101
  br i1 %116, label %originalBB50, label %originalBB50alteredBB

originalBB50:                                     ; preds = %.split141.split, %originalBB50alteredBB.split.split
  %118 = icmp eq i64 %2, 1
  %119 = select i1 %118, i32 20, i32 0
  store i32 -1603414168, i32* %switchVar, align 4
  store i32 %119, i32* %.reg2mem44, align 4
  %120 = load i32, i32* @x.23, align 4
  br label %originalBB50.split

originalBB50.split:                               ; preds = %originalBB50
  %121 = load i32, i32* @y.24, align 4
  %122 = sub i32 0, 1
  %123 = add i32 %120, %122
  %124 = sub i32 %120, 1
  %125 = mul i32 %120, %123
  %126 = urem i32 %125, 2
  %127 = icmp eq i32 %126, 0
  %128 = icmp slt i32 %121, 10
  %129 = and i1 %127, %128
  %130 = xor i1 %127, %128
  br label %originalBB50.split.split

originalBB50.split.split:                         ; preds = %originalBB50.split
  %131 = or i1 %129, %130
  %132 = or i1 %127, %128
  br i1 %131, label %originalBBpart252, label %originalBB50alteredBB

originalBBpart252:                                ; preds = %originalBB50.split.split
  br label %loopEnd

133:                                              ; preds = %originalBBpart2
  store i32 1106788141, i32* %switchVar, align 4
  br label %.split142

.split142:                                        ; preds = %133
  br label %loopEnd

NodeBlock16:                                      ; preds = %originalBBpart2
  %134 = load i32, i32* @x.23, align 4
  %135 = load i32, i32* @y.24, align 4
  %136 = sub i32 %134, -2092151917
  %137 = sub i32 %136, 1
  %138 = add i32 %137, -2092151917
  br label %NodeBlock16.split

NodeBlock16.split:                                ; preds = %NodeBlock16
  %139 = sub i32 %134, 1
  %140 = mul i32 %134, %138
  %141 = urem i32 %140, 2
  %142 = icmp eq i32 %141, 0
  %143 = icmp slt i32 %135, 10
  br label %NodeBlock16.split.split

NodeBlock16.split.split:                          ; preds = %NodeBlock16.split
  %144 = xor i1 %142, true
  %145 = xor i1 %143, true
  %146 = xor i1 false, true
  %147 = and i1 %144, false
  %148 = and i1 %142, %146
  %149 = and i1 %145, false
  %150 = and i1 %143, %146
  %151 = or i1 %147, %148
  %152 = or i1 %149, %150
  %153 = xor i1 %151, %152
  %154 = or i1 %144, %145
  %155 = xor i1 %154, true
  %156 = or i1 false, %146
  %157 = and i1 %155, %156
  %158 = or i1 %153, %157
  %159 = or i1 %142, %143
  br i1 %158, label %originalBB54, label %originalBB54alteredBB

originalBB54:                                     ; preds = %NodeBlock16.split.split, %originalBB54alteredBB.split.split
  %Pivot17 = icmp slt i64 %2, 4
  %160 = select i1 %Pivot17, i32 -1592528404, i32 1119493429
  store i32 %160, i32* %switchVar, align 4
  %161 = load i32, i32* @x.23, align 4
  br label %originalBB54.split

originalBB54.split:                               ; preds = %originalBB54
  %162 = load i32, i32* @y.24, align 4
  %163 = sub i32 %161, -812784820
  %164 = sub i32 %163, 1
  %165 = add i32 %164, -812784820
  %166 = sub i32 %161, 1
  %167 = mul i32 %161, %165
  %168 = urem i32 %167, 2
  %169 = icmp eq i32 %168, 0
  %170 = icmp slt i32 %162, 10
  %171 = and i1 %169, %170
  %172 = xor i1 %169, %170
  %173 = or i1 %171, %172
  br label %originalBB54.split.split

originalBB54.split.split:                         ; preds = %originalBB54.split
  %174 = or i1 %169, %170
  br i1 %173, label %originalBBpart256, label %originalBB54alteredBB

originalBBpart256:                                ; preds = %originalBB54.split.split
  br label %loopEnd

LeafBlock14:                                      ; preds = %originalBBpart2
  %175 = load i32, i32* @x.23, align 4
  %176 = load i32, i32* @y.24, align 4
  %177 = sub i32 %175, -2071468704
  %178 = sub i32 %177, 1
  %179 = add i32 %178, -2071468704
  %180 = sub i32 %175, 1
  %181 = mul i32 %175, %179
  %182 = urem i32 %181, 2
  %183 = icmp eq i32 %182, 0
  %184 = icmp slt i32 %176, 10
  %185 = xor i1 %183, true
  %186 = xor i1 %184, true
  %187 = xor i1 false, true
  %188 = and i1 %185, false
  %189 = and i1 %183, %187
  %190 = and i1 %186, false
  %191 = and i1 %184, %187
  %192 = or i1 %188, %189
  %193 = or i1 %190, %191
  %194 = xor i1 %192, %193
  %195 = or i1 %185, %186
  %196 = xor i1 %195, true
  %197 = or i1 false, %187
  br label %LeafBlock14.split

LeafBlock14.split:                                ; preds = %LeafBlock14
  %198 = and i1 %196, %197
  br label %LeafBlock14.split.split

LeafBlock14.split.split:                          ; preds = %LeafBlock14.split
  %199 = or i1 %194, %198
  %200 = or i1 %183, %184
  br i1 %199, label %originalBB58, label %originalBB58alteredBB

originalBB58:                                     ; preds = %LeafBlock14.split.split, %originalBB58alteredBB.split.split
  %SwitchLeaf15 = icmp eq i64 %2, 4
  %201 = select i1 %SwitchLeaf15, i32 2042569820, i32 -1523272661
  store i32 %201, i32* %switchVar, align 4
  %202 = load i32, i32* @x.23, align 4
  %203 = load i32, i32* @y.24, align 4
  %204 = sub i32 %202, 488388281
  br label %originalBB58.split

originalBB58.split:                               ; preds = %originalBB58
  %205 = sub i32 %204, 1
  %206 = add i32 %205, 488388281
  %207 = sub i32 %202, 1
  %208 = mul i32 %202, %206
  %209 = urem i32 %208, 2
  %210 = icmp eq i32 %209, 0
  %211 = icmp slt i32 %203, 10
  %212 = and i1 %210, %211
  %213 = xor i1 %210, %211
  %214 = or i1 %212, %213
  br label %originalBB58.split.split

originalBB58.split.split:                         ; preds = %originalBB58.split
  %215 = or i1 %210, %211
  br i1 %214, label %originalBBpart260, label %originalBB58alteredBB

originalBBpart260:                                ; preds = %originalBB58.split.split
  br label %loopEnd

LeafBlock12:                                      ; preds = %originalBBpart2
  %216 = load i32, i32* @x.23, align 4
  %217 = load i32, i32* @y.24, align 4
  %218 = sub i32 %216, -449744701
  %219 = sub i32 %218, 1
  %220 = add i32 %219, -449744701
  %221 = sub i32 %216, 1
  br label %LeafBlock12.split

LeafBlock12.split:                                ; preds = %LeafBlock12
  %222 = mul i32 %216, %220
  %223 = urem i32 %222, 2
  %224 = icmp eq i32 %223, 0
  %225 = icmp slt i32 %217, 10
  %226 = and i1 %224, %225
  %227 = xor i1 %224, %225
  %228 = or i1 %226, %227
  %229 = or i1 %224, %225
  br label %LeafBlock12.split.split

LeafBlock12.split.split:                          ; preds = %LeafBlock12.split
  br i1 %228, label %originalBB62, label %originalBB62alteredBB

originalBB62:                                     ; preds = %LeafBlock12.split.split, %originalBB62alteredBB.split.split
  %SwitchLeaf13 = icmp eq i64 %2, 1
  %230 = select i1 %SwitchLeaf13, i32 -1603414168, i32 -1523272661
  store i32 %230, i32* %switchVar, align 4
  store i32 4, i32* %.reg2mem44, align 4
  %231 = load i32, i32* @x.23, align 4
  %232 = load i32, i32* @y.24, align 4
  %233 = sub i32 %231, 1406888950
  br label %originalBB62.split

originalBB62.split:                               ; preds = %originalBB62
  %234 = sub i32 %233, 1
  %235 = add i32 %234, 1406888950
  %236 = sub i32 %231, 1
  br label %originalBB62.split.split

originalBB62.split.split:                         ; preds = %originalBB62.split
  %237 = mul i32 %231, %235
  %238 = urem i32 %237, 2
  %239 = icmp eq i32 %238, 0
  %240 = icmp slt i32 %232, 10
  %241 = and i1 %239, %240
  %242 = xor i1 %239, %240
  %243 = or i1 %241, %242
  %244 = or i1 %239, %240
  br i1 %243, label %originalBBpart264, label %originalBB62alteredBB

originalBBpart264:                                ; preds = %originalBB62.split.split
  br label %loopEnd

245:                                              ; preds = %originalBBpart2
  %246 = load i32, i32* @x.23, align 4
  br label %.split143

.split143:                                        ; preds = %245
  %247 = load i32, i32* @y.24, align 4
  %248 = sub i32 0, 1
  %249 = add i32 %246, %248
  %250 = sub i32 %246, 1
  %251 = mul i32 %246, %249
  %252 = urem i32 %251, 2
  %253 = icmp eq i32 %252, 0
  br label %.split143.split

.split143.split:                                  ; preds = %.split143
  %254 = icmp slt i32 %247, 10
  %255 = and i1 %253, %254
  %256 = xor i1 %253, %254
  %257 = or i1 %255, %256
  %258 = or i1 %253, %254
  br i1 %257, label %originalBB66, label %originalBB66alteredBB

originalBB66:                                     ; preds = %.split143.split, %originalBB66alteredBB.split.split
  %259 = getelementptr inbounds i8, i8* %1, i64 2
  %260 = load i8, i8* %259, align 1, !tbaa !3
  %261 = zext i8 %260 to i32
  %262 = getelementptr inbounds i8, i8* %1, i64 3
  %263 = load i8, i8* %262, align 1, !tbaa !3
  %264 = zext i8 %263 to i32
  %265 = shl nuw nsw i32 %261, 10
  %266 = shl nuw nsw i32 %264, 2
  %267 = and i32 %266, %265
  %268 = xor i32 %266, %265
  %269 = or i32 %267, %268
  %270 = or i32 %266, %265
  %271 = sub i32 %269, 378329664
  %272 = add i32 %271, 4
  %273 = add i32 %272, 378329664
  %274 = add nuw nsw i32 %269, 4
  store i32 -1603414168, i32* %switchVar, align 4
  store i32 %273, i32* %.reg2mem44, align 4
  %275 = load i32, i32* @x.23, align 4
  %276 = load i32, i32* @y.24, align 4
  br label %originalBB66.split

originalBB66.split:                               ; preds = %originalBB66
  %277 = sub i32 0, 1
  %278 = add i32 %275, %277
  %279 = sub i32 %275, 1
  %280 = mul i32 %275, %278
  %281 = urem i32 %280, 2
  %282 = icmp eq i32 %281, 0
  %283 = icmp slt i32 %276, 10
  %284 = xor i1 %282, true
  %285 = xor i1 %283, true
  %286 = xor i1 true, true
  %287 = and i1 %284, true
  %288 = and i1 %282, %286
  %289 = and i1 %285, true
  %290 = and i1 %283, %286
  %291 = or i1 %287, %288
  %292 = or i1 %289, %290
  %293 = xor i1 %291, %292
  %294 = or i1 %284, %285
  %295 = xor i1 %294, true
  %296 = or i1 true, %286
  %297 = and i1 %295, %296
  %298 = or i1 %293, %297
  br label %originalBB66.split.split

originalBB66.split.split:                         ; preds = %originalBB66.split
  %299 = or i1 %282, %283
  br i1 %298, label %originalBBpart2101, label %originalBB66alteredBB

originalBBpart2101:                               ; preds = %originalBB66.split.split
  br label %loopEnd

NewDefault11:                                     ; preds = %originalBBpart2
  store i32 -1780026864, i32* %switchVar, align 4
  br label %NewDefault11.split

NewDefault11.split:                               ; preds = %NewDefault11
  br label %loopEnd

300:                                              ; preds = %originalBBpart2
  %301 = getelementptr inbounds i8, i8* %1, i64 2
  %302 = load i8, i8* %301, align 1, !tbaa !3
  %303 = zext i8 %302 to i32
  %304 = shl nuw nsw i32 %303, 8
  %305 = getelementptr inbounds i8, i8* %1, i64 3
  %306 = load i8, i8* %305, align 1, !tbaa !3
  %307 = zext i8 %306 to i32
  %308 = xor i32 %304, -1
  %309 = xor i32 %307, -1
  %310 = xor i32 1278771382, -1
  %311 = and i32 %308, 1278771382
  %312 = and i32 %304, %310
  %313 = and i32 %309, 1278771382
  %314 = and i32 %307, %310
  %315 = or i32 %311, %312
  %316 = or i32 %313, %314
  %317 = xor i32 %315, %316
  br label %.split144

.split144:                                        ; preds = %300
  %318 = or i32 %308, %309
  %319 = xor i32 %318, -1
  %320 = or i32 1278771382, %310
  %321 = and i32 %319, %320
  %322 = or i32 %317, %321
  br label %.split144.split

.split144.split:                                  ; preds = %.split144
  %323 = or i32 %304, %307
  store i32 %322, i32* %.reg2mem35, align 4
  %.reload37 = load i32, i32* %.reg2mem35, align 4
  %324 = icmp eq i32 %.reload37, 0
  %325 = select i1 %324, i32 -1603414168, i32 -774535636
  store i32 %325, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem44, align 4
  br label %loopEnd

326:                                              ; preds = %originalBBpart2
  %327 = getelementptr inbounds i8, i8* %1, i64 4
  br label %.split145

.split145:                                        ; preds = %326
  store i8* %327, i8** %.reg2mem38, align 8
  br label %.split145.split

.split145.split:                                  ; preds = %.split145
  %.reload36 = load i32, i32* %.reg2mem35, align 4
  %328 = zext i32 %.reload36 to i64
  store i64 %328, i64* %.reg2mem40, align 8
  store i32 -137768360, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem42, align 8
  br label %loopEnd

329:                                              ; preds = %originalBBpart2
  %330 = load i32, i32* @x.23, align 4
  %331 = load i32, i32* @y.24, align 4
  %332 = sub i32 0, 1
  %333 = add i32 %330, %332
  %334 = sub i32 %330, 1
  %335 = mul i32 %330, %333
  %336 = urem i32 %335, 2
  %337 = icmp eq i32 %336, 0
  %338 = icmp slt i32 %331, 10
  %339 = xor i1 %337, true
  %340 = xor i1 %338, true
  %341 = xor i1 false, true
  %342 = and i1 %339, false
  %343 = and i1 %337, %341
  %344 = and i1 %340, false
  %345 = and i1 %338, %341
  %346 = or i1 %342, %343
  %347 = or i1 %344, %345
  br label %.split146

.split146:                                        ; preds = %329
  %348 = xor i1 %346, %347
  %349 = or i1 %339, %340
  br label %.split146.split

.split146.split:                                  ; preds = %.split146
  %350 = xor i1 %349, true
  %351 = or i1 false, %341
  %352 = and i1 %350, %351
  %353 = or i1 %348, %352
  %354 = or i1 %337, %338
  br i1 %353, label %originalBB103, label %originalBB103alteredBB

originalBB103:                                    ; preds = %.split146.split, %originalBB103alteredBB.split.split
  %.reload43 = load i64, i64* %.reg2mem42, align 8
  %355 = shl nsw i64 %.reload43, 2
  %356 = sub i64 0, 4
  %357 = sub i64 %355, %356
  %358 = add nuw nsw i64 %355, 4
  %359 = getelementptr inbounds i8, i8* %1, i64 %357
  %360 = bitcast i8* %359 to i32*
  %361 = load i32, i32* %360, align 1
  %.reload39 = load i8*, i8** %.reg2mem38, align 8
  %362 = getelementptr inbounds i8, i8* %.reload39, i64 %355
  %363 = bitcast i8* %362 to i32*
  store i32 %361, i32* %363, align 1
  %364 = sub i64 0, %.reload43
  %365 = sub i64 0, 1
  %366 = add i64 %364, %365
  %367 = sub i64 0, %366
  %368 = add nuw nsw i64 %.reload43, 1
  %.reload41 = load i64, i64* %.reg2mem40, align 8
  %369 = icmp eq i64 %367, %.reload41
  %370 = select i1 %369, i32 -1603414168, i32 -137768360
  store i32 %370, i32* %switchVar, align 4
  store i64 %367, i64* %.reg2mem42, align 8
  store i32 0, i32* %.reg2mem44, align 4
  %371 = load i32, i32* @x.23, align 4
  %372 = load i32, i32* @y.24, align 4
  %373 = sub i32 %371, 486821880
  %374 = sub i32 %373, 1
  br label %originalBB103.split

originalBB103.split:                              ; preds = %originalBB103
  %375 = add i32 %374, 486821880
  %376 = sub i32 %371, 1
  br label %originalBB103.split.split

originalBB103.split.split:                        ; preds = %originalBB103.split
  %377 = mul i32 %371, %375
  %378 = urem i32 %377, 2
  %379 = icmp eq i32 %378, 0
  %380 = icmp slt i32 %372, 10
  %381 = and i1 %379, %380
  %382 = xor i1 %379, %380
  %383 = or i1 %381, %382
  %384 = or i1 %379, %380
  br i1 %383, label %originalBBpart2119, label %originalBB103alteredBB

originalBBpart2119:                               ; preds = %originalBB103.split.split
  br label %loopEnd

385:                                              ; preds = %originalBBpart2
  %386 = load i32, i32* @x.23, align 4
  %387 = load i32, i32* @y.24, align 4
  %388 = sub i32 0, 1
  %389 = add i32 %386, %388
  %390 = sub i32 %386, 1
  %391 = mul i32 %386, %389
  %392 = urem i32 %391, 2
  br label %.split147

.split147:                                        ; preds = %385
  %393 = icmp eq i32 %392, 0
  %394 = icmp slt i32 %387, 10
  %395 = and i1 %393, %394
  %396 = xor i1 %393, %394
  br label %.split147.split

.split147.split:                                  ; preds = %.split147
  %397 = or i1 %395, %396
  %398 = or i1 %393, %394
  br i1 %397, label %originalBB121, label %originalBB121alteredBB

originalBB121:                                    ; preds = %.split147.split, %originalBB121alteredBB.split.split
  %399 = icmp eq i64 %2, 1
  %400 = select i1 %399, i32 10, i32 0
  store i32 -1603414168, i32* %switchVar, align 4
  store i32 %400, i32* %.reg2mem44, align 4
  %401 = load i32, i32* @x.23, align 4
  br label %originalBB121.split

originalBB121.split:                              ; preds = %originalBB121
  %402 = load i32, i32* @y.24, align 4
  %403 = sub i32 %401, 707172970
  %404 = sub i32 %403, 1
  %405 = add i32 %404, 707172970
  br label %originalBB121.split.split

originalBB121.split.split:                        ; preds = %originalBB121.split
  %406 = sub i32 %401, 1
  %407 = mul i32 %401, %405
  %408 = urem i32 %407, 2
  %409 = icmp eq i32 %408, 0
  %410 = icmp slt i32 %402, 10
  %411 = xor i1 %409, true
  %412 = xor i1 %410, true
  %413 = xor i1 true, true
  %414 = and i1 %411, true
  %415 = and i1 %409, %413
  %416 = and i1 %412, true
  %417 = and i1 %410, %413
  %418 = or i1 %414, %415
  %419 = or i1 %416, %417
  %420 = xor i1 %418, %419
  %421 = or i1 %411, %412
  %422 = xor i1 %421, true
  %423 = or i1 true, %413
  %424 = and i1 %422, %423
  %425 = or i1 %420, %424
  %426 = or i1 %409, %410
  br i1 %425, label %originalBBpart2123, label %originalBB121alteredBB

originalBBpart2123:                               ; preds = %originalBB121.split.split
  br label %loopEnd

427:                                              ; preds = %originalBBpart2
  %428 = load i32, i32* @x.23, align 4
  %429 = load i32, i32* @y.24, align 4
  %430 = add i32 %428, -1403731067
  %431 = sub i32 %430, 1
  %432 = sub i32 %431, -1403731067
  %433 = sub i32 %428, 1
  %434 = mul i32 %428, %432
  %435 = urem i32 %434, 2
  %436 = icmp eq i32 %435, 0
  br label %.split148

.split148:                                        ; preds = %427
  %437 = icmp slt i32 %429, 10
  %438 = xor i1 %436, true
  %439 = xor i1 %437, true
  %440 = xor i1 false, true
  %441 = and i1 %438, false
  %442 = and i1 %436, %440
  %443 = and i1 %439, false
  %444 = and i1 %437, %440
  %445 = or i1 %441, %442
  %446 = or i1 %443, %444
  %447 = xor i1 %445, %446
  %448 = or i1 %438, %439
  %449 = xor i1 %448, true
  %450 = or i1 false, %440
  %451 = and i1 %449, %450
  %452 = or i1 %447, %451
  br label %.split148.split

.split148.split:                                  ; preds = %.split148
  %453 = or i1 %436, %437
  br i1 %452, label %originalBB125, label %originalBB125alteredBB

originalBB125:                                    ; preds = %.split148.split, %originalBB125alteredBB.split.split
  %454 = icmp eq i64 %2, 1
  %455 = select i1 %454, i32 8, i32 0
  store i32 -1603414168, i32* %switchVar, align 4
  store i32 %455, i32* %.reg2mem44, align 4
  %456 = load i32, i32* @x.23, align 4
  %457 = load i32, i32* @y.24, align 4
  %458 = sub i32 0, 1
  br label %originalBB125.split

originalBB125.split:                              ; preds = %originalBB125
  %459 = add i32 %456, %458
  %460 = sub i32 %456, 1
  %461 = mul i32 %456, %459
  %462 = urem i32 %461, 2
  %463 = icmp eq i32 %462, 0
  %464 = icmp slt i32 %457, 10
  %465 = and i1 %463, %464
  br label %originalBB125.split.split

originalBB125.split.split:                        ; preds = %originalBB125.split
  %466 = xor i1 %463, %464
  %467 = or i1 %465, %466
  %468 = or i1 %463, %464
  br i1 %467, label %originalBBpart2127, label %originalBB125alteredBB

originalBBpart2127:                               ; preds = %originalBB125.split.split
  br label %loopEnd

469:                                              ; preds = %originalBBpart2
  %470 = icmp eq i64 %2, 1
  %471 = select i1 %470, i32 6, i32 0
  store i32 -1603414168, i32* %switchVar, align 4
  br label %.split149

.split149:                                        ; preds = %469
  store i32 %471, i32* %.reg2mem44, align 4
  br label %.split149.split

.split149.split:                                  ; preds = %.split149
  br label %loopEnd

472:                                              ; preds = %originalBBpart2
  %473 = load i32, i32* @x.23, align 4
  %474 = load i32, i32* @y.24, align 4
  %475 = sub i32 %473, -1691669276
  %476 = sub i32 %475, 1
  %477 = add i32 %476, -1691669276
  %478 = sub i32 %473, 1
  %479 = mul i32 %473, %477
  %480 = urem i32 %479, 2
  %481 = icmp eq i32 %480, 0
  br label %.split150

.split150:                                        ; preds = %472
  %482 = icmp slt i32 %474, 10
  br label %.split150.split

.split150.split:                                  ; preds = %.split150
  %483 = xor i1 %481, true
  %484 = xor i1 %482, true
  %485 = xor i1 true, true
  %486 = and i1 %483, true
  %487 = and i1 %481, %485
  %488 = and i1 %484, true
  %489 = and i1 %482, %485
  %490 = or i1 %486, %487
  %491 = or i1 %488, %489
  %492 = xor i1 %490, %491
  %493 = or i1 %483, %484
  %494 = xor i1 %493, true
  %495 = or i1 true, %485
  %496 = and i1 %494, %495
  %497 = or i1 %492, %496
  %498 = or i1 %481, %482
  br i1 %497, label %originalBB129, label %originalBB129alteredBB

originalBB129:                                    ; preds = %.split150.split, %originalBB129alteredBB.split
  store i32 1481610261, i32* %switchVar, align 4
  %499 = load i32, i32* @x.23, align 4
  %500 = load i32, i32* @y.24, align 4
  %501 = add i32 %499, -531939932
  br label %originalBB129.split

originalBB129.split:                              ; preds = %originalBB129
  %502 = sub i32 %501, 1
  %503 = sub i32 %502, -531939932
  %504 = sub i32 %499, 1
  %505 = mul i32 %499, %503
  %506 = urem i32 %505, 2
  %507 = icmp eq i32 %506, 0
  %508 = icmp slt i32 %500, 10
  %509 = xor i1 %507, true
  %510 = xor i1 %508, true
  %511 = xor i1 false, true
  %512 = and i1 %509, false
  %513 = and i1 %507, %511
  br label %originalBB129.split.split

originalBB129.split.split:                        ; preds = %originalBB129.split
  %514 = and i1 %510, false
  %515 = and i1 %508, %511
  %516 = or i1 %512, %513
  %517 = or i1 %514, %515
  %518 = xor i1 %516, %517
  %519 = or i1 %509, %510
  %520 = xor i1 %519, true
  %521 = or i1 false, %511
  %522 = and i1 %520, %521
  %523 = or i1 %518, %522
  %524 = or i1 %507, %508
  br i1 %523, label %originalBBpart2131, label %originalBB129alteredBB

originalBBpart2131:                               ; preds = %originalBB129.split.split
  br label %loopEnd

NodeBlock23:                                      ; preds = %originalBBpart2
  %Pivot24 = icmp slt i64 %2, 8
  br label %NodeBlock23.split

NodeBlock23.split:                                ; preds = %NodeBlock23
  %525 = select i1 %Pivot24, i32 -119634711, i32 1857498444
  store i32 %525, i32* %switchVar, align 4
  br label %NodeBlock23.split.split

NodeBlock23.split.split:                          ; preds = %NodeBlock23.split
  br label %loopEnd

LeafBlock21:                                      ; preds = %originalBBpart2
  %SwitchLeaf22 = icmp eq i64 %2, 8
  br label %LeafBlock21.split

LeafBlock21.split:                                ; preds = %LeafBlock21
  %526 = select i1 %SwitchLeaf22, i32 231020845, i32 1006112288
  store i32 %526, i32* %switchVar, align 4
  br label %LeafBlock21.split.split

LeafBlock21.split.split:                          ; preds = %LeafBlock21.split
  br label %loopEnd

LeafBlock19:                                      ; preds = %originalBBpart2
  %SwitchLeaf20 = icmp eq i64 %2, 1
  br label %LeafBlock19.split

LeafBlock19.split:                                ; preds = %LeafBlock19
  %527 = select i1 %SwitchLeaf20, i32 -1603414168, i32 1006112288
  store i32 %527, i32* %switchVar, align 4
  br label %LeafBlock19.split.split

LeafBlock19.split.split:                          ; preds = %LeafBlock19.split
  store i32 8, i32* %.reg2mem44, align 4
  br label %loopEnd

528:                                              ; preds = %originalBBpart2
  %529 = getelementptr inbounds i8, i8* %1, i64 4
  %530 = load i8, i8* %529, align 1, !tbaa !3
  %531 = zext i8 %530 to i32
  %532 = shl nuw i32 %531, 24
  %533 = getelementptr inbounds i8, i8* %1, i64 5
  %534 = load i8, i8* %533, align 1, !tbaa !3
  %535 = zext i8 %534 to i32
  %536 = shl nuw nsw i32 %535, 16
  %537 = and i32 %536, %532
  %538 = xor i32 %536, %532
  %539 = or i32 %537, %538
  br label %.split151

.split151:                                        ; preds = %528
  %540 = or i32 %536, %532
  %541 = getelementptr inbounds i8, i8* %1, i64 6
  %542 = load i8, i8* %541, align 1, !tbaa !3
  %543 = zext i8 %542 to i32
  %544 = shl nuw nsw i32 %543, 8
  br label %.split151.split

.split151.split:                                  ; preds = %.split151
  %545 = and i32 %539, %544
  %546 = xor i32 %539, %544
  %547 = or i32 %545, %546
  %548 = or i32 %539, %544
  %549 = getelementptr inbounds i8, i8* %1, i64 7
  %550 = load i8, i8* %549, align 1, !tbaa !3
  %551 = zext i8 %550 to i32
  %552 = xor i32 %547, -1
  %553 = xor i32 %551, -1
  %554 = xor i32 1277585904, -1
  %555 = and i32 %552, 1277585904
  %556 = and i32 %547, %554
  %557 = and i32 %553, 1277585904
  %558 = and i32 %551, %554
  %559 = or i32 %555, %556
  %560 = or i32 %557, %558
  %561 = xor i32 %559, %560
  %562 = or i32 %552, %553
  %563 = xor i32 %562, -1
  %564 = or i32 1277585904, %554
  %565 = and i32 %563, %564
  %566 = or i32 %561, %565
  %567 = or i32 %547, %551
  %568 = sub i32 0, 8
  %569 = sub i32 %566, %568
  %570 = add i32 %566, 8
  store i32 -1603414168, i32* %switchVar, align 4
  store i32 %569, i32* %.reg2mem44, align 4
  br label %loopEnd

NewDefault18:                                     ; preds = %originalBBpart2
  store i32 1216195938, i32* %switchVar, align 4
  br label %NewDefault18.split

NewDefault18.split:                               ; preds = %NewDefault18
  br label %loopEnd

571:                                              ; preds = %originalBBpart2
  store i32 -1603414168, i32* %switchVar, align 4
  br label %.split152

.split152:                                        ; preds = %571
  store i32 0, i32* %.reg2mem44, align 4
  br label %.split152.split

.split152.split:                                  ; preds = %.split152
  br label %loopEnd

NewDefault:                                       ; preds = %originalBBpart2
  %572 = load i32, i32* @x.23, align 4
  %573 = load i32, i32* @y.24, align 4
  br label %NewDefault.split

NewDefault.split:                                 ; preds = %NewDefault
  %574 = add i32 %572, 1426649744
  %575 = sub i32 %574, 1
  %576 = sub i32 %575, 1426649744
  %577 = sub i32 %572, 1
  %578 = mul i32 %572, %576
  %579 = urem i32 %578, 2
  %580 = icmp eq i32 %579, 0
  br label %NewDefault.split.split

NewDefault.split.split:                           ; preds = %NewDefault.split
  %581 = icmp slt i32 %573, 10
  %582 = xor i1 %580, true
  %583 = xor i1 %581, true
  %584 = xor i1 false, true
  %585 = and i1 %582, false
  %586 = and i1 %580, %584
  %587 = and i1 %583, false
  %588 = and i1 %581, %584
  %589 = or i1 %585, %586
  %590 = or i1 %587, %588
  %591 = xor i1 %589, %590
  %592 = or i1 %582, %583
  %593 = xor i1 %592, true
  %594 = or i1 false, %584
  %595 = and i1 %593, %594
  %596 = or i1 %591, %595
  %597 = or i1 %580, %581
  br i1 %596, label %originalBB133, label %originalBB133alteredBB

originalBB133:                                    ; preds = %NewDefault.split.split, %originalBB133alteredBB.split
  store i32 1578865681, i32* %switchVar, align 4
  %598 = load i32, i32* @x.23, align 4
  %599 = load i32, i32* @y.24, align 4
  %600 = sub i32 %598, 225492120
  %601 = sub i32 %600, 1
  %602 = add i32 %601, 225492120
  %603 = sub i32 %598, 1
  br label %originalBB133.split

originalBB133.split:                              ; preds = %originalBB133
  %604 = mul i32 %598, %602
  %605 = urem i32 %604, 2
  %606 = icmp eq i32 %605, 0
  %607 = icmp slt i32 %599, 10
  %608 = xor i1 %606, true
  %609 = xor i1 %607, true
  %610 = xor i1 true, true
  %611 = and i1 %608, true
  %612 = and i1 %606, %610
  %613 = and i1 %609, true
  %614 = and i1 %607, %610
  %615 = or i1 %611, %612
  %616 = or i1 %613, %614
  %617 = xor i1 %615, %616
  %618 = or i1 %608, %609
  %619 = xor i1 %618, true
  %620 = or i1 true, %610
  %621 = and i1 %619, %620
  %622 = or i1 %617, %621
  br label %originalBB133.split.split

originalBB133.split.split:                        ; preds = %originalBB133.split
  %623 = or i1 %606, %607
  br i1 %622, label %originalBBpart2135, label %originalBB133alteredBB

originalBBpart2135:                               ; preds = %originalBB133.split.split
  br label %loopEnd

624:                                              ; preds = %originalBBpart2
  %.reload34 = load i32, i32* %.reg2mem26, align 4
  %625 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.reload34)
  br label %.split153

.split153:                                        ; preds = %624
  %626 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %627 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %626) #8
  store i32 -1603414168, i32* %switchVar, align 4
  store i32 0, i32* %.reg2mem44, align 4
  br label %.split153.split

.split153.split:                                  ; preds = %.split153
  br label %loopEnd

628:                                              ; preds = %originalBBpart2
  %629 = load i32, i32* @x.23, align 4
  %630 = load i32, i32* @y.24, align 4
  %631 = add i32 %629, -137608983
  %632 = sub i32 %631, 1
  br label %.split154

.split154:                                        ; preds = %628
  %633 = sub i32 %632, -137608983
  %634 = sub i32 %629, 1
  %635 = mul i32 %629, %633
  %636 = urem i32 %635, 2
  %637 = icmp eq i32 %636, 0
  %638 = icmp slt i32 %630, 10
  %639 = xor i1 %637, true
  %640 = xor i1 %638, true
  %641 = xor i1 true, true
  %642 = and i1 %639, true
  %643 = and i1 %637, %641
  %644 = and i1 %640, true
  %645 = and i1 %638, %641
  %646 = or i1 %642, %643
  %647 = or i1 %644, %645
  %648 = xor i1 %646, %647
  %649 = or i1 %639, %640
  %650 = xor i1 %649, true
  %651 = or i1 true, %641
  %652 = and i1 %650, %651
  br label %.split154.split

.split154.split:                                  ; preds = %.split154
  %653 = or i1 %648, %652
  %654 = or i1 %637, %638
  br i1 %653, label %originalBB137, label %originalBB137alteredBB

originalBB137:                                    ; preds = %.split154.split, %originalBB137alteredBB.split
  %.reload45 = load i32, i32* %.reg2mem44, align 4
  %655 = load i32, i32* @x.23, align 4
  %656 = load i32, i32* @y.24, align 4
  %657 = sub i32 %655, -2047401860
  br label %originalBB137.split

originalBB137.split:                              ; preds = %originalBB137
  %658 = sub i32 %657, 1
  br label %originalBB137.split.split

originalBB137.split.split:                        ; preds = %originalBB137.split
  %659 = add i32 %658, -2047401860
  %660 = sub i32 %655, 1
  %661 = mul i32 %655, %659
  %662 = urem i32 %661, 2
  %663 = icmp eq i32 %662, 0
  %664 = icmp slt i32 %656, 10
  %665 = and i1 %663, %664
  %666 = xor i1 %663, %664
  %667 = or i1 %665, %666
  %668 = or i1 %663, %664
  br i1 %667, label %originalBBpart2139, label %originalBB137alteredBB

originalBBpart2139:                               ; preds = %originalBB137.split.split
  ret i32 %.reload45

loopEnd:                                          ; preds = %.split153.split, %originalBBpart2135, %.split152.split, %NewDefault18.split, %.split151.split, %LeafBlock19.split.split, %LeafBlock21.split.split, %NodeBlock23.split.split, %originalBBpart2131, %.split149.split, %originalBBpart2127, %originalBBpart2123, %originalBBpart2119, %.split145.split, %.split144.split, %NewDefault11.split, %originalBBpart2101, %originalBBpart264, %originalBBpart260, %originalBBpart256, %.split142, %originalBBpart252, %LeafBlock.split.split, %NodeBlock.split.split, %NodeBlock1.split.split, %LeafBlock3.split.split, %originalBBpart248, %NodeBlock7.split.split, %NodeBlock9.split.split, %first.split.split, %switchDefault
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %loopEntry.split.split
  %switchVar25alteredBB = load i32, i32* %switchVar, align 4
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  br label %originalBB

originalBB46alteredBB:                            ; preds = %originalBB46.split.split, %NodeBlock5.split.split
  %.reload28alteredBB = load i32, i32* %.reg2mem26, align 4
  %Pivot6alteredBB = icmp slt i32 %.reload28alteredBB, 6
  br label %originalBB46alteredBB.split

originalBB46alteredBB.split:                      ; preds = %originalBB46alteredBB
  %669 = select i1 %Pivot6alteredBB, i32 -1418590904, i32 1434720944
  br label %originalBB46alteredBB.split.split

originalBB46alteredBB.split.split:                ; preds = %originalBB46alteredBB.split
  store i32 %669, i32* %switchVar, align 4
  br label %originalBB46

originalBB50alteredBB:                            ; preds = %originalBB50.split.split, %.split141.split
  %670 = icmp eq i64 %2, 1
  br label %originalBB50alteredBB.split

originalBB50alteredBB.split:                      ; preds = %originalBB50alteredBB
  %671 = select i1 %670, i32 20, i32 0
  store i32 -1603414168, i32* %switchVar, align 4
  store i32 %671, i32* %.reg2mem44, align 4
  br label %originalBB50alteredBB.split.split

originalBB50alteredBB.split.split:                ; preds = %originalBB50alteredBB.split
  br label %originalBB50

originalBB54alteredBB:                            ; preds = %originalBB54.split.split, %NodeBlock16.split.split
  %Pivot17alteredBB = icmp slt i64 %2, 4
  %672 = select i1 %Pivot17alteredBB, i32 -1592528404, i32 1119493429
  br label %originalBB54alteredBB.split

originalBB54alteredBB.split:                      ; preds = %originalBB54alteredBB
  store i32 %672, i32* %switchVar, align 4
  br label %originalBB54alteredBB.split.split

originalBB54alteredBB.split.split:                ; preds = %originalBB54alteredBB.split
  br label %originalBB54

originalBB58alteredBB:                            ; preds = %originalBB58.split.split, %LeafBlock14.split.split
  %SwitchLeaf15alteredBB = icmp eq i64 %2, 4
  %673 = select i1 %SwitchLeaf15alteredBB, i32 2042569820, i32 -1523272661
  br label %originalBB58alteredBB.split

originalBB58alteredBB.split:                      ; preds = %originalBB58alteredBB
  store i32 %673, i32* %switchVar, align 4
  br label %originalBB58alteredBB.split.split

originalBB58alteredBB.split.split:                ; preds = %originalBB58alteredBB.split
  br label %originalBB58

originalBB62alteredBB:                            ; preds = %originalBB62.split.split, %LeafBlock12.split.split
  %SwitchLeaf13alteredBB = icmp eq i64 %2, 1
  br label %originalBB62alteredBB.split

originalBB62alteredBB.split:                      ; preds = %originalBB62alteredBB
  %674 = select i1 %SwitchLeaf13alteredBB, i32 -1603414168, i32 -1523272661
  store i32 %674, i32* %switchVar, align 4
  store i32 4, i32* %.reg2mem44, align 4
  br label %originalBB62alteredBB.split.split

originalBB62alteredBB.split.split:                ; preds = %originalBB62alteredBB.split
  br label %originalBB62

originalBB66alteredBB:                            ; preds = %originalBB66.split.split, %.split143.split
  %675 = getelementptr inbounds i8, i8* %1, i64 2
  %676 = load i8, i8* %675, align 1, !tbaa !3
  %677 = zext i8 %676 to i32
  %678 = getelementptr inbounds i8, i8* %1, i64 3
  %679 = load i8, i8* %678, align 1, !tbaa !3
  %680 = zext i8 %679 to i32
  %681 = add i32 %677, -705586039
  %682 = sub i32 %681, 10
  %683 = sub i32 %682, -705586039
  %_ = sub i32 %677, 10
  %gen = mul i32 %683, 10
  %_67 = shl i32 %677, 10
  %684 = add i32 %677, 452795882
  %685 = sub i32 %684, 10
  %686 = sub i32 %685, 452795882
  %_68 = sub i32 %677, 10
  %gen69 = mul i32 %686, 10
  %687 = shl nuw nsw i32 %677, 10
  %_70 = shl i32 %680, 2
  %_71 = shl i32 %680, 2
  %688 = add i32 0, 520010560
  %689 = sub i32 %688, %680
  %690 = sub i32 %689, 520010560
  %_72 = sub i32 0, %680
  %691 = sub i32 %690, 1084788921
  %692 = add i32 %691, 2
  %693 = add i32 %692, 1084788921
  %gen73 = add i32 %690, 2
  %694 = add i32 0, 1712639198
  %695 = sub i32 %694, %680
  %696 = sub i32 %695, 1712639198
  %_74 = sub i32 0, %680
  %697 = sub i32 %696, 1138486588
  %698 = add i32 %697, 2
  %699 = add i32 %698, 1138486588
  %gen75 = add i32 %696, 2
  %700 = add i32 0, 1927279407
  %701 = sub i32 %700, %680
  %702 = sub i32 %701, 1927279407
  %_76 = sub i32 0, %680
  %703 = sub i32 %702, 1702261993
  %704 = add i32 %703, 2
  %705 = add i32 %704, 1702261993
  %gen77 = add i32 %702, 2
  %706 = shl nuw nsw i32 %680, 2
  %707 = add i32 0, 1583079770
  %708 = sub i32 %707, %706
  %709 = sub i32 %708, 1583079770
  %_78 = sub i32 0, %706
  %710 = sub i32 %709, 1615420063
  %711 = add i32 %710, %687
  %712 = add i32 %711, 1615420063
  %gen79 = add i32 %709, %687
  %713 = sub i32 0, %706
  %714 = add i32 0, %713
  %_80 = sub i32 0, %706
  %715 = sub i32 %714, 158356881
  %716 = add i32 %715, %687
  %717 = add i32 %716, 158356881
  %gen81 = add i32 %714, %687
  %718 = add i32 0, -580396263
  %719 = sub i32 %718, %706
  %720 = sub i32 %719, -580396263
  %_82 = sub i32 0, %706
  %721 = sub i32 %720, -250793438
  %722 = add i32 %721, %687
  %723 = add i32 %722, -250793438
  %gen83 = add i32 %720, %687
  %724 = and i32 %706, %687
  %725 = xor i32 %706, %687
  %726 = or i32 %724, %725
  %727 = or i32 %706, %687
  %_84 = shl i32 %726, 4
  %728 = add i32 %726, 20911456
  %729 = sub i32 %728, 4
  %730 = sub i32 %729, 20911456
  %_85 = sub i32 %726, 4
  %gen86 = mul i32 %730, 4
  %731 = sub i32 0, %726
  %732 = add i32 0, %731
  %_87 = sub i32 0, %726
  %733 = sub i32 %732, -958152231
  %734 = add i32 %733, 4
  %735 = add i32 %734, -958152231
  %gen88 = add i32 %732, 4
  %736 = sub i32 0, 1566813861
  %737 = sub i32 %736, %726
  %738 = add i32 %737, 1566813861
  %_89 = sub i32 0, %726
  %739 = sub i32 0, 4
  %740 = sub i32 %738, %739
  %gen90 = add i32 %738, 4
  %741 = sub i32 0, %726
  %742 = add i32 0, %741
  %_91 = sub i32 0, %726
  br label %originalBB66alteredBB.split

originalBB66alteredBB.split:                      ; preds = %originalBB66alteredBB
  %743 = add i32 %742, 1909111722
  %744 = add i32 %743, 4
  %745 = sub i32 %744, 1909111722
  %gen92 = add i32 %742, 4
  %746 = add i32 0, -916480212
  %747 = sub i32 %746, %726
  %748 = sub i32 %747, -916480212
  %_93 = sub i32 0, %726
  %749 = add i32 %748, -1640456919
  %750 = add i32 %749, 4
  %751 = sub i32 %750, -1640456919
  %gen94 = add i32 %748, 4
  %_95 = shl i32 %726, 4
  %752 = sub i32 0, %726
  %753 = add i32 0, %752
  %_96 = sub i32 0, %726
  %754 = add i32 %753, 1502108077
  %755 = add i32 %754, 4
  br label %originalBB66alteredBB.split.split

originalBB66alteredBB.split.split:                ; preds = %originalBB66alteredBB.split
  %756 = sub i32 %755, 1502108077
  %gen97 = add i32 %753, 4
  %757 = sub i32 0, 4
  %758 = add i32 %726, %757
  %_98 = sub i32 %726, 4
  %gen99 = mul i32 %758, 4
  %759 = sub i32 0, %726
  %760 = sub i32 0, 4
  %761 = add i32 %759, %760
  %762 = sub i32 0, %761
  %763 = add nuw nsw i32 %726, 4
  store i32 -1603414168, i32* %switchVar, align 4
  store i32 %762, i32* %.reg2mem44, align 4
  br label %originalBB66

originalBB103alteredBB:                           ; preds = %originalBB103.split.split, %.split146.split
  %.reload43alteredBB = load i64, i64* %.reg2mem42, align 8
  %_104 = shl i64 %.reload43alteredBB, 2
  %764 = shl nsw i64 %.reload43alteredBB, 2
  %765 = add i64 0, 1302097847757752569
  %766 = sub i64 %765, %764
  %767 = sub i64 %766, 1302097847757752569
  %_105 = sub i64 0, %764
  %768 = sub i64 0, 4
  %769 = sub i64 %767, %768
  %gen106 = add i64 %767, 4
  %770 = sub i64 %764, -922962645108160216
  %771 = add i64 %770, 4
  %772 = add i64 %771, -922962645108160216
  %773 = add nuw nsw i64 %764, 4
  %774 = getelementptr inbounds i8, i8* %1, i64 %772
  %775 = bitcast i8* %774 to i32*
  %776 = load i32, i32* %775, align 1
  %.reload39alteredBB = load i8*, i8** %.reg2mem38, align 8
  %777 = getelementptr inbounds i8, i8* %.reload39alteredBB, i64 %764
  %778 = bitcast i8* %777 to i32*
  store i32 %776, i32* %778, align 1
  %_107 = shl i64 %.reload43alteredBB, 1
  %_108 = shl i64 %.reload43alteredBB, 1
  %_109 = shl i64 %.reload43alteredBB, 1
  %779 = sub i64 %.reload43alteredBB, 755195185069652473
  %780 = sub i64 %779, 1
  %781 = add i64 %780, 755195185069652473
  %_110 = sub i64 %.reload43alteredBB, 1
  %gen111 = mul i64 %781, 1
  %_112 = shl i64 %.reload43alteredBB, 1
  %_113 = shl i64 %.reload43alteredBB, 1
  %_114 = shl i64 %.reload43alteredBB, 1
  %_115 = shl i64 %.reload43alteredBB, 1
  %782 = sub i64 0, -525213851870599017
  %783 = sub i64 %782, %.reload43alteredBB
  %784 = add i64 %783, -525213851870599017
  %_116 = sub i64 0, %.reload43alteredBB
  %785 = sub i64 0, %784
  %786 = sub i64 0, 1
  %787 = add i64 %785, %786
  %788 = sub i64 0, %787
  %gen117 = add i64 %784, 1
  %789 = sub i64 %.reload43alteredBB, 7031066526008017808
  %790 = add i64 %789, 1
  %791 = add i64 %790, 7031066526008017808
  br label %originalBB103alteredBB.split

originalBB103alteredBB.split:                     ; preds = %originalBB103alteredBB
  %792 = add nuw nsw i64 %.reload43alteredBB, 1
  %.reload41alteredBB = load i64, i64* %.reg2mem40, align 8
  %793 = icmp eq i64 %791, %.reload41alteredBB
  %794 = select i1 %793, i32 -1603414168, i32 -137768360
  br label %originalBB103alteredBB.split.split

originalBB103alteredBB.split.split:               ; preds = %originalBB103alteredBB.split
  store i32 %794, i32* %switchVar, align 4
  store i64 %791, i64* %.reg2mem42, align 8
  store i32 0, i32* %.reg2mem44, align 4
  br label %originalBB103

originalBB121alteredBB:                           ; preds = %originalBB121.split.split, %.split147.split
  %795 = icmp eq i64 %2, 1
  br label %originalBB121alteredBB.split

originalBB121alteredBB.split:                     ; preds = %originalBB121alteredBB
  %796 = select i1 %795, i32 10, i32 0
  store i32 -1603414168, i32* %switchVar, align 4
  br label %originalBB121alteredBB.split.split

originalBB121alteredBB.split.split:               ; preds = %originalBB121alteredBB.split
  store i32 %796, i32* %.reg2mem44, align 4
  br label %originalBB121

originalBB125alteredBB:                           ; preds = %originalBB125.split.split, %.split148.split
  %797 = icmp eq i64 %2, 1
  br label %originalBB125alteredBB.split

originalBB125alteredBB.split:                     ; preds = %originalBB125alteredBB
  %798 = select i1 %797, i32 8, i32 0
  br label %originalBB125alteredBB.split.split

originalBB125alteredBB.split.split:               ; preds = %originalBB125alteredBB.split
  store i32 -1603414168, i32* %switchVar, align 4
  store i32 %798, i32* %.reg2mem44, align 4
  br label %originalBB125

originalBB129alteredBB:                           ; preds = %originalBB129.split.split, %.split150.split
  store i32 1481610261, i32* %switchVar, align 4
  br label %originalBB129alteredBB.split

originalBB129alteredBB.split:                     ; preds = %originalBB129alteredBB
  br label %originalBB129

originalBB133alteredBB:                           ; preds = %originalBB133.split.split, %NewDefault.split.split
  store i32 1578865681, i32* %switchVar, align 4
  br label %originalBB133alteredBB.split

originalBB133alteredBB.split:                     ; preds = %originalBB133alteredBB
  br label %originalBB133

originalBB137alteredBB:                           ; preds = %originalBB137.split.split, %.split154.split
  %.reload45alteredBB = load i32, i32* %.reg2mem44, align 4
  br label %originalBB137alteredBB.split

originalBB137alteredBB.split:                     ; preds = %originalBB137alteredBB
  br label %originalBB137
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %1 = load i32, i32* @x.25, align 4
  br label %.split

.split:                                           ; preds = %0
  %2 = load i32, i32* @y.26, align 4
  %3 = add i32 %1, 1256342491
  %4 = sub i32 %3, 1
  %5 = sub i32 %4, 1256342491
  %6 = sub i32 %1, 1
  %7 = mul i32 %1, %5
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %2, 10
  %11 = xor i1 %9, true
  %12 = xor i1 %10, true
  %13 = xor i1 true, true
  %14 = and i1 %11, true
  %15 = and i1 %9, %13
  %16 = and i1 %12, true
  %17 = and i1 %10, %13
  %18 = or i1 %14, %15
  %19 = or i1 %16, %17
  %20 = xor i1 %18, %19
  %21 = or i1 %11, %12
  %22 = xor i1 %21, true
  %23 = or i1 true, %13
  %24 = and i1 %22, %23
  br label %.split.split

.split.split:                                     ; preds = %.split
  %25 = or i1 %20, %24
  %26 = or i1 %9, %10
  br i1 %25, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %.split.split, %originalBBalteredBB.split.split
  %.reg2mem22 = alloca i64, align 8
  %.reg2mem20 = alloca i8*, align 8
  %.reg2mem17 = alloca i32, align 4
  %.reg2mem11 = alloca i32, align 4
  %.reg2mem9 = alloca i8, align 1
  %.reg2mem = alloca i8*, align 8
  br label %originalBB.split

originalBB.split:                                 ; preds = %originalBB
  %27 = alloca [32 x i8], align 16
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %27, i64 0, i64 0
  store i8* %28, i8** %.reg2mem, align 8
  %.reload6 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %.reload6) #9
  %.reload7 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %.reload7, i8 0, i64 32, i1 false)
  %.reload = load i8*, i8** %.reg2mem, align 8
  %29 = load i8, i8* %.reload, align 16, !tbaa !3
  store i8 %29, i8* %.reg2mem9, align 1
  %switchVar = alloca i32, align 4
  store i32 886260025, i32* %switchVar, align 4
  %.reg2mem24 = alloca i64, align 8
  %30 = load i32, i32* @x.25, align 4
  br label %originalBB.split.split

originalBB.split.split:                           ; preds = %originalBB.split
  %31 = load i32, i32* @y.26, align 4
  %32 = sub i32 0, 1
  %33 = add i32 %30, %32
  %34 = sub i32 %30, 1
  %35 = mul i32 %30, %33
  %36 = urem i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = icmp slt i32 %31, 10
  %39 = and i1 %37, %38
  %40 = xor i1 %37, %38
  %41 = or i1 %39, %40
  %42 = or i1 %37, %38
  br i1 %41, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB.split.split
  br label %loopEntry

loopEntry:                                        ; preds = %originalBBpart2, %loopEnd
  %switchVar5 = load i32, i32* %switchVar, align 4
  br label %loopEntry.split

loopEntry.split:                                  ; preds = %loopEntry
  switch i32 %switchVar5, label %switchDefault [
    i32 886260025, label %first
    i32 356022987, label %NodeBlock3
    i32 -668547181, label %NodeBlock
    i32 -207272426, label %LeafBlock1
    i32 -1388109049, label %LeafBlock
    i32 2048024509, label %126
    i32 1908089725, label %140
    i32 -1217824293, label %193
    i32 1827680215, label %NewDefault
    i32 893988073, label %212
    i32 -1241366257, label %216
  ]

switchDefault:                                    ; preds = %loopEntry.split
  %43 = load i32, i32* @x.25, align 4
  %44 = load i32, i32* @y.26, align 4
  %45 = add i32 %43, 1267451200
  %46 = sub i32 %45, 1
  %47 = sub i32 %46, 1267451200
  %48 = sub i32 %43, 1
  br label %switchDefault.split

switchDefault.split:                              ; preds = %switchDefault
  %49 = mul i32 %43, %47
  %50 = urem i32 %49, 2
  %51 = icmp eq i32 %50, 0
  %52 = icmp slt i32 %44, 10
  %53 = and i1 %51, %52
  %54 = xor i1 %51, %52
  br label %switchDefault.split.split

switchDefault.split.split:                        ; preds = %switchDefault.split
  %55 = or i1 %53, %54
  %56 = or i1 %51, %52
  br i1 %55, label %originalBB26, label %originalBB26alteredBB

originalBB26:                                     ; preds = %switchDefault.split.split, %originalBB26alteredBB
  %57 = load i32, i32* @x.25, align 4
  %58 = load i32, i32* @y.26, align 4
  %59 = sub i32 0, 1
  %60 = add i32 %57, %59
  %61 = sub i32 %57, 1
  %62 = mul i32 %57, %60
  %63 = urem i32 %62, 2
  br label %originalBB26.split

originalBB26.split:                               ; preds = %originalBB26
  %64 = icmp eq i32 %63, 0
  %65 = icmp slt i32 %58, 10
  %66 = xor i1 %64, true
  %67 = xor i1 %65, true
  %68 = xor i1 false, true
  %69 = and i1 %66, false
  %70 = and i1 %64, %68
  %71 = and i1 %67, false
  %72 = and i1 %65, %68
  %73 = or i1 %69, %70
  %74 = or i1 %71, %72
  %75 = xor i1 %73, %74
  %76 = or i1 %66, %67
  %77 = xor i1 %76, true
  %78 = or i1 false, %68
  br label %originalBB26.split.split

originalBB26.split.split:                         ; preds = %originalBB26.split
  %79 = and i1 %77, %78
  %80 = or i1 %75, %79
  %81 = or i1 %64, %65
  br i1 %80, label %originalBBpart228, label %originalBB26alteredBB

originalBBpart228:                                ; preds = %originalBB26.split.split
  br label %loopEnd

first:                                            ; preds = %loopEntry.split
  %.reload10 = load i8, i8* %.reg2mem9, align 1
  br label %first.split

first.split:                                      ; preds = %first
  %82 = sext i8 %.reload10 to i32
  store i32 %82, i32* %.reg2mem11, align 4
  br label %first.split.split

first.split.split:                                ; preds = %first.split
  store i32 356022987, i32* %switchVar, align 4
  br label %loopEnd

NodeBlock3:                                       ; preds = %loopEntry.split
  %83 = load i32, i32* @x.25, align 4
  %84 = load i32, i32* @y.26, align 4
  %85 = sub i32 %83, -182704989
  %86 = sub i32 %85, 1
  %87 = add i32 %86, -182704989
  %88 = sub i32 %83, 1
  %89 = mul i32 %83, %87
  br label %NodeBlock3.split

NodeBlock3.split:                                 ; preds = %NodeBlock3
  %90 = urem i32 %89, 2
  br label %NodeBlock3.split.split

NodeBlock3.split.split:                           ; preds = %NodeBlock3.split
  %91 = icmp eq i32 %90, 0
  %92 = icmp slt i32 %84, 10
  %93 = and i1 %91, %92
  %94 = xor i1 %91, %92
  %95 = or i1 %93, %94
  %96 = or i1 %91, %92
  br i1 %95, label %originalBB30, label %originalBB30alteredBB

originalBB30:                                     ; preds = %NodeBlock3.split.split, %originalBB30alteredBB.split.split
  %.reload15 = load i32, i32* %.reg2mem11, align 4
  %Pivot4 = icmp slt i32 %.reload15, 2
  %97 = select i1 %Pivot4, i32 -1388109049, i32 -668547181
  store i32 %97, i32* %switchVar, align 4
  %98 = load i32, i32* @x.25, align 4
  %99 = load i32, i32* @y.26, align 4
  %100 = sub i32 0, 1
  %101 = add i32 %98, %100
  br label %originalBB30.split

originalBB30.split:                               ; preds = %originalBB30
  %102 = sub i32 %98, 1
  %103 = mul i32 %98, %101
  %104 = urem i32 %103, 2
  %105 = icmp eq i32 %104, 0
  %106 = icmp slt i32 %99, 10
  %107 = xor i1 %105, true
  %108 = xor i1 %106, true
  %109 = xor i1 true, true
  br label %originalBB30.split.split

originalBB30.split.split:                         ; preds = %originalBB30.split
  %110 = and i1 %107, true
  %111 = and i1 %105, %109
  %112 = and i1 %108, true
  %113 = and i1 %106, %109
  %114 = or i1 %110, %111
  %115 = or i1 %112, %113
  %116 = xor i1 %114, %115
  %117 = or i1 %107, %108
  %118 = xor i1 %117, true
  %119 = or i1 true, %109
  %120 = and i1 %118, %119
  %121 = or i1 %116, %120
  %122 = or i1 %105, %106
  br i1 %121, label %originalBBpart232, label %originalBB30alteredBB

originalBBpart232:                                ; preds = %originalBB30.split.split
  br label %loopEnd

NodeBlock:                                        ; preds = %loopEntry.split
  %.reload13 = load i32, i32* %.reg2mem11, align 4
  br label %NodeBlock.split

NodeBlock.split:                                  ; preds = %NodeBlock
  %Pivot = icmp slt i32 %.reload13, 3
  %123 = select i1 %Pivot, i32 2048024509, i32 -207272426
  br label %NodeBlock.split.split

NodeBlock.split.split:                            ; preds = %NodeBlock.split
  store i32 %123, i32* %switchVar, align 4
  br label %loopEnd

LeafBlock1:                                       ; preds = %loopEntry.split
  %.reload12 = load i32, i32* %.reg2mem11, align 4
  %SwitchLeaf2 = icmp sle i32 %.reload12, 6
  br label %LeafBlock1.split

LeafBlock1.split:                                 ; preds = %LeafBlock1
  %124 = select i1 %SwitchLeaf2, i32 -1241366257, i32 1827680215
  store i32 %124, i32* %switchVar, align 4
  br label %LeafBlock1.split.split

LeafBlock1.split.split:                           ; preds = %LeafBlock1.split
  br label %loopEnd

LeafBlock:                                        ; preds = %loopEntry.split
  %.reload14 = load i32, i32* %.reg2mem11, align 4
  br label %LeafBlock.split

LeafBlock.split:                                  ; preds = %LeafBlock
  %SwitchLeaf = icmp eq i32 %.reload14, 0
  %125 = select i1 %SwitchLeaf, i32 -1241366257, i32 1827680215
  br label %LeafBlock.split.split

LeafBlock.split.split:                            ; preds = %LeafBlock.split
  store i32 %125, i32* %switchVar, align 4
  br label %loopEnd

126:                                              ; preds = %loopEntry.split
  %127 = getelementptr inbounds [32 x i8], [32 x i8]* %27, i64 0, i64 2
  %128 = load i8, i8* %127, align 2, !tbaa !3
  %129 = zext i8 %128 to i32
  %130 = shl nuw nsw i32 %129, 8
  %131 = getelementptr inbounds [32 x i8], [32 x i8]* %27, i64 0, i64 3
  %132 = load i8, i8* %131, align 1, !tbaa !3
  br label %.split42

.split42:                                         ; preds = %126
  %133 = zext i8 %132 to i32
  %134 = and i32 %130, %133
  %135 = xor i32 %130, %133
  %136 = or i32 %134, %135
  %137 = or i32 %130, %133
  store i32 %136, i32* %.reg2mem17, align 4
  %.reload19 = load i32, i32* %.reg2mem17, align 4
  br label %.split42.split

.split42.split:                                   ; preds = %.split42
  %138 = icmp eq i32 %.reload19, 0
  %139 = select i1 %138, i32 -1241366257, i32 1908089725
  store i32 %139, i32* %switchVar, align 4
  br label %loopEnd

140:                                              ; preds = %loopEntry.split
  %141 = load i32, i32* @x.25, align 4
  %142 = load i32, i32* @y.26, align 4
  %143 = sub i32 0, 1
  %144 = add i32 %141, %143
  %145 = sub i32 %141, 1
  %146 = mul i32 %141, %144
  %147 = urem i32 %146, 2
  %148 = icmp eq i32 %147, 0
  %149 = icmp slt i32 %142, 10
  %150 = xor i1 %148, true
  %151 = xor i1 %149, true
  %152 = xor i1 true, true
  %153 = and i1 %150, true
  %154 = and i1 %148, %152
  %155 = and i1 %151, true
  %156 = and i1 %149, %152
  br label %.split43

.split43:                                         ; preds = %140
  %157 = or i1 %153, %154
  %158 = or i1 %155, %156
  %159 = xor i1 %157, %158
  %160 = or i1 %150, %151
  %161 = xor i1 %160, true
  %162 = or i1 true, %152
  %163 = and i1 %161, %162
  br label %.split43.split

.split43.split:                                   ; preds = %.split43
  %164 = or i1 %159, %163
  %165 = or i1 %148, %149
  br i1 %164, label %originalBB34, label %originalBB34alteredBB

originalBB34:                                     ; preds = %.split43.split, %originalBB34alteredBB.split.split
  %166 = getelementptr inbounds [32 x i8], [32 x i8]* %27, i64 0, i64 4
  br label %originalBB34.split

originalBB34.split:                               ; preds = %originalBB34
  store i8* %166, i8** %.reg2mem20, align 8
  %.reload18 = load i32, i32* %.reg2mem17, align 4
  %167 = zext i32 %.reload18 to i64
  store i64 %167, i64* %.reg2mem22, align 8
  store i32 -1217824293, i32* %switchVar, align 4
  store i64 0, i64* %.reg2mem24, align 8
  %168 = load i32, i32* @x.25, align 4
  %169 = load i32, i32* @y.26, align 4
  %170 = sub i32 0, 1
  %171 = add i32 %168, %170
  %172 = sub i32 %168, 1
  %173 = mul i32 %168, %171
  %174 = urem i32 %173, 2
  br label %originalBB34.split.split

originalBB34.split.split:                         ; preds = %originalBB34.split
  %175 = icmp eq i32 %174, 0
  %176 = icmp slt i32 %169, 10
  %177 = xor i1 %175, true
  %178 = xor i1 %176, true
  %179 = xor i1 false, true
  %180 = and i1 %177, false
  %181 = and i1 %175, %179
  %182 = and i1 %178, false
  %183 = and i1 %176, %179
  %184 = or i1 %180, %181
  %185 = or i1 %182, %183
  %186 = xor i1 %184, %185
  %187 = or i1 %177, %178
  %188 = xor i1 %187, true
  %189 = or i1 false, %179
  %190 = and i1 %188, %189
  %191 = or i1 %186, %190
  %192 = or i1 %175, %176
  br i1 %191, label %originalBBpart236, label %originalBB34alteredBB

originalBBpart236:                                ; preds = %originalBB34.split.split
  br label %loopEnd

193:                                              ; preds = %loopEntry.split
  %.reload25 = load i64, i64* %.reg2mem24, align 8
  %194 = shl nsw i64 %.reload25, 2
  %195 = sub i64 0, %194
  %196 = sub i64 0, 4
  %197 = add i64 %195, %196
  %198 = sub i64 0, %197
  %199 = add nuw nsw i64 %194, 4
  %200 = getelementptr inbounds [32 x i8], [32 x i8]* %27, i64 0, i64 %198
  %201 = bitcast i8* %200 to i32*
  %202 = load i32, i32* %201, align 4
  %.reload21 = load i8*, i8** %.reg2mem20, align 8
  %203 = getelementptr inbounds i8, i8* %.reload21, i64 %194
  %204 = bitcast i8* %203 to i32*
  store i32 %202, i32* %204, align 4
  %205 = sub i64 0, %.reload25
  %206 = sub i64 0, 1
  %207 = add i64 %205, %206
  %208 = sub i64 0, %207
  br label %.split44

.split44:                                         ; preds = %193
  %209 = add nuw nsw i64 %.reload25, 1
  %.reload23 = load i64, i64* %.reg2mem22, align 8
  %210 = icmp eq i64 %208, %.reload23
  br label %.split44.split

.split44.split:                                   ; preds = %.split44
  %211 = select i1 %210, i32 -1241366257, i32 -1217824293
  store i32 %211, i32* %switchVar, align 4
  store i64 %208, i64* %.reg2mem24, align 8
  br label %loopEnd

NewDefault:                                       ; preds = %loopEntry.split
  store i32 893988073, i32* %switchVar, align 4
  br label %NewDefault.split

NewDefault.split:                                 ; preds = %NewDefault
  br label %loopEnd

212:                                              ; preds = %loopEntry.split
  %.reload16 = load i32, i32* %.reg2mem11, align 4
  br label %.split45

.split45:                                         ; preds = %212
  %213 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.reload16) #9
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  br label %.split45.split

.split45.split:                                   ; preds = %.split45
  %215 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %214) #8
  store i32 -1241366257, i32* %switchVar, align 4
  br label %loopEnd

216:                                              ; preds = %loopEntry.split
  %217 = load i32, i32* @x.25, align 4
  %218 = load i32, i32* @y.26, align 4
  %219 = sub i32 %217, -473822935
  %220 = sub i32 %219, 1
  %221 = add i32 %220, -473822935
  %222 = sub i32 %217, 1
  %223 = mul i32 %217, %221
  br label %.split46

.split46:                                         ; preds = %216
  %224 = urem i32 %223, 2
  %225 = icmp eq i32 %224, 0
  %226 = icmp slt i32 %218, 10
  %227 = xor i1 %225, true
  %228 = xor i1 %226, true
  %229 = xor i1 true, true
  %230 = and i1 %227, true
  %231 = and i1 %225, %229
  %232 = and i1 %228, true
  %233 = and i1 %226, %229
  %234 = or i1 %230, %231
  br label %.split46.split

.split46.split:                                   ; preds = %.split46
  %235 = or i1 %232, %233
  %236 = xor i1 %234, %235
  %237 = or i1 %227, %228
  %238 = xor i1 %237, true
  %239 = or i1 true, %229
  %240 = and i1 %238, %239
  %241 = or i1 %236, %240
  %242 = or i1 %225, %226
  br i1 %241, label %originalBB38, label %originalBB38alteredBB

originalBB38:                                     ; preds = %.split46.split, %originalBB38alteredBB.split.split
  %.reload8 = load i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %.reload8) #9
  %243 = load i32, i32* @x.25, align 4
  %244 = load i32, i32* @y.26, align 4
  %245 = sub i32 0, 1
  %246 = add i32 %243, %245
  %247 = sub i32 %243, 1
  %248 = mul i32 %243, %246
  %249 = urem i32 %248, 2
  %250 = icmp eq i32 %249, 0
  %251 = icmp slt i32 %244, 10
  br label %originalBB38.split

originalBB38.split:                               ; preds = %originalBB38
  %252 = and i1 %250, %251
  %253 = xor i1 %250, %251
  %254 = or i1 %252, %253
  br label %originalBB38.split.split

originalBB38.split.split:                         ; preds = %originalBB38.split
  %255 = or i1 %250, %251
  br i1 %254, label %originalBBpart240, label %originalBB38alteredBB

originalBBpart240:                                ; preds = %originalBB38.split.split
  ret i32 0

loopEnd:                                          ; preds = %.split45.split, %NewDefault.split, %.split44.split, %originalBBpart236, %.split42.split, %LeafBlock.split.split, %LeafBlock1.split.split, %NodeBlock.split.split, %originalBBpart232, %first.split.split, %originalBBpart228
  br label %loopEntry

originalBBalteredBB:                              ; preds = %originalBB.split.split, %.split.split
  %.reg2mem22alteredBB = alloca i64, align 8
  %.reg2mem20alteredBB = alloca i8*, align 8
  %.reg2mem17alteredBB = alloca i32, align 4
  %.reg2mem11alteredBB = alloca i32, align 4
  %.reg2mem9alteredBB = alloca i8, align 1
  %.reg2memalteredBB = alloca i8*, align 8
  br label %originalBBalteredBB.split

originalBBalteredBB.split:                        ; preds = %originalBBalteredBB
  %256 = alloca [32 x i8], align 16
  %257 = getelementptr inbounds [32 x i8], [32 x i8]* %256, i64 0, i64 0
  store i8* %257, i8** %.reg2memalteredBB, align 8
  %.reload6alteredBB = load i8*, i8** %.reg2memalteredBB, align 8
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %.reload6alteredBB) #9
  %.reload7alteredBB = load i8*, i8** %.reg2memalteredBB, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %.reload7alteredBB, i8 0, i64 32, i1 false)
  %.reloadalteredBB = load i8*, i8** %.reg2memalteredBB, align 8
  br label %originalBBalteredBB.split.split

originalBBalteredBB.split.split:                  ; preds = %originalBBalteredBB.split
  %258 = load i8, i8* %.reloadalteredBB, align 16, !tbaa !3
  store i8 %258, i8* %.reg2mem9alteredBB, align 1
  %switchVaralteredBB = alloca i32, align 4
  store i32 886260025, i32* %switchVaralteredBB, align 4
  %.reg2mem24alteredBB = alloca i64, align 8
  br label %originalBB

originalBB26alteredBB:                            ; preds = %originalBB26.split.split, %switchDefault.split.split
  br label %originalBB26

originalBB30alteredBB:                            ; preds = %originalBB30.split.split, %NodeBlock3.split.split
  %.reload15alteredBB = load i32, i32* %.reg2mem11, align 4
  %Pivot4alteredBB = icmp slt i32 %.reload15alteredBB, 2
  br label %originalBB30alteredBB.split

originalBB30alteredBB.split:                      ; preds = %originalBB30alteredBB
  %259 = select i1 %Pivot4alteredBB, i32 -1388109049, i32 -668547181
  store i32 %259, i32* %switchVar, align 4
  br label %originalBB30alteredBB.split.split

originalBB30alteredBB.split.split:                ; preds = %originalBB30alteredBB.split
  br label %originalBB30

originalBB34alteredBB:                            ; preds = %originalBB34.split.split, %.split43.split
  %260 = getelementptr inbounds [32 x i8], [32 x i8]* %27, i64 0, i64 4
  store i8* %260, i8** %.reg2mem20, align 8
  %.reload18alteredBB = load i32, i32* %.reg2mem17, align 4
  br label %originalBB34alteredBB.split

originalBB34alteredBB.split:                      ; preds = %originalBB34alteredBB
  %261 = zext i32 %.reload18alteredBB to i64
  store i64 %261, i64* %.reg2mem22, align 8
  store i32 -1217824293, i32* %switchVar, align 4
  br label %originalBB34alteredBB.split.split

originalBB34alteredBB.split.split:                ; preds = %originalBB34alteredBB.split
  store i64 0, i64* %.reg2mem24, align 8
  br label %originalBB34

originalBB38alteredBB:                            ; preds = %originalBB38.split.split, %.split46.split
  %.reload8alteredBB = load i8*, i8** %.reg2mem, align 8
  br label %originalBB38alteredBB.split

originalBB38alteredBB.split:                      ; preds = %originalBB38alteredBB
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %.reload8alteredBB) #9
  br label %originalBB38alteredBB.split.split

originalBB38alteredBB.split.split:                ; preds = %originalBB38alteredBB.split
  br label %originalBB38
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

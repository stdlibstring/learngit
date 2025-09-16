; ModuleID = 'Test.c'
source_filename = "Test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@grade_mul = dso_local global i32 0, align 4
@degree_mul = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"PB%d\0A\00", align 1
@Grade = dso_local global [1 x i32] zeroinitializer, align 4
@Degree = dso_local global [1 x i32] zeroinitializer, align 4
@Number = dso_local global [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StudentNumber(i32* noundef %0, i32* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @grade_mul, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @degree_mul, align 4
  %25 = mul nsw i32 %23, %24
  %26 = add nsw i32 %22, %25
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %29)
  ret void
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 23, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @Grade, i64 0, i64 0), align 4
  store i32 2, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @Degree, i64 0, i64 0), align 4
  store i32 465, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @Number, i64 0, i64 0), align 4
  store i32 1000000, i32* @grade_mul, align 4
  store i32 10000, i32* @degree_mul, align 4
  call void @StudentNumber(i32* noundef getelementptr inbounds ([1 x i32], [1 x i32]* @Grade, i64 0, i64 0), i32* noundef getelementptr inbounds ([1 x i32], [1 x i32]* @Degree, i64 0, i64 0), i32* noundef getelementptr inbounds ([1 x i32], [1 x i32]* @Number, i64 0, i64 0))
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}

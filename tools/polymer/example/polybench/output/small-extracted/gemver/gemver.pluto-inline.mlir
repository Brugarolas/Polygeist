#map0 = affine_map<(d0) -> (0, (d0 * 32 - 39) ceildiv 32)>
#map1 = affine_map<(d0) -> (2, d0 + 1)>
#map2 = affine_map<(d0) -> (d0 * 32)>
#map3 = affine_map<(d0) -> (40, d0 * 32 + 32)>
#map4 = affine_map<(d0, d1) -> (d0 * 32 - d1 * 32)>
#map5 = affine_map<(d0, d1) -> (40, d0 * 32 - d1 * 32 + 32)>
#map6 = affine_map<()[s0] -> ((s0 - 1) floordiv 16 + 1)>
#map7 = affine_map<(d0)[s0] -> (0, (d0 * 32 - s0 + 1) ceildiv 32)>
#map8 = affine_map<(d0)[s0] -> ((s0 - 1) floordiv 32 + 1, d0 + 1)>
#map9 = affine_map<(d0)[s0] -> (s0, d0 * 32 + 32)>
#map10 = affine_map<(d0, d1)[s0] -> (s0, d0 * 32 - d1 * 32 + 32)>
#map11 = affine_map<()[s0] -> ((s0 - 1) floordiv 32 + 1)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"}  {
  llvm.mlir.global internal constant @str6("==END   DUMP_ARRAYS==\0A\00")
  llvm.mlir.global internal constant @str5("\0Aend   dump: %s\0A\00")
  llvm.mlir.global internal constant @str4("%0.2lf \00")
  llvm.mlir.global internal constant @str3("\0A\00")
  llvm.mlir.global internal constant @str2("w\00")
  llvm.mlir.global internal constant @str1("begin dump: %s\00")
  llvm.mlir.global internal constant @str0("==BEGIN DUMP_ARRAYS==\0A\00")
  llvm.mlir.global external @stderr() : !llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> !llvm.i32
  func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %c40_i32 = constant 40 : i32
    %c0 = constant 0 : index
    %cst = constant 1.500000e+00 : f64
    %cst_0 = constant 1.200000e+00 : f64
    %c0_i32 = constant 0 : i32
    %c1_i32 = constant 1 : i32
    %cst_1 = constant 2.000000e+00 : f64
    %cst_2 = constant 4.000000e+00 : f64
    %cst_3 = constant 6.000000e+00 : f64
    %cst_4 = constant 8.000000e+00 : f64
    %cst_5 = constant 9.000000e+00 : f64
    %cst_6 = constant 0.000000e+00 : f64
    %0 = alloca() : memref<1xf64>
    %1 = alloca() : memref<1xf64>
    %2 = alloc() : memref<40x40xf64>
    %3 = alloc() : memref<40xf64>
    %4 = alloc() : memref<40xf64>
    %5 = alloc() : memref<40xf64>
    %6 = alloc() : memref<40xf64>
    %7 = alloc() : memref<40xf64>
    %8 = alloc() : memref<40xf64>
    %9 = alloc() : memref<40xf64>
    %10 = alloc() : memref<40xf64>
    store %cst, %0[%c0] : memref<1xf64>
    store %cst_0, %1[%c0] : memref<1xf64>
    %11 = sitofp %c40_i32 : i32 to f64
    br ^bb1(%c0_i32 : i32)
  ^bb1(%12: i32):  // 2 preds: ^bb0, ^bb4
    %13 = cmpi "slt", %12, %c40_i32 : i32
    %14 = index_cast %12 : i32 to index
    cond_br %13, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %15 = sitofp %12 : i32 to f64
    store %15, %3[%14] : memref<40xf64>
    %16 = addi %12, %c1_i32 : i32
    %17 = sitofp %16 : i32 to f64
    %18 = divf %17, %11 : f64
    %19 = divf %18, %cst_1 : f64
    store %19, %5[%14] : memref<40xf64>
    %20 = divf %18, %cst_2 : f64
    store %20, %4[%14] : memref<40xf64>
    %21 = divf %18, %cst_3 : f64
    store %21, %6[%14] : memref<40xf64>
    %22 = divf %18, %cst_4 : f64
    store %22, %9[%14] : memref<40xf64>
    %23 = divf %18, %cst_5 : f64
    store %23, %10[%14] : memref<40xf64>
    store %cst_6, %8[%14] : memref<40xf64>
    store %cst_6, %7[%14] : memref<40xf64>
    br ^bb4(%c0_i32 : i32)
  ^bb3:  // pred: ^bb1
    %24 = load %0[%c0] : memref<1xf64>
    %25 = load %1[%c0] : memref<1xf64>
    affine.for %arg2 = 0 to 3 {
      affine.for %arg3 = max #map0(%arg2) to min #map1(%arg2) {
        affine.for %arg4 = #map2(%arg3) to min #map3(%arg3) {
          affine.for %arg5 = #map4(%arg2, %arg3) to min #map5(%arg2, %arg3) {
            call @S0(%2, %arg5, %arg4, %6, %5, %4, %3) : (memref<40x40xf64>, index, index, memref<40xf64>, memref<40xf64>, memref<40xf64>, memref<40xf64>) -> ()
            call @S1(%8, %arg4, %9, %arg5, %25, %2) : (memref<40xf64>, index, memref<40xf64>, index, f64, memref<40x40xf64>) -> ()
          }
        }
      }
    }
    affine.for %arg2 = 0 to 2 {
      affine.for %arg3 = #map2(%arg2) to min #map3(%arg2) {
        call @S2(%8, %arg3, %10) : (memref<40xf64>, index, memref<40xf64>) -> ()
      }
    }
    affine.for %arg2 = 0 to 2 {
      affine.for %arg3 = 0 to 2 {
        affine.for %arg4 = #map2(%arg2) to min #map3(%arg2) {
          affine.for %arg5 = #map2(%arg3) to min #map3(%arg3) {
            call @S3(%7, %arg4, %8, %arg5, %24, %2) : (memref<40xf64>, index, memref<40xf64>, index, f64, memref<40x40xf64>) -> ()
          }
        }
      }
    }
    call @print_array(%c40_i32, %7) : (i32, memref<40xf64>) -> ()
    return %c0_i32 : i32
  ^bb4(%26: i32):  // 2 preds: ^bb2, ^bb5
    %27 = cmpi "slt", %26, %c40_i32 : i32
    %28 = index_cast %26 : i32 to index
    cond_br %27, ^bb5, ^bb1(%16 : i32)
  ^bb5:  // pred: ^bb4
    %29 = muli %12, %26 : i32
    %30 = remi_signed %29, %c40_i32 : i32
    %31 = sitofp %30 : i32 to f64
    %32 = divf %31, %11 : f64
    store %32, %2[%14, %28] : memref<40x40xf64>
    %33 = addi %26, %c1_i32 : i32
    br ^bb4(%33 : i32)
  }
  func @init_array(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<40x40xf64>, %arg4: memref<40xf64>, %arg5: memref<40xf64>, %arg6: memref<40xf64>, %arg7: memref<40xf64>, %arg8: memref<40xf64>, %arg9: memref<40xf64>, %arg10: memref<40xf64>, %arg11: memref<40xf64>) {
    %c0 = constant 0 : index
    %cst = constant 1.500000e+00 : f64
    %cst_0 = constant 1.200000e+00 : f64
    %c0_i32 = constant 0 : i32
    %c1_i32 = constant 1 : i32
    %cst_1 = constant 2.000000e+00 : f64
    %cst_2 = constant 4.000000e+00 : f64
    %cst_3 = constant 6.000000e+00 : f64
    %cst_4 = constant 8.000000e+00 : f64
    %cst_5 = constant 9.000000e+00 : f64
    %cst_6 = constant 0.000000e+00 : f64
    store %cst, %arg1[%c0] : memref<?xf64>
    store %cst_0, %arg2[%c0] : memref<?xf64>
    %0 = sitofp %arg0 : i32 to f64
    br ^bb1(%c0_i32 : i32)
  ^bb1(%1: i32):  // 2 preds: ^bb0, ^bb4
    %2 = cmpi "slt", %1, %arg0 : i32
    %3 = index_cast %1 : i32 to index
    cond_br %2, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %4 = sitofp %1 : i32 to f64
    store %4, %arg4[%3] : memref<40xf64>
    %5 = addi %1, %c1_i32 : i32
    %6 = sitofp %5 : i32 to f64
    %7 = divf %6, %0 : f64
    %8 = divf %7, %cst_1 : f64
    store %8, %arg6[%3] : memref<40xf64>
    %9 = divf %7, %cst_2 : f64
    store %9, %arg5[%3] : memref<40xf64>
    %10 = divf %7, %cst_3 : f64
    store %10, %arg7[%3] : memref<40xf64>
    %11 = divf %7, %cst_4 : f64
    store %11, %arg10[%3] : memref<40xf64>
    %12 = divf %7, %cst_5 : f64
    store %12, %arg11[%3] : memref<40xf64>
    store %cst_6, %arg9[%3] : memref<40xf64>
    store %cst_6, %arg8[%3] : memref<40xf64>
    br ^bb4(%c0_i32 : i32)
  ^bb3:  // pred: ^bb1
    return
  ^bb4(%13: i32):  // 2 preds: ^bb2, ^bb5
    %14 = cmpi "slt", %13, %arg0 : i32
    %15 = index_cast %13 : i32 to index
    cond_br %14, ^bb5, ^bb1(%5 : i32)
  ^bb5:  // pred: ^bb4
    %16 = muli %1, %13 : i32
    %17 = remi_signed %16, %arg0 : i32
    %18 = sitofp %17 : i32 to f64
    %19 = divf %18, %0 : f64
    store %19, %arg3[%3, %15] : memref<40x40xf64>
    %20 = addi %13, %c1_i32 : i32
    br ^bb4(%20 : i32)
  }
  func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<40x40xf64>, %arg4: memref<40xf64>, %arg5: memref<40xf64>, %arg6: memref<40xf64>, %arg7: memref<40xf64>, %arg8: memref<40xf64>, %arg9: memref<40xf64>, %arg10: memref<40xf64>, %arg11: memref<40xf64>) {
    %0 = index_cast %arg0 : i32 to index
    affine.for %arg12 = 0 to %0 {
      affine.for %arg13 = 0 to %0 {
        call @S0(%arg3, %arg12, %arg13, %arg7, %arg6, %arg5, %arg4) : (memref<40x40xf64>, index, index, memref<40xf64>, memref<40xf64>, memref<40xf64>, memref<40xf64>) -> ()
      }
    }
    affine.for %arg12 = 0 to %0 {
      affine.for %arg13 = 0 to %0 {
        call @S1(%arg9, %arg12, %arg10, %arg13, %arg2, %arg3) : (memref<40xf64>, index, memref<40xf64>, index, f64, memref<40x40xf64>) -> ()
      }
    }
    affine.for %arg12 = 0 to %0 {
      call @S2(%arg9, %arg12, %arg11) : (memref<40xf64>, index, memref<40xf64>) -> ()
    }
    affine.for %arg12 = 0 to %0 {
      affine.for %arg13 = 0 to %0 {
        call @S3(%arg8, %arg12, %arg9, %arg13, %arg1, %arg3) : (memref<40xf64>, index, memref<40xf64>, index, f64, memref<40x40xf64>) -> ()
      }
    }
    return
  }
  func @print_array(%arg0: i32, %arg1: memref<40xf64>) {
    %c0_i32 = constant 0 : i32
    %c20_i32 = constant 20 : i32
    %c1_i32 = constant 1 : i32
    %0 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %2 = llvm.mlir.addressof @str0 : !llvm.ptr<array<23 x i8>>
    %3 = llvm.mlir.constant(0 : index) : !llvm.i64
    %4 = llvm.getelementptr %2[%3, %3] : (!llvm.ptr<array<23 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %5 = llvm.call @fprintf(%1, %4) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> !llvm.i32
    %6 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %8 = llvm.mlir.addressof @str1 : !llvm.ptr<array<15 x i8>>
    %9 = llvm.getelementptr %8[%3, %3] : (!llvm.ptr<array<15 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %10 = llvm.mlir.addressof @str2 : !llvm.ptr<array<2 x i8>>
    %11 = llvm.getelementptr %10[%3, %3] : (!llvm.ptr<array<2 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %12 = llvm.call @fprintf(%7, %9, %11) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.i32
    br ^bb1(%c0_i32 : i32)
  ^bb1(%13: i32):  // 2 preds: ^bb0, ^bb2
    %14 = cmpi "slt", %13, %arg0 : i32
    %15 = index_cast %13 : i32 to index
    cond_br %14, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %16 = remi_signed %13, %c20_i32 : i32
    %17 = cmpi "eq", %16, %c0_i32 : i32
    scf.if %17 {
      %38 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %39 = llvm.load %38 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %40 = llvm.mlir.addressof @str3 : !llvm.ptr<array<2 x i8>>
      %41 = llvm.getelementptr %40[%3, %3] : (!llvm.ptr<array<2 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
      %42 = llvm.call @fprintf(%39, %41) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> !llvm.i32
    }
    %18 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %19 = llvm.load %18 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %20 = llvm.mlir.addressof @str4 : !llvm.ptr<array<8 x i8>>
    %21 = llvm.getelementptr %20[%3, %3] : (!llvm.ptr<array<8 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %22 = load %arg1[%15] : memref<40xf64>
    %23 = llvm.mlir.cast %22 : f64 to !llvm.double
    %24 = llvm.call @fprintf(%19, %21, %23) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.double) -> !llvm.i32
    %25 = addi %13, %c1_i32 : i32
    br ^bb1(%25 : i32)
  ^bb3:  // pred: ^bb1
    %26 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %27 = llvm.load %26 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %28 = llvm.mlir.addressof @str5 : !llvm.ptr<array<17 x i8>>
    %29 = llvm.getelementptr %28[%3, %3] : (!llvm.ptr<array<17 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %30 = llvm.mlir.addressof @str2 : !llvm.ptr<array<2 x i8>>
    %31 = llvm.getelementptr %30[%3, %3] : (!llvm.ptr<array<2 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %32 = llvm.call @fprintf(%27, %29, %31) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.i32
    %33 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %34 = llvm.load %33 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %35 = llvm.mlir.addressof @str6 : !llvm.ptr<array<23 x i8>>
    %36 = llvm.getelementptr %35[%3, %3] : (!llvm.ptr<array<23 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %37 = llvm.call @fprintf(%34, %36) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> !llvm.i32
    return
  }
  func private @free(memref<?xi8>)
  func private @S0(%arg0: memref<40x40xf64>, %arg1: index, %arg2: index, %arg3: memref<40xf64>, %arg4: memref<40xf64>, %arg5: memref<40xf64>, %arg6: memref<40xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<40x40xf64>
    %1 = affine.load %arg6[%arg1] : memref<40xf64>
    %2 = affine.load %arg5[%arg2] : memref<40xf64>
    %3 = mulf %1, %2 : f64
    %4 = addf %0, %3 : f64
    %5 = affine.load %arg4[%arg1] : memref<40xf64>
    %6 = affine.load %arg3[%arg2] : memref<40xf64>
    %7 = mulf %5, %6 : f64
    %8 = addf %4, %7 : f64
    affine.store %8, %arg0[%arg1, %arg2] : memref<40x40xf64>
    return
  }
  func private @S1(%arg0: memref<40xf64>, %arg1: index, %arg2: memref<40xf64>, %arg3: index, %arg4: f64, %arg5: memref<40x40xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<40xf64>
    %1 = affine.load %arg5[%arg3, %arg1] : memref<40x40xf64>
    %2 = mulf %arg4, %1 : f64
    %3 = affine.load %arg2[%arg3] : memref<40xf64>
    %4 = mulf %2, %3 : f64
    %5 = addf %0, %4 : f64
    affine.store %5, %arg0[%arg1] : memref<40xf64>
    return
  }
  func private @S2(%arg0: memref<40xf64>, %arg1: index, %arg2: memref<40xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<40xf64>
    %1 = affine.load %arg2[%arg1] : memref<40xf64>
    %2 = addf %0, %1 : f64
    affine.store %2, %arg0[%arg1] : memref<40xf64>
    return
  }
  func private @S3(%arg0: memref<40xf64>, %arg1: index, %arg2: memref<40xf64>, %arg3: index, %arg4: f64, %arg5: memref<40x40xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<40xf64>
    %1 = affine.load %arg5[%arg1, %arg3] : memref<40x40xf64>
    %2 = mulf %arg4, %1 : f64
    %3 = affine.load %arg2[%arg3] : memref<40xf64>
    %4 = mulf %2, %3 : f64
    %5 = addf %0, %4 : f64
    affine.store %5, %arg0[%arg1] : memref<40xf64>
    return
  }
  func @kernel_gemver_new(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<40x40xf64>, %arg4: memref<40xf64>, %arg5: memref<40xf64>, %arg6: memref<40xf64>, %arg7: memref<40xf64>, %arg8: memref<40xf64>, %arg9: memref<40xf64>, %arg10: memref<40xf64>, %arg11: memref<40xf64>) {
    %0 = index_cast %arg0 : i32 to index
    affine.for %arg12 = 0 to #map6()[%0] {
      affine.for %arg13 = max #map7(%arg12)[%0] to min #map8(%arg12)[%0] {
        affine.for %arg14 = #map2(%arg13) to min #map9(%arg13)[%0] {
          affine.for %arg15 = #map4(%arg12, %arg13) to min #map10(%arg12, %arg13)[%0] {
            call @S0(%arg3, %arg15, %arg14, %arg7, %arg6, %arg5, %arg4) : (memref<40x40xf64>, index, index, memref<40xf64>, memref<40xf64>, memref<40xf64>, memref<40xf64>) -> ()
            call @S1(%arg9, %arg14, %arg10, %arg15, %arg2, %arg3) : (memref<40xf64>, index, memref<40xf64>, index, f64, memref<40x40xf64>) -> ()
          }
        }
      }
    }
    affine.for %arg12 = 0 to #map11()[%0] {
      affine.for %arg13 = #map2(%arg12) to min #map9(%arg12)[%0] {
        call @S2(%arg9, %arg13, %arg11) : (memref<40xf64>, index, memref<40xf64>) -> ()
      }
    }
    affine.for %arg12 = 0 to #map11()[%0] {
      affine.for %arg13 = 0 to #map11()[%0] {
        affine.for %arg14 = #map2(%arg12) to min #map9(%arg12)[%0] {
          affine.for %arg15 = #map2(%arg13) to min #map9(%arg13)[%0] {
            call @S3(%arg8, %arg14, %arg9, %arg15, %arg1, %arg3) : (memref<40xf64>, index, memref<40xf64>, index, f64, memref<40x40xf64>) -> ()
          }
        }
      }
    }
    return
  }
}

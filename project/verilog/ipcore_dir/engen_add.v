////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: engen_add.v
// /___/   /\     Timestamp: Wed Dec  3 07:39:17 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/ipcore_dir/tmp/_cg/engen_add.ngc /afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/ipcore_dir/tmp/_cg/engen_add.v 
// Device	: 7z020clg484-1
// Input file	: /afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/ipcore_dir/tmp/_cg/engen_add.ngc
// Output file	: /afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/ipcore_dir/tmp/_cg/engen_add.v
// # of Modules	: 1
// Design Name	: engen_add
// Xilinx        : /afs/ece.cmu.edu/support/xilinx/xilinx.release/14.2/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module engen_add (
  clk, a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input [17 : 0] a;
  input [17 : 0] b;
  output [17 : 0] s;
  
  // synthesis translate_off
  
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<9> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<8> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<7> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<6> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<5> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<4> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<3> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<2> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<1> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<9> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<8> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<7> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<6> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<5> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<4> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<3> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<2> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<1> ;
  wire sig00000001;
  wire sig00000002;
  wire sig00000003;
  wire sig00000004;
  wire sig00000005;
  wire sig00000006;
  wire sig00000007;
  wire sig00000008;
  wire sig00000009;
  wire sig0000000a;
  wire sig0000000b;
  wire sig0000000c;
  wire sig0000000d;
  wire sig0000000e;
  wire sig0000000f;
  wire sig00000010;
  wire sig00000011;
  wire sig00000012;
  wire sig00000013;
  wire sig00000014;
  wire sig00000015;
  wire sig00000016;
  wire sig00000017;
  wire sig00000018;
  wire sig00000019;
  wire sig0000001a;
  wire sig0000001b;
  wire sig0000001c;
  wire sig0000001d;
  wire sig0000001e;
  wire sig0000001f;
  wire sig00000020;
  wire sig00000021;
  wire sig00000022;
  wire sig00000023;
  wire sig00000024;
  wire sig00000025;
  wire sig00000026;
  wire sig00000027;
  wire sig00000028;
  wire sig00000029;
  wire sig0000002a;
  wire sig0000002b;
  wire sig0000002c;
  wire sig0000002d;
  wire sig0000002e;
  wire sig0000002f;
  wire sig00000030;
  wire sig00000031;
  wire sig00000032;
  wire sig00000033;
  wire sig00000034;
  wire sig00000035;
  wire sig00000036;
  wire sig00000037;
  wire sig00000038;
  wire sig00000039;
  wire sig0000003a;
  wire sig0000003b;
  wire sig0000003c;
  wire sig0000003d;
  wire sig0000003e;
  wire sig0000003f;
  wire sig00000040;
  wire sig00000041;
  wire sig00000042;
  wire sig00000043;
  wire sig00000044;
  wire sig00000045;
  wire sig00000046;
  wire sig00000047;
  wire sig00000048;
  wire sig00000049;
  wire sig0000004a;
  wire sig0000004b;
  wire sig0000004c;
  wire sig0000004d;
  wire sig0000004e;
  wire sig0000004f;
  wire sig00000050;
  wire sig00000051;
  wire sig00000052;
  wire sig00000053;
  wire sig00000054;
  wire sig00000055;
  wire sig00000056;
  wire sig00000057;
  wire sig00000058;
  wire sig00000059;
  wire sig0000005a;
  wire sig0000005b;
  wire sig0000005c;
  wire sig0000005d;
  wire sig0000005e;
  wire sig0000005f;
  wire sig00000060;
  wire sig00000061;
  wire sig00000062;
  wire sig00000063;
  wire sig00000064;
  wire NLW_blk00000042_O_UNCONNECTED;
  wire NLW_blk00000066_Q15_UNCONNECTED;
  wire NLW_blk00000068_Q15_UNCONNECTED;
  wire NLW_blk0000006a_Q15_UNCONNECTED;
  wire NLW_blk0000006c_Q15_UNCONNECTED;
  wire NLW_blk0000006e_Q15_UNCONNECTED;
  wire NLW_blk00000070_Q15_UNCONNECTED;
  wire NLW_blk00000072_Q15_UNCONNECTED;
  wire NLW_blk00000074_Q15_UNCONNECTED;
  wire NLW_blk00000076_Q15_UNCONNECTED;
  assign
    s[17] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<9> 
,
    s[16] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<8> 
,
    s[15] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<7> 
,
    s[14] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<6> 
,
    s[13] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<5> 
,
    s[12] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<4> 
,
    s[11] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<3> 
,
    s[10] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<2> 
,
    s[9] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<1> 
,
    s[8] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<9> ,
    s[7] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<8> ,
    s[6] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<7> ,
    s[5] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<6> ,
    s[4] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<5> ,
    s[3] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<4> ,
    s[2] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<3> ,
    s[1] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<2> ,
    s[0] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<1> ;
  GND   blk00000001 (
    .G(sig00000001)
  );
  XORCY   blk00000002 (
    .CI(sig00000001),
    .LI(sig0000001d),
    .O(sig0000000c)
  );
  XORCY   blk00000003 (
    .CI(sig0000001e),
    .LI(sig0000001c),
    .O(sig0000000d)
  );
  XORCY   blk00000004 (
    .CI(sig0000001f),
    .LI(sig00000015),
    .O(sig0000000e)
  );
  XORCY   blk00000005 (
    .CI(sig00000020),
    .LI(sig00000016),
    .O(sig0000000f)
  );
  XORCY   blk00000006 (
    .CI(sig00000021),
    .LI(sig00000017),
    .O(sig00000010)
  );
  XORCY   blk00000007 (
    .CI(sig00000022),
    .LI(sig00000018),
    .O(sig00000011)
  );
  XORCY   blk00000008 (
    .CI(sig00000023),
    .LI(sig00000019),
    .O(sig00000012)
  );
  XORCY   blk00000009 (
    .CI(sig00000024),
    .LI(sig0000001a),
    .O(sig00000013)
  );
  XORCY   blk0000000a (
    .CI(sig00000026),
    .LI(sig0000001b),
    .O(sig00000014)
  );
  MUXCY   blk0000000b (
    .CI(sig0000001f),
    .DI(a[7]),
    .S(sig00000015),
    .O(sig0000001e)
  );
  MUXCY   blk0000000c (
    .CI(sig00000020),
    .DI(a[6]),
    .S(sig00000016),
    .O(sig0000001f)
  );
  MUXCY   blk0000000d (
    .CI(sig00000021),
    .DI(a[5]),
    .S(sig00000017),
    .O(sig00000020)
  );
  MUXCY   blk0000000e (
    .CI(sig00000022),
    .DI(a[4]),
    .S(sig00000018),
    .O(sig00000021)
  );
  MUXCY   blk0000000f (
    .CI(sig00000023),
    .DI(a[3]),
    .S(sig00000019),
    .O(sig00000022)
  );
  MUXCY   blk00000010 (
    .CI(sig00000024),
    .DI(a[2]),
    .S(sig0000001a),
    .O(sig00000023)
  );
  MUXCY   blk00000011 (
    .CI(sig00000026),
    .DI(a[1]),
    .S(sig0000001b),
    .O(sig00000024)
  );
  MUXCY   blk00000012 (
    .CI(sig0000001e),
    .DI(a[8]),
    .S(sig0000001c),
    .O(sig00000025)
  );
  MUXCY   blk00000013 (
    .CI(sig00000001),
    .DI(a[0]),
    .S(sig0000001d),
    .O(sig00000026)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000014 (
    .C(clk),
    .D(sig00000025),
    .Q(sig0000000b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000015 (
    .C(clk),
    .D(sig00000027),
    .Q(sig00000002)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000016 (
    .C(clk),
    .D(sig0000002f),
    .Q(sig00000003)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000017 (
    .C(clk),
    .D(sig0000002e),
    .Q(sig00000004)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000018 (
    .C(clk),
    .D(sig0000002d),
    .Q(sig00000005)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000019 (
    .C(clk),
    .D(sig0000002c),
    .Q(sig00000006)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001a (
    .C(clk),
    .D(sig0000002b),
    .Q(sig00000007)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001b (
    .C(clk),
    .D(sig0000002a),
    .Q(sig00000008)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001c (
    .C(clk),
    .D(sig00000029),
    .Q(sig00000009)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001d (
    .C(clk),
    .D(sig00000028),
    .Q(sig0000000a)
  );
  XORCY   blk0000001e (
    .CI(sig00000001),
    .LI(sig00000038),
    .O(sig00000027)
  );
  XORCY   blk0000001f (
    .CI(sig00000039),
    .LI(sig00000037),
    .O(sig00000028)
  );
  XORCY   blk00000020 (
    .CI(sig0000003a),
    .LI(sig00000030),
    .O(sig00000029)
  );
  XORCY   blk00000021 (
    .CI(sig0000003b),
    .LI(sig00000031),
    .O(sig0000002a)
  );
  XORCY   blk00000022 (
    .CI(sig0000003c),
    .LI(sig00000032),
    .O(sig0000002b)
  );
  XORCY   blk00000023 (
    .CI(sig0000003d),
    .LI(sig00000033),
    .O(sig0000002c)
  );
  XORCY   blk00000024 (
    .CI(sig0000003e),
    .LI(sig00000034),
    .O(sig0000002d)
  );
  XORCY   blk00000025 (
    .CI(sig0000003f),
    .LI(sig00000035),
    .O(sig0000002e)
  );
  XORCY   blk00000026 (
    .CI(sig00000040),
    .LI(sig00000036),
    .O(sig0000002f)
  );
  MUXCY   blk00000027 (
    .CI(sig0000003a),
    .DI(a[16]),
    .S(sig00000030),
    .O(sig00000039)
  );
  MUXCY   blk00000028 (
    .CI(sig0000003b),
    .DI(a[15]),
    .S(sig00000031),
    .O(sig0000003a)
  );
  MUXCY   blk00000029 (
    .CI(sig0000003c),
    .DI(a[14]),
    .S(sig00000032),
    .O(sig0000003b)
  );
  MUXCY   blk0000002a (
    .CI(sig0000003d),
    .DI(a[13]),
    .S(sig00000033),
    .O(sig0000003c)
  );
  MUXCY   blk0000002b (
    .CI(sig0000003e),
    .DI(a[12]),
    .S(sig00000034),
    .O(sig0000003d)
  );
  MUXCY   blk0000002c (
    .CI(sig0000003f),
    .DI(a[11]),
    .S(sig00000035),
    .O(sig0000003e)
  );
  MUXCY   blk0000002d (
    .CI(sig00000040),
    .DI(a[10]),
    .S(sig00000036),
    .O(sig0000003f)
  );
  MUXCY   blk0000002e (
    .CI(sig00000001),
    .DI(a[9]),
    .S(sig00000038),
    .O(sig00000040)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002f (
    .C(clk),
    .D(sig00000050),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<1> )

  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000030 (
    .C(clk),
    .D(sig0000004e),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<2> )

  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000031 (
    .C(clk),
    .D(sig0000004c),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<3> )

  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000032 (
    .C(clk),
    .D(sig00000049),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<4> )

  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000033 (
    .C(clk),
    .D(sig00000047),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<5> )

  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000034 (
    .C(clk),
    .D(sig00000045),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<6> )

  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000035 (
    .C(clk),
    .D(sig00000043),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<7> )

  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000036 (
    .C(clk),
    .D(sig00000041),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<8> )

  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000037 (
    .C(clk),
    .D(sig0000004b),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<9> )

  );
  XORCY   blk00000038 (
    .CI(sig00000044),
    .LI(sig00000052),
    .O(sig00000041)
  );
  MUXCY   blk00000039 (
    .CI(sig00000044),
    .DI(sig00000001),
    .S(sig00000052),
    .O(sig00000042)
  );
  XORCY   blk0000003a (
    .CI(sig00000046),
    .LI(sig00000053),
    .O(sig00000043)
  );
  MUXCY   blk0000003b (
    .CI(sig00000046),
    .DI(sig00000001),
    .S(sig00000053),
    .O(sig00000044)
  );
  XORCY   blk0000003c (
    .CI(sig00000048),
    .LI(sig00000054),
    .O(sig00000045)
  );
  MUXCY   blk0000003d (
    .CI(sig00000048),
    .DI(sig00000001),
    .S(sig00000054),
    .O(sig00000046)
  );
  XORCY   blk0000003e (
    .CI(sig0000004a),
    .LI(sig00000055),
    .O(sig00000047)
  );
  MUXCY   blk0000003f (
    .CI(sig0000004a),
    .DI(sig00000001),
    .S(sig00000055),
    .O(sig00000048)
  );
  XORCY   blk00000040 (
    .CI(sig0000004d),
    .LI(sig00000056),
    .O(sig00000049)
  );
  MUXCY   blk00000041 (
    .CI(sig0000004d),
    .DI(sig00000001),
    .S(sig00000056),
    .O(sig0000004a)
  );
  MUXCY   blk00000042 (
    .CI(sig00000042),
    .DI(sig00000001),
    .S(sig00000057),
    .O(NLW_blk00000042_O_UNCONNECTED)
  );
  XORCY   blk00000043 (
    .CI(sig00000042),
    .LI(sig00000057),
    .O(sig0000004b)
  );
  XORCY   blk00000044 (
    .CI(sig0000004f),
    .LI(sig00000058),
    .O(sig0000004c)
  );
  MUXCY   blk00000045 (
    .CI(sig0000004f),
    .DI(sig00000001),
    .S(sig00000058),
    .O(sig0000004d)
  );
  XORCY   blk00000046 (
    .CI(sig00000051),
    .LI(sig00000059),
    .O(sig0000004e)
  );
  MUXCY   blk00000047 (
    .CI(sig00000051),
    .DI(sig00000001),
    .S(sig00000059),
    .O(sig0000004f)
  );
  XORCY   blk00000048 (
    .CI(sig0000000b),
    .LI(sig0000005a),
    .O(sig00000050)
  );
  MUXCY   blk00000049 (
    .CI(sig0000000b),
    .DI(sig00000001),
    .S(sig0000005a),
    .O(sig00000051)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000004a (
    .I0(a[0]),
    .I1(b[0]),
    .O(sig0000001d)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000004b (
    .I0(a[1]),
    .I1(b[1]),
    .O(sig0000001b)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000004c (
    .I0(a[2]),
    .I1(b[2]),
    .O(sig0000001a)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000004d (
    .I0(a[3]),
    .I1(b[3]),
    .O(sig00000019)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000004e (
    .I0(a[4]),
    .I1(b[4]),
    .O(sig00000018)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000004f (
    .I0(a[5]),
    .I1(b[5]),
    .O(sig00000017)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000050 (
    .I0(a[6]),
    .I1(b[6]),
    .O(sig00000016)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000051 (
    .I0(a[7]),
    .I1(b[7]),
    .O(sig00000015)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000052 (
    .I0(a[8]),
    .I1(b[8]),
    .O(sig0000001c)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000053 (
    .I0(a[9]),
    .I1(b[9]),
    .O(sig00000038)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000054 (
    .I0(a[10]),
    .I1(b[10]),
    .O(sig00000036)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000055 (
    .I0(a[11]),
    .I1(b[11]),
    .O(sig00000035)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000056 (
    .I0(a[12]),
    .I1(b[12]),
    .O(sig00000034)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000057 (
    .I0(a[13]),
    .I1(b[13]),
    .O(sig00000033)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000058 (
    .I0(a[14]),
    .I1(b[14]),
    .O(sig00000032)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000059 (
    .I0(a[15]),
    .I1(b[15]),
    .O(sig00000031)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000005a (
    .I0(a[16]),
    .I1(b[16]),
    .O(sig00000030)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000005b (
    .I0(a[17]),
    .I1(b[17]),
    .O(sig00000037)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk0000005c (
    .I0(sig00000009),
    .O(sig00000052)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk0000005d (
    .I0(sig00000008),
    .O(sig00000053)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk0000005e (
    .I0(sig00000007),
    .O(sig00000054)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk0000005f (
    .I0(sig00000006),
    .O(sig00000055)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk00000060 (
    .I0(sig00000005),
    .O(sig00000056)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk00000061 (
    .I0(sig0000000a),
    .O(sig00000057)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk00000062 (
    .I0(sig00000004),
    .O(sig00000058)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk00000063 (
    .I0(sig00000003),
    .O(sig00000059)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk00000064 (
    .I0(sig00000002),
    .O(sig0000005a)
  );
  VCC   blk00000065 (
    .P(sig0000005b)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000066 (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig0000005b),
    .CLK(clk),
    .D(sig0000000f),
    .Q(sig0000005c),
    .Q15(NLW_blk00000066_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000067 (
    .C(clk),
    .CE(sig0000005b),
    .D(sig0000005c),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<7> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000068 (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig0000005b),
    .CLK(clk),
    .D(sig0000000d),
    .Q(sig0000005d),
    .Q15(NLW_blk00000068_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000069 (
    .C(clk),
    .CE(sig0000005b),
    .D(sig0000005d),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<9> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000006a (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig0000005b),
    .CLK(clk),
    .D(sig0000000e),
    .Q(sig0000005e),
    .Q15(NLW_blk0000006a_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006b (
    .C(clk),
    .CE(sig0000005b),
    .D(sig0000005e),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<8> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000006c (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig0000005b),
    .CLK(clk),
    .D(sig00000010),
    .Q(sig0000005f),
    .Q15(NLW_blk0000006c_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006d (
    .C(clk),
    .CE(sig0000005b),
    .D(sig0000005f),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<6> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000006e (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig0000005b),
    .CLK(clk),
    .D(sig00000011),
    .Q(sig00000060),
    .Q15(NLW_blk0000006e_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006f (
    .C(clk),
    .CE(sig0000005b),
    .D(sig00000060),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<5> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000070 (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig0000005b),
    .CLK(clk),
    .D(sig00000012),
    .Q(sig00000061),
    .Q15(NLW_blk00000070_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000071 (
    .C(clk),
    .CE(sig0000005b),
    .D(sig00000061),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<4> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000072 (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig0000005b),
    .CLK(clk),
    .D(sig00000013),
    .Q(sig00000062),
    .Q15(NLW_blk00000072_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000073 (
    .C(clk),
    .CE(sig0000005b),
    .D(sig00000062),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<3> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000074 (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig0000005b),
    .CLK(clk),
    .D(sig00000014),
    .Q(sig00000063),
    .Q15(NLW_blk00000074_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000075 (
    .C(clk),
    .CE(sig0000005b),
    .D(sig00000063),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<2> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000076 (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(sig0000005b),
    .CLK(clk),
    .D(sig0000000c),
    .Q(sig00000064),
    .Q15(NLW_blk00000076_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000077 (
    .C(clk),
    .CE(sig0000005b),
    .D(sig00000064),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<1> )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on

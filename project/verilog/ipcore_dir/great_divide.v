////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: great_divide.v
// /___/   /\     Timestamp: Tue Dec  2 17:10:13 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/ipcore_dir/tmp/_cg/great_divide.ngc /afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/ipcore_dir/tmp/_cg/great_divide.v 
// Device	: 7z020clg484-1
// Input file	: /afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/ipcore_dir/tmp/_cg/great_divide.ngc
// Output file	: /afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/ipcore_dir/tmp/_cg/great_divide.v
// # of Modules	: 1
// Design Name	: great_divide
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

module great_divide (
  operation_nd, clk, rdy, a, b, result
)/* synthesis syn_black_box syn_noprune=1 */;
  input operation_nd;
  input clk;
  output rdy;
  input [31 : 0] a;
  input [31 : 0] b;
  output [31 : 0] result;
  
  // synthesis translate_off
  
  wire \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/sign_op ;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/RDY ;
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
  wire sig00000065;
  wire sig00000066;
  wire sig00000067;
  wire sig00000068;
  wire sig00000069;
  wire sig0000006a;
  wire sig0000006b;
  wire sig0000006c;
  wire sig0000006d;
  wire sig0000006e;
  wire sig0000006f;
  wire sig00000070;
  wire sig00000071;
  wire sig00000072;
  wire sig00000073;
  wire sig00000074;
  wire sig00000075;
  wire sig00000076;
  wire sig00000077;
  wire sig00000078;
  wire sig00000079;
  wire sig0000007a;
  wire sig0000007b;
  wire sig0000007c;
  wire sig0000007d;
  wire sig0000007e;
  wire sig0000007f;
  wire sig00000080;
  wire sig00000081;
  wire sig00000082;
  wire sig00000083;
  wire sig00000084;
  wire sig00000085;
  wire sig00000086;
  wire sig00000087;
  wire sig00000088;
  wire sig00000089;
  wire sig0000008a;
  wire sig0000008b;
  wire sig0000008c;
  wire sig0000008d;
  wire sig0000008e;
  wire sig0000008f;
  wire sig00000090;
  wire sig00000091;
  wire sig00000092;
  wire sig00000093;
  wire sig00000094;
  wire sig00000095;
  wire sig00000096;
  wire sig00000097;
  wire sig00000098;
  wire sig00000099;
  wire sig0000009a;
  wire sig0000009b;
  wire sig0000009c;
  wire sig0000009d;
  wire sig0000009e;
  wire sig0000009f;
  wire sig000000a0;
  wire sig000000a1;
  wire sig000000a2;
  wire sig000000a3;
  wire sig000000a4;
  wire sig000000a5;
  wire sig000000a6;
  wire sig000000a7;
  wire sig000000a8;
  wire sig000000a9;
  wire sig000000aa;
  wire sig000000ab;
  wire sig000000ac;
  wire sig000000ad;
  wire sig000000ae;
  wire sig000000af;
  wire sig000000b0;
  wire sig000000b1;
  wire sig000000b2;
  wire sig000000b3;
  wire sig000000b4;
  wire sig000000b5;
  wire sig000000b6;
  wire sig000000b7;
  wire sig000000b8;
  wire sig000000b9;
  wire sig000000ba;
  wire sig000000bb;
  wire sig000000bc;
  wire sig000000bd;
  wire sig000000be;
  wire sig000000bf;
  wire sig000000c0;
  wire sig000000c1;
  wire sig000000c2;
  wire sig000000c3;
  wire sig000000c4;
  wire sig000000c5;
  wire sig000000c6;
  wire sig000000c7;
  wire sig000000c8;
  wire sig000000c9;
  wire sig000000ca;
  wire sig000000cb;
  wire sig000000cc;
  wire sig000000cd;
  wire sig000000ce;
  wire sig000000cf;
  wire sig000000d0;
  wire sig000000d1;
  wire sig000000d2;
  wire sig000000d3;
  wire sig000000d4;
  wire sig000000d5;
  wire sig000000d6;
  wire sig000000d7;
  wire sig000000d8;
  wire sig000000d9;
  wire sig000000da;
  wire sig000000db;
  wire sig000000dc;
  wire sig000000dd;
  wire sig000000de;
  wire sig000000df;
  wire sig000000e0;
  wire sig000000e1;
  wire sig000000e2;
  wire sig000000e3;
  wire sig000000e4;
  wire sig000000e5;
  wire sig000000e6;
  wire sig000000e7;
  wire sig000000e8;
  wire sig000000e9;
  wire sig000000ea;
  wire sig000000eb;
  wire sig000000ec;
  wire sig000000ed;
  wire sig000000ee;
  wire sig000000ef;
  wire sig000000f0;
  wire sig000000f1;
  wire sig000000f2;
  wire sig000000f3;
  wire sig000000f4;
  wire sig000000f5;
  wire sig000000f6;
  wire sig000000f7;
  wire sig000000f8;
  wire sig000000f9;
  wire sig000000fa;
  wire sig000000fb;
  wire sig000000fc;
  wire sig000000fd;
  wire sig000000fe;
  wire sig000000ff;
  wire sig00000100;
  wire sig00000101;
  wire sig00000102;
  wire sig00000103;
  wire sig00000104;
  wire sig00000105;
  wire sig00000106;
  wire sig00000107;
  wire sig00000108;
  wire sig00000109;
  wire sig0000010a;
  wire sig0000010b;
  wire sig0000010c;
  wire sig0000010d;
  wire sig0000010e;
  wire sig0000010f;
  wire sig00000110;
  wire sig00000111;
  wire sig00000112;
  wire sig00000113;
  wire sig00000114;
  wire sig00000115;
  wire sig00000116;
  wire sig00000117;
  wire sig00000118;
  wire sig00000119;
  wire sig0000011a;
  wire sig0000011b;
  wire sig0000011c;
  wire sig0000011d;
  wire sig0000011e;
  wire sig0000011f;
  wire sig00000120;
  wire sig00000121;
  wire sig00000122;
  wire sig00000123;
  wire sig00000124;
  wire sig00000125;
  wire sig00000126;
  wire sig00000127;
  wire sig00000128;
  wire sig00000129;
  wire sig0000012a;
  wire sig0000012b;
  wire sig0000012c;
  wire sig0000012d;
  wire sig0000012e;
  wire sig0000012f;
  wire sig00000130;
  wire sig00000131;
  wire sig00000132;
  wire sig00000133;
  wire sig00000134;
  wire sig00000135;
  wire sig00000136;
  wire sig00000137;
  wire sig00000138;
  wire sig00000139;
  wire sig0000013a;
  wire sig0000013b;
  wire sig0000013c;
  wire sig0000013d;
  wire sig0000013e;
  wire sig0000013f;
  wire sig00000140;
  wire sig00000141;
  wire sig00000142;
  wire sig00000143;
  wire sig00000144;
  wire sig00000145;
  wire sig00000146;
  wire sig00000147;
  wire sig00000148;
  wire sig00000149;
  wire sig0000014a;
  wire sig0000014b;
  wire sig0000014c;
  wire sig0000014d;
  wire sig0000014e;
  wire sig0000014f;
  wire sig00000150;
  wire sig00000151;
  wire sig00000152;
  wire sig00000153;
  wire sig00000154;
  wire sig00000155;
  wire sig00000156;
  wire sig00000157;
  wire sig00000158;
  wire sig00000159;
  wire sig0000015a;
  wire sig0000015b;
  wire sig0000015c;
  wire sig0000015d;
  wire sig0000015e;
  wire sig0000015f;
  wire sig00000160;
  wire sig00000161;
  wire sig00000162;
  wire sig00000163;
  wire sig00000164;
  wire sig00000165;
  wire sig00000166;
  wire sig00000167;
  wire sig00000168;
  wire sig00000169;
  wire sig0000016a;
  wire sig0000016b;
  wire sig0000016c;
  wire sig0000016d;
  wire sig0000016e;
  wire sig0000016f;
  wire sig00000170;
  wire sig00000171;
  wire sig00000172;
  wire sig00000173;
  wire sig00000174;
  wire sig00000175;
  wire sig00000176;
  wire sig00000177;
  wire sig00000178;
  wire sig00000179;
  wire sig0000017a;
  wire sig0000017b;
  wire sig0000017c;
  wire sig0000017d;
  wire sig0000017e;
  wire sig0000017f;
  wire sig00000180;
  wire sig00000181;
  wire sig00000182;
  wire sig00000183;
  wire sig00000184;
  wire sig00000185;
  wire sig00000186;
  wire sig00000187;
  wire sig00000188;
  wire sig00000189;
  wire sig0000018a;
  wire sig0000018b;
  wire sig0000018c;
  wire sig0000018d;
  wire sig0000018e;
  wire sig0000018f;
  wire sig00000190;
  wire sig00000191;
  wire sig00000192;
  wire sig00000193;
  wire sig00000194;
  wire sig00000195;
  wire sig00000196;
  wire sig00000197;
  wire sig00000198;
  wire sig00000199;
  wire sig0000019a;
  wire sig0000019b;
  wire sig0000019c;
  wire sig0000019d;
  wire sig0000019e;
  wire sig0000019f;
  wire sig000001a0;
  wire sig000001a1;
  wire sig000001a2;
  wire sig000001a3;
  wire sig000001a4;
  wire sig000001a5;
  wire sig000001a6;
  wire sig000001a7;
  wire sig000001a8;
  wire sig000001a9;
  wire sig000001aa;
  wire sig000001ab;
  wire sig000001ac;
  wire sig000001ad;
  wire sig000001ae;
  wire sig000001af;
  wire sig000001b0;
  wire sig000001b1;
  wire sig000001b2;
  wire sig000001b3;
  wire sig000001b4;
  wire sig000001b5;
  wire sig000001b6;
  wire sig000001b7;
  wire sig000001b8;
  wire sig000001b9;
  wire sig000001ba;
  wire sig000001bb;
  wire sig000001bc;
  wire sig000001bd;
  wire sig000001be;
  wire sig000001bf;
  wire sig000001c0;
  wire sig000001c1;
  wire sig000001c2;
  wire sig000001c3;
  wire sig000001c4;
  wire sig000001c5;
  wire sig000001c6;
  wire sig000001c7;
  wire sig000001c8;
  wire sig000001c9;
  wire sig000001ca;
  wire sig000001cb;
  wire sig000001cc;
  wire sig000001cd;
  wire sig000001ce;
  wire sig000001cf;
  wire sig000001d0;
  wire sig000001d1;
  wire sig000001d2;
  wire sig000001d3;
  wire sig000001d4;
  wire sig000001d5;
  wire sig000001d6;
  wire sig000001d7;
  wire sig000001d8;
  wire sig000001d9;
  wire sig000001da;
  wire sig000001db;
  wire sig000001dc;
  wire sig000001dd;
  wire sig000001de;
  wire sig000001df;
  wire sig000001e0;
  wire sig000001e1;
  wire sig000001e2;
  wire sig000001e3;
  wire sig000001e4;
  wire sig000001e5;
  wire sig000001e6;
  wire sig000001e7;
  wire sig000001e8;
  wire sig000001e9;
  wire sig000001ea;
  wire sig000001eb;
  wire sig000001ec;
  wire sig000001ed;
  wire sig000001ee;
  wire sig000001ef;
  wire sig000001f0;
  wire sig000001f1;
  wire sig000001f2;
  wire sig000001f3;
  wire sig000001f4;
  wire sig000001f5;
  wire sig000001f6;
  wire sig000001f7;
  wire sig000001f8;
  wire sig000001f9;
  wire sig000001fa;
  wire sig000001fb;
  wire sig000001fc;
  wire sig000001fd;
  wire sig000001fe;
  wire sig000001ff;
  wire sig00000200;
  wire sig00000201;
  wire sig00000202;
  wire sig00000203;
  wire sig00000204;
  wire sig00000205;
  wire sig00000206;
  wire sig00000207;
  wire sig00000208;
  wire sig00000209;
  wire sig0000020a;
  wire sig0000020b;
  wire sig0000020c;
  wire sig0000020d;
  wire sig0000020e;
  wire sig0000020f;
  wire sig00000210;
  wire sig00000211;
  wire sig00000212;
  wire sig00000213;
  wire sig00000214;
  wire sig00000215;
  wire sig00000216;
  wire sig00000217;
  wire sig00000218;
  wire sig00000219;
  wire sig0000021a;
  wire sig0000021b;
  wire sig0000021c;
  wire sig0000021d;
  wire sig0000021e;
  wire sig0000021f;
  wire sig00000220;
  wire sig00000221;
  wire sig00000222;
  wire sig00000223;
  wire sig00000224;
  wire sig00000225;
  wire NLW_blk000000f6_O_UNCONNECTED;
  wire NLW_blk00000234_Q15_UNCONNECTED;
  wire NLW_blk00000236_Q31_UNCONNECTED;
  wire NLW_blk00000237_Q31_UNCONNECTED;
  wire NLW_blk00000238_Q31_UNCONNECTED;
  wire NLW_blk00000239_Q31_UNCONNECTED;
  wire NLW_blk0000023a_Q31_UNCONNECTED;
  wire NLW_blk0000023b_Q31_UNCONNECTED;
  wire NLW_blk0000023c_Q31_UNCONNECTED;
  wire NLW_blk0000023d_Q31_UNCONNECTED;
  wire NLW_blk0000023e_Q31_UNCONNECTED;
  wire NLW_blk00000240_Q31_UNCONNECTED;
  wire NLW_blk00000242_Q31_UNCONNECTED;
  wire NLW_blk00000244_Q31_UNCONNECTED;
  wire NLW_blk00000246_Q31_UNCONNECTED;
  wire [7 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op ;
  wire [22 : 0] \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op ;
  assign
    result[31] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/sign_op ,
    result[30] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [7],
    result[29] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [6],
    result[28] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [5],
    result[27] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [4],
    result[26] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [3],
    result[25] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [2],
    result[24] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [1],
    result[23] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [0],
    result[22] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [22],
    result[21] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [21],
    result[20] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [20],
    result[19] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [19],
    result[18] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [18],
    result[17] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [17],
    result[16] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [16],
    result[15] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [15],
    result[14] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [14],
    result[13] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [13],
    result[12] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [12],
    result[11] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [11],
    result[10] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [10],
    result[9] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [9],
    result[8] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [8],
    result[7] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [7],
    result[6] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [6],
    result[5] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [5],
    result[4] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [4],
    result[3] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [3],
    result[2] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [2],
    result[1] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [1],
    result[0] = \U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [0],
    rdy = \U0/op_inst/FLT_PT_OP/HND_SHK/RDY ;
  VCC   blk00000001 (
    .P(sig00000197)
  );
  GND   blk00000002 (
    .G(sig00000049)
  );
  XORCY   blk00000003 (
    .CI(sig0000004b),
    .LI(sig00000197),
    .O(sig00000075)
  );
  MUXCY   blk00000004 (
    .CI(sig0000004c),
    .DI(sig00000049),
    .S(sig00000197),
    .O(sig0000004b)
  );
  XORCY   blk00000005 (
    .CI(sig0000004e),
    .LI(sig0000004d),
    .O(sig00000074)
  );
  MUXCY   blk00000006 (
    .CI(sig0000004e),
    .DI(a[30]),
    .S(sig0000004d),
    .O(sig0000004c)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000007 (
    .I0(a[30]),
    .I1(b[30]),
    .O(sig0000004d)
  );
  XORCY   blk00000008 (
    .CI(sig00000050),
    .LI(sig0000004f),
    .O(sig00000073)
  );
  MUXCY   blk00000009 (
    .CI(sig00000050),
    .DI(a[29]),
    .S(sig0000004f),
    .O(sig0000004e)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000000a (
    .I0(a[29]),
    .I1(b[29]),
    .O(sig0000004f)
  );
  XORCY   blk0000000b (
    .CI(sig00000052),
    .LI(sig00000051),
    .O(sig00000072)
  );
  MUXCY   blk0000000c (
    .CI(sig00000052),
    .DI(a[28]),
    .S(sig00000051),
    .O(sig00000050)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000000d (
    .I0(a[28]),
    .I1(b[28]),
    .O(sig00000051)
  );
  XORCY   blk0000000e (
    .CI(sig00000054),
    .LI(sig00000053),
    .O(sig00000071)
  );
  MUXCY   blk0000000f (
    .CI(sig00000054),
    .DI(a[27]),
    .S(sig00000053),
    .O(sig00000052)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000010 (
    .I0(a[27]),
    .I1(b[27]),
    .O(sig00000053)
  );
  XORCY   blk00000011 (
    .CI(sig00000056),
    .LI(sig00000055),
    .O(sig00000070)
  );
  MUXCY   blk00000012 (
    .CI(sig00000056),
    .DI(a[26]),
    .S(sig00000055),
    .O(sig00000054)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000013 (
    .I0(a[26]),
    .I1(b[26]),
    .O(sig00000055)
  );
  XORCY   blk00000014 (
    .CI(sig00000058),
    .LI(sig00000057),
    .O(sig0000006f)
  );
  MUXCY   blk00000015 (
    .CI(sig00000058),
    .DI(a[25]),
    .S(sig00000057),
    .O(sig00000056)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000016 (
    .I0(a[25]),
    .I1(b[25]),
    .O(sig00000057)
  );
  XORCY   blk00000017 (
    .CI(sig0000005a),
    .LI(sig00000059),
    .O(sig0000006e)
  );
  MUXCY   blk00000018 (
    .CI(sig0000005a),
    .DI(a[24]),
    .S(sig00000059),
    .O(sig00000058)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000019 (
    .I0(a[24]),
    .I1(b[24]),
    .O(sig00000059)
  );
  XORCY   blk0000001a (
    .CI(sig00000197),
    .LI(sig0000005b),
    .O(sig0000006d)
  );
  MUXCY   blk0000001b (
    .CI(sig00000197),
    .DI(a[23]),
    .S(sig0000005b),
    .O(sig0000005a)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000001c (
    .I0(a[23]),
    .I1(b[23]),
    .O(sig0000005b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001d (
    .C(clk),
    .D(sig00000064),
    .Q(sig00000079)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001e (
    .C(clk),
    .D(sig00000063),
    .Q(sig00000078)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001f (
    .C(clk),
    .D(sig0000006b),
    .Q(sig0000007b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000020 (
    .C(clk),
    .D(sig0000006c),
    .Q(sig0000007a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000021 (
    .C(clk),
    .D(sig00000067),
    .Q(sig00000060)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000022 (
    .C(clk),
    .D(sig00000060),
    .Q(sig0000007c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000023 (
    .C(clk),
    .D(sig00000065),
    .Q(sig00000062)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000024 (
    .C(clk),
    .D(sig00000066),
    .Q(sig00000061)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000025 (
    .C(clk),
    .D(sig00000062),
    .Q(sig0000007d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000026 (
    .C(clk),
    .D(sig00000061),
    .Q(sig0000007e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000027 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000076),
    .Q(sig0000007f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000028 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000091),
    .Q(sig0000008a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000029 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000093),
    .Q(sig0000008b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002a (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000092),
    .Q(sig00000094)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002b (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000090),
    .Q(sig00000095)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002c (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000097),
    .Q(sig0000008d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002d (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000099),
    .Q(sig0000008e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002e (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000098),
    .Q(sig0000009a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002f (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000096),
    .Q(sig0000009b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000030 (
    .C(clk),
    .D(sig000000a4),
    .Q(sig00000088)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000031 (
    .C(clk),
    .D(sig000000a3),
    .Q(sig00000087)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000032 (
    .C(clk),
    .D(sig000000a2),
    .Q(sig00000086)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000033 (
    .C(clk),
    .D(sig000000a1),
    .Q(sig00000085)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000034 (
    .C(clk),
    .D(sig000000a0),
    .Q(sig00000084)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000035 (
    .C(clk),
    .D(sig0000009f),
    .Q(sig00000083)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000036 (
    .C(clk),
    .D(sig0000009e),
    .Q(sig00000082)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000037 (
    .C(clk),
    .D(sig0000009d),
    .Q(sig00000081)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000038 (
    .C(clk),
    .D(sig0000009c),
    .Q(sig00000080)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000039 (
    .C(clk),
    .D(sig00000075),
    .Q(sig000000a4)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003a (
    .C(clk),
    .D(sig00000074),
    .Q(sig000000a3)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003b (
    .C(clk),
    .D(sig00000073),
    .Q(sig000000a2)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003c (
    .C(clk),
    .D(sig00000072),
    .Q(sig000000a1)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003d (
    .C(clk),
    .D(sig00000071),
    .Q(sig000000a0)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003e (
    .C(clk),
    .D(sig00000070),
    .Q(sig0000009f)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003f (
    .C(clk),
    .D(sig0000006f),
    .Q(sig0000009e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000040 (
    .C(clk),
    .D(sig0000006e),
    .Q(sig0000009d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000041 (
    .C(clk),
    .D(sig0000006d),
    .Q(sig0000009c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000042 (
    .C(clk),
    .D(sig0000007c),
    .Q(sig000000a5)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000043 (
    .C(clk),
    .D(sig0000006a),
    .Q(sig000000a7)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000044 (
    .C(clk),
    .D(sig00000069),
    .Q(sig000000a6)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000045 (
    .C(clk),
    .D(sig00000068),
    .Q(sig000000a8)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000046 (
    .C(clk),
    .D(sig0000005e),
    .Q(sig0000000d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000047 (
    .C(clk),
    .D(sig0000005f),
    .Q(sig0000000b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000048 (
    .C(clk),
    .D(sig00000048),
    .Q(sig00000009)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000049 (
    .C(clk),
    .D(sig0000005c),
    .Q(sig0000000a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004a (
    .C(clk),
    .D(sig0000005d),
    .Q(sig0000000c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004b (
    .C(clk),
    .D(sig000000ee),
    .Q(sig000000d7)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004c (
    .C(clk),
    .D(sig000000ed),
    .Q(sig000000d6)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004d (
    .C(clk),
    .D(sig000000ec),
    .Q(sig000000d5)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004e (
    .C(clk),
    .D(sig000000eb),
    .Q(sig000000d4)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004f (
    .C(clk),
    .D(sig000000ea),
    .Q(sig000000d3)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000050 (
    .C(clk),
    .D(sig000000e9),
    .Q(sig000000d2)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000051 (
    .C(clk),
    .D(sig000000e8),
    .Q(sig000000d1)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000052 (
    .C(clk),
    .D(sig000000e7),
    .Q(sig000000d0)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000053 (
    .C(clk),
    .D(sig000000e6),
    .Q(sig000000cf)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000054 (
    .C(clk),
    .D(sig000000e5),
    .Q(sig000000ce)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000055 (
    .C(clk),
    .D(sig000000e4),
    .Q(sig000000cd)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000056 (
    .C(clk),
    .D(sig000000e3),
    .Q(sig000000cc)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000057 (
    .C(clk),
    .D(sig000000e2),
    .Q(sig000000cb)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000058 (
    .C(clk),
    .D(sig000000e1),
    .Q(sig000000ca)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000059 (
    .C(clk),
    .D(sig000000e0),
    .Q(sig000000c9)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005a (
    .C(clk),
    .D(sig000000df),
    .Q(sig000000c8)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005b (
    .C(clk),
    .D(sig000000de),
    .Q(sig000000c7)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005c (
    .C(clk),
    .D(sig000000dd),
    .Q(sig000000c6)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005d (
    .C(clk),
    .D(sig000000dc),
    .Q(sig000000c5)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005e (
    .C(clk),
    .D(sig000000db),
    .Q(sig000000c4)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005f (
    .C(clk),
    .D(sig000000da),
    .Q(sig000000c3)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000060 (
    .C(clk),
    .D(sig000000d9),
    .Q(sig000000c2)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000061 (
    .C(clk),
    .D(sig000000d8),
    .Q(sig000000c1)
  );
  XORCY   blk00000062 (
    .CI(sig0000013b),
    .LI(sig00000138),
    .O(sig00000139)
  );
  XORCY   blk00000063 (
    .CI(sig0000013d),
    .LI(sig00000137),
    .O(sig0000013a)
  );
  MUXCY   blk00000064 (
    .CI(sig0000013d),
    .DI(sig00000106),
    .S(sig00000137),
    .O(sig0000013b)
  );
  XORCY   blk00000065 (
    .CI(sig0000013f),
    .LI(sig00000136),
    .O(sig0000013c)
  );
  MUXCY   blk00000066 (
    .CI(sig0000013f),
    .DI(sig00000105),
    .S(sig00000136),
    .O(sig0000013d)
  );
  XORCY   blk00000067 (
    .CI(sig00000141),
    .LI(sig00000135),
    .O(sig0000013e)
  );
  MUXCY   blk00000068 (
    .CI(sig00000141),
    .DI(sig00000104),
    .S(sig00000135),
    .O(sig0000013f)
  );
  XORCY   blk00000069 (
    .CI(sig00000143),
    .LI(sig00000134),
    .O(sig00000140)
  );
  MUXCY   blk0000006a (
    .CI(sig00000143),
    .DI(sig00000103),
    .S(sig00000134),
    .O(sig00000141)
  );
  XORCY   blk0000006b (
    .CI(sig00000145),
    .LI(sig00000133),
    .O(sig00000142)
  );
  MUXCY   blk0000006c (
    .CI(sig00000145),
    .DI(sig00000102),
    .S(sig00000133),
    .O(sig00000143)
  );
  XORCY   blk0000006d (
    .CI(sig00000147),
    .LI(sig00000132),
    .O(sig00000144)
  );
  MUXCY   blk0000006e (
    .CI(sig00000147),
    .DI(sig00000101),
    .S(sig00000132),
    .O(sig00000145)
  );
  XORCY   blk0000006f (
    .CI(sig00000149),
    .LI(sig00000131),
    .O(sig00000146)
  );
  MUXCY   blk00000070 (
    .CI(sig00000149),
    .DI(sig00000100),
    .S(sig00000131),
    .O(sig00000147)
  );
  XORCY   blk00000071 (
    .CI(sig0000014b),
    .LI(sig00000130),
    .O(sig00000148)
  );
  MUXCY   blk00000072 (
    .CI(sig0000014b),
    .DI(sig000000ff),
    .S(sig00000130),
    .O(sig00000149)
  );
  XORCY   blk00000073 (
    .CI(sig0000014d),
    .LI(sig0000012f),
    .O(sig0000014a)
  );
  MUXCY   blk00000074 (
    .CI(sig0000014d),
    .DI(sig000000fe),
    .S(sig0000012f),
    .O(sig0000014b)
  );
  XORCY   blk00000075 (
    .CI(sig0000014f),
    .LI(sig0000012e),
    .O(sig0000014c)
  );
  MUXCY   blk00000076 (
    .CI(sig0000014f),
    .DI(sig000000fd),
    .S(sig0000012e),
    .O(sig0000014d)
  );
  XORCY   blk00000077 (
    .CI(sig00000151),
    .LI(sig0000012d),
    .O(sig0000014e)
  );
  MUXCY   blk00000078 (
    .CI(sig00000151),
    .DI(sig000000fc),
    .S(sig0000012d),
    .O(sig0000014f)
  );
  XORCY   blk00000079 (
    .CI(sig00000153),
    .LI(sig0000012c),
    .O(sig00000150)
  );
  MUXCY   blk0000007a (
    .CI(sig00000153),
    .DI(sig000000fb),
    .S(sig0000012c),
    .O(sig00000151)
  );
  XORCY   blk0000007b (
    .CI(sig00000155),
    .LI(sig0000012b),
    .O(sig00000152)
  );
  MUXCY   blk0000007c (
    .CI(sig00000155),
    .DI(sig000000fa),
    .S(sig0000012b),
    .O(sig00000153)
  );
  XORCY   blk0000007d (
    .CI(sig00000157),
    .LI(sig0000012a),
    .O(sig00000154)
  );
  MUXCY   blk0000007e (
    .CI(sig00000157),
    .DI(sig000000f9),
    .S(sig0000012a),
    .O(sig00000155)
  );
  XORCY   blk0000007f (
    .CI(sig00000159),
    .LI(sig00000129),
    .O(sig00000156)
  );
  MUXCY   blk00000080 (
    .CI(sig00000159),
    .DI(sig000000f8),
    .S(sig00000129),
    .O(sig00000157)
  );
  XORCY   blk00000081 (
    .CI(sig0000015b),
    .LI(sig00000128),
    .O(sig00000158)
  );
  MUXCY   blk00000082 (
    .CI(sig0000015b),
    .DI(sig000000f7),
    .S(sig00000128),
    .O(sig00000159)
  );
  XORCY   blk00000083 (
    .CI(sig0000015d),
    .LI(sig00000127),
    .O(sig0000015a)
  );
  MUXCY   blk00000084 (
    .CI(sig0000015d),
    .DI(sig000000f6),
    .S(sig00000127),
    .O(sig0000015b)
  );
  XORCY   blk00000085 (
    .CI(sig0000015f),
    .LI(sig00000126),
    .O(sig0000015c)
  );
  MUXCY   blk00000086 (
    .CI(sig0000015f),
    .DI(sig000000f5),
    .S(sig00000126),
    .O(sig0000015d)
  );
  XORCY   blk00000087 (
    .CI(sig00000161),
    .LI(sig00000125),
    .O(sig0000015e)
  );
  MUXCY   blk00000088 (
    .CI(sig00000161),
    .DI(sig000000f4),
    .S(sig00000125),
    .O(sig0000015f)
  );
  XORCY   blk00000089 (
    .CI(sig00000163),
    .LI(sig00000124),
    .O(sig00000160)
  );
  MUXCY   blk0000008a (
    .CI(sig00000163),
    .DI(sig000000f3),
    .S(sig00000124),
    .O(sig00000161)
  );
  XORCY   blk0000008b (
    .CI(sig00000165),
    .LI(sig00000123),
    .O(sig00000162)
  );
  MUXCY   blk0000008c (
    .CI(sig00000165),
    .DI(sig000000f2),
    .S(sig00000123),
    .O(sig00000163)
  );
  XORCY   blk0000008d (
    .CI(sig00000167),
    .LI(sig00000122),
    .O(sig00000164)
  );
  MUXCY   blk0000008e (
    .CI(sig00000167),
    .DI(sig000000f1),
    .S(sig00000122),
    .O(sig00000165)
  );
  XORCY   blk0000008f (
    .CI(sig00000169),
    .LI(sig00000121),
    .O(sig00000166)
  );
  MUXCY   blk00000090 (
    .CI(sig00000169),
    .DI(sig000000f0),
    .S(sig00000121),
    .O(sig00000167)
  );
  XORCY   blk00000091 (
    .CI(sig0000011f),
    .LI(sig00000120),
    .O(sig00000168)
  );
  MUXCY   blk00000092 (
    .CI(sig0000011f),
    .DI(sig000000ef),
    .S(sig00000120),
    .O(sig00000169)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000093 (
    .C(clk),
    .D(sig00000139),
    .Q(sig00000027)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000094 (
    .C(clk),
    .D(sig0000013a),
    .Q(sig000000c0)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000095 (
    .C(clk),
    .D(sig0000013c),
    .Q(sig000000bf)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000096 (
    .C(clk),
    .D(sig0000013e),
    .Q(sig000000be)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000097 (
    .C(clk),
    .D(sig00000140),
    .Q(sig000000bd)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000098 (
    .C(clk),
    .D(sig00000142),
    .Q(sig000000bc)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000099 (
    .C(clk),
    .D(sig00000144),
    .Q(sig000000bb)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000009a (
    .C(clk),
    .D(sig00000146),
    .Q(sig000000ba)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000009b (
    .C(clk),
    .D(sig00000148),
    .Q(sig000000b9)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000009c (
    .C(clk),
    .D(sig0000014a),
    .Q(sig000000b8)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000009d (
    .C(clk),
    .D(sig0000014c),
    .Q(sig000000b7)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000009e (
    .C(clk),
    .D(sig0000014e),
    .Q(sig000000b6)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000009f (
    .C(clk),
    .D(sig00000150),
    .Q(sig000000b5)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000a0 (
    .C(clk),
    .D(sig00000152),
    .Q(sig000000b4)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000a1 (
    .C(clk),
    .D(sig00000154),
    .Q(sig000000b3)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000a2 (
    .C(clk),
    .D(sig00000156),
    .Q(sig000000b2)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000a3 (
    .C(clk),
    .D(sig00000158),
    .Q(sig000000b1)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000a4 (
    .C(clk),
    .D(sig0000015a),
    .Q(sig000000b0)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000a5 (
    .C(clk),
    .D(sig0000015c),
    .Q(sig000000af)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000a6 (
    .C(clk),
    .D(sig0000015e),
    .Q(sig000000ae)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000a7 (
    .C(clk),
    .D(sig00000160),
    .Q(sig000000ad)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000a8 (
    .C(clk),
    .D(sig00000162),
    .Q(sig000000ac)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000a9 (
    .C(clk),
    .D(sig00000164),
    .Q(sig000000ab)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000aa (
    .C(clk),
    .D(sig00000166),
    .Q(sig000000aa)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000ab (
    .C(clk),
    .D(sig00000168),
    .Q(sig000000a9)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000ac (
    .C(clk),
    .D(sig0000011e),
    .Q(sig0000000e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000ad (
    .C(clk),
    .D(sig0000011d),
    .Q(sig0000000f)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000ae (
    .C(clk),
    .D(sig0000011c),
    .Q(sig00000010)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000af (
    .C(clk),
    .D(sig0000011b),
    .Q(sig00000011)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000b0 (
    .C(clk),
    .D(sig0000011a),
    .Q(sig00000012)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000b1 (
    .C(clk),
    .D(sig00000119),
    .Q(sig00000013)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000b2 (
    .C(clk),
    .D(sig00000118),
    .Q(sig00000014)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000b3 (
    .C(clk),
    .D(sig00000117),
    .Q(sig00000015)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000b4 (
    .C(clk),
    .D(sig00000116),
    .Q(sig00000016)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000b5 (
    .C(clk),
    .D(sig00000115),
    .Q(sig00000017)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000b6 (
    .C(clk),
    .D(sig00000114),
    .Q(sig00000018)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000b7 (
    .C(clk),
    .D(sig00000113),
    .Q(sig00000019)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000b8 (
    .C(clk),
    .D(sig00000112),
    .Q(sig0000001a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000b9 (
    .C(clk),
    .D(sig00000111),
    .Q(sig0000001b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000ba (
    .C(clk),
    .D(sig00000110),
    .Q(sig0000001c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000bb (
    .C(clk),
    .D(sig0000010f),
    .Q(sig0000001d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000bc (
    .C(clk),
    .D(sig0000010e),
    .Q(sig0000001e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000bd (
    .C(clk),
    .D(sig0000010d),
    .Q(sig0000001f)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000be (
    .C(clk),
    .D(sig0000010c),
    .Q(sig00000020)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000bf (
    .C(clk),
    .D(sig0000010b),
    .Q(sig00000021)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000c0 (
    .C(clk),
    .D(sig0000010a),
    .Q(sig00000022)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000c1 (
    .C(clk),
    .D(sig00000109),
    .Q(sig00000023)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000c2 (
    .C(clk),
    .D(sig00000108),
    .Q(sig00000024)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000c3 (
    .C(clk),
    .D(sig00000107),
    .Q(sig00000025)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000c4 (
    .C(clk),
    .D(sig0000011f),
    .Q(sig00000026)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c5 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000197),
    .Q(sig0000018d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c6 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000001),
    .Q(sig00000189)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c7 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000002),
    .Q(sig00000193)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c8 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000003),
    .Q(sig00000192)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c9 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000004),
    .Q(sig00000191)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ca (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000005),
    .Q(sig00000190)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cb (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000006),
    .Q(sig0000018f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cc (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000007),
    .Q(sig0000018e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cd (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000008),
    .Q(sig00000182)
  );
  MUXCY   blk000000ce (
    .CI(sig00000197),
    .DI(sig00000049),
    .S(sig00000197),
    .O(sig00000194)
  );
  MUXCY   blk000000cf (
    .CI(sig00000194),
    .DI(sig00000049),
    .S(sig00000049),
    .O(sig00000195)
  );
  MUXCY   blk000000d0 (
    .CI(sig00000195),
    .DI(sig00000197),
    .S(sig00000196),
    .O(sig0000018c)
  );
  XORCY   blk000000d1 (
    .CI(sig0000019a),
    .LI(sig00000181),
    .O(sig00000198)
  );
  MUXCY   blk000000d2 (
    .CI(sig0000019a),
    .DI(sig00000049),
    .S(sig00000181),
    .O(sig0000018b)
  );
  XORCY   blk000000d3 (
    .CI(sig0000019c),
    .LI(sig00000180),
    .O(sig00000199)
  );
  MUXCY   blk000000d4 (
    .CI(sig0000019c),
    .DI(sig00000049),
    .S(sig00000180),
    .O(sig0000019a)
  );
  XORCY   blk000000d5 (
    .CI(sig0000019e),
    .LI(sig0000017f),
    .O(sig0000019b)
  );
  MUXCY   blk000000d6 (
    .CI(sig0000019e),
    .DI(sig00000049),
    .S(sig0000017f),
    .O(sig0000019c)
  );
  XORCY   blk000000d7 (
    .CI(sig000001a0),
    .LI(sig0000017e),
    .O(sig0000019d)
  );
  MUXCY   blk000000d8 (
    .CI(sig000001a0),
    .DI(sig00000049),
    .S(sig0000017e),
    .O(sig0000019e)
  );
  XORCY   blk000000d9 (
    .CI(sig000001a2),
    .LI(sig0000017d),
    .O(sig0000019f)
  );
  MUXCY   blk000000da (
    .CI(sig000001a2),
    .DI(sig00000049),
    .S(sig0000017d),
    .O(sig000001a0)
  );
  XORCY   blk000000db (
    .CI(sig000001a4),
    .LI(sig0000017c),
    .O(sig000001a1)
  );
  MUXCY   blk000000dc (
    .CI(sig000001a4),
    .DI(sig00000049),
    .S(sig0000017c),
    .O(sig000001a2)
  );
  XORCY   blk000000dd (
    .CI(sig000001a6),
    .LI(sig0000017b),
    .O(sig000001a3)
  );
  MUXCY   blk000000de (
    .CI(sig000001a6),
    .DI(sig00000049),
    .S(sig0000017b),
    .O(sig000001a4)
  );
  XORCY   blk000000df (
    .CI(sig000001a8),
    .LI(sig0000017a),
    .O(sig000001a5)
  );
  MUXCY   blk000000e0 (
    .CI(sig000001a8),
    .DI(sig00000049),
    .S(sig0000017a),
    .O(sig000001a6)
  );
  XORCY   blk000000e1 (
    .CI(sig000001aa),
    .LI(sig00000179),
    .O(sig000001a7)
  );
  MUXCY   blk000000e2 (
    .CI(sig000001aa),
    .DI(sig00000049),
    .S(sig00000179),
    .O(sig000001a8)
  );
  XORCY   blk000000e3 (
    .CI(sig000001ac),
    .LI(sig00000178),
    .O(sig000001a9)
  );
  MUXCY   blk000000e4 (
    .CI(sig000001ac),
    .DI(sig00000049),
    .S(sig00000178),
    .O(sig000001aa)
  );
  XORCY   blk000000e5 (
    .CI(sig000001ae),
    .LI(sig00000177),
    .O(sig000001ab)
  );
  MUXCY   blk000000e6 (
    .CI(sig000001ae),
    .DI(sig00000049),
    .S(sig00000177),
    .O(sig000001ac)
  );
  XORCY   blk000000e7 (
    .CI(sig0000018c),
    .LI(sig00000176),
    .O(sig000001ad)
  );
  MUXCY   blk000000e8 (
    .CI(sig0000018c),
    .DI(sig00000049),
    .S(sig00000176),
    .O(sig000001ae)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e9 (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001ad),
    .Q(sig0000003e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ea (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001ab),
    .Q(sig0000003d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000eb (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001a9),
    .Q(sig0000003c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ec (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001a7),
    .Q(sig0000003b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ed (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001a5),
    .Q(sig0000003a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ee (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001a3),
    .Q(sig00000039)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ef (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001a1),
    .Q(sig00000038)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f0 (
    .C(clk),
    .CE(sig00000197),
    .D(sig0000019f),
    .Q(sig00000037)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f1 (
    .C(clk),
    .CE(sig00000197),
    .D(sig0000019d),
    .Q(sig00000036)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f2 (
    .C(clk),
    .CE(sig00000197),
    .D(sig0000019b),
    .Q(sig00000035)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f3 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000199),
    .Q(sig00000034)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f4 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000198),
    .Q(sig00000033)
  );
  XORCY   blk000000f5 (
    .CI(sig000001b0),
    .LI(sig00000049),
    .O(sig000001af)
  );
  XORCY   blk000000f6 (
    .CI(sig000001b2),
    .LI(sig0000016a),
    .O(NLW_blk000000f6_O_UNCONNECTED)
  );
  MUXCY   blk000000f7 (
    .CI(sig000001b2),
    .DI(sig00000197),
    .S(sig0000016a),
    .O(sig000001b0)
  );
  XORCY   blk000000f8 (
    .CI(sig000001b4),
    .LI(sig00000175),
    .O(sig000001b1)
  );
  MUXCY   blk000000f9 (
    .CI(sig000001b4),
    .DI(sig00000049),
    .S(sig00000175),
    .O(sig000001b2)
  );
  XORCY   blk000000fa (
    .CI(sig000001b6),
    .LI(sig00000174),
    .O(sig000001b3)
  );
  MUXCY   blk000000fb (
    .CI(sig000001b6),
    .DI(sig00000049),
    .S(sig00000174),
    .O(sig000001b4)
  );
  XORCY   blk000000fc (
    .CI(sig000001b8),
    .LI(sig00000173),
    .O(sig000001b5)
  );
  MUXCY   blk000000fd (
    .CI(sig000001b8),
    .DI(sig00000049),
    .S(sig00000173),
    .O(sig000001b6)
  );
  XORCY   blk000000fe (
    .CI(sig000001ba),
    .LI(sig00000172),
    .O(sig000001b7)
  );
  MUXCY   blk000000ff (
    .CI(sig000001ba),
    .DI(sig00000049),
    .S(sig00000172),
    .O(sig000001b8)
  );
  XORCY   blk00000100 (
    .CI(sig000001bc),
    .LI(sig00000171),
    .O(sig000001b9)
  );
  MUXCY   blk00000101 (
    .CI(sig000001bc),
    .DI(sig00000049),
    .S(sig00000171),
    .O(sig000001ba)
  );
  XORCY   blk00000102 (
    .CI(sig000001be),
    .LI(sig00000170),
    .O(sig000001bb)
  );
  MUXCY   blk00000103 (
    .CI(sig000001be),
    .DI(sig00000049),
    .S(sig00000170),
    .O(sig000001bc)
  );
  XORCY   blk00000104 (
    .CI(sig000001c0),
    .LI(sig0000016f),
    .O(sig000001bd)
  );
  MUXCY   blk00000105 (
    .CI(sig000001c0),
    .DI(sig00000049),
    .S(sig0000016f),
    .O(sig000001be)
  );
  XORCY   blk00000106 (
    .CI(sig000001c2),
    .LI(sig0000016e),
    .O(sig000001bf)
  );
  MUXCY   blk00000107 (
    .CI(sig000001c2),
    .DI(sig00000049),
    .S(sig0000016e),
    .O(sig000001c0)
  );
  XORCY   blk00000108 (
    .CI(sig000001c4),
    .LI(sig0000016d),
    .O(sig000001c1)
  );
  MUXCY   blk00000109 (
    .CI(sig000001c4),
    .DI(sig00000049),
    .S(sig0000016d),
    .O(sig000001c2)
  );
  XORCY   blk0000010a (
    .CI(sig000001c6),
    .LI(sig0000016c),
    .O(sig000001c3)
  );
  MUXCY   blk0000010b (
    .CI(sig000001c6),
    .DI(sig00000049),
    .S(sig0000016c),
    .O(sig000001c4)
  );
  XORCY   blk0000010c (
    .CI(sig0000018b),
    .LI(sig0000016b),
    .O(sig000001c5)
  );
  MUXCY   blk0000010d (
    .CI(sig0000018b),
    .DI(sig00000049),
    .S(sig0000016b),
    .O(sig000001c6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010e (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001c5),
    .Q(sig00000032)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010f (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001c3),
    .Q(sig00000031)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000110 (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001c1),
    .Q(sig00000030)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000111 (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001bf),
    .Q(sig0000002f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000112 (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001bd),
    .Q(sig0000002e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000113 (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001bb),
    .Q(sig0000002d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000114 (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001b9),
    .Q(sig0000002c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000115 (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001b7),
    .Q(sig0000002b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000116 (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001b5),
    .Q(sig0000002a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000117 (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001b3),
    .Q(sig00000029)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000118 (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001b1),
    .Q(sig00000028)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000119 (
    .C(clk),
    .CE(sig00000197),
    .D(sig000001af),
    .Q(sig0000018a)
  );
  XORCY   blk0000011a (
    .CI(sig000001c7),
    .LI(sig00000189),
    .O(sig0000003f)
  );
  XORCY   blk0000011b (
    .CI(sig000001c8),
    .LI(sig00000188),
    .O(sig00000040)
  );
  MUXCY   blk0000011c (
    .CI(sig000001c8),
    .DI(sig0000018d),
    .S(sig00000188),
    .O(sig000001c7)
  );
  XORCY   blk0000011d (
    .CI(sig000001c9),
    .LI(sig00000187),
    .O(sig00000041)
  );
  MUXCY   blk0000011e (
    .CI(sig000001c9),
    .DI(sig0000018d),
    .S(sig00000187),
    .O(sig000001c8)
  );
  XORCY   blk0000011f (
    .CI(sig000001ca),
    .LI(sig00000186),
    .O(sig00000042)
  );
  MUXCY   blk00000120 (
    .CI(sig000001ca),
    .DI(sig0000018d),
    .S(sig00000186),
    .O(sig000001c9)
  );
  XORCY   blk00000121 (
    .CI(sig000001cb),
    .LI(sig00000185),
    .O(sig00000043)
  );
  MUXCY   blk00000122 (
    .CI(sig000001cb),
    .DI(sig0000018d),
    .S(sig00000185),
    .O(sig000001ca)
  );
  XORCY   blk00000123 (
    .CI(sig000001cc),
    .LI(sig00000184),
    .O(sig00000044)
  );
  MUXCY   blk00000124 (
    .CI(sig000001cc),
    .DI(sig0000018d),
    .S(sig00000184),
    .O(sig000001cb)
  );
  XORCY   blk00000125 (
    .CI(sig000001cd),
    .LI(sig00000183),
    .O(sig00000045)
  );
  MUXCY   blk00000126 (
    .CI(sig000001cd),
    .DI(sig0000018d),
    .S(sig00000183),
    .O(sig000001cc)
  );
  XORCY   blk00000127 (
    .CI(sig0000018a),
    .LI(sig00000206),
    .O(sig00000046)
  );
  MUXCY   blk00000128 (
    .CI(sig0000018a),
    .DI(sig00000049),
    .S(sig00000206),
    .O(sig000001cd)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000129 (
    .C(clk),
    .D(sig000001e4),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [22])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000012a (
    .C(clk),
    .D(sig000001e3),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [21])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000012b (
    .C(clk),
    .D(sig000001e2),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [20])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000012c (
    .C(clk),
    .D(sig000001e1),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [19])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000012d (
    .C(clk),
    .D(sig000001e0),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [18])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000012e (
    .C(clk),
    .D(sig000001df),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [17])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000012f (
    .C(clk),
    .D(sig000001de),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [16])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000130 (
    .C(clk),
    .D(sig000001dd),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [15])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000131 (
    .C(clk),
    .D(sig000001dc),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000132 (
    .C(clk),
    .D(sig000001db),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000133 (
    .C(clk),
    .D(sig000001da),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000134 (
    .C(clk),
    .D(sig000001d9),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000135 (
    .C(clk),
    .D(sig000001d8),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000136 (
    .C(clk),
    .D(sig000001d7),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000137 (
    .C(clk),
    .D(sig000001d6),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000138 (
    .C(clk),
    .D(sig000001d5),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000139 (
    .C(clk),
    .D(sig000001d4),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000013a (
    .C(clk),
    .D(sig000001d3),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000013b (
    .C(clk),
    .D(sig000001d2),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000013c (
    .C(clk),
    .D(sig000001d1),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000013d (
    .C(clk),
    .D(sig000001d0),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000013e (
    .C(clk),
    .D(sig000001cf),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000013f (
    .C(clk),
    .D(sig000001ce),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/mant_op [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000140 (
    .C(clk),
    .D(sig000001ec),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000141 (
    .C(clk),
    .D(sig000001eb),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000142 (
    .C(clk),
    .D(sig000001ea),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000143 (
    .C(clk),
    .D(sig000001e9),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000144 (
    .C(clk),
    .D(sig000001e8),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000145 (
    .C(clk),
    .D(sig000001e7),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000146 (
    .C(clk),
    .D(sig000001e6),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000147 (
    .C(clk),
    .D(sig000001e5),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/exp_op [0])
  );
  FDSE   blk00000148 (
    .C(clk),
    .CE(sig000001f9),
    .D(sig000001f3),
    .S(sig00000047),
    .Q(sig000001ee)
  );
  FDRE   blk00000149 (
    .C(clk),
    .CE(sig000001f9),
    .D(sig000001f4),
    .R(sig00000047),
    .Q(sig000001ef)
  );
  FDRE   blk0000014a (
    .C(clk),
    .CE(sig000001f9),
    .D(sig000001f2),
    .R(sig00000047),
    .Q(sig000001f8)
  );
  FDSE   blk0000014b (
    .C(clk),
    .CE(sig000001f9),
    .D(sig000001f5),
    .S(sig00000047),
    .Q(sig000001f0)
  );
  FDSE   blk0000014c (
    .C(clk),
    .CE(sig000001f9),
    .D(sig000001f6),
    .S(sig00000047),
    .Q(sig000001f1)
  );
  FDSE   blk0000014d (
    .C(clk),
    .CE(sig000001f9),
    .D(sig000001f7),
    .S(sig00000047),
    .Q(sig000001ed)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF11101010 ))
  blk0000014e (
    .I0(sig00000078),
    .I1(sig0000007e),
    .I2(sig00000079),
    .I3(sig0000007b),
    .I4(sig00000089),
    .I5(sig0000007d),
    .O(sig00000069)
  );
  LUT6 #(
    .INIT ( 64'h6776233245540110 ))
  blk0000014f (
    .I0(sig0000008b),
    .I1(sig0000008e),
    .I2(sig0000008d),
    .I3(sig0000008a),
    .I4(sig0000008f),
    .I5(sig0000008c),
    .O(sig00000066)
  );
  LUT6 #(
    .INIT ( 64'h0202020202000202 ))
  blk00000150 (
    .I0(sig0000007a),
    .I1(sig0000007d),
    .I2(sig0000007e),
    .I3(sig00000078),
    .I4(sig00000089),
    .I5(sig00000079),
    .O(sig00000068)
  );
  LUT5 #(
    .INIT ( 32'h00100000 ))
  blk00000151 (
    .I0(sig00000081),
    .I1(sig00000088),
    .I2(sig00000087),
    .I3(sig00000080),
    .I4(sig0000004a),
    .O(sig0000006b)
  );
  LUT5 #(
    .INIT ( 32'h00800000 ))
  blk00000152 (
    .I0(sig00000081),
    .I1(sig00000088),
    .I2(sig00000087),
    .I3(sig00000080),
    .I4(sig0000004a),
    .O(sig0000006c)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000153 (
    .I0(sig0000005f),
    .I1(sig0000005e),
    .O(sig0000005d)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk00000154 (
    .I0(sig0000005e),
    .I1(sig0000005f),
    .O(sig0000005c)
  );
  LUT4 #(
    .INIT ( 16'h20AA ))
  blk00000155 (
    .I0(sig00000088),
    .I1(sig00000081),
    .I2(sig0000004a),
    .I3(sig00000087),
    .O(sig00000063)
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  blk00000156 (
    .I0(sig0000005e),
    .I1(sig0000005f),
    .I2(sig00000077),
    .O(sig00000048)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  blk00000157 (
    .I0(sig00000086),
    .I1(sig00000085),
    .I2(sig00000084),
    .I3(sig00000083),
    .I4(sig00000082),
    .O(sig0000004a)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000158 (
    .I0(a[31]),
    .I1(b[31]),
    .O(sig00000076)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000159 (
    .I0(sig00000094),
    .I1(sig00000095),
    .O(sig0000008c)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk0000015a (
    .I0(sig0000009a),
    .I1(sig0000009b),
    .O(sig0000008f)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000015b (
    .I0(sig0000018e),
    .I1(sig0000018d),
    .O(sig00000183)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000015c (
    .I0(sig0000018f),
    .I1(sig0000018d),
    .O(sig00000184)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000015d (
    .I0(sig00000190),
    .I1(sig0000018d),
    .O(sig00000185)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000015e (
    .I0(sig00000191),
    .I1(sig0000018d),
    .O(sig00000186)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000015f (
    .I0(sig00000192),
    .I1(sig0000018d),
    .O(sig00000187)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000160 (
    .I0(sig00000193),
    .I1(sig0000018d),
    .O(sig00000188)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000161 (
    .I0(sig00000019),
    .I1(sig0000001a),
    .I2(sig0000000e),
    .O(sig0000016b)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000162 (
    .I0(sig0000000f),
    .I1(sig00000010),
    .I2(sig0000000e),
    .O(sig00000175)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000163 (
    .I0(sig00000018),
    .I1(sig00000019),
    .I2(sig0000000e),
    .O(sig0000016c)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000164 (
    .I0(sig00000017),
    .I1(sig00000018),
    .I2(sig0000000e),
    .O(sig0000016d)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000165 (
    .I0(sig00000016),
    .I1(sig00000017),
    .I2(sig0000000e),
    .O(sig0000016e)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000166 (
    .I0(sig00000015),
    .I1(sig00000016),
    .I2(sig0000000e),
    .O(sig0000016f)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000167 (
    .I0(sig00000014),
    .I1(sig00000015),
    .I2(sig0000000e),
    .O(sig00000170)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000168 (
    .I0(sig00000013),
    .I1(sig00000014),
    .I2(sig0000000e),
    .O(sig00000171)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000169 (
    .I0(sig00000012),
    .I1(sig00000013),
    .I2(sig0000000e),
    .O(sig00000172)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000016a (
    .I0(sig00000011),
    .I1(sig00000012),
    .I2(sig0000000e),
    .O(sig00000173)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000016b (
    .I0(sig00000010),
    .I1(sig00000011),
    .I2(sig0000000e),
    .O(sig00000174)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000016c (
    .I0(sig00000025),
    .I1(sig00000026),
    .I2(sig0000000e),
    .O(sig00000176)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000016d (
    .I0(sig0000001b),
    .I1(sig0000001c),
    .I2(sig0000000e),
    .O(sig00000180)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000016e (
    .I0(sig0000001a),
    .I1(sig0000001b),
    .I2(sig0000000e),
    .O(sig00000181)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000016f (
    .I0(sig00000024),
    .I1(sig00000025),
    .I2(sig0000000e),
    .O(sig00000177)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000170 (
    .I0(sig00000023),
    .I1(sig00000024),
    .I2(sig0000000e),
    .O(sig00000178)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000171 (
    .I0(sig00000022),
    .I1(sig00000023),
    .I2(sig0000000e),
    .O(sig00000179)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000172 (
    .I0(sig00000021),
    .I1(sig00000022),
    .I2(sig0000000e),
    .O(sig0000017a)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000173 (
    .I0(sig00000020),
    .I1(sig00000021),
    .I2(sig0000000e),
    .O(sig0000017b)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000174 (
    .I0(sig0000001f),
    .I1(sig00000020),
    .I2(sig0000000e),
    .O(sig0000017c)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000175 (
    .I0(sig0000001e),
    .I1(sig0000001f),
    .I2(sig0000000e),
    .O(sig0000017d)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000176 (
    .I0(sig0000001d),
    .I1(sig0000001e),
    .I2(sig0000000e),
    .O(sig0000017e)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000177 (
    .I0(sig0000001c),
    .I1(sig0000001d),
    .I2(sig0000000e),
    .O(sig0000017f)
  );
  LUT3 #(
    .INIT ( 8'h47 ))
  blk00000178 (
    .I0(sig00000026),
    .I1(sig0000000e),
    .I2(sig00000027),
    .O(sig00000196)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000179 (
    .I0(sig0000000a),
    .I1(sig0000003d),
    .O(sig000001cf)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk0000017a (
    .I0(sig0000000a),
    .I1(sig0000003c),
    .O(sig000001d0)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk0000017b (
    .I0(sig0000000a),
    .I1(sig0000003e),
    .O(sig000001ce)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk0000017c (
    .I0(sig0000000a),
    .I1(sig0000003b),
    .O(sig000001d1)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk0000017d (
    .I0(sig0000000a),
    .I1(sig0000003a),
    .O(sig000001d2)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk0000017e (
    .I0(sig0000000a),
    .I1(sig00000039),
    .O(sig000001d3)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk0000017f (
    .I0(sig0000000a),
    .I1(sig00000038),
    .O(sig000001d4)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000180 (
    .I0(sig0000000a),
    .I1(sig00000037),
    .O(sig000001d5)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000181 (
    .I0(sig0000000a),
    .I1(sig00000036),
    .O(sig000001d6)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000182 (
    .I0(sig0000000a),
    .I1(sig00000035),
    .O(sig000001d7)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000183 (
    .I0(sig0000000a),
    .I1(sig00000034),
    .O(sig000001d8)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000184 (
    .I0(sig0000000a),
    .I1(sig00000033),
    .O(sig000001d9)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000185 (
    .I0(sig0000000a),
    .I1(sig00000032),
    .O(sig000001da)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000186 (
    .I0(sig0000000a),
    .I1(sig00000031),
    .O(sig000001db)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000187 (
    .I0(sig0000000a),
    .I1(sig00000030),
    .O(sig000001dc)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000188 (
    .I0(sig0000000a),
    .I1(sig0000002f),
    .O(sig000001dd)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000189 (
    .I0(sig0000000a),
    .I1(sig0000002e),
    .O(sig000001de)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk0000018a (
    .I0(sig0000000a),
    .I1(sig0000002d),
    .O(sig000001df)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk0000018b (
    .I0(sig0000000a),
    .I1(sig0000002c),
    .O(sig000001e0)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk0000018c (
    .I0(sig0000000a),
    .I1(sig0000002b),
    .O(sig000001e1)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk0000018d (
    .I0(sig0000000a),
    .I1(sig0000002a),
    .O(sig000001e2)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk0000018e (
    .I0(sig0000000a),
    .I1(sig00000029),
    .O(sig000001e3)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  blk0000018f (
    .I0(sig0000000b),
    .I1(sig0000000c),
    .I2(sig00000028),
    .O(sig000001e4)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  blk00000190 (
    .I0(sig00000009),
    .I1(sig0000000d),
    .I2(sig00000046),
    .O(sig000001e5)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  blk00000191 (
    .I0(sig00000009),
    .I1(sig0000000d),
    .I2(sig00000045),
    .O(sig000001e6)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  blk00000192 (
    .I0(sig00000009),
    .I1(sig0000000d),
    .I2(sig00000044),
    .O(sig000001e7)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  blk00000193 (
    .I0(sig00000009),
    .I1(sig0000000d),
    .I2(sig00000043),
    .O(sig000001e8)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  blk00000194 (
    .I0(sig00000009),
    .I1(sig0000000d),
    .I2(sig00000042),
    .O(sig000001e9)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  blk00000195 (
    .I0(sig00000009),
    .I1(sig0000000d),
    .I2(sig00000041),
    .O(sig000001ea)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  blk00000196 (
    .I0(sig00000009),
    .I1(sig0000000d),
    .I2(sig00000040),
    .O(sig000001eb)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  blk00000197 (
    .I0(sig00000009),
    .I1(sig0000000d),
    .I2(sig0000003f),
    .O(sig000001ec)
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAA9 ))
  blk00000198 (
    .I0(sig000001ee),
    .I1(sig000001ed),
    .I2(sig000001f1),
    .I3(sig000001f0),
    .I4(sig000001ef),
    .O(sig000001f3)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA9 ))
  blk00000199 (
    .I0(sig000001f8),
    .I1(sig000001ed),
    .I2(sig000001f1),
    .I3(sig000001f0),
    .I4(sig000001ef),
    .I5(sig000001ee),
    .O(sig000001f2)
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  blk0000019a (
    .I0(sig000001ef),
    .I1(sig000001ed),
    .I2(sig000001f1),
    .I3(sig000001f0),
    .O(sig000001f4)
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  blk0000019b (
    .I0(sig000001f0),
    .I1(sig000001ed),
    .I2(sig000001f1),
    .O(sig000001f5)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000019c (
    .I0(sig000001f1),
    .I1(sig000001ed),
    .O(sig000001f6)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk0000019d (
    .I0(sig00000078),
    .I1(sig00000079),
    .O(sig000001fa)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF51554055 ))
  blk0000019e (
    .I0(sig0000007d),
    .I1(sig00000089),
    .I2(sig0000007b),
    .I3(sig000001fa),
    .I4(sig0000007a),
    .I5(sig0000007e),
    .O(sig0000006a)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000019f (
    .I0(sig00000083),
    .I1(sig00000080),
    .I2(sig00000086),
    .I3(sig00000085),
    .O(sig000001fb)
  );
  LUT6 #(
    .INIT ( 64'h2222222022222222 ))
  blk000001a0 (
    .I0(sig00000087),
    .I1(sig00000088),
    .I2(sig00000082),
    .I3(sig00000081),
    .I4(sig00000084),
    .I5(sig000001fb),
    .O(sig00000064)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000001a1 (
    .I0(b[17]),
    .I1(b[16]),
    .O(sig000001fc)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk000001a2 (
    .I0(b[22]),
    .I1(b[21]),
    .I2(b[20]),
    .I3(b[19]),
    .I4(b[18]),
    .I5(sig000001fc),
    .O(sig00000090)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  blk000001a3 (
    .I0(b[25]),
    .I1(b[24]),
    .I2(b[23]),
    .O(sig000001fd)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk000001a4 (
    .I0(b[30]),
    .I1(b[29]),
    .I2(b[28]),
    .I3(b[27]),
    .I4(b[26]),
    .I5(sig000001fd),
    .O(sig00000091)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk000001a5 (
    .I0(b[1]),
    .I1(b[0]),
    .I2(b[2]),
    .I3(b[3]),
    .I4(b[4]),
    .I5(b[5]),
    .O(sig000001fe)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk000001a6 (
    .I0(b[7]),
    .I1(b[6]),
    .I2(b[8]),
    .I3(b[9]),
    .I4(b[10]),
    .I5(b[11]),
    .O(sig000001ff)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  blk000001a7 (
    .I0(sig000001ff),
    .I1(sig000001fe),
    .I2(b[13]),
    .I3(b[12]),
    .I4(b[14]),
    .I5(b[15]),
    .O(sig00000092)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk000001a8 (
    .I0(b[25]),
    .I1(b[24]),
    .I2(b[23]),
    .O(sig00000200)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk000001a9 (
    .I0(b[30]),
    .I1(b[29]),
    .I2(b[28]),
    .I3(b[27]),
    .I4(b[26]),
    .I5(sig00000200),
    .O(sig00000093)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000001aa (
    .I0(a[17]),
    .I1(a[16]),
    .O(sig00000201)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk000001ab (
    .I0(a[22]),
    .I1(a[21]),
    .I2(a[20]),
    .I3(a[19]),
    .I4(a[18]),
    .I5(sig00000201),
    .O(sig00000096)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  blk000001ac (
    .I0(a[25]),
    .I1(a[24]),
    .I2(a[23]),
    .O(sig00000202)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk000001ad (
    .I0(a[30]),
    .I1(a[29]),
    .I2(a[28]),
    .I3(a[27]),
    .I4(a[26]),
    .I5(sig00000202),
    .O(sig00000097)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk000001ae (
    .I0(a[1]),
    .I1(a[0]),
    .I2(a[2]),
    .I3(a[3]),
    .I4(a[4]),
    .I5(a[5]),
    .O(sig00000203)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk000001af (
    .I0(a[7]),
    .I1(a[6]),
    .I2(a[8]),
    .I3(a[9]),
    .I4(a[10]),
    .I5(a[11]),
    .O(sig00000204)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  blk000001b0 (
    .I0(sig00000204),
    .I1(sig00000203),
    .I2(a[13]),
    .I3(a[12]),
    .I4(a[14]),
    .I5(a[15]),
    .O(sig00000098)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk000001b1 (
    .I0(a[25]),
    .I1(a[24]),
    .I2(a[23]),
    .O(sig00000205)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk000001b2 (
    .I0(a[30]),
    .I1(a[29]),
    .I2(a[28]),
    .I3(a[27]),
    .I4(a[26]),
    .I5(sig00000205),
    .O(sig00000099)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000001b3 (
    .I0(sig00000182),
    .O(sig00000206)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000001b4 (
    .C(clk),
    .D(sig00000207),
    .Q(sig000001f9)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001b5 (
    .I0(operation_nd),
    .I1(sig000001f9),
    .O(sig00000047)
  );
  LUT6 #(
    .INIT ( 64'h00FFFF00909F9F90 ))
  blk000001b6 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(operation_nd),
    .I3(sig000000c1),
    .I4(sig00000027),
    .I5(sig0000021f),
    .O(sig00000120)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  blk000001b7 (
    .I0(a[0]),
    .I1(operation_nd),
    .I2(sig0000021f),
    .O(sig000000ef)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001b8 (
    .I0(a[1]),
    .I1(operation_nd),
    .I2(sig000000a9),
    .I3(sig000001f9),
    .O(sig000000f0)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001b9 (
    .I0(a[2]),
    .I1(operation_nd),
    .I2(sig000000aa),
    .I3(sig000001f9),
    .O(sig000000f1)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001ba (
    .I0(a[3]),
    .I1(operation_nd),
    .I2(sig000000ab),
    .I3(sig000001f9),
    .O(sig000000f2)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001bb (
    .I0(a[4]),
    .I1(operation_nd),
    .I2(sig000000ac),
    .I3(sig000001f9),
    .O(sig000000f3)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001bc (
    .I0(a[5]),
    .I1(operation_nd),
    .I2(sig000000ad),
    .I3(sig000001f9),
    .O(sig000000f4)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001bd (
    .I0(a[6]),
    .I1(operation_nd),
    .I2(sig000000ae),
    .I3(sig000001f9),
    .O(sig000000f5)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001be (
    .I0(a[7]),
    .I1(operation_nd),
    .I2(sig000000af),
    .I3(sig000001f9),
    .O(sig000000f6)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001bf (
    .I0(a[8]),
    .I1(operation_nd),
    .I2(sig000000b0),
    .I3(sig000001f9),
    .O(sig000000f7)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001c0 (
    .I0(a[9]),
    .I1(operation_nd),
    .I2(sig000000b1),
    .I3(sig000001f9),
    .O(sig000000f8)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001c1 (
    .I0(a[10]),
    .I1(operation_nd),
    .I2(sig000000b2),
    .I3(sig000001f9),
    .O(sig000000f9)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001c2 (
    .I0(a[11]),
    .I1(operation_nd),
    .I2(sig000000b3),
    .I3(sig000001f9),
    .O(sig000000fa)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001c3 (
    .I0(a[12]),
    .I1(operation_nd),
    .I2(sig000000b4),
    .I3(sig000001f9),
    .O(sig000000fb)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001c4 (
    .I0(a[13]),
    .I1(operation_nd),
    .I2(sig000000b5),
    .I3(sig000001f9),
    .O(sig000000fc)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001c5 (
    .I0(b[1]),
    .I1(a[1]),
    .O(sig00000208)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001c6 (
    .I0(sig00000208),
    .I1(operation_nd),
    .I2(sig000000a9),
    .I3(sig000000c2),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000121)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001c7 (
    .I0(b[2]),
    .I1(a[2]),
    .O(sig00000209)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001c8 (
    .I0(sig00000209),
    .I1(operation_nd),
    .I2(sig000000aa),
    .I3(sig000000c3),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000122)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001c9 (
    .I0(b[3]),
    .I1(a[3]),
    .O(sig0000020a)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001ca (
    .I0(sig0000020a),
    .I1(operation_nd),
    .I2(sig000000ab),
    .I3(sig000000c4),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000123)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001cb (
    .I0(b[4]),
    .I1(a[4]),
    .O(sig0000020b)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001cc (
    .I0(sig0000020b),
    .I1(operation_nd),
    .I2(sig000000ac),
    .I3(sig000000c5),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000124)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001cd (
    .I0(b[5]),
    .I1(a[5]),
    .O(sig0000020c)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001ce (
    .I0(sig0000020c),
    .I1(operation_nd),
    .I2(sig000000ad),
    .I3(sig000000c6),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000125)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001cf (
    .I0(b[6]),
    .I1(a[6]),
    .O(sig0000020d)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001d0 (
    .I0(sig0000020d),
    .I1(operation_nd),
    .I2(sig000000ae),
    .I3(sig000000c7),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000126)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001d1 (
    .I0(b[7]),
    .I1(a[7]),
    .O(sig0000020e)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001d2 (
    .I0(sig0000020e),
    .I1(operation_nd),
    .I2(sig000000af),
    .I3(sig000000c8),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000127)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001d3 (
    .I0(a[14]),
    .I1(operation_nd),
    .I2(sig000000b6),
    .I3(sig000001f9),
    .O(sig000000fd)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001d4 (
    .I0(a[15]),
    .I1(operation_nd),
    .I2(sig000000b7),
    .I3(sig000001f9),
    .O(sig000000fe)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001d5 (
    .I0(a[16]),
    .I1(operation_nd),
    .I2(sig000000b8),
    .I3(sig000001f9),
    .O(sig000000ff)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001d6 (
    .I0(a[17]),
    .I1(operation_nd),
    .I2(sig000000b9),
    .I3(sig000001f9),
    .O(sig00000100)
  );
  LUT3 #(
    .INIT ( 8'hCE ))
  blk000001d7 (
    .I0(operation_nd),
    .I1(sig00000027),
    .I2(sig0000021f),
    .O(sig0000011f)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001d8 (
    .I0(a[18]),
    .I1(operation_nd),
    .I2(sig000000ba),
    .I3(sig000001f9),
    .O(sig00000101)
  );
  LUT4 #(
    .INIT ( 16'hF0B8 ))
  blk000001d9 (
    .I0(a[19]),
    .I1(operation_nd),
    .I2(sig000000bb),
    .I3(sig000001f9),
    .O(sig00000102)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001da (
    .I0(b[8]),
    .I1(a[8]),
    .O(sig0000020f)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001db (
    .I0(sig0000020f),
    .I1(operation_nd),
    .I2(sig000000b0),
    .I3(sig000000c9),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000128)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001dc (
    .I0(b[9]),
    .I1(a[9]),
    .O(sig00000210)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001dd (
    .I0(sig00000210),
    .I1(operation_nd),
    .I2(sig000000b1),
    .I3(sig000000ca),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000129)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001de (
    .I0(b[10]),
    .I1(a[10]),
    .O(sig00000211)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001df (
    .I0(sig00000211),
    .I1(operation_nd),
    .I2(sig000000b2),
    .I3(sig000000cb),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig0000012a)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001e0 (
    .I0(b[11]),
    .I1(a[11]),
    .O(sig00000212)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001e1 (
    .I0(sig00000212),
    .I1(operation_nd),
    .I2(sig000000b3),
    .I3(sig000000cc),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig0000012b)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001e2 (
    .I0(b[12]),
    .I1(a[12]),
    .O(sig00000213)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001e3 (
    .I0(sig00000213),
    .I1(operation_nd),
    .I2(sig000000b4),
    .I3(sig000000cd),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig0000012c)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001e4 (
    .I0(b[13]),
    .I1(a[13]),
    .O(sig00000214)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001e5 (
    .I0(sig00000214),
    .I1(operation_nd),
    .I2(sig000000b5),
    .I3(sig000000ce),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig0000012d)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001e6 (
    .I0(b[14]),
    .I1(a[14]),
    .O(sig00000215)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001e7 (
    .I0(sig00000215),
    .I1(operation_nd),
    .I2(sig000000b6),
    .I3(sig000000cf),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig0000012e)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk000001e8 (
    .I0(sig000000bc),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(a[20]),
    .O(sig00000103)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk000001e9 (
    .I0(sig000000bd),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(a[21]),
    .O(sig00000104)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk000001ea (
    .I0(sig000000be),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(a[22]),
    .O(sig00000105)
  );
  LUT4 #(
    .INIT ( 16'hC3EB ))
  blk000001eb (
    .I0(operation_nd),
    .I1(sig000000bf),
    .I2(sig00000027),
    .I3(sig000001f9),
    .O(sig00000137)
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  blk000001ec (
    .I0(sig000000bf),
    .I1(sig000001f9),
    .I2(operation_nd),
    .O(sig00000106)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001ed (
    .I0(b[15]),
    .I1(a[15]),
    .O(sig00000216)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001ee (
    .I0(sig00000216),
    .I1(operation_nd),
    .I2(sig000000b7),
    .I3(sig000000d0),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig0000012f)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001ef (
    .I0(b[16]),
    .I1(a[16]),
    .O(sig00000217)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001f0 (
    .I0(sig00000217),
    .I1(operation_nd),
    .I2(sig000000b8),
    .I3(sig000000d1),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000130)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001f1 (
    .I0(b[17]),
    .I1(a[17]),
    .O(sig00000218)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001f2 (
    .I0(sig00000218),
    .I1(operation_nd),
    .I2(sig000000b9),
    .I3(sig000000d2),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000131)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001f3 (
    .I0(b[18]),
    .I1(a[18]),
    .O(sig00000219)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001f4 (
    .I0(sig00000219),
    .I1(operation_nd),
    .I2(sig000000ba),
    .I3(sig000000d3),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000132)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001f5 (
    .I0(b[19]),
    .I1(a[19]),
    .O(sig0000021a)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001f6 (
    .I0(sig0000021a),
    .I1(operation_nd),
    .I2(sig000000bb),
    .I3(sig000000d4),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000133)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001f7 (
    .I0(b[20]),
    .I1(a[20]),
    .O(sig0000021b)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001f8 (
    .I0(sig0000021b),
    .I1(operation_nd),
    .I2(sig000000bc),
    .I3(sig000000d5),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000134)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001f9 (
    .I0(b[21]),
    .I1(a[21]),
    .O(sig0000021c)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001fa (
    .I0(sig0000021c),
    .I1(operation_nd),
    .I2(sig000000bd),
    .I3(sig000000d6),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000135)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000001fb (
    .I0(b[22]),
    .I1(a[22]),
    .O(sig0000021d)
  );
  LUT6 #(
    .INIT ( 64'hF00F0FF0B88B8BB8 ))
  blk000001fc (
    .I0(sig0000021d),
    .I1(operation_nd),
    .I2(sig000000be),
    .I3(sig000000d7),
    .I4(sig00000027),
    .I5(sig000001f9),
    .O(sig00000136)
  );
  LUT3 #(
    .INIT ( 8'h72 ))
  blk000001fd (
    .I0(sig000001f9),
    .I1(sig000001f8),
    .I2(operation_nd),
    .O(sig00000207)
  );
  LUT4 #(
    .INIT ( 16'h82C3 ))
  blk000001fe (
    .I0(sig000001f9),
    .I1(sig000000c0),
    .I2(sig00000027),
    .I3(operation_nd),
    .O(sig00000138)
  );
  LUT5 #(
    .INIT ( 32'hFFFF7F2A ))
  blk000001ff (
    .I0(sig0000008b),
    .I1(sig00000094),
    .I2(sig00000095),
    .I3(sig0000008a),
    .I4(sig0000008e),
    .O(sig00000065)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000200 (
    .I0(sig0000001d),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig00000110)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000201 (
    .I0(sig0000001c),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig00000111)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000202 (
    .I0(sig0000001b),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig00000112)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000203 (
    .I0(sig0000001a),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig00000113)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000204 (
    .I0(sig00000019),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig00000114)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000205 (
    .I0(sig00000018),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig00000115)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000206 (
    .I0(sig00000017),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig00000116)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000207 (
    .I0(sig00000016),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig00000117)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000208 (
    .I0(sig00000015),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig00000118)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000209 (
    .I0(sig00000014),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig00000119)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000020a (
    .I0(sig00000026),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig00000107)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000020b (
    .I0(sig00000013),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig0000011a)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000020c (
    .I0(sig00000012),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig0000011b)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000020d (
    .I0(sig00000011),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig0000011c)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000020e (
    .I0(sig00000010),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig0000011d)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000020f (
    .I0(sig0000000f),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig0000011e)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000210 (
    .I0(sig00000025),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig00000108)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000211 (
    .I0(sig00000024),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig00000109)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000212 (
    .I0(sig00000023),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig0000010a)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000213 (
    .I0(sig00000022),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig0000010b)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000214 (
    .I0(sig00000021),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig0000010c)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000215 (
    .I0(sig00000020),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig0000010d)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000216 (
    .I0(sig0000001f),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig0000010e)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000217 (
    .I0(sig0000001e),
    .I1(operation_nd),
    .I2(sig000001f9),
    .O(sig0000010f)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk00000218 (
    .I0(sig000000c1),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[0]),
    .O(sig000000d8)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk00000219 (
    .I0(sig000000cb),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[10]),
    .O(sig000000e2)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk0000021a (
    .I0(sig000000cc),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[11]),
    .O(sig000000e3)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk0000021b (
    .I0(sig000000cd),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[12]),
    .O(sig000000e4)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk0000021c (
    .I0(sig000000ce),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[13]),
    .O(sig000000e5)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk0000021d (
    .I0(sig000000cf),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[14]),
    .O(sig000000e6)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk0000021e (
    .I0(sig000000d0),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[15]),
    .O(sig000000e7)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk0000021f (
    .I0(sig000000d1),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[16]),
    .O(sig000000e8)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk00000220 (
    .I0(sig000000d2),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[17]),
    .O(sig000000e9)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk00000221 (
    .I0(sig000000d3),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[18]),
    .O(sig000000ea)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk00000222 (
    .I0(sig000000d4),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[19]),
    .O(sig000000eb)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk00000223 (
    .I0(sig000000c2),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[1]),
    .O(sig000000d9)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk00000224 (
    .I0(sig000000d5),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[20]),
    .O(sig000000ec)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk00000225 (
    .I0(sig000000d6),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[21]),
    .O(sig000000ed)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk00000226 (
    .I0(sig000000d7),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[22]),
    .O(sig000000ee)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk00000227 (
    .I0(sig000000c3),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[2]),
    .O(sig000000da)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk00000228 (
    .I0(sig000000c4),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[3]),
    .O(sig000000db)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk00000229 (
    .I0(sig000000c5),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[4]),
    .O(sig000000dc)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk0000022a (
    .I0(sig000000c6),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[5]),
    .O(sig000000dd)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk0000022b (
    .I0(sig000000c7),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[6]),
    .O(sig000000de)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk0000022c (
    .I0(sig000000c8),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[7]),
    .O(sig000000df)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk0000022d (
    .I0(sig000000c9),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[8]),
    .O(sig000000e0)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  blk0000022e (
    .I0(sig000000ca),
    .I1(operation_nd),
    .I2(sig000001f9),
    .I3(b[9]),
    .O(sig000000e1)
  );
  LUT6 #(
    .INIT ( 64'h00AA80AA00008000 ))
  blk0000022f (
    .I0(sig0000007f),
    .I1(sig0000009b),
    .I2(sig0000009a),
    .I3(sig0000008e),
    .I4(sig0000008b),
    .I5(sig0000021e),
    .O(sig00000067)
  );
  LUT5 #(
    .INIT ( 32'hBF151515 ))
  blk00000230 (
    .I0(sig0000008b),
    .I1(sig0000008d),
    .I2(sig0000008a),
    .I3(sig00000094),
    .I4(sig00000095),
    .O(sig0000021e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000231 (
    .C(clk),
    .D(sig00000207),
    .Q(sig0000021f)
  );
  INV   blk00000232 (
    .I(sig0000000e),
    .O(sig0000016a)
  );
  INV   blk00000233 (
    .I(sig000001ed),
    .O(sig000001f7)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000234 (
    .A0(sig00000049),
    .A1(sig00000049),
    .A2(sig00000049),
    .A3(sig00000049),
    .CE(sig00000197),
    .CLK(clk),
    .D(sig00000027),
    .Q(sig00000220),
    .Q15(NLW_blk00000234_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000235 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000220),
    .Q(sig00000089)
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  blk00000236 (
    .CLK(clk),
    .D(sig00000087),
    .CE(sig00000197),
    .Q(sig00000001),
    .Q31(NLW_blk00000236_Q31_UNCONNECTED),
    .A({sig00000197, sig00000049, sig00000197, sig00000197, sig00000197})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  blk00000237 (
    .CLK(clk),
    .D(sig00000086),
    .CE(sig00000197),
    .Q(sig00000002),
    .Q31(NLW_blk00000237_Q31_UNCONNECTED),
    .A({sig00000197, sig00000049, sig00000197, sig00000197, sig00000197})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  blk00000238 (
    .CLK(clk),
    .D(sig00000085),
    .CE(sig00000197),
    .Q(sig00000003),
    .Q31(NLW_blk00000238_Q31_UNCONNECTED),
    .A({sig00000197, sig00000049, sig00000197, sig00000197, sig00000197})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  blk00000239 (
    .CLK(clk),
    .D(sig00000082),
    .CE(sig00000197),
    .Q(sig00000006),
    .Q31(NLW_blk00000239_Q31_UNCONNECTED),
    .A({sig00000197, sig00000049, sig00000197, sig00000197, sig00000197})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  blk0000023a (
    .CLK(clk),
    .D(sig00000084),
    .CE(sig00000197),
    .Q(sig00000004),
    .Q31(NLW_blk0000023a_Q31_UNCONNECTED),
    .A({sig00000197, sig00000049, sig00000197, sig00000197, sig00000197})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  blk0000023b (
    .CLK(clk),
    .D(sig00000083),
    .CE(sig00000197),
    .Q(sig00000005),
    .Q31(NLW_blk0000023b_Q31_UNCONNECTED),
    .A({sig00000197, sig00000049, sig00000197, sig00000197, sig00000197})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  blk0000023c (
    .CLK(clk),
    .D(sig00000081),
    .CE(sig00000197),
    .Q(sig00000007),
    .Q31(NLW_blk0000023c_Q31_UNCONNECTED),
    .A({sig00000197, sig00000049, sig00000197, sig00000197, sig00000197})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  blk0000023d (
    .CLK(clk),
    .D(sig00000080),
    .CE(sig00000197),
    .Q(sig00000008),
    .Q31(NLW_blk0000023d_Q31_UNCONNECTED),
    .A({sig00000197, sig00000049, sig00000197, sig00000197, sig00000197})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  blk0000023e (
    .CLK(clk),
    .D(sig000000a7),
    .CE(sig00000197),
    .Q(sig00000221),
    .Q31(NLW_blk0000023e_Q31_UNCONNECTED),
    .A({sig00000197, sig00000049, sig00000197, sig00000049, sig00000049})
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000023f (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000221),
    .Q(sig0000005f)
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  blk00000240 (
    .CLK(clk),
    .D(sig000000a6),
    .CE(sig00000197),
    .Q(sig00000222),
    .Q31(NLW_blk00000240_Q31_UNCONNECTED),
    .A({sig00000197, sig00000049, sig00000197, sig00000049, sig00000049})
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000241 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000222),
    .Q(sig0000005e)
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  blk00000242 (
    .CLK(clk),
    .D(sig00000047),
    .CE(sig00000197),
    .Q(sig00000223),
    .Q31(NLW_blk00000242_Q31_UNCONNECTED),
    .A({sig00000197, sig00000197, sig00000049, sig00000197, sig00000049})
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000243 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000223),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY )
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  blk00000244 (
    .CLK(clk),
    .D(sig000000a8),
    .CE(sig00000197),
    .Q(sig00000224),
    .Q31(NLW_blk00000244_Q31_UNCONNECTED),
    .A({sig00000197, sig00000049, sig00000197, sig00000049, sig00000049})
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000245 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000224),
    .Q(sig00000077)
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  blk00000246 (
    .CLK(clk),
    .D(sig000000a5),
    .CE(sig00000197),
    .Q(sig00000225),
    .Q31(NLW_blk00000246_Q31_UNCONNECTED),
    .A({sig00000197, sig00000049, sig00000197, sig00000197, sig00000049})
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000247 (
    .C(clk),
    .CE(sig00000197),
    .D(sig00000225),
    .Q(\U0/op_inst/FLT_PT_OP/DIV_OP.SPD.OP/OP/sign_op )
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

////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: fix_to_float_K.v
// /___/   /\     Timestamp: Sat Nov 29 15:53:46 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/ipcore_dir/tmp/_cg/fix_to_float_K.ngc /afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/ipcore_dir/tmp/_cg/fix_to_float_K.v 
// Device	: 7z020clg484-1
// Input file	: /afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/ipcore_dir/tmp/_cg/fix_to_float_K.ngc
// Output file	: /afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/ipcore_dir/tmp/_cg/fix_to_float_K.v
// # of Modules	: 1
// Design Name	: fix_to_float_K
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

module fix_to_float_K (
  operation_nd, clk, rdy, a, result
)/* synthesis syn_black_box syn_noprune=1 */;
  input operation_nd;
  input clk;
  output rdy;
  input [21 : 0] a;
  output [63 : 0] result;
  
  // synthesis translate_off
  
  wire \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/sign_op ;
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
  wire NLW_blk000000a0_O_UNCONNECTED;
  wire NLW_blk000000a2_O_UNCONNECTED;
  wire NLW_blk000000a3_O_UNCONNECTED;
  wire NLW_blk000000a4_O_UNCONNECTED;
  wire NLW_blk000000a8_O_UNCONNECTED;
  wire NLW_blk000000c6_O_UNCONNECTED;
  wire NLW_blk000000c8_O_UNCONNECTED;
  wire NLW_blk000000ca_O_UNCONNECTED;
  wire NLW_blk000000cc_O_UNCONNECTED;
  wire NLW_blk000000ce_O_UNCONNECTED;
  wire NLW_blk000000d0_O_UNCONNECTED;
  wire NLW_blk000000d2_O_UNCONNECTED;
  wire NLW_blk000000d4_O_UNCONNECTED;
  wire NLW_blk000000d6_O_UNCONNECTED;
  wire NLW_blk000000d8_O_UNCONNECTED;
  wire NLW_blk000000da_O_UNCONNECTED;
  wire NLW_blk000000dc_O_UNCONNECTED;
  wire NLW_blk000000de_O_UNCONNECTED;
  wire NLW_blk000000e0_O_UNCONNECTED;
  wire NLW_blk000000e2_O_UNCONNECTED;
  wire NLW_blk000000e4_O_UNCONNECTED;
  wire NLW_blk000000e6_O_UNCONNECTED;
  wire NLW_blk000000e8_O_UNCONNECTED;
  wire NLW_blk000000ea_O_UNCONNECTED;
  wire NLW_blk000000ec_O_UNCONNECTED;
  wire NLW_blk000000ee_O_UNCONNECTED;
  wire NLW_blk000000f0_O_UNCONNECTED;
  wire NLW_blk000000f2_O_UNCONNECTED;
  wire NLW_blk000000f4_O_UNCONNECTED;
  wire NLW_blk000000f6_O_UNCONNECTED;
  wire NLW_blk000000f8_O_UNCONNECTED;
  wire NLW_blk000000fa_O_UNCONNECTED;
  wire NLW_blk00000125_O_UNCONNECTED;
  wire NLW_blk00000127_O_UNCONNECTED;
  wire NLW_blk00000129_O_UNCONNECTED;
  wire NLW_blk0000012b_O_UNCONNECTED;
  wire NLW_blk0000012d_O_UNCONNECTED;
  wire NLW_blk000001f3_Q15_UNCONNECTED;
  wire NLW_blk000001f5_Q15_UNCONNECTED;
  wire NLW_blk000001f7_Q15_UNCONNECTED;
  wire NLW_blk000001f9_Q15_UNCONNECTED;
  wire [9 : 9] \NlwRenamedSignal_U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op ;
  wire [4 : 0] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op ;
  wire [51 : 31] \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op ;
  wire [0 : 0] NlwRenamedSig_OI_result;
  assign
    result[63] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/sign_op ,
    result[62] = NlwRenamedSig_OI_result[0],
    result[61] = \NlwRenamedSignal_U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [9],
    result[60] = \NlwRenamedSignal_U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [9],
    result[59] = \NlwRenamedSignal_U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [9],
    result[58] = \NlwRenamedSignal_U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [9],
    result[57] = \NlwRenamedSignal_U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [9],
    result[56] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [4],
    result[55] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [3],
    result[54] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [2],
    result[53] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [1],
    result[52] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [0],
    result[51] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [51],
    result[50] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [50],
    result[49] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [49],
    result[48] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [48],
    result[47] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [47],
    result[46] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [46],
    result[45] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [45],
    result[44] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [44],
    result[43] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [43],
    result[42] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [42],
    result[41] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [41],
    result[40] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [40],
    result[39] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [39],
    result[38] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [38],
    result[37] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [37],
    result[36] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [36],
    result[35] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [35],
    result[34] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [34],
    result[33] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [33],
    result[32] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [32],
    result[31] = \U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [31],
    result[30] = NlwRenamedSig_OI_result[0],
    result[29] = NlwRenamedSig_OI_result[0],
    result[28] = NlwRenamedSig_OI_result[0],
    result[27] = NlwRenamedSig_OI_result[0],
    result[26] = NlwRenamedSig_OI_result[0],
    result[25] = NlwRenamedSig_OI_result[0],
    result[24] = NlwRenamedSig_OI_result[0],
    result[23] = NlwRenamedSig_OI_result[0],
    result[22] = NlwRenamedSig_OI_result[0],
    result[21] = NlwRenamedSig_OI_result[0],
    result[20] = NlwRenamedSig_OI_result[0],
    result[19] = NlwRenamedSig_OI_result[0],
    result[18] = NlwRenamedSig_OI_result[0],
    result[17] = NlwRenamedSig_OI_result[0],
    result[16] = NlwRenamedSig_OI_result[0],
    result[15] = NlwRenamedSig_OI_result[0],
    result[14] = NlwRenamedSig_OI_result[0],
    result[13] = NlwRenamedSig_OI_result[0],
    result[12] = NlwRenamedSig_OI_result[0],
    result[11] = NlwRenamedSig_OI_result[0],
    result[10] = NlwRenamedSig_OI_result[0],
    result[9] = NlwRenamedSig_OI_result[0],
    result[8] = NlwRenamedSig_OI_result[0],
    result[7] = NlwRenamedSig_OI_result[0],
    result[6] = NlwRenamedSig_OI_result[0],
    result[5] = NlwRenamedSig_OI_result[0],
    result[4] = NlwRenamedSig_OI_result[0],
    result[3] = NlwRenamedSig_OI_result[0],
    result[2] = NlwRenamedSig_OI_result[0],
    result[1] = NlwRenamedSig_OI_result[0],
    result[0] = NlwRenamedSig_OI_result[0],
    rdy = \U0/op_inst/FLT_PT_OP/HND_SHK/RDY ;
  VCC   blk00000001 (
    .P(sig0000000c)
  );
  GND   blk00000002 (
    .G(NlwRenamedSig_OI_result[0])
  );
  XORCY   blk00000003 (
    .CI(sig00000001),
    .LI(sig000001b0),
    .O(sig000000d4)
  );
  MUXCY   blk00000004 (
    .CI(sig00000002),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000053),
    .O(sig00000001)
  );
  MUXCY   blk00000005 (
    .CI(sig00000003),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000054),
    .O(sig00000002)
  );
  MUXCY   blk00000006 (
    .CI(sig00000004),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000055),
    .O(sig00000003)
  );
  MUXCY   blk00000007 (
    .CI(sig00000005),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000056),
    .O(sig00000004)
  );
  XORCY   blk00000008 (
    .CI(sig00000006),
    .LI(sig00000057),
    .O(sig000000d3)
  );
  MUXCY   blk00000009 (
    .CI(sig00000006),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000057),
    .O(sig00000005)
  );
  XORCY   blk0000000a (
    .CI(sig00000007),
    .LI(sig00000058),
    .O(sig000000d2)
  );
  MUXCY   blk0000000b (
    .CI(sig00000007),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000058),
    .O(sig00000006)
  );
  XORCY   blk0000000c (
    .CI(sig00000008),
    .LI(sig00000059),
    .O(sig000000d1)
  );
  MUXCY   blk0000000d (
    .CI(sig00000008),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000059),
    .O(sig00000007)
  );
  XORCY   blk0000000e (
    .CI(sig00000009),
    .LI(sig0000005a),
    .O(sig000000d0)
  );
  MUXCY   blk0000000f (
    .CI(sig00000009),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000005a),
    .O(sig00000008)
  );
  XORCY   blk00000010 (
    .CI(NlwRenamedSig_OI_result[0]),
    .LI(sig0000000a),
    .O(sig000000cf)
  );
  MUXCY   blk00000011 (
    .CI(NlwRenamedSig_OI_result[0]),
    .DI(sig0000000b),
    .S(sig0000000a),
    .O(sig00000009)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000012 (
    .C(clk),
    .D(sig0000000c),
    .Q(sig0000004d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000013 (
    .C(clk),
    .D(sig0000000d),
    .Q(sig0000004e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000014 (
    .C(clk),
    .D(sig0000000e),
    .Q(sig0000004f)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000015 (
    .C(clk),
    .D(sig0000000f),
    .Q(sig00000050)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000016 (
    .C(clk),
    .D(sig00000010),
    .Q(sig00000051)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000017 (
    .C(clk),
    .D(sig00000124),
    .Q(sig00000052)
  );
  XORCY   blk00000018 (
    .CI(sig000000d8),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(sig000000d6)
  );
  XORCY   blk00000019 (
    .CI(sig000000da),
    .LI(sig000000ce),
    .O(sig000000d7)
  );
  MUXCY   blk0000001a (
    .CI(sig000000da),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000ce),
    .O(sig000000d8)
  );
  XORCY   blk0000001b (
    .CI(sig000000dc),
    .LI(sig000000cd),
    .O(sig000000d9)
  );
  MUXCY   blk0000001c (
    .CI(sig000000dc),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000cd),
    .O(sig000000da)
  );
  XORCY   blk0000001d (
    .CI(sig000000de),
    .LI(sig000000cc),
    .O(sig000000db)
  );
  MUXCY   blk0000001e (
    .CI(sig000000de),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000cc),
    .O(sig000000dc)
  );
  XORCY   blk0000001f (
    .CI(sig000000e0),
    .LI(sig000000cb),
    .O(sig000000dd)
  );
  MUXCY   blk00000020 (
    .CI(sig000000e0),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000cb),
    .O(sig000000de)
  );
  XORCY   blk00000021 (
    .CI(sig000000e2),
    .LI(sig000000ca),
    .O(sig000000df)
  );
  MUXCY   blk00000022 (
    .CI(sig000000e2),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000ca),
    .O(sig000000e0)
  );
  XORCY   blk00000023 (
    .CI(sig000000e4),
    .LI(sig000000c9),
    .O(sig000000e1)
  );
  MUXCY   blk00000024 (
    .CI(sig000000e4),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000c9),
    .O(sig000000e2)
  );
  XORCY   blk00000025 (
    .CI(sig000000e6),
    .LI(sig000000c8),
    .O(sig000000e3)
  );
  MUXCY   blk00000026 (
    .CI(sig000000e6),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000c8),
    .O(sig000000e4)
  );
  XORCY   blk00000027 (
    .CI(sig000000e8),
    .LI(sig000000c7),
    .O(sig000000e5)
  );
  MUXCY   blk00000028 (
    .CI(sig000000e8),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000c7),
    .O(sig000000e6)
  );
  XORCY   blk00000029 (
    .CI(sig000000ea),
    .LI(sig000000c6),
    .O(sig000000e7)
  );
  MUXCY   blk0000002a (
    .CI(sig000000ea),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000c6),
    .O(sig000000e8)
  );
  XORCY   blk0000002b (
    .CI(sig000000ec),
    .LI(sig000000c5),
    .O(sig000000e9)
  );
  MUXCY   blk0000002c (
    .CI(sig000000ec),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000c5),
    .O(sig000000ea)
  );
  XORCY   blk0000002d (
    .CI(sig000000ee),
    .LI(sig000000c4),
    .O(sig000000eb)
  );
  MUXCY   blk0000002e (
    .CI(sig000000ee),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000c4),
    .O(sig000000ec)
  );
  XORCY   blk0000002f (
    .CI(sig000000f0),
    .LI(sig000000c3),
    .O(sig000000ed)
  );
  MUXCY   blk00000030 (
    .CI(sig000000f0),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000c3),
    .O(sig000000ee)
  );
  XORCY   blk00000031 (
    .CI(sig000000f2),
    .LI(sig000000c2),
    .O(sig000000ef)
  );
  MUXCY   blk00000032 (
    .CI(sig000000f2),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000c2),
    .O(sig000000f0)
  );
  XORCY   blk00000033 (
    .CI(sig000000f4),
    .LI(sig000000c1),
    .O(sig000000f1)
  );
  MUXCY   blk00000034 (
    .CI(sig000000f4),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000c1),
    .O(sig000000f2)
  );
  XORCY   blk00000035 (
    .CI(sig000000f6),
    .LI(sig000000c0),
    .O(sig000000f3)
  );
  MUXCY   blk00000036 (
    .CI(sig000000f6),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000c0),
    .O(sig000000f4)
  );
  XORCY   blk00000037 (
    .CI(sig000000f8),
    .LI(sig000000bf),
    .O(sig000000f5)
  );
  MUXCY   blk00000038 (
    .CI(sig000000f8),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000bf),
    .O(sig000000f6)
  );
  XORCY   blk00000039 (
    .CI(sig000000fa),
    .LI(sig000000be),
    .O(sig000000f7)
  );
  MUXCY   blk0000003a (
    .CI(sig000000fa),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000be),
    .O(sig000000f8)
  );
  XORCY   blk0000003b (
    .CI(sig000000fc),
    .LI(sig000000bd),
    .O(sig000000f9)
  );
  MUXCY   blk0000003c (
    .CI(sig000000fc),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000bd),
    .O(sig000000fa)
  );
  XORCY   blk0000003d (
    .CI(sig000000fe),
    .LI(sig000000bc),
    .O(sig000000fb)
  );
  MUXCY   blk0000003e (
    .CI(sig000000fe),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000bc),
    .O(sig000000fc)
  );
  XORCY   blk0000003f (
    .CI(sig00000100),
    .LI(sig000000bb),
    .O(sig000000fd)
  );
  MUXCY   blk00000040 (
    .CI(sig00000100),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000bb),
    .O(sig000000fe)
  );
  XORCY   blk00000041 (
    .CI(a[21]),
    .LI(sig000000ba),
    .O(sig000000ff)
  );
  MUXCY   blk00000042 (
    .CI(a[21]),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig000000ba),
    .O(sig00000100)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000043 (
    .C(clk),
    .D(sig000000d6),
    .Q(sig000000b9)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000044 (
    .C(clk),
    .D(sig000000d7),
    .Q(sig000000b8)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000045 (
    .C(clk),
    .D(sig000000d9),
    .Q(sig000000b7)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000046 (
    .C(clk),
    .D(sig000000db),
    .Q(sig000000b6)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000047 (
    .C(clk),
    .D(sig000000dd),
    .Q(sig000000b5)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000048 (
    .C(clk),
    .D(sig000000df),
    .Q(sig000000b4)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000049 (
    .C(clk),
    .D(sig000000e1),
    .Q(sig000000b3)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004a (
    .C(clk),
    .D(sig000000e3),
    .Q(sig000000b2)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004b (
    .C(clk),
    .D(sig000000e5),
    .Q(sig000000b1)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004c (
    .C(clk),
    .D(sig000000e7),
    .Q(sig000000b0)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004d (
    .C(clk),
    .D(sig000000e9),
    .Q(sig000000af)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004e (
    .C(clk),
    .D(sig000000eb),
    .Q(sig000000ae)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004f (
    .C(clk),
    .D(sig000000ed),
    .Q(sig000000ad)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000050 (
    .C(clk),
    .D(sig000000ef),
    .Q(sig000000ac)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000051 (
    .C(clk),
    .D(sig000000f1),
    .Q(sig000000ab)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000052 (
    .C(clk),
    .D(sig000000f3),
    .Q(sig000000aa)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000053 (
    .C(clk),
    .D(sig000000f5),
    .Q(sig000000a9)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000054 (
    .C(clk),
    .D(sig000000f7),
    .Q(sig000000a8)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000055 (
    .C(clk),
    .D(sig000000f9),
    .Q(sig000000a7)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000056 (
    .C(clk),
    .D(sig000000fb),
    .Q(sig000000a6)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000057 (
    .C(clk),
    .D(sig000000fd),
    .Q(sig000000a5)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000058 (
    .C(clk),
    .D(sig000000ff),
    .Q(sig000000a4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000059 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000023),
    .Q(sig00000011)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005a (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000024),
    .Q(sig00000012)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005b (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000025),
    .Q(sig00000013)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005c (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000026),
    .Q(sig00000014)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005d (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000027),
    .Q(sig00000015)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005e (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000028),
    .Q(sig00000016)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005f (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000029),
    .Q(sig00000017)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000060 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000002a),
    .Q(sig00000018)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000061 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000002b),
    .Q(sig00000019)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000062 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000002c),
    .Q(sig0000001a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000063 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000002d),
    .Q(sig0000001b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000064 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000002e),
    .Q(sig0000001c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000065 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000002f),
    .Q(sig0000001d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000066 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000030),
    .Q(sig0000001e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000067 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000031),
    .Q(sig0000001f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000068 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000032),
    .Q(sig00000127)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000069 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000033),
    .Q(sig00000020)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006a (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000034),
    .Q(sig00000128)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006b (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000035),
    .Q(sig00000021)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006c (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000036),
    .Q(sig00000129)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006d (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000037),
    .Q(sig00000022)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006e (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000038),
    .Q(sig00000070)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006f (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000039),
    .Q(sig00000071)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000070 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000003a),
    .Q(sig00000072)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000071 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000003b),
    .Q(sig00000073)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000072 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000003c),
    .Q(sig00000074)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000073 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000003d),
    .Q(sig00000075)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000074 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000003e),
    .Q(sig00000076)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000075 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000003f),
    .Q(sig00000077)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000076 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000040),
    .Q(sig00000078)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000077 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000041),
    .Q(sig00000079)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000078 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000042),
    .Q(sig0000007a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000079 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000043),
    .Q(sig0000007b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000007a (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000044),
    .Q(sig0000007c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000007b (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000045),
    .Q(sig0000007d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000007c (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000046),
    .Q(sig0000007e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000007d (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000047),
    .Q(sig0000007f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000007e (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000048),
    .Q(sig00000080)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000007f (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000049),
    .Q(sig00000081)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000080 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000004a),
    .Q(sig00000082)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000081 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000004b),
    .Q(sig00000083)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000082 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000004c),
    .Q(sig00000084)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000083 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000b9),
    .Q(sig000000a3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000084 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000b8),
    .Q(sig000000a2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000085 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000b7),
    .Q(sig000000a1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000086 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000b6),
    .Q(sig000000a0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000087 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000b5),
    .Q(sig0000009f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000088 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000b4),
    .Q(sig0000009e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000089 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000b3),
    .Q(sig0000009d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008a (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000b2),
    .Q(sig0000009c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008b (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000b1),
    .Q(sig0000009b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008c (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000b0),
    .Q(sig0000009a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008d (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000af),
    .Q(sig00000099)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008e (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000ae),
    .Q(sig00000098)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008f (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000ad),
    .Q(sig00000097)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000090 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000ac),
    .Q(sig00000096)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000091 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000ab),
    .Q(sig00000095)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000092 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000aa),
    .Q(sig00000094)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000093 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000a9),
    .Q(sig00000093)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000094 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000a8),
    .Q(sig00000092)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000095 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000a7),
    .Q(sig00000091)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000096 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000a6),
    .Q(sig00000090)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000097 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000a5),
    .Q(sig0000008f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000098 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000000a4),
    .Q(sig0000008e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000099 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000101),
    .Q(sig00000112)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009a (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000102),
    .Q(sig00000113)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009b (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000103),
    .Q(sig00000114)
  );
  MUXCY   blk0000009c (
    .CI(sig0000000c),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000121),
    .O(sig00000101)
  );
  MUXCY   blk0000009d (
    .CI(sig00000101),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000122),
    .O(sig00000102)
  );
  MUXCY   blk0000009e (
    .CI(sig00000102),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000123),
    .O(sig00000103)
  );
  MUXF7   blk0000009f (
    .I0(sig00000104),
    .I1(sig00000105),
    .S(sig0000008b),
    .O(sig00000106)
  );
  MUXF7   blk000000a0 (
    .I0(sig00000107),
    .I1(NlwRenamedSig_OI_result[0]),
    .S(sig0000008b),
    .O(NLW_blk000000a0_O_UNCONNECTED)
  );
  MUXF7   blk000000a1 (
    .I0(sig00000109),
    .I1(sig000001b1),
    .S(sig0000008d),
    .O(sig0000010d)
  );
  MUXF7   blk000000a2 (
    .I0(sig0000010a),
    .I1(sig000001b2),
    .S(sig0000008d),
    .O(NLW_blk000000a2_O_UNCONNECTED)
  );
  MUXF7   blk000000a3 (
    .I0(sig0000010b),
    .I1(sig000001b3),
    .S(sig0000008d),
    .O(NLW_blk000000a3_O_UNCONNECTED)
  );
  MUXF7   blk000000a4 (
    .I0(sig0000010c),
    .I1(NlwRenamedSig_OI_result[0]),
    .S(sig0000008d),
    .O(NLW_blk000000a4_O_UNCONNECTED)
  );
  MUXF7   blk000000a5 (
    .I0(sig0000010e),
    .I1(sig00000112),
    .S(sig0000008d),
    .O(sig00000115)
  );
  MUXF7   blk000000a6 (
    .I0(sig0000010f),
    .I1(sig00000113),
    .S(sig0000008d),
    .O(sig00000116)
  );
  MUXF7   blk000000a7 (
    .I0(sig00000110),
    .I1(sig00000114),
    .S(sig0000008d),
    .O(sig00000117)
  );
  MUXF7   blk000000a8 (
    .I0(sig00000111),
    .I1(NlwRenamedSig_OI_result[0]),
    .S(sig0000008d),
    .O(NLW_blk000000a8_O_UNCONNECTED)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000a9 (
    .C(clk),
    .D(sig0000008b),
    .Q(sig00000087)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000aa (
    .C(clk),
    .D(sig0000008a),
    .Q(sig00000086)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ab (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000106),
    .Q(sig00000124)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000ac (
    .C(clk),
    .D(sig0000008c),
    .Q(sig00000108)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000000ad (
    .C(clk),
    .D(sig00000108),
    .Q(sig00000088)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ae (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000115),
    .Q(sig00000126)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000af (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000116),
    .Q(sig0000008b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b0 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000117),
    .Q(sig00000125)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b1 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig0000010d),
    .Q(sig0000012a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b2 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000118),
    .Q(sig00000085)
  );
  MUXCY   blk000000b3 (
    .CI(sig00000133),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000120),
    .O(sig00000132)
  );
  MUXCY   blk000000b4 (
    .CI(sig00000134),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000011f),
    .O(sig00000133)
  );
  MUXCY   blk000000b5 (
    .CI(sig00000135),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000011e),
    .O(sig00000134)
  );
  MUXCY   blk000000b6 (
    .CI(sig00000136),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000011d),
    .O(sig00000135)
  );
  MUXCY   blk000000b7 (
    .CI(sig00000137),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000011c),
    .O(sig00000136)
  );
  MUXCY   blk000000b8 (
    .CI(sig00000138),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000011b),
    .O(sig00000137)
  );
  MUXCY   blk000000b9 (
    .CI(sig00000139),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000011a),
    .O(sig00000138)
  );
  MUXCY   blk000000ba (
    .CI(sig0000000c),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000119),
    .O(sig00000139)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bb (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000132),
    .Q(sig0000008d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bc (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000133),
    .Q(sig0000012d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bd (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000134),
    .Q(sig0000012c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000be (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000135),
    .Q(sig0000012b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bf (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000136),
    .Q(sig00000131)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c0 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000137),
    .Q(sig00000130)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c1 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000138),
    .Q(sig0000012f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c2 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig00000139),
    .Q(sig0000012e)
  );
  MUXCY   blk000000c3 (
    .CI(sig0000013a),
    .DI(sig0000000c),
    .S(sig0000000c),
    .O(sig00000152)
  );
  MUXCY   blk000000c4 (
    .CI(sig0000013b),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig0000013a)
  );
  MUXCY   blk000000c5 (
    .CI(sig0000000c),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig0000013b)
  );
  XORCY   blk000000c6 (
    .CI(sig00000153),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000c6_O_UNCONNECTED)
  );
  MUXCY   blk000000c7 (
    .CI(sig00000153),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000151)
  );
  XORCY   blk000000c8 (
    .CI(sig00000154),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000c8_O_UNCONNECTED)
  );
  MUXCY   blk000000c9 (
    .CI(sig00000154),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000153)
  );
  XORCY   blk000000ca (
    .CI(sig00000155),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000ca_O_UNCONNECTED)
  );
  MUXCY   blk000000cb (
    .CI(sig00000155),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000154)
  );
  XORCY   blk000000cc (
    .CI(sig00000156),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000cc_O_UNCONNECTED)
  );
  MUXCY   blk000000cd (
    .CI(sig00000156),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000155)
  );
  XORCY   blk000000ce (
    .CI(sig00000157),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000ce_O_UNCONNECTED)
  );
  MUXCY   blk000000cf (
    .CI(sig00000157),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000156)
  );
  XORCY   blk000000d0 (
    .CI(sig00000158),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000d0_O_UNCONNECTED)
  );
  MUXCY   blk000000d1 (
    .CI(sig00000158),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000157)
  );
  XORCY   blk000000d2 (
    .CI(sig00000159),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000d2_O_UNCONNECTED)
  );
  MUXCY   blk000000d3 (
    .CI(sig00000159),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000158)
  );
  XORCY   blk000000d4 (
    .CI(sig0000015a),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000d4_O_UNCONNECTED)
  );
  MUXCY   blk000000d5 (
    .CI(sig0000015a),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000159)
  );
  XORCY   blk000000d6 (
    .CI(sig0000015b),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000d6_O_UNCONNECTED)
  );
  MUXCY   blk000000d7 (
    .CI(sig0000015b),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig0000015a)
  );
  XORCY   blk000000d8 (
    .CI(sig0000015c),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000d8_O_UNCONNECTED)
  );
  MUXCY   blk000000d9 (
    .CI(sig0000015c),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig0000015b)
  );
  XORCY   blk000000da (
    .CI(sig0000015d),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000da_O_UNCONNECTED)
  );
  MUXCY   blk000000db (
    .CI(sig0000015d),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig0000015c)
  );
  XORCY   blk000000dc (
    .CI(sig0000015e),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000dc_O_UNCONNECTED)
  );
  MUXCY   blk000000dd (
    .CI(sig0000015e),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig0000015d)
  );
  XORCY   blk000000de (
    .CI(sig0000015f),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000de_O_UNCONNECTED)
  );
  MUXCY   blk000000df (
    .CI(sig0000015f),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig0000015e)
  );
  XORCY   blk000000e0 (
    .CI(sig00000160),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000e0_O_UNCONNECTED)
  );
  MUXCY   blk000000e1 (
    .CI(sig00000160),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig0000015f)
  );
  XORCY   blk000000e2 (
    .CI(sig00000161),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000e2_O_UNCONNECTED)
  );
  MUXCY   blk000000e3 (
    .CI(sig00000161),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000160)
  );
  XORCY   blk000000e4 (
    .CI(sig00000162),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000e4_O_UNCONNECTED)
  );
  MUXCY   blk000000e5 (
    .CI(sig00000162),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000161)
  );
  XORCY   blk000000e6 (
    .CI(sig00000163),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000e6_O_UNCONNECTED)
  );
  MUXCY   blk000000e7 (
    .CI(sig00000163),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000162)
  );
  XORCY   blk000000e8 (
    .CI(sig00000164),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000e8_O_UNCONNECTED)
  );
  MUXCY   blk000000e9 (
    .CI(sig00000164),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000163)
  );
  XORCY   blk000000ea (
    .CI(sig00000165),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000ea_O_UNCONNECTED)
  );
  MUXCY   blk000000eb (
    .CI(sig00000165),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000164)
  );
  XORCY   blk000000ec (
    .CI(sig00000166),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000ec_O_UNCONNECTED)
  );
  MUXCY   blk000000ed (
    .CI(sig00000166),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000165)
  );
  XORCY   blk000000ee (
    .CI(sig00000167),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000ee_O_UNCONNECTED)
  );
  MUXCY   blk000000ef (
    .CI(sig00000167),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000166)
  );
  XORCY   blk000000f0 (
    .CI(sig00000168),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000f0_O_UNCONNECTED)
  );
  MUXCY   blk000000f1 (
    .CI(sig00000168),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000167)
  );
  XORCY   blk000000f2 (
    .CI(sig00000169),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000f2_O_UNCONNECTED)
  );
  MUXCY   blk000000f3 (
    .CI(sig00000169),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000168)
  );
  XORCY   blk000000f4 (
    .CI(sig0000016a),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000f4_O_UNCONNECTED)
  );
  MUXCY   blk000000f5 (
    .CI(sig0000016a),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000169)
  );
  XORCY   blk000000f6 (
    .CI(sig0000016b),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000f6_O_UNCONNECTED)
  );
  MUXCY   blk000000f7 (
    .CI(sig0000016b),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig0000016a)
  );
  XORCY   blk000000f8 (
    .CI(sig00000152),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk000000f8_O_UNCONNECTED)
  );
  MUXCY   blk000000f9 (
    .CI(sig00000152),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig0000016b)
  );
  XORCY   blk000000fa (
    .CI(sig0000016d),
    .LI(sig0000000c),
    .O(NLW_blk000000fa_O_UNCONNECTED)
  );
  XORCY   blk000000fb (
    .CI(sig0000016f),
    .LI(sig00000150),
    .O(sig0000016c)
  );
  MUXCY   blk000000fc (
    .CI(sig0000016f),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000150),
    .O(sig0000016d)
  );
  XORCY   blk000000fd (
    .CI(sig00000171),
    .LI(sig0000014f),
    .O(sig0000016e)
  );
  MUXCY   blk000000fe (
    .CI(sig00000171),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000014f),
    .O(sig0000016f)
  );
  XORCY   blk000000ff (
    .CI(sig00000173),
    .LI(sig0000014e),
    .O(sig00000170)
  );
  MUXCY   blk00000100 (
    .CI(sig00000173),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000014e),
    .O(sig00000171)
  );
  XORCY   blk00000101 (
    .CI(sig00000175),
    .LI(sig0000014d),
    .O(sig00000172)
  );
  MUXCY   blk00000102 (
    .CI(sig00000175),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000014d),
    .O(sig00000173)
  );
  XORCY   blk00000103 (
    .CI(sig00000177),
    .LI(sig0000014c),
    .O(sig00000174)
  );
  MUXCY   blk00000104 (
    .CI(sig00000177),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000014c),
    .O(sig00000175)
  );
  XORCY   blk00000105 (
    .CI(sig00000179),
    .LI(sig0000014b),
    .O(sig00000176)
  );
  MUXCY   blk00000106 (
    .CI(sig00000179),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000014b),
    .O(sig00000177)
  );
  XORCY   blk00000107 (
    .CI(sig0000017b),
    .LI(sig0000014a),
    .O(sig00000178)
  );
  MUXCY   blk00000108 (
    .CI(sig0000017b),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000014a),
    .O(sig00000179)
  );
  XORCY   blk00000109 (
    .CI(sig0000017d),
    .LI(sig00000149),
    .O(sig0000017a)
  );
  MUXCY   blk0000010a (
    .CI(sig0000017d),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000149),
    .O(sig0000017b)
  );
  XORCY   blk0000010b (
    .CI(sig0000017f),
    .LI(sig00000148),
    .O(sig0000017c)
  );
  MUXCY   blk0000010c (
    .CI(sig0000017f),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000148),
    .O(sig0000017d)
  );
  XORCY   blk0000010d (
    .CI(sig00000181),
    .LI(sig00000147),
    .O(sig0000017e)
  );
  MUXCY   blk0000010e (
    .CI(sig00000181),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000147),
    .O(sig0000017f)
  );
  XORCY   blk0000010f (
    .CI(sig00000183),
    .LI(sig00000146),
    .O(sig00000180)
  );
  MUXCY   blk00000110 (
    .CI(sig00000183),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000146),
    .O(sig00000181)
  );
  XORCY   blk00000111 (
    .CI(sig00000185),
    .LI(sig00000145),
    .O(sig00000182)
  );
  MUXCY   blk00000112 (
    .CI(sig00000185),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000145),
    .O(sig00000183)
  );
  XORCY   blk00000113 (
    .CI(sig00000187),
    .LI(sig00000144),
    .O(sig00000184)
  );
  MUXCY   blk00000114 (
    .CI(sig00000187),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000144),
    .O(sig00000185)
  );
  XORCY   blk00000115 (
    .CI(sig00000189),
    .LI(sig00000143),
    .O(sig00000186)
  );
  MUXCY   blk00000116 (
    .CI(sig00000189),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000143),
    .O(sig00000187)
  );
  XORCY   blk00000117 (
    .CI(sig0000018b),
    .LI(sig00000142),
    .O(sig00000188)
  );
  MUXCY   blk00000118 (
    .CI(sig0000018b),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000142),
    .O(sig00000189)
  );
  XORCY   blk00000119 (
    .CI(sig0000018d),
    .LI(sig00000141),
    .O(sig0000018a)
  );
  MUXCY   blk0000011a (
    .CI(sig0000018d),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000141),
    .O(sig0000018b)
  );
  XORCY   blk0000011b (
    .CI(sig0000018f),
    .LI(sig00000140),
    .O(sig0000018c)
  );
  MUXCY   blk0000011c (
    .CI(sig0000018f),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig00000140),
    .O(sig0000018d)
  );
  XORCY   blk0000011d (
    .CI(sig00000191),
    .LI(sig0000013f),
    .O(sig0000018e)
  );
  MUXCY   blk0000011e (
    .CI(sig00000191),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000013f),
    .O(sig0000018f)
  );
  XORCY   blk0000011f (
    .CI(sig00000193),
    .LI(sig0000013e),
    .O(sig00000190)
  );
  MUXCY   blk00000120 (
    .CI(sig00000193),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000013e),
    .O(sig00000191)
  );
  XORCY   blk00000121 (
    .CI(sig00000195),
    .LI(sig0000013d),
    .O(sig00000192)
  );
  MUXCY   blk00000122 (
    .CI(sig00000195),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000013d),
    .O(sig00000193)
  );
  XORCY   blk00000123 (
    .CI(sig00000196),
    .LI(sig0000013c),
    .O(sig00000194)
  );
  MUXCY   blk00000124 (
    .CI(sig00000196),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(sig0000013c),
    .O(sig00000195)
  );
  XORCY   blk00000125 (
    .CI(sig00000197),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk00000125_O_UNCONNECTED)
  );
  MUXCY   blk00000126 (
    .CI(sig00000197),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000196)
  );
  XORCY   blk00000127 (
    .CI(sig00000198),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk00000127_O_UNCONNECTED)
  );
  MUXCY   blk00000128 (
    .CI(sig00000198),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000197)
  );
  XORCY   blk00000129 (
    .CI(sig00000199),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk00000129_O_UNCONNECTED)
  );
  MUXCY   blk0000012a (
    .CI(sig00000199),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000198)
  );
  XORCY   blk0000012b (
    .CI(sig0000019a),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk0000012b_O_UNCONNECTED)
  );
  MUXCY   blk0000012c (
    .CI(sig0000019a),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig00000199)
  );
  XORCY   blk0000012d (
    .CI(sig00000151),
    .LI(NlwRenamedSig_OI_result[0]),
    .O(NLW_blk0000012d_O_UNCONNECTED)
  );
  MUXCY   blk0000012e (
    .CI(sig00000151),
    .DI(NlwRenamedSig_OI_result[0]),
    .S(NlwRenamedSig_OI_result[0]),
    .O(sig0000019a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000012f (
    .C(clk),
    .D(sig0000016c),
    .Q(sig0000006f)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000130 (
    .C(clk),
    .D(sig0000016e),
    .Q(sig0000006e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000131 (
    .C(clk),
    .D(sig00000170),
    .Q(sig0000006d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000132 (
    .C(clk),
    .D(sig00000172),
    .Q(sig0000006c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000133 (
    .C(clk),
    .D(sig00000174),
    .Q(sig0000006b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000134 (
    .C(clk),
    .D(sig00000176),
    .Q(sig0000006a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000135 (
    .C(clk),
    .D(sig00000178),
    .Q(sig00000069)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000136 (
    .C(clk),
    .D(sig0000017a),
    .Q(sig00000068)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000137 (
    .C(clk),
    .D(sig0000017c),
    .Q(sig00000067)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000138 (
    .C(clk),
    .D(sig0000017e),
    .Q(sig00000066)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000139 (
    .C(clk),
    .D(sig00000180),
    .Q(sig00000065)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000013a (
    .C(clk),
    .D(sig00000182),
    .Q(sig00000064)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000013b (
    .C(clk),
    .D(sig00000184),
    .Q(sig00000063)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000013c (
    .C(clk),
    .D(sig00000186),
    .Q(sig00000062)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000013d (
    .C(clk),
    .D(sig00000188),
    .Q(sig00000061)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000013e (
    .C(clk),
    .D(sig0000018a),
    .Q(sig00000060)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000013f (
    .C(clk),
    .D(sig0000018c),
    .Q(sig0000005f)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000140 (
    .C(clk),
    .D(sig0000018e),
    .Q(sig0000005e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000141 (
    .C(clk),
    .D(sig00000190),
    .Q(sig0000005d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000142 (
    .C(clk),
    .D(sig00000192),
    .Q(sig0000005c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000143 (
    .C(clk),
    .D(sig00000194),
    .Q(sig0000005b)
  );
  FD   blk00000144 (
    .C(clk),
    .D(sig000001af),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [51])
  );
  FD   blk00000145 (
    .C(clk),
    .D(sig000001ae),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [50])
  );
  FD   blk00000146 (
    .C(clk),
    .D(sig000001ad),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [49])
  );
  FD   blk00000147 (
    .C(clk),
    .D(sig000001ac),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [48])
  );
  FD   blk00000148 (
    .C(clk),
    .D(sig000001ab),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [47])
  );
  FD   blk00000149 (
    .C(clk),
    .D(sig000001aa),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [46])
  );
  FD   blk0000014a (
    .C(clk),
    .D(sig000001a9),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [45])
  );
  FD   blk0000014b (
    .C(clk),
    .D(sig000001a8),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [44])
  );
  FD   blk0000014c (
    .C(clk),
    .D(sig000001a7),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [43])
  );
  FD   blk0000014d (
    .C(clk),
    .D(sig000001a6),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [42])
  );
  FD   blk0000014e (
    .C(clk),
    .D(sig000001a5),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [41])
  );
  FD   blk0000014f (
    .C(clk),
    .D(sig000001a4),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [40])
  );
  FD   blk00000150 (
    .C(clk),
    .D(sig000001a3),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [39])
  );
  FD   blk00000151 (
    .C(clk),
    .D(sig000001a2),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [38])
  );
  FD   blk00000152 (
    .C(clk),
    .D(sig000001a1),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [37])
  );
  FD   blk00000153 (
    .C(clk),
    .D(sig000001a0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [36])
  );
  FD   blk00000154 (
    .C(clk),
    .D(sig0000019f),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [35])
  );
  FD   blk00000155 (
    .C(clk),
    .D(sig0000019e),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [34])
  );
  FD   blk00000156 (
    .C(clk),
    .D(sig0000019d),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [33])
  );
  FD   blk00000157 (
    .C(clk),
    .D(sig0000019c),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [32])
  );
  FD   blk00000158 (
    .C(clk),
    .D(sig0000019b),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/mant_op [31])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  blk00000159 (
    .I0(sig00000017),
    .I1(sig00000013),
    .I2(sig00000011),
    .I3(sig00000015),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig0000003e)
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  blk0000015a (
    .I0(sig00000018),
    .I1(sig00000014),
    .I2(sig00000012),
    .I3(sig00000016),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig0000003f)
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  blk0000015b (
    .I0(sig00000019),
    .I1(sig00000015),
    .I2(sig00000013),
    .I3(sig00000017),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig00000040)
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  blk0000015c (
    .I0(sig0000001a),
    .I1(sig00000016),
    .I2(sig00000014),
    .I3(sig00000018),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig00000041)
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  blk0000015d (
    .I0(sig0000001b),
    .I1(sig00000017),
    .I2(sig00000015),
    .I3(sig00000019),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig00000042)
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  blk0000015e (
    .I0(sig0000001c),
    .I1(sig00000018),
    .I2(sig00000016),
    .I3(sig0000001a),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig00000043)
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  blk0000015f (
    .I0(sig00000128),
    .I1(sig0000001e),
    .I2(sig0000001c),
    .I3(sig00000127),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig00000049)
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  blk00000160 (
    .I0(sig0000001d),
    .I1(sig00000019),
    .I2(sig00000017),
    .I3(sig0000001b),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig00000044)
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  blk00000161 (
    .I0(sig0000001e),
    .I1(sig0000001a),
    .I2(sig00000018),
    .I3(sig0000001c),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig00000045)
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  blk00000162 (
    .I0(sig0000001f),
    .I1(sig0000001b),
    .I2(sig00000019),
    .I3(sig0000001d),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig00000046)
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  blk00000163 (
    .I0(sig00000127),
    .I1(sig0000001c),
    .I2(sig0000001a),
    .I3(sig0000001e),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig00000047)
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  blk00000164 (
    .I0(sig00000020),
    .I1(sig0000001d),
    .I2(sig0000001b),
    .I3(sig0000001f),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig00000048)
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  blk00000165 (
    .I0(sig00000021),
    .I1(sig00000020),
    .I2(sig0000001f),
    .I3(sig0000001d),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig0000004a)
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  blk00000166 (
    .I0(sig00000129),
    .I1(sig00000128),
    .I2(sig00000127),
    .I3(sig0000001e),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig0000004b)
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  blk00000167 (
    .I0(sig00000022),
    .I1(sig00000021),
    .I2(sig00000020),
    .I3(sig0000001f),
    .I4(sig0000008b),
    .I5(sig0000008a),
    .O(sig0000004c)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk00000168 (
    .I0(sig00000052),
    .I1(sig000000d5),
    .O(sig0000000b)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk00000169 (
    .I0(sig00000051),
    .I1(sig000000d5),
    .O(sig0000005a)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk0000016a (
    .I0(sig00000050),
    .I1(sig000000d5),
    .O(sig00000059)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk0000016b (
    .I0(sig0000004f),
    .I1(sig000000d5),
    .O(sig00000058)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk0000016c (
    .I0(sig0000004e),
    .I1(sig000000d5),
    .O(sig00000057)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk0000016d (
    .I0(sig0000004d),
    .I1(sig000000d5),
    .O(sig00000056)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk0000016e (
    .I0(sig0000004d),
    .I1(sig000000d5),
    .O(sig00000055)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk0000016f (
    .I0(sig0000004d),
    .I1(sig000000d5),
    .O(sig00000054)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk00000170 (
    .I0(sig0000004d),
    .I1(sig000000d5),
    .O(sig00000053)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000171 (
    .I0(a[0]),
    .I1(a[21]),
    .O(sig000000ba)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000172 (
    .I0(a[10]),
    .I1(a[21]),
    .O(sig000000c4)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000173 (
    .I0(a[11]),
    .I1(a[21]),
    .O(sig000000c5)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000174 (
    .I0(a[12]),
    .I1(a[21]),
    .O(sig000000c6)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000175 (
    .I0(a[13]),
    .I1(a[21]),
    .O(sig000000c7)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000176 (
    .I0(a[14]),
    .I1(a[21]),
    .O(sig000000c8)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000177 (
    .I0(a[15]),
    .I1(a[21]),
    .O(sig000000c9)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000178 (
    .I0(a[16]),
    .I1(a[21]),
    .O(sig000000ca)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000179 (
    .I0(a[17]),
    .I1(a[21]),
    .O(sig000000cb)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000017a (
    .I0(a[18]),
    .I1(a[21]),
    .O(sig000000cc)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000017b (
    .I0(a[19]),
    .I1(a[21]),
    .O(sig000000cd)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000017c (
    .I0(a[1]),
    .I1(a[21]),
    .O(sig000000bb)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000017d (
    .I0(a[20]),
    .I1(a[21]),
    .O(sig000000ce)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000017e (
    .I0(a[2]),
    .I1(a[21]),
    .O(sig000000bc)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000017f (
    .I0(a[3]),
    .I1(a[21]),
    .O(sig000000bd)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000180 (
    .I0(a[4]),
    .I1(a[21]),
    .O(sig000000be)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000181 (
    .I0(a[5]),
    .I1(a[21]),
    .O(sig000000bf)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000182 (
    .I0(a[6]),
    .I1(a[21]),
    .O(sig000000c0)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000183 (
    .I0(a[7]),
    .I1(a[21]),
    .O(sig000000c1)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000184 (
    .I0(a[8]),
    .I1(a[21]),
    .O(sig000000c2)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000185 (
    .I0(a[9]),
    .I1(a[21]),
    .O(sig000000c3)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000186 (
    .I0(sig00000131),
    .I1(sig000000a3),
    .I2(sig0000009b),
    .O(sig00000109)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000187 (
    .I0(sig00000131),
    .I1(sig000000a1),
    .I2(sig00000099),
    .O(sig0000010a)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000188 (
    .I0(sig00000131),
    .I1(sig0000009f),
    .I2(sig00000097),
    .O(sig0000010b)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000189 (
    .I0(sig00000131),
    .I1(sig0000009d),
    .I2(sig00000095),
    .O(sig0000010c)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000018a (
    .I0(sig00000131),
    .I1(sig0000012e),
    .I2(sig0000012b),
    .O(sig0000010e)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000018b (
    .I0(sig00000131),
    .I1(sig0000012f),
    .I2(sig0000012c),
    .O(sig0000010f)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000018c (
    .I0(sig00000131),
    .I1(sig00000130),
    .I2(sig0000012d),
    .O(sig00000110)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk0000018d (
    .I0(sig00000131),
    .I1(sig0000008d),
    .O(sig00000111)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk0000018e (
    .I0(sig00000131),
    .I1(sig0000008d),
    .O(sig0000008c)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000018f (
    .I0(sig00000125),
    .I1(sig00000126),
    .I2(sig0000008b),
    .O(sig0000008a)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000190 (
    .I0(sig00000126),
    .I1(sig0000012a),
    .I2(sig00000129),
    .O(sig00000104)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000191 (
    .I0(sig00000125),
    .I1(sig00000128),
    .I2(sig00000127),
    .O(sig00000105)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000192 (
    .I0(sig0000008b),
    .I1(sig00000126),
    .O(sig00000107)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000193 (
    .I0(sig0000008d),
    .I1(sig00000114),
    .O(sig00000118)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000194 (
    .I0(sig000000b9),
    .I1(sig000000b8),
    .O(sig00000119)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000195 (
    .I0(sig000000b7),
    .I1(sig000000b6),
    .O(sig0000011a)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000196 (
    .I0(sig000000b5),
    .I1(sig000000b4),
    .O(sig0000011b)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000197 (
    .I0(sig000000b3),
    .I1(sig000000b2),
    .O(sig0000011c)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000198 (
    .I0(sig000000b1),
    .I1(sig000000b0),
    .O(sig0000011d)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000199 (
    .I0(sig000000af),
    .I1(sig000000ae),
    .O(sig0000011e)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk0000019a (
    .I0(sig000000ad),
    .I1(sig000000ac),
    .O(sig0000011f)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk0000019b (
    .I0(sig000000ab),
    .I1(sig000000aa),
    .O(sig00000120)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk0000019c (
    .I0(sig000000a9),
    .I1(sig000000a8),
    .O(sig00000121)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk0000019d (
    .I0(sig000000a7),
    .I1(sig000000a6),
    .O(sig00000122)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk0000019e (
    .I0(sig000000a5),
    .I1(sig000000a4),
    .O(sig00000123)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000019f (
    .I0(sig00000075),
    .I1(sig00000074),
    .I2(sig00000124),
    .O(sig00000141)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001a0 (
    .I0(sig00000076),
    .I1(sig00000075),
    .I2(sig00000124),
    .O(sig00000142)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001a1 (
    .I0(sig00000077),
    .I1(sig00000076),
    .I2(sig00000124),
    .O(sig00000143)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001a2 (
    .I0(sig00000078),
    .I1(sig00000077),
    .I2(sig00000124),
    .O(sig00000144)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001a3 (
    .I0(sig00000079),
    .I1(sig00000078),
    .I2(sig00000124),
    .O(sig00000145)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001a4 (
    .I0(sig0000007a),
    .I1(sig00000079),
    .I2(sig00000124),
    .O(sig00000146)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001a5 (
    .I0(sig0000007b),
    .I1(sig0000007a),
    .I2(sig00000124),
    .O(sig00000147)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001a6 (
    .I0(sig0000007c),
    .I1(sig0000007b),
    .I2(sig00000124),
    .O(sig00000148)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001a7 (
    .I0(sig0000007d),
    .I1(sig0000007c),
    .I2(sig00000124),
    .O(sig00000149)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001a8 (
    .I0(sig0000007e),
    .I1(sig0000007d),
    .I2(sig00000124),
    .O(sig0000014a)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001a9 (
    .I0(sig0000007f),
    .I1(sig0000007e),
    .I2(sig00000124),
    .O(sig0000014b)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001aa (
    .I0(sig00000080),
    .I1(sig0000007f),
    .I2(sig00000124),
    .O(sig0000014c)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001ab (
    .I0(sig00000081),
    .I1(sig00000080),
    .I2(sig00000124),
    .O(sig0000014d)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001ac (
    .I0(sig00000082),
    .I1(sig00000081),
    .I2(sig00000124),
    .O(sig0000014e)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001ad (
    .I0(sig00000083),
    .I1(sig00000082),
    .I2(sig00000124),
    .O(sig0000014f)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001ae (
    .I0(sig00000124),
    .I1(sig00000083),
    .I2(sig00000084),
    .O(sig00000150)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000001af (
    .I0(sig00000070),
    .I1(sig00000124),
    .O(sig0000013c)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001b0 (
    .I0(sig00000071),
    .I1(sig00000070),
    .I2(sig00000124),
    .O(sig0000013d)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001b1 (
    .I0(sig00000072),
    .I1(sig00000071),
    .I2(sig00000124),
    .O(sig0000013e)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001b2 (
    .I0(sig00000073),
    .I1(sig00000072),
    .I2(sig00000124),
    .O(sig0000013f)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000001b3 (
    .I0(sig00000074),
    .I1(sig00000073),
    .I2(sig00000124),
    .O(sig00000140)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001b4 (
    .I0(sig0000005b),
    .I1(sig000000d5),
    .O(sig0000019b)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001b5 (
    .I0(sig0000005d),
    .I1(sig000000d5),
    .O(sig0000019d)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001b6 (
    .I0(sig0000005e),
    .I1(sig000000d5),
    .O(sig0000019e)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001b7 (
    .I0(sig0000005c),
    .I1(sig000000d5),
    .O(sig0000019c)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001b8 (
    .I0(sig0000005f),
    .I1(sig000000d5),
    .O(sig0000019f)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001b9 (
    .I0(sig00000060),
    .I1(sig000000d5),
    .O(sig000001a0)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001ba (
    .I0(sig00000061),
    .I1(sig000000d5),
    .O(sig000001a1)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001bb (
    .I0(sig00000062),
    .I1(sig000000d5),
    .O(sig000001a2)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001bc (
    .I0(sig00000064),
    .I1(sig000000d5),
    .O(sig000001a4)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001bd (
    .I0(sig00000065),
    .I1(sig000000d5),
    .O(sig000001a5)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001be (
    .I0(sig00000063),
    .I1(sig000000d5),
    .O(sig000001a3)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001bf (
    .I0(sig00000067),
    .I1(sig000000d5),
    .O(sig000001a7)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001c0 (
    .I0(sig00000068),
    .I1(sig000000d5),
    .O(sig000001a8)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001c1 (
    .I0(sig00000066),
    .I1(sig000000d5),
    .O(sig000001a6)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001c2 (
    .I0(sig0000006a),
    .I1(sig000000d5),
    .O(sig000001aa)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001c3 (
    .I0(sig0000006b),
    .I1(sig000000d5),
    .O(sig000001ab)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001c4 (
    .I0(sig00000069),
    .I1(sig000000d5),
    .O(sig000001a9)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001c5 (
    .I0(sig0000006c),
    .I1(sig000000d5),
    .O(sig000001ac)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001c6 (
    .I0(sig0000006d),
    .I1(sig000000d5),
    .O(sig000001ad)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001c7 (
    .I0(sig0000006e),
    .I1(sig000000d5),
    .O(sig000001ae)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001c8 (
    .I0(sig0000006f),
    .I1(sig000000d5),
    .O(sig000001af)
  );
  FD   blk000001c9 (
    .C(clk),
    .D(sig000000d4),
    .Q(\NlwRenamedSignal_U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [9])
  );
  FD   blk000001ca (
    .C(clk),
    .D(sig000000d3),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [4])
  );
  FD   blk000001cb (
    .C(clk),
    .D(sig000000d2),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [3])
  );
  FD   blk000001cc (
    .C(clk),
    .D(sig000000d1),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [2])
  );
  FD   blk000001cd (
    .C(clk),
    .D(sig000000d0),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [1])
  );
  FD   blk000001ce (
    .C(clk),
    .D(sig000000cf),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/exp_op [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001cf (
    .I0(sig0000004d),
    .I1(sig000000d5),
    .O(sig000001b0)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000001d0 (
    .I0(sig00000093),
    .O(sig000001b1)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000001d1 (
    .I0(sig00000091),
    .O(sig000001b2)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000001d2 (
    .I0(sig0000008f),
    .O(sig000001b3)
  );
  LUT3 #(
    .INIT ( 8'h09 ))
  blk000001d3 (
    .I0(sig00000052),
    .I1(sig0000004d),
    .I2(sig000000d5),
    .O(sig0000000a)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk000001d4 (
    .I0(sig0000008b),
    .I1(sig00000126),
    .I2(sig00000013),
    .I3(sig00000011),
    .O(sig0000003a)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk000001d5 (
    .I0(sig0000008b),
    .I1(sig00000126),
    .I2(sig00000014),
    .I3(sig00000012),
    .O(sig0000003b)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  blk000001d6 (
    .I0(sig0000008b),
    .I1(sig00000126),
    .I2(sig00000012),
    .O(sig00000039)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  blk000001d7 (
    .I0(sig0000008b),
    .I1(sig00000126),
    .I2(sig00000011),
    .O(sig00000038)
  );
  LUT6 #(
    .INIT ( 64'h5410FEBA54105410 ))
  blk000001d8 (
    .I0(sig0000008b),
    .I1(sig00000126),
    .I2(sig00000015),
    .I3(sig00000013),
    .I4(sig00000125),
    .I5(sig00000011),
    .O(sig0000003c)
  );
  LUT6 #(
    .INIT ( 64'h5410FEBA54105410 ))
  blk000001d9 (
    .I0(sig0000008b),
    .I1(sig00000126),
    .I2(sig00000016),
    .I3(sig00000014),
    .I4(sig00000125),
    .I5(sig00000012),
    .O(sig0000003d)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk000001da (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig00000099),
    .I3(sig00000091),
    .O(sig0000002e)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk000001db (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig00000098),
    .I3(sig00000090),
    .O(sig0000002d)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk000001dc (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig00000097),
    .I3(sig0000008f),
    .O(sig0000002c)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk000001dd (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig00000096),
    .I3(sig0000008e),
    .O(sig0000002b)
  );
  LUT5 #(
    .INIT ( 32'hFEBA5410 ))
  blk000001de (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig000000a2),
    .I3(sig0000009a),
    .I4(sig00000092),
    .O(sig00000037)
  );
  LUT5 #(
    .INIT ( 32'hFEBA5410 ))
  blk000001df (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig000000a1),
    .I3(sig00000099),
    .I4(sig00000091),
    .O(sig00000036)
  );
  LUT5 #(
    .INIT ( 32'hFEBA5410 ))
  blk000001e0 (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig000000a0),
    .I3(sig00000098),
    .I4(sig00000090),
    .O(sig00000035)
  );
  LUT5 #(
    .INIT ( 32'hFEBA5410 ))
  blk000001e1 (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig0000009f),
    .I3(sig00000097),
    .I4(sig0000008f),
    .O(sig00000034)
  );
  LUT5 #(
    .INIT ( 32'hFEBA5410 ))
  blk000001e2 (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig0000009e),
    .I3(sig00000096),
    .I4(sig0000008e),
    .O(sig00000033)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk000001e3 (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig0000009d),
    .I3(sig00000095),
    .O(sig00000032)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk000001e4 (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig0000009c),
    .I3(sig00000094),
    .O(sig00000031)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk000001e5 (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig0000009b),
    .I3(sig00000093),
    .O(sig00000030)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk000001e6 (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig0000009a),
    .I3(sig00000092),
    .O(sig0000002f)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  blk000001e7 (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig00000095),
    .O(sig0000002a)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  blk000001e8 (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig00000094),
    .O(sig00000029)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  blk000001e9 (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig00000093),
    .O(sig00000028)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  blk000001ea (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig00000092),
    .O(sig00000027)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  blk000001eb (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig00000091),
    .O(sig00000026)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  blk000001ec (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig00000090),
    .O(sig00000025)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  blk000001ed (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig0000008f),
    .O(sig00000024)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  blk000001ee (
    .I0(sig0000008d),
    .I1(sig00000131),
    .I2(sig0000008e),
    .O(sig00000023)
  );
  INV   blk000001ef (
    .I(sig00000089),
    .O(sig0000000d)
  );
  INV   blk000001f0 (
    .I(sig00000088),
    .O(sig0000000e)
  );
  INV   blk000001f1 (
    .I(sig00000087),
    .O(sig0000000f)
  );
  INV   blk000001f2 (
    .I(sig00000086),
    .O(sig00000010)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk000001f3 (
    .A0(NlwRenamedSig_OI_result[0]),
    .A1(NlwRenamedSig_OI_result[0]),
    .A2(NlwRenamedSig_OI_result[0]),
    .A3(NlwRenamedSig_OI_result[0]),
    .CE(sig0000000c),
    .CLK(clk),
    .D(sig00000085),
    .Q(sig000001b4),
    .Q15(NLW_blk000001f3_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001f4 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000001b4),
    .Q(sig000000d5)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk000001f5 (
    .A0(NlwRenamedSig_OI_result[0]),
    .A1(NlwRenamedSig_OI_result[0]),
    .A2(NlwRenamedSig_OI_result[0]),
    .A3(NlwRenamedSig_OI_result[0]),
    .CE(sig0000000c),
    .CLK(clk),
    .D(sig0000008d),
    .Q(sig000001b5),
    .Q15(NLW_blk000001f5_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001f6 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000001b5),
    .Q(sig00000089)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk000001f7 (
    .A0(NlwRenamedSig_OI_result[0]),
    .A1(NlwRenamedSig_OI_result[0]),
    .A2(sig0000000c),
    .A3(NlwRenamedSig_OI_result[0]),
    .CE(sig0000000c),
    .CLK(clk),
    .D(a[21]),
    .Q(sig000001b6),
    .Q15(NLW_blk000001f7_Q15_UNCONNECTED)
  );
  FDE   blk000001f8 (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000001b6),
    .Q(\U0/op_inst/FLT_PT_OP/FIX_TO_FLT_OP.SPD.OP/OP/sign_op )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk000001f9 (
    .A0(NlwRenamedSig_OI_result[0]),
    .A1(NlwRenamedSig_OI_result[0]),
    .A2(sig0000000c),
    .A3(NlwRenamedSig_OI_result[0]),
    .CE(sig0000000c),
    .CLK(clk),
    .D(operation_nd),
    .Q(sig000001b7),
    .Q15(NLW_blk000001f9_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001fa (
    .C(clk),
    .CE(sig0000000c),
    .D(sig000001b7),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY )
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

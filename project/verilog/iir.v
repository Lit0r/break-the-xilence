`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:54:18 11/17/2014 
// Design Name: 
// Module Name:    iir 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////




// adjustable filter!

// uses direct form I (see http://en.wikipedia.org/wiki/Digital_filter#Direct_Form_I)
/*module iir_general_template(
	input [sw-1:0] a[stages+1], 
	input [sw-1:0] b[stages+1], 
	input [aw-1:0] audio_in,
	output [aw-1:0] audio_out);
	
parameter aw = 18; // audio width
parameter sw = 18; // stage width
parameter stages = 2; // filter stages


//typedef wire[aw:0] audio;

wire [aw:0] bdelays_sm [stages+1];
wire [aw:0] adelays_sm [stages+1]; 
wire [aw:0] baddends_sm [stages+1]; 
wire [aw:0] aaddends_sm [stages+1]; 
wire [aw:0] csum_tc [stages+1];

assign bdelays_sm[0] = tc2sm(audio_in);
assign audio_out = aaddends_sm[0];
assign adelays_sm[0] = aaddends_sm[0];
assign aaddends_sm[0] = tc2sm(csum_tc[0] + sm2tc(baddends_sm[0]));

assign csum_tc[stages] = 0;

genvar i;
generate

for(i = 1; i < stages; i = i + 1) begin
register #(aw) regb (clk, rst_b, bdelays_sm[i-1], bdelays_sm[i], 1'b1);
attenuate #(aw,sw) attb (bdelays_sm[i], b[i], baddends_sm[i]);
assign csum_tc[i-1] = 
	sm2tc(baddends_sm[i])  
	- sm2tc(aaddends_sm[i])  
	+ csum_tc[i];
attenuate #(aw, sw) atta (adelays_sm[i], a[i], aaddends_sm[i]);
register #(aw) rega (clk, rst_b, adelays_sm[i-1], adelays_sm[i], 1'b1);




end

endgenerate	



endmodule:iir_general_template*/

// has 2 stages only

// still a direct form 1 realization


// MAKE SURE A1 AND A2 ARE NEGATED!!!!


module iir (
  input wire clk_slow,
  input wire clk_fast,
  //input rst_b,
  input wire [31:0] b0, b1, b2, a1, a2,
  input wire [23:0] audio_in,
  output wire [23:0] audio_out
  );



function [31:0] fp_n;
input [31:0] a;
begin
fp_n = {~a[31], a[30:0]};
end
endfunction









// creation of 'slower clock' by periodic
// register enable.
// because enough clock dividers already.
//reg reg_en;

wire reg_en;

/*always @(posedge clk_fast)
  if(reg_en)
    reg_en <= 0;
  else
    reg_en <= (counter == 0);
*/
// can't go any slower than 8 or tangent approximation error accumulates a bunch.
// actually you can totally get away with it, who am I kidding.
reg [6:0] counter;
wire [6:0] counter1;
assign counter1 = counter + 1;
always @(posedge clk_fast)
  if(counter1 == 80)
    counter <= 0;
  else
    counter <= counter1;

assign reg_en = (counter == 0);

// lots of wires :D

wire [23:0] inputQ, outputD;
wire [31:0] b0_in, b1_in, b2_in, a1_in, a2_in;
wire [31:0] b0_out, b1_out, b2_out, a1_out, a2_out;
wire [31:0] sum1, sum2, sum3, sum4;
 




// convert to float
fix2float tofp (
  .a(inputQ), // input [31 : 0] a
  .clk(clk_fast), // input clk
  .result(b0_in) // output [63 : 0] result
);

// registers
register #(24) regout1 (clk_fast, audio_in, inputQ, reg_en);

register #(32) tob1_ (clk_fast, b0_in, b1_in, reg_en);
register #(32) tob2_ (clk_fast, b1_in, b2_in, reg_en);
register #(32) toa1_ (clk_fast, sum4, a1_in, reg_en);
register #(32) toa2_ (clk_fast, a1_in, a2_in, reg_en);

register #(24) regout2 (clk_fast, outputD, audio_out, reg_en);

// multipliers


fp_mult_32_logic m_b0 (
  .a(b0), // input [63 : 0] a
  .b(b0_in), // input [63 : 0] b
//  .operation_nd(1'b1), // input operation_nd
//  .operation_rfd(), // output operation_rfd
  .clk(clk_fast), // input clk
  .result(b0_out) // output [63 : 0] result
//  .rdy() // output rdy
);

fp_mult_32_logic m_b1 (
  .a(b1), // input [63 : 0] a
  .b(b1_in), // input [63 : 0] b
//  .operation_nd(1'b1), // input operation_nd
//  .operation_rfd(), // output operation_rfd
  .clk(clk_fast), // input clk
  .result(b1_out) // output [63 : 0] result
//  .rdy() // output rdy
);

fp_mult_32_logic m_b2 (
  .a(b2), // input [63 : 0] a
  .b(b2_in), // input [63 : 0] b
//  .operation_nd(1'b1), // input operation_nd
//  .operation_rfd(), // output operation_rfd
  .clk(clk_fast), // input clk
  .result(b2_out) // output [63 : 0] result
//  .rdy() // output rdy
);

fp_mult_32_logic m_a1 (
  .a(fp_n(a1)), // input [63 : 0] a
  .b(a1_in), // input [63 : 0] b
//  .operation_nd(1'b1), // input operation_nd
//  .operation_rfd(), // output operation_rfd
  .clk(clk_fast), // input clk
  .result(a1_out) // output [63 : 0] result
//  .rdy() // output rdy
);

fp_mult_32_logic m_a2 (
  .a(fp_n(a2)), // input [63 : 0] a
  .b(a2_in), // input [63 : 0] b
//  .operation_nd(1'b1), // input operation_nd
//  .operation_rfd(), // output operation_rfd
  .clk(clk_fast), // input clk
  .result(a2_out) // output [63 : 0] result
//  .rdy() // output rdy
);

// adders

fp_add_32_logic s4 (
  .a(sum3), // input [63 : 0] a
  .b(b0_out), // input [63 : 0] b
  .clk(clk_fast), // input clk
  .result(sum4) // output [63 : 0] result
);
fp_add_32_logic s3 (
  .a(sum1), // input [63 : 0] a
  .b(sum2), // input [63 : 0] b
  .clk(clk_fast), // input clk
  .result(sum3) // output [63 : 0] result
);
fp_add_32_logic s2 (
  .a(a1_out), // input [63 : 0] a
  .b(b1_out), // input [63 : 0] b
  .clk(clk_fast), // input clk
  .result(sum1) // output [63 : 0] result
);
fp_add_32_logic s1 (
  .a(a2), // input [63 : 0] a
  .b(b2), // input [63 : 0] b
  .clk(clk_fast), // input clk
  .result(sum2) // output [63 : 0] result
);

// convert to int again
float2fixed fromfp (
  .a(sum4), // input [63 : 0] a
  .clk(clk_fast), // input clk
  .result(outputD) // output [31 : 0] result
);








endmodule




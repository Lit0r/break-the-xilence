`timescale 1ns / 1ps
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
module iir(
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
assign adelays_sm[0] = addends_sm[0];
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



endmodule

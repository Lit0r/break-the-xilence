`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:46 11/20/2014 
// Design Name: 
// Module Name:    notebank 
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
module notebank(
    input wire clk_slow,
    input wire clk_fast,
	 input wire rst_b,
	 input wire note_on,
	 input wire note_off,
	 input wire [22:0] period, 
	 input wire [17:0] fa, fb, fc, fd, ab, ac, 
	 input wire [31:0] x, y, z, // adjust sizes later	 
	 output reg [23:0] audio_out,
	 output wire done
    );

wire [41:0] audio_out0;

wire [23:0] sq_out, saw_out, gen_out;


// THIS CAN CHANGE! THERE IS HOPE!
wire sq = 1'b1;

// generators (mux?)
squaregen sqgen (
.clk(clk_fast),
.en(1'b1),
.period(period),
.tone(sq_out)
);
/*
sawgen saw (
.clk(clk_fast),
.en(1'b1),
.period(period),
.tone(saw_out)
);
*/
assign gen_out = sq_out;//sq ? sq_out : saw_out;


wire busy_f, done_f;
wire [17:0] engen_f_out;
/*
//filter, envelope
envelope_generator engen_f (
	.clk(clk_slow),
	.rst_b(rst_b),
	.note_on(note_on),
	.note_off(note_off), 
	.a(fa), 
	.b(fb), 
	.c(fc), 
	.d(fd), 
	.x(x), 
	.y(y), 
	.z(z), 
	.out_value(engen_f_out), 
	.busy(busy_f),
	.done(done_f)
	);
*/
wire coeff_done;
wire [31:0] b0, b1, b2, a1, a2;
wire [23:0] filter_out;

assign engen_f_out = fa;
// FILTER THING
//coefficients coef (clk_slow, clk_fast, engen_f_out, b0, b1, b2, a1, a2, coeff_done);

assign b0 = 32'h36B1FDEA; // LPF @ 440 hz
assign b1 = 32'h3731FDEA;
assign b2 = 32'h36B1FDEA;
assign a1 = 32'hBFFFD995;
assign a2 = 32'h3F7FB48D;



//iir
iir iir_stage (clk_slow, clk_fast, b0, b1, b2, a1, a2, gen_out, filter_out);



wire [17:0] engen_a_out;
wire done_a, busy_a;

//assign done = done_a;
assign done = note_off;

// amplitude envelope
/*
envelope_generator engen_a (
	.clk(clk_fast),
	.rst_b(rst_b),
	.note_on(note_on),
	.note_off(note_off), 
	.a(18'b0), 
	.b(ab), 
	.c(ac), 
	.d(18'b0), 
	.x(x), 
	.y(y), 
	.z(z), 
	.out_value(engen_a_out), 
	.busy(busy_a),
	.done(done_a)
	);
*/
//assign engen_a_out = filter_out;
// output
//assign audio_out0 = $signed({1'b0, engen_a_out} + 42'b0) * $signed(filter_out);
//assign audio_out0 = $signed({1'b0, engen_a_out}) * $signed(gen_out);
assign audio_out0[41:18] = filter_out;

always @(posedge clk_fast)
  audio_out = audio_out0[41:18];

endmodule
`default_nettype wire
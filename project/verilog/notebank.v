`timescale 1ns / 1ps
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
    input clk_slow,
    input clk_fast,
	 input rst_b,
	 input note_on,
	 input note_off,
	 input [31:0] period, fa, fb, fc, fd, ab, ac, x, y, z, // adjust sizes later	 
	 output [23:0] audio_out,
	 output done
    );

wire [41:0] audio_out0;

wire [23:0] sq_out, saw_out, gen_out;


// THIS CAN CHANGE! THERE IS HOPE!
wire sq = 1'b1;

// generators (mux?)
squaregen sq (
.clk(clk_fast),
.en(1'b1),
.period(period),
.tone(sq_out)
);

sawgen saw (
.clk(clk_fast),
.en(1'b1),
.period(period),
.tone(saw_out)
);

assign gen_out = sq ? sq_out : saw_out;


wire busy_f, done_f;
wire [17:0] engen_f_out;

//filter, envelope
envelope_generator engen_f (
	.clk(clk_fast),
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

wire coeff_done;
wire [63:0] b0, b1, b2, a1, a2;
wire [23:0] filter_out;


// FILTER THING
coefficients coef (clk_slow, clk_fast, engen_f_out, b0, b1, b2, a1, a2, coeff_done);

//iir
iir iir_stage (clk_slow, clk_fast, b0, b1, b2, a1, a2, gen_out, filter_out);

wire [17:0] engen_a_out;
wire done_a;

assign done = done_a;

// amplitude envelope
envelope_generator engen_a (
	.clk(clk_fast),
	.rst_b(rst_b),
	.note_on(note_on),
	.note_off(note_off), 
	.a(0), 
	.b(ab), 
	.c(ac), 
	.d(0), 
	.x(x), 
	.y(y), 
	.z(z), 
	.out_value(engen_a_out), 
	.busy(busy_a),
	.done(done_a)
	);


// output
assign audio_out0 = $signed({1'b0, engen_a_out}) * $signed(filter_out + 42'b0);

always @(posedge clk_calc)
  audio_out <= audio_out0[41:18];

endmodule

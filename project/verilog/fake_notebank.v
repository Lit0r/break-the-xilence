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
module fake_notebank(
    input wire clk_slow,
    input wire clk_fast,
	 input wire rst_b,
	 input wire note_on,
	 input wire note_off,
	 input wire [22:0] period, 
	 input wire [17:0] fa, fb, fc, fd, ab, ac, 
	 input wire [31:0] x, y, z, // adjust sizes later	 
	 output wire [23:0] audio_out,
	 output wire done,
	 input wire [7:0] duty
    );

wire [41:0] audio_out0;

wire [23:0] sq_out, saw_out, gen_out;


// THIS CAN CHANGE! THERE IS HOPE!
wire sq = 1'b1;
wire sqon;
// generators (mux?)

reg on = 0;

/*
squaregen sqgen (
.clk(clk_fast),
.en(on),
.period(period),
.tone(sq_out),
.on(sqon)
);
*/
pwmgen sqgen (
.clk(clk_slow),
.en(on),
.period(period),
.tone(sq_out),
.on(sqon),
.duty(duty)
);




wire on_n;
assign on_n = note_on ? 1 : note_off ? 0 : on;



	always @(posedge clk_slow) begin
  on <= on_n;
end

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
//wire coeff_done;
//wire [31:0] b0, b1, b2, a1, a2;
//wire [23:0] filter_out;

wire [17:0] engen_a_out;
wire done_a, busy_a;

assign done = done_a;
//assign done = note_off;

// amplitude envelope
/*
fake_envelope_generator engen_a (
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
//assign audio_out0 = $signed({1'b0, engen_a_out} + 42'b0) * $signed(gen_out);
//assign audio_out0[41:18] = filter_out;

//assign audio_out = {sqon ? engen_a_out : -engen_a_out, 6'b0};
//assign audio_out = {sqon ? engen_a_out : -engen_a_out, 6'b0};
//assign audio_out = gen_out;
assign audio_out = sqon ? {ab, 6'b0} : - {ab, 6'b0};


//always @(posedge clk_slow)
//  audio_out <= audio_out0[41:18];

endmodule
`default_nettype wire
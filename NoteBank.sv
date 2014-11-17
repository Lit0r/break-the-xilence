module note_bank(clk,en,rst_b,period,note_on,note_off, a, b, c, d, x, y, z, out_value, busy, done);
	parameter NOTEBANKID = 0;
	input clk,en,rst_b;
	input [25:0] period;
	input note_on, note_off;
	input [6:0] a, b, c, d;
	input [31:0] x, y, z;
	output reg [41:0] out;
	output reg busy,done;

 	reg [23:0] tone
 	reg [17:0] out_value
	envelope_generator env_gen(clk,rst_b,note_on,note_off, a, b, c, d, x, y, z, out_value, busy);
	squaregen tone_gen(clk, en, period, tone);

	assign out = tone * out_value;

endmodule: note_bank

module decoder (ins, o1, o2, o3, o4);

	output reg [11:0] o1, o2, o3, o4;
	input [15:0] ins;
	
	always @(*) begin
		case (ins[13:12])
			0: o1 = ins[11:0];
			1: o2 = ins[11:0];
			2: o3 = ins[11:0];
			3: o4 = ins[11:0];
		default: begin
				o1 = 0;
				o2 = 0;
				o3 = 0;
				o4 = 0; 
		end
		endcase
	end
endmodule
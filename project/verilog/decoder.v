
module decoder (ins, o1, o2, o3, o4);

	output reg [11:0] o1, o2, o3, o4;
	input [15:0] ins;
	
	always @(*) begin
		case (ins[13:12])
			0: begin
			o1 = ins[11:0];
			o2 = 0;
			o3 = 0;
			o4 = 0;
			end
			1: begin
			o1 = 0;
			o2 = ins[11:0];
			o3 = 0;
			o4 = 0;
			end
			2: begin
			o1 = 0;
			o2 = 0;
			o3 = ins[11:0];
			o4 = 0;
			end
			3: begin
			o1 = 0;
			o2 = 0;
			o3 = 0;
			o4 = ins[11:0];
			end
		default: begin
			o1 = 0;
			o2 = 0;
			o3 = 0;
			o4 = 0; 
		end
		endcase
	end
endmodule
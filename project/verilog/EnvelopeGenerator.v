module envelope_generator(clk,rst_b,note_on,note_off, a, b, c, d, x, y, z, out_value, busy,done);
	input clk, rst_b;
	input note_on, note_off;
	input [6:0] a, b, c, d;
	input [31:0] x, y, z;
	output reg [17:0] out_value;
	output reg busy, done;


	//typedef enum {IDLE,ATTACK,DECAY,SUSTAIN,RELEASE} estate;
	
	wire [4:0] IDLE    = 5'b00001;
	wire [4:0] ATTACK  = 5'b00010;
	wire [4:0] DECAY   = 5'b00100;
	wire [4:0] SUSTAIN = 5'b01000;
	wire [4:0] RELEASE = 5'b10000;
	
	reg [4:0] current, next;
	
	reg [17:0] riv; // relase state initial value
	
	
	reg [31:0] counter;
	wire [31:0] counter1;
	assign counter1 = counter + 1;

  	always@(posedge clk, negedge rst_b) begin
    	if(~rst_b) current <= IDLE;
    	else begin
			if(current != next) begin
				counter <= 0;
				if(next == RELEASE)
					riv <= out_value;
			end else
				counter <= counter1;
			current <= next;
		end
  	end	

  	//next state logic
  	always @* begin
  		done = 0;
		case(current)
  			IDLE: begin
  				if(note_on)
  					next = ATTACK;
  				else
  					next = IDLE;
  			end
  			ATTACK: begin
  				if(note_off)
					next = RELEASE;
				else if(counter1 >= x)
  					next = DECAY;
  				else
  					next = ATTACK;
  			end
  			DECAY: begin
  				if(note_off)
					next = RELEASE;
				else if(counter1 >= y) 
					next = SUSTAIN;
  				else
  					next = DECAY;
  			end
  			SUSTAIN: begin
  				if(note_off)
  					next = RELEASE;
  				else
  					next = SUSTAIN;
  			end
  			RELEASE: begin
  				if(counter1 >= z) begin
  					next = IDLE;
					done = 1'b1;
  				end else
  					next = RELEASE;
  			end
			default:
				next = IDLE;
  		endcase
  	end
	
	//reg [63:0] intermediate; // for calculations that'll overflow otherwise
	
	
  	//output logic
  	always @* begin
  		case(current)
  			IDLE:begin
  				out_value = a;
  				busy = 1'b0;
  			end
  			ATTACK:begin
  				out_value = $signed({1'b0, a}) + $signed({32'b0, counter}) * $signed(b - a) / $signed(x);
  				busy = 1'b1;
  			end
  			DECAY:begin
  				out_value = $signed({1'b0, b}) + $signed({32'b0, counter}) * $signed(c - b) / $signed(y);
  				busy = 1'b1;
  			end
  			SUSTAIN:begin
  				out_value = c;
  				busy = 1'b1;
  			end
  			RELEASE:begin
  				out_value = $signed({1'b0, riv}) + $signed({32'b0, counter}) * $signed(d - riv) / $signed(z);
  				busy = 1'b1;
  			end
  		endcase
  	end

endmodule:envelope_generator

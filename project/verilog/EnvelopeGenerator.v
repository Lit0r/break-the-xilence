module envelope_generator(clk,rst_b,note_on,note_off, a, b, c, d, x, y, z, out_value, busy);
	input clk, rst_b;
	input note_on, note_off;
	input [6:0] a, b, c, d;
	input [31:0] x, y, z;
	output reg [17:0] out_value;
	output reg busy;


	//typedef enum {IDLE,ATTACK,DECAY,SUSTAIN,RELEASE} estate;
	
	
	
	
	wire [4:0] IDLE    = 5'b00001;
	wire [4:0] ATTACK  = 5'b00010;
	wire [4:0] DECAY   = 5'b00100;
	wire [4:0] SUSTAIN = 5'b01000;
	wire [4:0] RELEASE = 5'b10000;
	
	reg [4:0] current, next;
	
	reg [31:0] counter, counter1;
	
	assign counter1 = counter +  1;

  	always@(posedge clk, negedge rst_b) begin
    	if(~rst_b) current <= IDLE;
    	else begin
			if(current != next)
				counter = 0;
			else
				counter = counter1;
			current <= next;
		end
  	end	

  	//next state logic
  	always @* begin
  		case(current)
  			IDLE: begin
  				if(note_on)
  					next = ATTACK;
  				else
  					next = IDLE;
  			end
  			ATTACK: begin
  				if(counter1 >= x)
  					next = DECAY;
  				else
  					next = ATTACK;
  			end
  			DECAY: begin
  				if(counter1 >= y) 
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
  				if(counter1 >= z)
  					next = IDLE;
  				else
  					next = RELEASE;
  			end
  		endcase
  	end

  	//output logic
  	always @* begin
  		case(current)
  			IDLE:begin
  				out_value = a;
  				busy = 1'b0;
  			end
  			ATTACK:begin
  				out_value = a + counter * (b - a) / x;
  				busy = 1'b1;
  			end
  			DECAY:begin
  				out_value = b + counter * (c - b) / y;
  				busy = 1'b1;
  			end
  			SUSTAIN:begin
  				out_value = c;
  				busy = 1'b1;
  			end
  			RELEASE:begin
  				out_value = c + counter * (d - c) / z;
  				busy = 1'b1;
  			end
  		endcase
  	end

endmodule:envelope_generator

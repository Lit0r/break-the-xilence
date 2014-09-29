

module simpletone (input clk, output reg [28:0] tone);
    logic[17:0] count = 0;
    
    always @(posedge clk)
        if(count >= 111709)
            count <= 0;
        else
            count <= count + 1;
    
    assign tone = (count > (111709/2)) ? 29'h7fffff : -(29'h7fffff);

    //assign tone = count << 6;



endmodule
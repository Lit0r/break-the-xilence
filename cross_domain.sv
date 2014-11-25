module Flag_CrossDomain(
    input clkA,
    input FlagIn_clkA, 
    input clkB,
    input ready_to_get_more_data,
    output FlagOut_clkB,
    output user_w_mydevice_full
);

// this changes level when the FlagIn_clkA is seen in clkA
reg FlagToggle_clkA;
always @(posedge clkA) FlagToggle_clkA <= FlagToggle_clkA ^ FlagIn_clkA;

// which can then be sync-ed to clkB
reg [2:0] SyncA_clkB;
always @(posedge clkB) SyncA_clkB <= {SyncA_clkB[1:0], FlagToggle_clkA};

// and recreate the flag in clkB
assign FlagOut_clkB = (SyncA_clkB[2] ^ SyncA_clkB[1]);

always @(posedge clkA)
  if (ready_to_get_more_data)
    user_w_mydevice_full <= 0; 
  else
    user_w_mydevice_full <= 1; 


endmodule
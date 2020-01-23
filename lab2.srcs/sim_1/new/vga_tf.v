`timescale 1ns / 1ps

module vga_tf;

reg clk = 0;
wire [9:0] x;
wire [8:0] y;
wire h_sync = 0;
wire v_sync = 0;
wire display = 0;

vga VGA( 
    .px_clk (clk),  
    .h_sync (h_sync),
    .v_sync (v_sync), 
    .x (x), 
    .y (y), 
    .display (display)
  );
  
 always #5 clk = ~clk;

endmodule

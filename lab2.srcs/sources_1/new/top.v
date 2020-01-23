`timescale 1ns / 1ps

module top (
    input CLK100MHZ,
    input btnC,
    input [1:0] sw,
    output Hsync, 
    output Vsync,
    output [3:0] vgaRed,
    output [3:0] vgaGreen,
    output [3:0] vgaBlue
    );

    wire px_clk;
    clk_wiz_0 pixel_clock (
        .clk_25M(px_clk),   
        .reset(btnC), 
        .clk_in1(CLK100MHZ)
      );
    
    wire [9:0] x;
    wire [8:0] y;
    wire display;
    
    vga VGA( 
        .px_clk (px_clk),  
        .h_sync (Hsync),
        .v_sync (Vsync), 
        .x (x), 
        .y (y), 
        .display (display)
      );
      
    wire [3:0] red;
    wire [3:0] green;
    wire [3:0] blue;
    color_blocks blocks(
        .x (x), .y (y), 
        .sel (sw), 
        .red (red), 
        .green (green),
        .blue (blue)
    );
    
    assign vgaRed   = display ? red   : 4'b0000;
    assign vgaGreen = display ? green : 4'b0000;
    assign vgaBlue  = display ? blue  : 4'b0000;
      
endmodule

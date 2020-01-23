`timescale 1ns / 1ps

module vga(
    input px_clk, // should be 25Mhz
    input reset,
    output h_sync,
    output v_sync,
    output [9:0] x,
    output [8:0] y,
    output display 
    );

    // Horizontal timings (in pixels)
    localparam H_DISP_PX = 640; 
    localparam H_F_PORCH = 16; 
    localparam H_SYNC_PX = 96;  
    localparam H_B_PORCH = 48;  
    
    localparam LINEW = H_DISP_PX + H_F_PORCH + H_SYNC_PX + H_B_PORCH;
    
    // Vertical timings
    localparam V_DISP_LN = 480;
    localparam V_F_PORCH = 10;
    localparam V_SYNC_LN = 2;
    localparam V_B_PORCH = 33;
    
    localparam SCREENH = V_DISP_LN + V_F_PORCH + V_SYNC_LN + V_B_PORCH;
    
    // We need 10 bit counters to hold both a horizontal (800) and veritcal (525) line 
    reg [9:0] h_count;
    reg [9:0] v_count;
    
    // 0 on the counters lines up with the start of the display, so we have 
    //   VIDEO  FRONT_PORCH SYNC  BACK_PORCH
    localparam H_SYNC_STR = H_DISP_PX + H_F_PORCH - 1;
    localparam H_SYNC_END = H_SYNC_STR + H_SYNC_PX;
    assign h_sync = (h_count >= H_SYNC_STR) & (h_count < H_SYNC_END);
    
    localparam V_SYNC_STR = V_DISP_LN + V_F_PORCH - 1;
    localparam V_SYNC_END = V_SYNC_STR + V_SYNC_LN;
    assign v_sync = (v_count >= V_SYNC_STR) & (v_count < V_SYNC_END);
    
    assign display = (h_count < H_DISP_PX) & (v_count < V_DISP_LN);
    
    assign x = display ? h_count : 0;
    assign y = display ? v_count : 0;
    
    always @ (posedge px_clk)
    begin
        if (reset) begin
            h_count <= 0;
            v_count <= 0;
        end
        
        if (h_count < LINEW) begin
            h_count <= h_count + 1;
        end
        else begin
            h_count <= 0;
            v_count <= v_count + 1;
        end

        if (v_count == SCREENH) begin
            v_count <= 0;
        end
    end
    
endmodule
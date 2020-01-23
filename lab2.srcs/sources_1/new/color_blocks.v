module color_blocks(
    input [9:0] x,
    input [8:0] y,
    input [1:0] sel,
    output reg [3:0] red,
    output reg [3:0] green,
    output reg [3:0] blue
    );
    
    always @(*) begin
        case (sel)
            2'b00 : begin // completely blue
                        red   <= 4'b0000;
                        green <= 4'b0000;
                        blue  <= 4'b1111;
                    end
            2'b01 : begin // 16px vertical bars of yellow/orange 
                        red <= 4'b1111;
                        green[3] <= x[3];
                        green[2:0] <= 3'b111;
                        blue <= 4'b0000;
                    end
            2'b10 : begin // 128x128 green block in bottom left
                        red   <= 4'b0000;
                        green <= (x < 128 & y > (480 - 128)) ? 4'b1111 : 4'b0000;
                        blue  <= 4'b0000;                             
                    end
            2'b11 : begin // 32x32 white block in bottom right
                        red   <= (x > (640 - 32) & y > (480 - 32)) ? 4'b1111 : 4'b0000;
                        green <= (x > (640 - 32) & y > (480 - 32)) ? 4'b1111 : 4'b0000;
                        blue  <= (x > (640 - 32) & y > (480 - 32)) ? 4'b1111 : 4'b0000;
                    end
        endcase
    end
endmodule

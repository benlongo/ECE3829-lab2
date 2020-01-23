// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Jan 21 19:43:09 2020
// Host        : DESKTOP-T9G08FC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/benlo/lab2/lab2.sim/sim_1/synth/func/xsim/vga_tf_func_synth.v
// Design      : vga
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* H_B_PORCH = "48" *) (* H_DISP_PX = "640" *) (* H_F_PORCH = "16" *) 
(* H_SYNC_END = "751" *) (* H_SYNC_PX = "96" *) (* H_SYNC_STR = "655" *) 
(* LINEW = "800" *) (* SCREENH = "525" *) (* V_B_PORCH = "33" *) 
(* V_DISP_LN = "480" *) (* V_F_PORCH = "10" *) (* V_SYNC_END = "491" *) 
(* V_SYNC_LN = "2" *) (* V_SYNC_STR = "489" *) 
(* NotValidForBitStream *)
module vga
   (px_clk,
    reset,
    h_sync,
    v_sync,
    x,
    y,
    display);
  input px_clk;
  input reset;
  output h_sync;
  output v_sync;
  output [9:0]x;
  output [8:0]y;
  output display;

  wire clear;
  wire display;
  wire display_OBUF;
  wire \h_count[0]_i_1_n_0 ;
  wire \h_count[8]_i_2_n_0 ;
  wire \h_count[9]_i_3_n_0 ;
  wire [9:0]h_count_reg;
  wire h_sync;
  wire h_sync_OBUF;
  wire h_sync_OBUF_inst_i_2_n_0;
  wire [9:1]p_0_in;
  wire px_clk;
  wire px_clk_IBUF;
  wire px_clk_IBUF_BUFG;
  wire reset;
  wire reset_IBUF;
  wire v_count;
  wire \v_count[0]_i_1_n_0 ;
  wire \v_count[1]_i_1_n_0 ;
  wire \v_count[2]_i_1_n_0 ;
  wire \v_count[2]_i_2_n_0 ;
  wire \v_count[3]_i_1_n_0 ;
  wire \v_count[4]_i_1_n_0 ;
  wire \v_count[5]_i_1_n_0 ;
  wire \v_count[6]_i_1_n_0 ;
  wire \v_count[7]_i_1_n_0 ;
  wire \v_count[8]_i_1_n_0 ;
  wire \v_count[8]_i_2_n_0 ;
  wire \v_count[9]_i_2_n_0 ;
  wire \v_count[9]_i_3_n_0 ;
  wire \v_count[9]_i_4_n_0 ;
  wire \v_count[9]_i_5_n_0 ;
  wire \v_count[9]_i_6_n_0 ;
  wire \v_count[9]_i_7_n_0 ;
  wire \v_count_reg_n_0_[0] ;
  wire \v_count_reg_n_0_[1] ;
  wire \v_count_reg_n_0_[2] ;
  wire \v_count_reg_n_0_[3] ;
  wire \v_count_reg_n_0_[4] ;
  wire \v_count_reg_n_0_[5] ;
  wire \v_count_reg_n_0_[6] ;
  wire \v_count_reg_n_0_[7] ;
  wire \v_count_reg_n_0_[8] ;
  wire \v_count_reg_n_0_[9] ;
  wire v_sync;
  wire v_sync_OBUF;
  wire v_sync_OBUF_inst_i_2_n_0;
  wire v_sync_OBUF_inst_i_3_n_0;
  wire [9:0]x;
  wire [9:0]x_OBUF;
  wire [8:0]y;
  wire [8:0]y_OBUF;

  OBUF display_OBUF_inst
       (.I(display_OBUF),
        .O(display));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01010111)) 
    display_OBUF_inst_i_1
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .O(display_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_count[0]_i_1 
       (.I0(h_count_reg[0]),
        .O(\h_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[1]_i_1 
       (.I0(h_count_reg[1]),
        .I1(h_count_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \h_count[2]_i_1 
       (.I0(h_count_reg[2]),
        .I1(h_count_reg[1]),
        .I2(h_count_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_count[3]_i_1 
       (.I0(h_count_reg[0]),
        .I1(h_count_reg[1]),
        .I2(h_count_reg[2]),
        .I3(h_count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_count[4]_i_1 
       (.I0(h_count_reg[4]),
        .I1(h_count_reg[0]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[2]),
        .I4(h_count_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_count[5]_i_1 
       (.I0(h_count_reg[5]),
        .I1(h_count_reg[3]),
        .I2(h_count_reg[2]),
        .I3(h_count_reg[1]),
        .I4(h_count_reg[0]),
        .I5(h_count_reg[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_count[6]_i_1 
       (.I0(h_count_reg[6]),
        .I1(h_count_reg[4]),
        .I2(\h_count[8]_i_2_n_0 ),
        .I3(h_count_reg[5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_count[7]_i_1 
       (.I0(h_count_reg[7]),
        .I1(h_count_reg[5]),
        .I2(h_count_reg[6]),
        .I3(h_count_reg[4]),
        .I4(\h_count[8]_i_2_n_0 ),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_count[8]_i_1 
       (.I0(h_count_reg[8]),
        .I1(\h_count[8]_i_2_n_0 ),
        .I2(h_count_reg[4]),
        .I3(h_count_reg[6]),
        .I4(h_count_reg[5]),
        .I5(h_count_reg[7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \h_count[8]_i_2 
       (.I0(h_count_reg[3]),
        .I1(h_count_reg[2]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[0]),
        .O(\h_count[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \h_count[9]_i_1 
       (.I0(h_count_reg[5]),
        .I1(h_count_reg[6]),
        .I2(h_count_reg[7]),
        .I3(h_count_reg[9]),
        .I4(h_count_reg[8]),
        .O(clear));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_count[9]_i_2 
       (.I0(h_count_reg[9]),
        .I1(h_count_reg[7]),
        .I2(h_count_reg[5]),
        .I3(h_count_reg[6]),
        .I4(\h_count[9]_i_3_n_0 ),
        .I5(h_count_reg[8]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \h_count[9]_i_3 
       (.I0(h_count_reg[4]),
        .I1(h_count_reg[0]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[2]),
        .I4(h_count_reg[3]),
        .O(\h_count[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[0] 
       (.C(px_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\h_count[0]_i_1_n_0 ),
        .Q(h_count_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[1] 
       (.C(px_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(h_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[2] 
       (.C(px_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(h_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[3] 
       (.C(px_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(h_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[4] 
       (.C(px_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(h_count_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[5] 
       (.C(px_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(h_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[6] 
       (.C(px_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(h_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[7] 
       (.C(px_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(h_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[8] 
       (.C(px_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(h_count_reg[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[9] 
       (.C(px_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(h_count_reg[9]),
        .R(clear));
  OBUF h_sync_OBUF_inst
       (.I(h_sync_OBUF),
        .O(h_sync));
  LUT6 #(
    .INIT(64'h007E000000000000)) 
    h_sync_OBUF_inst_i_1
       (.I0(h_count_reg[6]),
        .I1(h_count_reg[5]),
        .I2(h_sync_OBUF_inst_i_2_n_0),
        .I3(h_count_reg[8]),
        .I4(h_count_reg[9]),
        .I5(h_count_reg[7]),
        .O(h_sync_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    h_sync_OBUF_inst_i_2
       (.I0(h_count_reg[4]),
        .I1(h_count_reg[0]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[2]),
        .I4(h_count_reg[3]),
        .O(h_sync_OBUF_inst_i_2_n_0));
  BUFG px_clk_IBUF_BUFG_inst
       (.I(px_clk_IBUF),
        .O(px_clk_IBUF_BUFG));
  IBUF px_clk_IBUF_inst
       (.I(px_clk),
        .O(px_clk_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  LUT6 #(
    .INIT(64'h0000000088888880)) 
    \v_count[0]_i_1 
       (.I0(h_count_reg[8]),
        .I1(h_count_reg[9]),
        .I2(h_count_reg[7]),
        .I3(h_count_reg[6]),
        .I4(h_count_reg[5]),
        .I5(\v_count_reg_n_0_[0] ),
        .O(\v_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \v_count[1]_i_1 
       (.I0(\v_count[2]_i_2_n_0 ),
        .I1(clear),
        .I2(\v_count_reg_n_0_[1] ),
        .I3(\v_count_reg_n_0_[0] ),
        .O(\v_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h04CC4088)) 
    \v_count[2]_i_1 
       (.I0(\v_count[2]_i_2_n_0 ),
        .I1(clear),
        .I2(\v_count_reg_n_0_[1] ),
        .I3(\v_count_reg_n_0_[0] ),
        .I4(\v_count_reg_n_0_[2] ),
        .O(\v_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \v_count[2]_i_2 
       (.I0(\v_count[9]_i_6_n_0 ),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(\v_count_reg_n_0_[2] ),
        .I3(\v_count_reg_n_0_[1] ),
        .I4(\v_count_reg_n_0_[7] ),
        .I5(\v_count_reg_n_0_[6] ),
        .O(\v_count[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \v_count[3]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(\v_count_reg_n_0_[0] ),
        .I2(\v_count_reg_n_0_[1] ),
        .I3(\v_count_reg_n_0_[2] ),
        .I4(\v_count_reg_n_0_[3] ),
        .O(\v_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_count[4]_i_1 
       (.I0(\v_count_reg_n_0_[4] ),
        .I1(\v_count_reg_n_0_[3] ),
        .I2(\v_count_reg_n_0_[0] ),
        .I3(\v_count_reg_n_0_[1] ),
        .I4(\v_count_reg_n_0_[2] ),
        .O(\v_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_count[5]_i_1 
       (.I0(\v_count_reg_n_0_[5] ),
        .I1(\v_count_reg_n_0_[2] ),
        .I2(\v_count_reg_n_0_[1] ),
        .I3(\v_count_reg_n_0_[0] ),
        .I4(\v_count_reg_n_0_[3] ),
        .I5(\v_count_reg_n_0_[4] ),
        .O(\v_count[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \v_count[6]_i_1 
       (.I0(\v_count_reg_n_0_[6] ),
        .I1(\v_count[9]_i_5_n_0 ),
        .I2(\v_count_reg_n_0_[5] ),
        .O(\v_count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \v_count[7]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(\v_count[9]_i_5_n_0 ),
        .I2(\v_count_reg_n_0_[5] ),
        .I3(\v_count_reg_n_0_[6] ),
        .I4(\v_count_reg_n_0_[7] ),
        .O(\v_count[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF08)) 
    \v_count[8]_i_1 
       (.I0(\v_count[9]_i_3_n_0 ),
        .I1(\v_count_reg_n_0_[0] ),
        .I2(\v_count_reg_n_0_[6] ),
        .I3(reset_IBUF),
        .I4(clear),
        .O(\v_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_count[8]_i_2 
       (.I0(\v_count_reg_n_0_[8] ),
        .I1(\v_count[9]_i_5_n_0 ),
        .I2(\v_count_reg_n_0_[5] ),
        .I3(\v_count_reg_n_0_[6] ),
        .I4(\v_count_reg_n_0_[7] ),
        .O(\v_count[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFEEEEEE)) 
    \v_count[9]_i_1 
       (.I0(clear),
        .I1(reset_IBUF),
        .I2(\v_count_reg_n_0_[6] ),
        .I3(\v_count_reg_n_0_[0] ),
        .I4(\v_count[9]_i_3_n_0 ),
        .O(v_count));
  LUT4 #(
    .INIT(16'h2A80)) 
    \v_count[9]_i_2 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(v_sync_OBUF_inst_i_3_n_0),
        .I2(\v_count[9]_i_5_n_0 ),
        .I3(\v_count_reg_n_0_[9] ),
        .O(\v_count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \v_count[9]_i_3 
       (.I0(\v_count_reg_n_0_[7] ),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(\v_count_reg_n_0_[2] ),
        .I3(\v_count_reg_n_0_[9] ),
        .I4(\v_count[9]_i_6_n_0 ),
        .O(\v_count[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFDFDF00000000)) 
    \v_count[9]_i_4 
       (.I0(\v_count_reg_n_0_[0] ),
        .I1(\v_count[9]_i_6_n_0 ),
        .I2(\v_count[9]_i_7_n_0 ),
        .I3(\v_count_reg_n_0_[7] ),
        .I4(\v_count_reg_n_0_[6] ),
        .I5(clear),
        .O(\v_count[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \v_count[9]_i_5 
       (.I0(\v_count_reg_n_0_[4] ),
        .I1(\v_count_reg_n_0_[3] ),
        .I2(\v_count_reg_n_0_[0] ),
        .I3(\v_count_reg_n_0_[1] ),
        .I4(\v_count_reg_n_0_[2] ),
        .O(\v_count[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \v_count[9]_i_6 
       (.I0(\v_count_reg_n_0_[3] ),
        .I1(\v_count_reg_n_0_[4] ),
        .I2(\v_count_reg_n_0_[5] ),
        .I3(\v_count_reg_n_0_[8] ),
        .O(\v_count[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \v_count[9]_i_7 
       (.I0(\v_count_reg_n_0_[9] ),
        .I1(\v_count_reg_n_0_[2] ),
        .I2(\v_count_reg_n_0_[1] ),
        .I3(\v_count_reg_n_0_[7] ),
        .O(\v_count[9]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[0] 
       (.C(px_clk_IBUF_BUFG),
        .CE(v_count),
        .D(\v_count[0]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[1] 
       (.C(px_clk_IBUF_BUFG),
        .CE(v_count),
        .D(\v_count[1]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[2] 
       (.C(px_clk_IBUF_BUFG),
        .CE(v_count),
        .D(\v_count[2]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[3] 
       (.C(px_clk_IBUF_BUFG),
        .CE(v_count),
        .D(\v_count[3]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[4] 
       (.C(px_clk_IBUF_BUFG),
        .CE(v_count),
        .D(\v_count[4]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[4] ),
        .R(\v_count[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[5] 
       (.C(px_clk_IBUF_BUFG),
        .CE(v_count),
        .D(\v_count[5]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[5] ),
        .R(\v_count[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[6] 
       (.C(px_clk_IBUF_BUFG),
        .CE(v_count),
        .D(\v_count[6]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[6] ),
        .R(\v_count[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[7] 
       (.C(px_clk_IBUF_BUFG),
        .CE(v_count),
        .D(\v_count[7]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[8] 
       (.C(px_clk_IBUF_BUFG),
        .CE(v_count),
        .D(\v_count[8]_i_2_n_0 ),
        .Q(\v_count_reg_n_0_[8] ),
        .R(\v_count[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[9] 
       (.C(px_clk_IBUF_BUFG),
        .CE(v_count),
        .D(\v_count[9]_i_2_n_0 ),
        .Q(\v_count_reg_n_0_[9] ),
        .R(1'b0));
  OBUF v_sync_OBUF_inst
       (.I(v_sync_OBUF),
        .O(v_sync));
  LUT6 #(
    .INIT(64'h0001010000000000)) 
    v_sync_OBUF_inst_i_1
       (.I0(\v_count_reg_n_0_[9] ),
        .I1(v_sync_OBUF_inst_i_2_n_0),
        .I2(\v_count_reg_n_0_[2] ),
        .I3(\v_count_reg_n_0_[0] ),
        .I4(\v_count_reg_n_0_[1] ),
        .I5(v_sync_OBUF_inst_i_3_n_0),
        .O(v_sync_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    v_sync_OBUF_inst_i_2
       (.I0(\v_count_reg_n_0_[4] ),
        .I1(\v_count_reg_n_0_[3] ),
        .O(v_sync_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    v_sync_OBUF_inst_i_3
       (.I0(\v_count_reg_n_0_[5] ),
        .I1(\v_count_reg_n_0_[6] ),
        .I2(\v_count_reg_n_0_[7] ),
        .I3(\v_count_reg_n_0_[8] ),
        .O(v_sync_OBUF_inst_i_3_n_0));
  OBUF \x_OBUF[0]_inst 
       (.I(x_OBUF[0]),
        .O(x[0]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \x_OBUF[0]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(h_count_reg[0]),
        .O(x_OBUF[0]));
  OBUF \x_OBUF[1]_inst 
       (.I(x_OBUF[1]),
        .O(x[1]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \x_OBUF[1]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(h_count_reg[1]),
        .O(x_OBUF[1]));
  OBUF \x_OBUF[2]_inst 
       (.I(x_OBUF[2]),
        .O(x[2]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \x_OBUF[2]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(h_count_reg[2]),
        .O(x_OBUF[2]));
  OBUF \x_OBUF[3]_inst 
       (.I(x_OBUF[3]),
        .O(x[3]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \x_OBUF[3]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(h_count_reg[3]),
        .O(x_OBUF[3]));
  OBUF \x_OBUF[4]_inst 
       (.I(x_OBUF[4]),
        .O(x[4]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \x_OBUF[4]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(h_count_reg[4]),
        .O(x_OBUF[4]));
  OBUF \x_OBUF[5]_inst 
       (.I(x_OBUF[5]),
        .O(x[5]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \x_OBUF[5]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(h_count_reg[5]),
        .O(x_OBUF[5]));
  OBUF \x_OBUF[6]_inst 
       (.I(x_OBUF[6]),
        .O(x[6]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \x_OBUF[6]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(h_count_reg[6]),
        .O(x_OBUF[6]));
  OBUF \x_OBUF[7]_inst 
       (.I(x_OBUF[7]),
        .O(x[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \x_OBUF[7]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .O(x_OBUF[7]));
  OBUF \x_OBUF[8]_inst 
       (.I(x_OBUF[8]),
        .O(x[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \x_OBUF[8]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[8]),
        .O(x_OBUF[8]));
  OBUF \x_OBUF[9]_inst 
       (.I(x_OBUF[9]),
        .O(x[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \x_OBUF[9]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .O(x_OBUF[9]));
  OBUF \y_OBUF[0]_inst 
       (.I(y_OBUF[0]),
        .O(y[0]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \y_OBUF[0]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(\v_count_reg_n_0_[0] ),
        .O(y_OBUF[0]));
  OBUF \y_OBUF[1]_inst 
       (.I(y_OBUF[1]),
        .O(y[1]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \y_OBUF[1]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(\v_count_reg_n_0_[1] ),
        .O(y_OBUF[1]));
  OBUF \y_OBUF[2]_inst 
       (.I(y_OBUF[2]),
        .O(y[2]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \y_OBUF[2]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(\v_count_reg_n_0_[2] ),
        .O(y_OBUF[2]));
  OBUF \y_OBUF[3]_inst 
       (.I(y_OBUF[3]),
        .O(y[3]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \y_OBUF[3]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(\v_count_reg_n_0_[3] ),
        .O(y_OBUF[3]));
  OBUF \y_OBUF[4]_inst 
       (.I(y_OBUF[4]),
        .O(y[4]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \y_OBUF[4]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(\v_count_reg_n_0_[4] ),
        .O(y_OBUF[4]));
  OBUF \y_OBUF[5]_inst 
       (.I(y_OBUF[5]),
        .O(y[5]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \y_OBUF[5]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(\v_count_reg_n_0_[5] ),
        .O(y_OBUF[5]));
  OBUF \y_OBUF[6]_inst 
       (.I(y_OBUF[6]),
        .O(y[6]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \y_OBUF[6]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(\v_count_reg_n_0_[6] ),
        .O(y_OBUF[6]));
  OBUF \y_OBUF[7]_inst 
       (.I(y_OBUF[7]),
        .O(y[7]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \y_OBUF[7]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(\v_count_reg_n_0_[7] ),
        .O(y_OBUF[7]));
  OBUF \y_OBUF[8]_inst 
       (.I(y_OBUF[8]),
        .O(y[8]));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    \y_OBUF[8]_inst_i_1 
       (.I0(v_sync_OBUF_inst_i_3_n_0),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(\v_count_reg_n_0_[8] ),
        .O(y_OBUF[8]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

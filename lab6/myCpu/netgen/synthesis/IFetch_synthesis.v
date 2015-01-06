////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.70d
//  \   \         Application: netgen
//  /   /         Filename: IFetch_synthesis.v
// /___/   /\     Timestamp: Sat Dec  6 13:37:03 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim IFetch.ngc IFetch_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: IFetch.ngc
// Output file	: /home/wu/ise12.3/lab6/myCpu/netgen/synthesis/IFetch_synthesis.v
// # of Modules	: 1
// Design Name	: IFetch
// Xilinx        : /opt/Xilinx/12.3/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module IFetch (
  clock, enable, reset, start, dWE, dDataIn, iDataIn, ySelect, dAddr, iAddr, dDataOut, y
);
  input clock;
  input enable;
  input reset;
  input start;
  output dWE;
  input [15 : 0] dDataIn;
  input [15 : 0] iDataIn;
  input [3 : 0] ySelect;
  output [7 : 0] dAddr;
  output [7 : 0] iAddr;
  output [15 : 0] dDataOut;
  output [15 : 0] y;
  wire dDataIn_15_IBUF_0;
  wire dDataIn_14_IBUF_1;
  wire dDataIn_13_IBUF_2;
  wire dDataIn_12_IBUF_3;
  wire dDataIn_11_IBUF_4;
  wire dDataIn_10_IBUF_5;
  wire dDataIn_9_IBUF_6;
  wire dDataIn_8_IBUF_7;
  wire dDataIn_7_IBUF_8;
  wire dDataIn_6_IBUF_9;
  wire dDataIn_5_IBUF_10;
  wire dDataIn_4_IBUF_11;
  wire dDataIn_3_IBUF_12;
  wire dDataIn_2_IBUF_13;
  wire dDataIn_1_IBUF_14;
  wire dDataIn_0_IBUF_15;
  wire iDataIn_15_IBUF_16;
  wire iDataIn_14_IBUF_17;
  wire iDataIn_13_IBUF_18;
  wire iDataIn_12_IBUF_19;
  wire iDataIn_11_IBUF_20;
  wire iDataIn_10_IBUF_21;
  wire iDataIn_9_IBUF_22;
  wire iDataIn_8_IBUF_23;
  wire iDataIn_7_IBUF_24;
  wire iDataIn_6_IBUF_25;
  wire iDataIn_5_IBUF_26;
  wire iDataIn_4_IBUF_27;
  wire iDataIn_3_IBUF_28;
  wire iDataIn_2_IBUF_29;
  wire iDataIn_1_IBUF_30;
  wire iDataIn_0_IBUF_31;
  wire clock_BUFGP_32;
  wire enable_IBUF_33;
  wire reset_IBUF_34;
  wire start_IBUF_35;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<15> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<14> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<13> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<12> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<11> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<10> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<9> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<8> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<7> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<6> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<5> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<4> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<3> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<2> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<1> ;
  wire \regC[15]_dDataIn[15]_mux_67_OUT<0> ;
  wire state_68;
  wire \idIr[10]_read_port_26_OUT<15> ;
  wire \idIr[10]_read_port_26_OUT<14> ;
  wire \idIr[10]_read_port_26_OUT<13> ;
  wire \idIr[10]_read_port_26_OUT<12> ;
  wire \idIr[10]_read_port_26_OUT<11> ;
  wire \idIr[10]_read_port_26_OUT<10> ;
  wire \idIr[10]_read_port_26_OUT<9> ;
  wire \idIr[10]_read_port_26_OUT<8> ;
  wire \idIr[10]_read_port_26_OUT<7> ;
  wire \idIr[10]_read_port_26_OUT<6> ;
  wire \idIr[10]_read_port_26_OUT<5> ;
  wire \idIr[10]_read_port_26_OUT<4> ;
  wire \idIr[10]_read_port_26_OUT<3> ;
  wire \idIr[10]_read_port_26_OUT<2> ;
  wire \idIr[10]_read_port_26_OUT<1> ;
  wire \idIr[10]_read_port_26_OUT<0> ;
  wire \idIr[2]_read_port_29_OUT<15> ;
  wire \idIr[2]_read_port_29_OUT<14> ;
  wire \idIr[2]_read_port_29_OUT<13> ;
  wire \idIr[2]_read_port_29_OUT<12> ;
  wire \idIr[2]_read_port_29_OUT<11> ;
  wire \idIr[2]_read_port_29_OUT<10> ;
  wire \idIr[2]_read_port_29_OUT<9> ;
  wire \idIr[2]_read_port_29_OUT<8> ;
  wire \idIr[2]_read_port_29_OUT<7> ;
  wire \idIr[2]_read_port_29_OUT<6> ;
  wire \idIr[2]_read_port_29_OUT<5> ;
  wire \idIr[2]_read_port_29_OUT<4> ;
  wire \idIr[2]_read_port_29_OUT<3> ;
  wire \idIr[2]_read_port_29_OUT<2> ;
  wire \idIr[2]_read_port_29_OUT<1> ;
  wire \idIr[2]_read_port_29_OUT<0> ;
  wire nextState;
  wire \ALUo[15]_regA[15]_mux_50_OUT<15> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<14> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<13> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<12> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<11> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<10> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<9> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<8> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<7> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<6> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<5> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<4> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<3> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<2> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<1> ;
  wire \ALUo[15]_regA[15]_mux_50_OUT<0> ;
  wire \memIr[15]_GND_1_o_equal_67_o ;
  wire \idIr[15]_idIr[15]_OR_9_o ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<15> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<14> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<13> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<12> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<11> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<10> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<9> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<8> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<7> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<6> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<5> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<4> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<3> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<2> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<1> ;
  wire \idIr[2]_GND_1_o_mux_33_OUT<0> ;
  wire N1;
  wire \wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ;
  wire reset_inv;
  wire _n0148_inv;
  wire _n0156_inv;
  wire _n0162_inv;
  wire \exIr[15]_GND_1_o_equal_45_o_inv ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<0>_298 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<0>_299 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<1>_300 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<1>_301 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<2>_302 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<2>_303 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<3>_304 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<3>_305 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<4>_306 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<4>_307 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<5>_308 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<5>_309 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<6>_310 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<6>_311 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<7>_312 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<7>_313 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<8>_314 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<8>_315 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<9>_316 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<9>_317 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<10>_318 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<10>_319 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<11>_320 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<11>_321 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<12>_322 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<12>_323 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<13>_324 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<13>_325 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<14>_326 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<14>_327 ;
  wire \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<15>_328 ;
  wire N3;
  wire N5;
  wire N20;
  wire N22;
  wire \NLW_Mram_gr11_DOD<1>_UNCONNECTED ;
  wire \NLW_Mram_gr11_DOD<0>_UNCONNECTED ;
  wire \NLW_Mram_gr12_DOD<1>_UNCONNECTED ;
  wire \NLW_Mram_gr12_DOD<0>_UNCONNECTED ;
  wire \NLW_Mram_gr1_DOD<1>_UNCONNECTED ;
  wire \NLW_Mram_gr1_DOD<0>_UNCONNECTED ;
  wire \NLW_Mram_gr3_DOD<1>_UNCONNECTED ;
  wire \NLW_Mram_gr3_DOD<0>_UNCONNECTED ;
  wire \NLW_Mram_gr21_DOD<1>_UNCONNECTED ;
  wire \NLW_Mram_gr21_DOD<0>_UNCONNECTED ;
  wire \NLW_Mram_gr22_DOD<1>_UNCONNECTED ;
  wire \NLW_Mram_gr22_DOD<0>_UNCONNECTED ;
  wire NLW_Mram_gr131_SPO_UNCONNECTED;
  wire NLW_Mram_gr132_SPO_UNCONNECTED;
  wire NLW_Mram_gr133_SPO_UNCONNECTED;
  wire NLW_Mram_gr42_SPO_UNCONNECTED;
  wire NLW_Mram_gr134_SPO_UNCONNECTED;
  wire NLW_Mram_gr41_SPO_UNCONNECTED;
  wire NLW_Mram_gr43_SPO_UNCONNECTED;
  wire NLW_Mram_gr44_SPO_UNCONNECTED;
  wire NLW_Mram_gr231_SPO_UNCONNECTED;
  wire NLW_Mram_gr232_SPO_UNCONNECTED;
  wire NLW_Mram_gr233_SPO_UNCONNECTED;
  wire NLW_Mram_gr234_SPO_UNCONNECTED;
  wire [15 : 0] idIr;
  wire [15 : 0] smdr;
  wire [15 : 0] regB;
  wire [15 : 0] regA;
  wire [15 : 8] exIr;
  wire [15 : 0] smdr1;
  wire [15 : 0] ALUo;
  wire [15 : 0] regC;
  wire [15 : 8] memIr;
  wire [15 : 0] regC1;
  wire [15 : 8] wbIr;
  wire [15 : 0] \PWR_1_o?gr[@_n0128] ;
  wire [6 : 4] _n0128;
  GND   XST_GND (
    .G(N1)
  );
  FDR   state (
    .C(clock_BUFGP_32),
    .D(nextState),
    .R(reset_inv),
    .Q(state_68)
  );
  FDCE   idIr_0 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_0_IBUF_31),
    .Q(idIr[0])
  );
  FDCE   idIr_1 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_1_IBUF_30),
    .Q(idIr[1])
  );
  FDCE   idIr_2 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_2_IBUF_29),
    .Q(idIr[2])
  );
  FDCE   idIr_3 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_3_IBUF_28),
    .Q(idIr[3])
  );
  FDCE   idIr_4 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_4_IBUF_27),
    .Q(idIr[4])
  );
  FDCE   idIr_5 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_5_IBUF_26),
    .Q(idIr[5])
  );
  FDCE   idIr_6 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_6_IBUF_25),
    .Q(idIr[6])
  );
  FDCE   idIr_7 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_7_IBUF_24),
    .Q(idIr[7])
  );
  FDCE   idIr_8 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_8_IBUF_23),
    .Q(idIr[8])
  );
  FDCE   idIr_9 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_9_IBUF_22),
    .Q(idIr[9])
  );
  FDCE   idIr_10 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_10_IBUF_21),
    .Q(idIr[10])
  );
  FDCE   idIr_11 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_11_IBUF_20),
    .Q(idIr[11])
  );
  FDCE   idIr_12 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_12_IBUF_19),
    .Q(idIr[12])
  );
  FDCE   idIr_13 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_13_IBUF_18),
    .Q(idIr[13])
  );
  FDCE   idIr_14 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_14_IBUF_17),
    .Q(idIr[14])
  );
  FDCE   idIr_15 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(iDataIn_15_IBUF_16),
    .Q(idIr[15])
  );
  FDCE   regB_0 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<0> ),
    .Q(regB[0])
  );
  FDCE   regB_1 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<1> ),
    .Q(regB[1])
  );
  FDCE   regB_2 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<2> ),
    .Q(regB[2])
  );
  FDCE   regB_3 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<3> ),
    .Q(regB[3])
  );
  FDCE   regB_4 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<4> ),
    .Q(regB[4])
  );
  FDCE   regB_5 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<5> ),
    .Q(regB[5])
  );
  FDCE   regB_6 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<6> ),
    .Q(regB[6])
  );
  FDCE   regB_7 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<7> ),
    .Q(regB[7])
  );
  FDCE   regB_8 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<8> ),
    .Q(regB[8])
  );
  FDCE   regB_9 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<9> ),
    .Q(regB[9])
  );
  FDCE   regB_10 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<10> ),
    .Q(regB[10])
  );
  FDCE   regB_11 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<11> ),
    .Q(regB[11])
  );
  FDCE   regB_12 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<12> ),
    .Q(regB[12])
  );
  FDCE   regB_13 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<13> ),
    .Q(regB[13])
  );
  FDCE   regB_14 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<14> ),
    .Q(regB[14])
  );
  FDCE   regB_15 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\idIr[2]_GND_1_o_mux_33_OUT<15> ),
    .Q(regB[15])
  );
  FDCE   regC1_0 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<0> ),
    .Q(regC1[0])
  );
  FDCE   regC1_1 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<1> ),
    .Q(regC1[1])
  );
  FDCE   regC1_2 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<2> ),
    .Q(regC1[2])
  );
  FDCE   regC1_3 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<3> ),
    .Q(regC1[3])
  );
  FDCE   regC1_4 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<4> ),
    .Q(regC1[4])
  );
  FDCE   regC1_5 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<5> ),
    .Q(regC1[5])
  );
  FDCE   regC1_6 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<6> ),
    .Q(regC1[6])
  );
  FDCE   regC1_7 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<7> ),
    .Q(regC1[7])
  );
  FDCE   regC1_8 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<8> ),
    .Q(regC1[8])
  );
  FDCE   regC1_9 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<9> ),
    .Q(regC1[9])
  );
  FDCE   regC1_10 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<10> ),
    .Q(regC1[10])
  );
  FDCE   regC1_11 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<11> ),
    .Q(regC1[11])
  );
  FDCE   regC1_12 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<12> ),
    .Q(regC1[12])
  );
  FDCE   regC1_13 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<13> ),
    .Q(regC1[13])
  );
  FDCE   regC1_14 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<14> ),
    .Q(regC1[14])
  );
  FDCE   regC1_15 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\regC[15]_dDataIn[15]_mux_67_OUT<15> ),
    .Q(regC1[15])
  );
  FDCE   exIr_8 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(idIr[8]),
    .Q(exIr[8])
  );
  FDCE   exIr_9 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(idIr[9]),
    .Q(exIr[9])
  );
  FDCE   exIr_10 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(idIr[10]),
    .Q(exIr[10])
  );
  FDCE   exIr_11 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(idIr[11]),
    .Q(exIr[11])
  );
  FDCE   exIr_12 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(idIr[12]),
    .Q(exIr[12])
  );
  FDCE   exIr_13 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(idIr[13]),
    .Q(exIr[13])
  );
  FDCE   exIr_14 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(idIr[14]),
    .Q(exIr[14])
  );
  FDCE   exIr_15 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(idIr[15]),
    .Q(exIr[15])
  );
  FDCE   memIr_8 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(exIr[8]),
    .Q(memIr[8])
  );
  FDCE   memIr_9 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(exIr[9]),
    .Q(memIr[9])
  );
  FDCE   memIr_10 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(exIr[10]),
    .Q(memIr[10])
  );
  FDCE   memIr_11 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(exIr[11]),
    .Q(memIr[11])
  );
  FDCE   memIr_12 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(exIr[12]),
    .Q(memIr[12])
  );
  FDCE   memIr_13 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(exIr[13]),
    .Q(memIr[13])
  );
  FDCE   memIr_14 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(exIr[14]),
    .Q(memIr[14])
  );
  FDCE   memIr_15 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(exIr[15]),
    .Q(memIr[15])
  );
  FDCE   wbIr_8 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(memIr[8]),
    .Q(wbIr[8])
  );
  FDCE   wbIr_9 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(memIr[9]),
    .Q(wbIr[9])
  );
  FDCE   wbIr_10 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(memIr[10]),
    .Q(wbIr[10])
  );
  FDCE   wbIr_11 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(memIr[11]),
    .Q(wbIr[11])
  );
  FDCE   wbIr_12 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(memIr[12]),
    .Q(wbIr[12])
  );
  FDCE   wbIr_13 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(memIr[13]),
    .Q(wbIr[13])
  );
  FDCE   wbIr_14 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(memIr[14]),
    .Q(wbIr[14])
  );
  FDCE   wbIr_15 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(memIr[15]),
    .Q(wbIr[15])
  );
  FDCE   smdr_0 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<0> ),
    .Q(smdr[0])
  );
  FDCE   smdr_1 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<1> ),
    .Q(smdr[1])
  );
  FDCE   smdr_2 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<2> ),
    .Q(smdr[2])
  );
  FDCE   smdr_3 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<3> ),
    .Q(smdr[3])
  );
  FDCE   smdr_4 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<4> ),
    .Q(smdr[4])
  );
  FDCE   smdr_5 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<5> ),
    .Q(smdr[5])
  );
  FDCE   smdr_6 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<6> ),
    .Q(smdr[6])
  );
  FDCE   smdr_7 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<7> ),
    .Q(smdr[7])
  );
  FDCE   smdr_8 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<8> ),
    .Q(smdr[8])
  );
  FDCE   smdr_9 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<9> ),
    .Q(smdr[9])
  );
  FDCE   smdr_10 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<10> ),
    .Q(smdr[10])
  );
  FDCE   smdr_11 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<11> ),
    .Q(smdr[11])
  );
  FDCE   smdr_12 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<12> ),
    .Q(smdr[12])
  );
  FDCE   smdr_13 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<13> ),
    .Q(smdr[13])
  );
  FDCE   smdr_14 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<14> ),
    .Q(smdr[14])
  );
  FDCE   smdr_15 (
    .C(clock_BUFGP_32),
    .CE(_n0148_inv),
    .CLR(reset_inv),
    .D(\idIr[10]_read_port_26_OUT<15> ),
    .Q(smdr[15])
  );
  FDCE   regA_0 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [0]),
    .Q(regA[0])
  );
  FDCE   regA_1 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [1]),
    .Q(regA[1])
  );
  FDCE   regA_2 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [2]),
    .Q(regA[2])
  );
  FDCE   regA_3 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [3]),
    .Q(regA[3])
  );
  FDCE   regA_4 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [4]),
    .Q(regA[4])
  );
  FDCE   regA_5 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [5]),
    .Q(regA[5])
  );
  FDCE   regA_6 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [6]),
    .Q(regA[6])
  );
  FDCE   regA_7 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [7]),
    .Q(regA[7])
  );
  FDCE   regA_8 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [8]),
    .Q(regA[8])
  );
  FDCE   regA_9 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [9]),
    .Q(regA[9])
  );
  FDCE   regA_10 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [10]),
    .Q(regA[10])
  );
  FDCE   regA_11 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [11]),
    .Q(regA[11])
  );
  FDCE   regA_12 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [12]),
    .Q(regA[12])
  );
  FDCE   regA_13 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [13]),
    .Q(regA[13])
  );
  FDCE   regA_14 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [14]),
    .Q(regA[14])
  );
  FDCE   regA_15 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(\PWR_1_o?gr[@_n0128] [15]),
    .Q(regA[15])
  );
  FDCE   smdr1_0 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[0]),
    .Q(smdr1[0])
  );
  FDCE   smdr1_1 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[1]),
    .Q(smdr1[1])
  );
  FDCE   smdr1_2 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[2]),
    .Q(smdr1[2])
  );
  FDCE   smdr1_3 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[3]),
    .Q(smdr1[3])
  );
  FDCE   smdr1_4 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[4]),
    .Q(smdr1[4])
  );
  FDCE   smdr1_5 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[5]),
    .Q(smdr1[5])
  );
  FDCE   smdr1_6 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[6]),
    .Q(smdr1[6])
  );
  FDCE   smdr1_7 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[7]),
    .Q(smdr1[7])
  );
  FDCE   smdr1_8 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[8]),
    .Q(smdr1[8])
  );
  FDCE   smdr1_9 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[9]),
    .Q(smdr1[9])
  );
  FDCE   smdr1_10 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[10]),
    .Q(smdr1[10])
  );
  FDCE   smdr1_11 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[11]),
    .Q(smdr1[11])
  );
  FDCE   smdr1_12 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[12]),
    .Q(smdr1[12])
  );
  FDCE   smdr1_13 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[13]),
    .Q(smdr1[13])
  );
  FDCE   smdr1_14 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[14]),
    .Q(smdr1[14])
  );
  FDCE   smdr1_15 (
    .C(clock_BUFGP_32),
    .CE(_n0156_inv),
    .CLR(reset_inv),
    .D(smdr[15]),
    .Q(smdr1[15])
  );
  FDCE   ALUo_0 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<0> ),
    .Q(ALUo[0])
  );
  FDCE   ALUo_1 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<1> ),
    .Q(ALUo[1])
  );
  FDCE   ALUo_2 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<2> ),
    .Q(ALUo[2])
  );
  FDCE   ALUo_3 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<3> ),
    .Q(ALUo[3])
  );
  FDCE   ALUo_4 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<4> ),
    .Q(ALUo[4])
  );
  FDCE   ALUo_5 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<5> ),
    .Q(ALUo[5])
  );
  FDCE   ALUo_6 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<6> ),
    .Q(ALUo[6])
  );
  FDCE   ALUo_7 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<7> ),
    .Q(ALUo[7])
  );
  FDCE   ALUo_8 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<8> ),
    .Q(ALUo[8])
  );
  FDCE   ALUo_9 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<9> ),
    .Q(ALUo[9])
  );
  FDCE   ALUo_10 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<10> ),
    .Q(ALUo[10])
  );
  FDCE   ALUo_11 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<11> ),
    .Q(ALUo[11])
  );
  FDCE   ALUo_12 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<12> ),
    .Q(ALUo[12])
  );
  FDCE   ALUo_13 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<13> ),
    .Q(ALUo[13])
  );
  FDCE   ALUo_14 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<14> ),
    .Q(ALUo[14])
  );
  FDCE   ALUo_15 (
    .C(clock_BUFGP_32),
    .CE(_n0162_inv),
    .CLR(reset_inv),
    .D(\ALUo[15]_regA[15]_mux_50_OUT<15> ),
    .Q(ALUo[15])
  );
  FDCE   regC_0 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[0]),
    .Q(regC[0])
  );
  FDCE   regC_1 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[1]),
    .Q(regC[1])
  );
  FDCE   regC_2 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[2]),
    .Q(regC[2])
  );
  FDCE   regC_3 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[3]),
    .Q(regC[3])
  );
  FDCE   regC_4 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[4]),
    .Q(regC[4])
  );
  FDCE   regC_5 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[5]),
    .Q(regC[5])
  );
  FDCE   regC_6 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[6]),
    .Q(regC[6])
  );
  FDCE   regC_7 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[7]),
    .Q(regC[7])
  );
  FDCE   regC_8 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[8]),
    .Q(regC[8])
  );
  FDCE   regC_9 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[9]),
    .Q(regC[9])
  );
  FDCE   regC_10 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[10]),
    .Q(regC[10])
  );
  FDCE   regC_11 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[11]),
    .Q(regC[11])
  );
  FDCE   regC_12 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[12]),
    .Q(regC[12])
  );
  FDCE   regC_13 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[13]),
    .Q(regC[13])
  );
  FDCE   regC_14 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[14]),
    .Q(regC[14])
  );
  FDCE   regC_15 (
    .C(clock_BUFGP_32),
    .CE(state_68),
    .CLR(reset_inv),
    .D(ALUo[15]),
    .Q(regC[15])
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  Mram_gr11 (
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .DIA({regC1[1], regC1[0]}),
    .DIB({regC1[3], regC1[2]}),
    .DIC({regC1[5], regC1[4]}),
    .DID({N1, N1}),
    .ADDRA({N1, N1, idIr[2], idIr[1], idIr[0]}),
    .ADDRB({N1, N1, idIr[2], idIr[1], idIr[0]}),
    .ADDRC({N1, N1, idIr[2], idIr[1], idIr[0]}),
    .ADDRD({N1, N1, wbIr[10], wbIr[9], wbIr[8]}),
    .DOA({\idIr[2]_read_port_29_OUT<1> , \idIr[2]_read_port_29_OUT<0> }),
    .DOB({\idIr[2]_read_port_29_OUT<3> , \idIr[2]_read_port_29_OUT<2> }),
    .DOC({\idIr[2]_read_port_29_OUT<5> , \idIr[2]_read_port_29_OUT<4> }),
    .DOD({\NLW_Mram_gr11_DOD<1>_UNCONNECTED , \NLW_Mram_gr11_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  Mram_gr12 (
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .DIA({regC1[7], regC1[6]}),
    .DIB({regC1[9], regC1[8]}),
    .DIC({regC1[11], regC1[10]}),
    .DID({N1, N1}),
    .ADDRA({N1, N1, idIr[2], idIr[1], idIr[0]}),
    .ADDRB({N1, N1, idIr[2], idIr[1], idIr[0]}),
    .ADDRC({N1, N1, idIr[2], idIr[1], idIr[0]}),
    .ADDRD({N1, N1, wbIr[10], wbIr[9], wbIr[8]}),
    .DOA({\idIr[2]_read_port_29_OUT<7> , \idIr[2]_read_port_29_OUT<6> }),
    .DOB({\idIr[2]_read_port_29_OUT<9> , \idIr[2]_read_port_29_OUT<8> }),
    .DOC({\idIr[2]_read_port_29_OUT<11> , \idIr[2]_read_port_29_OUT<10> }),
    .DOD({\NLW_Mram_gr12_DOD<1>_UNCONNECTED , \NLW_Mram_gr12_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  Mram_gr1 (
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .DIA({regC1[1], regC1[0]}),
    .DIB({regC1[3], regC1[2]}),
    .DIC({regC1[5], regC1[4]}),
    .DID({N1, N1}),
    .ADDRA({N1, N1, idIr[10], idIr[9], idIr[8]}),
    .ADDRB({N1, N1, idIr[10], idIr[9], idIr[8]}),
    .ADDRC({N1, N1, idIr[10], idIr[9], idIr[8]}),
    .ADDRD({N1, N1, wbIr[10], wbIr[9], wbIr[8]}),
    .DOA({\idIr[10]_read_port_26_OUT<1> , \idIr[10]_read_port_26_OUT<0> }),
    .DOB({\idIr[10]_read_port_26_OUT<3> , \idIr[10]_read_port_26_OUT<2> }),
    .DOC({\idIr[10]_read_port_26_OUT<5> , \idIr[10]_read_port_26_OUT<4> }),
    .DOD({\NLW_Mram_gr1_DOD<1>_UNCONNECTED , \NLW_Mram_gr1_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  Mram_gr3 (
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .DIA({regC1[7], regC1[6]}),
    .DIB({regC1[9], regC1[8]}),
    .DIC({regC1[11], regC1[10]}),
    .DID({N1, N1}),
    .ADDRA({N1, N1, idIr[10], idIr[9], idIr[8]}),
    .ADDRB({N1, N1, idIr[10], idIr[9], idIr[8]}),
    .ADDRC({N1, N1, idIr[10], idIr[9], idIr[8]}),
    .ADDRD({N1, N1, wbIr[10], wbIr[9], wbIr[8]}),
    .DOA({\idIr[10]_read_port_26_OUT<7> , \idIr[10]_read_port_26_OUT<6> }),
    .DOB({\idIr[10]_read_port_26_OUT<9> , \idIr[10]_read_port_26_OUT<8> }),
    .DOC({\idIr[10]_read_port_26_OUT<11> , \idIr[10]_read_port_26_OUT<10> }),
    .DOD({\NLW_Mram_gr3_DOD<1>_UNCONNECTED , \NLW_Mram_gr3_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  Mram_gr21 (
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .DIA({regC1[1], regC1[0]}),
    .DIB({regC1[3], regC1[2]}),
    .DIC({regC1[5], regC1[4]}),
    .DID({N1, N1}),
    .ADDRA({N1, N1, _n0128[6], _n0128[5], _n0128[4]}),
    .ADDRB({N1, N1, _n0128[6], _n0128[5], _n0128[4]}),
    .ADDRC({N1, N1, _n0128[6], _n0128[5], _n0128[4]}),
    .ADDRD({N1, N1, wbIr[10], wbIr[9], wbIr[8]}),
    .DOA({\PWR_1_o?gr[@_n0128] [1], \PWR_1_o?gr[@_n0128] [0]}),
    .DOB({\PWR_1_o?gr[@_n0128] [3], \PWR_1_o?gr[@_n0128] [2]}),
    .DOC({\PWR_1_o?gr[@_n0128] [5], \PWR_1_o?gr[@_n0128] [4]}),
    .DOD({\NLW_Mram_gr21_DOD<1>_UNCONNECTED , \NLW_Mram_gr21_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  Mram_gr22 (
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .DIA({regC1[7], regC1[6]}),
    .DIB({regC1[9], regC1[8]}),
    .DIC({regC1[11], regC1[10]}),
    .DID({N1, N1}),
    .ADDRA({N1, N1, _n0128[6], _n0128[5], _n0128[4]}),
    .ADDRB({N1, N1, _n0128[6], _n0128[5], _n0128[4]}),
    .ADDRC({N1, N1, _n0128[6], _n0128[5], _n0128[4]}),
    .ADDRD({N1, N1, wbIr[10], wbIr[9], wbIr[8]}),
    .DOA({\PWR_1_o?gr[@_n0128] [7], \PWR_1_o?gr[@_n0128] [6]}),
    .DOB({\PWR_1_o?gr[@_n0128] [9], \PWR_1_o?gr[@_n0128] [8]}),
    .DOC({\PWR_1_o?gr[@_n0128] [11], \PWR_1_o?gr[@_n0128] [10]}),
    .DOD({\NLW_Mram_gr22_DOD<1>_UNCONNECTED , \NLW_Mram_gr22_DOD<0>_UNCONNECTED })
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  Mram_gr131 (
    .A0(wbIr[8]),
    .A1(wbIr[9]),
    .A2(wbIr[10]),
    .A3(N1),
    .D(regC1[12]),
    .DPRA0(idIr[0]),
    .DPRA1(idIr[1]),
    .DPRA2(idIr[2]),
    .DPRA3(N1),
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .SPO(NLW_Mram_gr131_SPO_UNCONNECTED),
    .DPO(\idIr[2]_read_port_29_OUT<12> )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  Mram_gr132 (
    .A0(wbIr[8]),
    .A1(wbIr[9]),
    .A2(wbIr[10]),
    .A3(N1),
    .D(regC1[13]),
    .DPRA0(idIr[0]),
    .DPRA1(idIr[1]),
    .DPRA2(idIr[2]),
    .DPRA3(N1),
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .SPO(NLW_Mram_gr132_SPO_UNCONNECTED),
    .DPO(\idIr[2]_read_port_29_OUT<13> )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  Mram_gr133 (
    .A0(wbIr[8]),
    .A1(wbIr[9]),
    .A2(wbIr[10]),
    .A3(N1),
    .D(regC1[14]),
    .DPRA0(idIr[0]),
    .DPRA1(idIr[1]),
    .DPRA2(idIr[2]),
    .DPRA3(N1),
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .SPO(NLW_Mram_gr133_SPO_UNCONNECTED),
    .DPO(\idIr[2]_read_port_29_OUT<14> )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  Mram_gr42 (
    .A0(wbIr[8]),
    .A1(wbIr[9]),
    .A2(wbIr[10]),
    .A3(N1),
    .D(regC1[13]),
    .DPRA0(idIr[8]),
    .DPRA1(idIr[9]),
    .DPRA2(idIr[10]),
    .DPRA3(N1),
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .SPO(NLW_Mram_gr42_SPO_UNCONNECTED),
    .DPO(\idIr[10]_read_port_26_OUT<13> )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  Mram_gr134 (
    .A0(wbIr[8]),
    .A1(wbIr[9]),
    .A2(wbIr[10]),
    .A3(N1),
    .D(regC1[15]),
    .DPRA0(idIr[0]),
    .DPRA1(idIr[1]),
    .DPRA2(idIr[2]),
    .DPRA3(N1),
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .SPO(NLW_Mram_gr134_SPO_UNCONNECTED),
    .DPO(\idIr[2]_read_port_29_OUT<15> )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  Mram_gr41 (
    .A0(wbIr[8]),
    .A1(wbIr[9]),
    .A2(wbIr[10]),
    .A3(N1),
    .D(regC1[12]),
    .DPRA0(idIr[8]),
    .DPRA1(idIr[9]),
    .DPRA2(idIr[10]),
    .DPRA3(N1),
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .SPO(NLW_Mram_gr41_SPO_UNCONNECTED),
    .DPO(\idIr[10]_read_port_26_OUT<12> )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  Mram_gr43 (
    .A0(wbIr[8]),
    .A1(wbIr[9]),
    .A2(wbIr[10]),
    .A3(N1),
    .D(regC1[14]),
    .DPRA0(idIr[8]),
    .DPRA1(idIr[9]),
    .DPRA2(idIr[10]),
    .DPRA3(N1),
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .SPO(NLW_Mram_gr43_SPO_UNCONNECTED),
    .DPO(\idIr[10]_read_port_26_OUT<14> )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  Mram_gr44 (
    .A0(wbIr[8]),
    .A1(wbIr[9]),
    .A2(wbIr[10]),
    .A3(N1),
    .D(regC1[15]),
    .DPRA0(idIr[8]),
    .DPRA1(idIr[9]),
    .DPRA2(idIr[10]),
    .DPRA3(N1),
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .SPO(NLW_Mram_gr44_SPO_UNCONNECTED),
    .DPO(\idIr[10]_read_port_26_OUT<15> )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  Mram_gr231 (
    .A0(wbIr[8]),
    .A1(wbIr[9]),
    .A2(wbIr[10]),
    .A3(N1),
    .D(regC1[12]),
    .DPRA0(_n0128[4]),
    .DPRA1(_n0128[5]),
    .DPRA2(_n0128[6]),
    .DPRA3(N1),
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .SPO(NLW_Mram_gr231_SPO_UNCONNECTED),
    .DPO(\PWR_1_o?gr[@_n0128] [12])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  Mram_gr232 (
    .A0(wbIr[8]),
    .A1(wbIr[9]),
    .A2(wbIr[10]),
    .A3(N1),
    .D(regC1[13]),
    .DPRA0(_n0128[4]),
    .DPRA1(_n0128[5]),
    .DPRA2(_n0128[6]),
    .DPRA3(N1),
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .SPO(NLW_Mram_gr232_SPO_UNCONNECTED),
    .DPO(\PWR_1_o?gr[@_n0128] [13])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  Mram_gr233 (
    .A0(wbIr[8]),
    .A1(wbIr[9]),
    .A2(wbIr[10]),
    .A3(N1),
    .D(regC1[14]),
    .DPRA0(_n0128[4]),
    .DPRA1(_n0128[5]),
    .DPRA2(_n0128[6]),
    .DPRA3(N1),
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .SPO(NLW_Mram_gr233_SPO_UNCONNECTED),
    .DPO(\PWR_1_o?gr[@_n0128] [14])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  Mram_gr234 (
    .A0(wbIr[8]),
    .A1(wbIr[9]),
    .A2(wbIr[10]),
    .A3(N1),
    .D(regC1[15]),
    .DPRA0(_n0128[4]),
    .DPRA1(_n0128[5]),
    .DPRA2(_n0128[6]),
    .DPRA3(N1),
    .WCLK(clock_BUFGP_32),
    .WE(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 ),
    .SPO(NLW_Mram_gr234_SPO_UNCONNECTED),
    .DPO(\PWR_1_o?gr[@_n0128] [15])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<0>  (
    .I0(regA[0]),
    .I1(regB[0]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<0>_298 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<0>  (
    .CI(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .DI(regA[0]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<0>_298 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<0>_299 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<0>  (
    .CI(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<0>_298 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<1>  (
    .I0(regA[1]),
    .I1(regB[1]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<1>_300 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<1>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<0>_299 ),
    .DI(regA[1]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<1>_300 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<1>_301 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<1>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<0>_299 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<1>_300 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<2>  (
    .I0(regA[2]),
    .I1(regB[2]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<2>_302 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<2>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<1>_301 ),
    .DI(regA[2]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<2>_302 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<2>_303 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<2>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<1>_301 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<2>_302 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<3>  (
    .I0(regA[3]),
    .I1(regB[3]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<3>_304 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<3>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<2>_303 ),
    .DI(regA[3]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<3>_304 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<3>_305 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<3>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<2>_303 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<3>_304 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<4>  (
    .I0(regA[4]),
    .I1(regB[4]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<4>_306 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<4>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<3>_305 ),
    .DI(regA[4]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<4>_306 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<4>_307 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<4>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<3>_305 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<4>_306 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<5>  (
    .I0(regA[5]),
    .I1(regB[5]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<5>_308 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<5>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<4>_307 ),
    .DI(regA[5]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<5>_308 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<5>_309 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<5>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<4>_307 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<5>_308 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<6>  (
    .I0(regA[6]),
    .I1(regB[6]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<6>_310 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<6>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<5>_309 ),
    .DI(regA[6]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<6>_310 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<6>_311 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<6>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<5>_309 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<6>_310 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<7>  (
    .I0(regA[7]),
    .I1(regB[7]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<7>_312 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<7>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<6>_311 ),
    .DI(regA[7]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<7>_312 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<7>_313 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<7>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<6>_311 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<7>_312 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<8>  (
    .I0(regA[8]),
    .I1(regB[8]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<8>_314 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<8>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<7>_313 ),
    .DI(regA[8]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<8>_314 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<8>_315 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<8>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<7>_313 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<8>_314 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<9>  (
    .I0(regA[9]),
    .I1(regB[9]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<9>_316 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<9>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<8>_315 ),
    .DI(regA[9]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<9>_316 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<9>_317 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<9>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<8>_315 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<9>_316 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<9> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<10>  (
    .I0(regA[10]),
    .I1(regB[10]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<10>_318 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<10>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<9>_317 ),
    .DI(regA[10]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<10>_318 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<10>_319 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<10>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<9>_317 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<10>_318 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<11>  (
    .I0(regA[11]),
    .I1(regB[11]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<11>_320 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<11>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<10>_319 ),
    .DI(regA[11]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<11>_320 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<11>_321 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<11>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<10>_319 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<11>_320 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<12>  (
    .I0(regA[12]),
    .I1(regB[12]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<12>_322 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<12>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<11>_321 ),
    .DI(regA[12]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<12>_322 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<12>_323 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<12>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<11>_321 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<12>_322 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<13>  (
    .I0(regA[13]),
    .I1(regB[13]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<13>_324 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<13>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<12>_323 ),
    .DI(regA[13]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<13>_324 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<13>_325 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<13>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<12>_323 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<13>_324 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<14>  (
    .I0(regA[14]),
    .I1(regB[14]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<14>_326 )
  );
  MUXCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<14>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<13>_325 ),
    .DI(regA[14]),
    .S(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<14>_326 ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<14>_327 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<14>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<13>_325 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<14>_326 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<15>  (
    .I0(regA[15]),
    .I1(regB[15]),
    .I2(\exIr[15]_GND_1_o_equal_45_o_inv ),
    .O(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<15>_328 )
  );
  XORCY   \Maddsub_ALUo[15]_regA[15]_mux_50_OUT_xor<15>  (
    .CI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_cy<14>_327 ),
    .LI(\Maddsub_ALUo[15]_regA[15]_mux_50_OUT_lut<15>_328 ),
    .O(\ALUo[15]_regA[15]_mux_50_OUT<15> )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \memIr[15]_GND_1_o_equal_67_o<15>1  (
    .I0(memIr[15]),
    .I1(memIr[14]),
    .I2(memIr[13]),
    .I3(memIr[12]),
    .I4(memIr[11]),
    .O(\memIr[15]_GND_1_o_equal_67_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT161  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[9]),
    .I2(dDataIn_9_IBUF_6),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<9> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT151  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[8]),
    .I2(dDataIn_8_IBUF_7),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT141  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[7]),
    .I2(dDataIn_7_IBUF_8),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT131  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[6]),
    .I2(dDataIn_6_IBUF_9),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT121  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[5]),
    .I2(dDataIn_5_IBUF_10),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT111  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[4]),
    .I2(dDataIn_4_IBUF_11),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT101  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[3]),
    .I2(dDataIn_3_IBUF_12),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT91  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[2]),
    .I2(dDataIn_2_IBUF_13),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT81  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[1]),
    .I2(dDataIn_1_IBUF_14),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT71  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[15]),
    .I2(dDataIn_15_IBUF_0),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT61  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[14]),
    .I2(dDataIn_14_IBUF_1),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT51  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[13]),
    .I2(dDataIn_13_IBUF_2),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT41  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[12]),
    .I2(dDataIn_12_IBUF_3),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT31  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[11]),
    .I2(dDataIn_11_IBUF_4),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT21  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[10]),
    .I2(dDataIn_10_IBUF_5),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_regC[15]_dDataIn[15]_mux_67_OUT11  (
    .I0(\memIr[15]_GND_1_o_equal_67_o ),
    .I1(regC[0]),
    .I2(dDataIn_0_IBUF_15),
    .O(\regC[15]_dDataIn[15]_mux_67_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  Mmux__n012831 (
    .I0(idIr[6]),
    .I1(idIr[10]),
    .I2(\idIr[15]_idIr[15]_OR_9_o ),
    .O(_n0128[6])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  Mmux__n012821 (
    .I0(idIr[5]),
    .I1(idIr[9]),
    .I2(\idIr[15]_idIr[15]_OR_9_o ),
    .O(_n0128[5])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  Mmux__n012811 (
    .I0(idIr[4]),
    .I1(idIr[8]),
    .I2(\idIr[15]_idIr[15]_OR_9_o ),
    .O(_n0128[4])
  );
  LUT5 #(
    .INIT ( 32'h8F888888 ))
  \idIr[2]_GND_1_o_mux_33_OUT<0>3  (
    .I0(N5),
    .I1(idIr[0]),
    .I2(\idIr[15]_idIr[15]_OR_9_o ),
    .I3(\idIr[2]_read_port_29_OUT<0> ),
    .I4(N3),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h8F888888 ))
  \idIr[2]_GND_1_o_mux_33_OUT<1>1  (
    .I0(N5),
    .I1(idIr[1]),
    .I2(\idIr[15]_idIr[15]_OR_9_o ),
    .I3(\idIr[2]_read_port_29_OUT<1> ),
    .I4(N3),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h8F888888 ))
  \idIr[2]_GND_1_o_mux_33_OUT<2>1  (
    .I0(N5),
    .I1(idIr[2]),
    .I2(\idIr[15]_idIr[15]_OR_9_o ),
    .I3(\idIr[2]_read_port_29_OUT<2> ),
    .I4(N3),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h8F888888 ))
  \idIr[2]_GND_1_o_mux_33_OUT<3>1  (
    .I0(N5),
    .I1(idIr[3]),
    .I2(\idIr[15]_idIr[15]_OR_9_o ),
    .I3(\idIr[2]_read_port_29_OUT<3> ),
    .I4(N3),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \idIr[2]_GND_1_o_mux_33_OUT<0>11  (
    .I0(idIr[15]),
    .I1(idIr[13]),
    .I2(idIr[12]),
    .I3(idIr[14]),
    .O(N3)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFB ))
  \exIr[15]_GND_1_o_equal_45_o_inv2  (
    .I0(exIr[15]),
    .I1(exIr[14]),
    .I2(exIr[13]),
    .I3(exIr[12]),
    .I4(exIr[11]),
    .O(\exIr[15]_GND_1_o_equal_45_o_inv )
  );
  LUT5 #(
    .INIT ( 32'h00404000 ))
  \idIr[15]_idIr[15]_OR_9_o1  (
    .I0(idIr[11]),
    .I1(idIr[14]),
    .I2(idIr[15]),
    .I3(idIr[12]),
    .I4(idIr[13]),
    .O(\idIr[15]_idIr[15]_OR_9_o )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \idIr[2]_GND_1_o_mux_33_OUT<7>1  (
    .I0(N3),
    .I1(\idIr[15]_idIr[15]_OR_9_o ),
    .I2(\idIr[2]_read_port_29_OUT<7> ),
    .I3(idIr[7]),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \idIr[2]_GND_1_o_mux_33_OUT<6>1  (
    .I0(N3),
    .I1(\idIr[15]_idIr[15]_OR_9_o ),
    .I2(\idIr[2]_read_port_29_OUT<6> ),
    .I3(idIr[6]),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \idIr[2]_GND_1_o_mux_33_OUT<5>1  (
    .I0(N3),
    .I1(\idIr[15]_idIr[15]_OR_9_o ),
    .I2(\idIr[2]_read_port_29_OUT<5> ),
    .I3(idIr[5]),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<5> )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \idIr[2]_GND_1_o_mux_33_OUT<4>1  (
    .I0(N3),
    .I1(\idIr[15]_idIr[15]_OR_9_o ),
    .I2(\idIr[2]_read_port_29_OUT<4> ),
    .I3(idIr[4]),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h0004000000000000 ))
  _n0156_inv1 (
    .I0(exIr[13]),
    .I1(exIr[12]),
    .I2(exIr[14]),
    .I3(exIr[15]),
    .I4(exIr[11]),
    .I5(state_68),
    .O(_n0156_inv)
  );
  LUT6 #(
    .INIT ( 64'h0000043000000000 ))
  _n0162_inv1 (
    .I0(exIr[13]),
    .I1(exIr[15]),
    .I2(exIr[14]),
    .I3(exIr[12]),
    .I4(exIr[11]),
    .I5(state_68),
    .O(_n0162_inv)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \wbIr[15]_wbIr[15]_OR_27_o_0_0_SW0  (
    .I0(reset_IBUF_34),
    .I1(wbIr[11]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'h0000000600000000 ))
  \wbIr[15]_wbIr[15]_OR_27_o_0_0  (
    .I0(wbIr[14]),
    .I1(wbIr[12]),
    .I2(wbIr[13]),
    .I3(wbIr[15]),
    .I4(N20),
    .I5(state_68),
    .O(\wbIr[15]_wbIr[15]_OR_27_o_0_0_292 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  Mmux_nextState1_SW0 (
    .I0(wbIr[13]),
    .I1(wbIr[11]),
    .I2(wbIr[15]),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAA288888880 ))
  Mmux_nextState1 (
    .I0(enable_IBUF_33),
    .I1(state_68),
    .I2(wbIr[14]),
    .I3(wbIr[12]),
    .I4(N22),
    .I5(start_IBUF_35),
    .O(nextState)
  );
  IBUF   dDataIn_15_IBUF (
    .I(dDataIn[15]),
    .O(dDataIn_15_IBUF_0)
  );
  IBUF   dDataIn_14_IBUF (
    .I(dDataIn[14]),
    .O(dDataIn_14_IBUF_1)
  );
  IBUF   dDataIn_13_IBUF (
    .I(dDataIn[13]),
    .O(dDataIn_13_IBUF_2)
  );
  IBUF   dDataIn_12_IBUF (
    .I(dDataIn[12]),
    .O(dDataIn_12_IBUF_3)
  );
  IBUF   dDataIn_11_IBUF (
    .I(dDataIn[11]),
    .O(dDataIn_11_IBUF_4)
  );
  IBUF   dDataIn_10_IBUF (
    .I(dDataIn[10]),
    .O(dDataIn_10_IBUF_5)
  );
  IBUF   dDataIn_9_IBUF (
    .I(dDataIn[9]),
    .O(dDataIn_9_IBUF_6)
  );
  IBUF   dDataIn_8_IBUF (
    .I(dDataIn[8]),
    .O(dDataIn_8_IBUF_7)
  );
  IBUF   dDataIn_7_IBUF (
    .I(dDataIn[7]),
    .O(dDataIn_7_IBUF_8)
  );
  IBUF   dDataIn_6_IBUF (
    .I(dDataIn[6]),
    .O(dDataIn_6_IBUF_9)
  );
  IBUF   dDataIn_5_IBUF (
    .I(dDataIn[5]),
    .O(dDataIn_5_IBUF_10)
  );
  IBUF   dDataIn_4_IBUF (
    .I(dDataIn[4]),
    .O(dDataIn_4_IBUF_11)
  );
  IBUF   dDataIn_3_IBUF (
    .I(dDataIn[3]),
    .O(dDataIn_3_IBUF_12)
  );
  IBUF   dDataIn_2_IBUF (
    .I(dDataIn[2]),
    .O(dDataIn_2_IBUF_13)
  );
  IBUF   dDataIn_1_IBUF (
    .I(dDataIn[1]),
    .O(dDataIn_1_IBUF_14)
  );
  IBUF   dDataIn_0_IBUF (
    .I(dDataIn[0]),
    .O(dDataIn_0_IBUF_15)
  );
  IBUF   iDataIn_15_IBUF (
    .I(iDataIn[15]),
    .O(iDataIn_15_IBUF_16)
  );
  IBUF   iDataIn_14_IBUF (
    .I(iDataIn[14]),
    .O(iDataIn_14_IBUF_17)
  );
  IBUF   iDataIn_13_IBUF (
    .I(iDataIn[13]),
    .O(iDataIn_13_IBUF_18)
  );
  IBUF   iDataIn_12_IBUF (
    .I(iDataIn[12]),
    .O(iDataIn_12_IBUF_19)
  );
  IBUF   iDataIn_11_IBUF (
    .I(iDataIn[11]),
    .O(iDataIn_11_IBUF_20)
  );
  IBUF   iDataIn_10_IBUF (
    .I(iDataIn[10]),
    .O(iDataIn_10_IBUF_21)
  );
  IBUF   iDataIn_9_IBUF (
    .I(iDataIn[9]),
    .O(iDataIn_9_IBUF_22)
  );
  IBUF   iDataIn_8_IBUF (
    .I(iDataIn[8]),
    .O(iDataIn_8_IBUF_23)
  );
  IBUF   iDataIn_7_IBUF (
    .I(iDataIn[7]),
    .O(iDataIn_7_IBUF_24)
  );
  IBUF   iDataIn_6_IBUF (
    .I(iDataIn[6]),
    .O(iDataIn_6_IBUF_25)
  );
  IBUF   iDataIn_5_IBUF (
    .I(iDataIn[5]),
    .O(iDataIn_5_IBUF_26)
  );
  IBUF   iDataIn_4_IBUF (
    .I(iDataIn[4]),
    .O(iDataIn_4_IBUF_27)
  );
  IBUF   iDataIn_3_IBUF (
    .I(iDataIn[3]),
    .O(iDataIn_3_IBUF_28)
  );
  IBUF   iDataIn_2_IBUF (
    .I(iDataIn[2]),
    .O(iDataIn_2_IBUF_29)
  );
  IBUF   iDataIn_1_IBUF (
    .I(iDataIn[1]),
    .O(iDataIn_1_IBUF_30)
  );
  IBUF   iDataIn_0_IBUF (
    .I(iDataIn[0]),
    .O(iDataIn_0_IBUF_31)
  );
  IBUF   enable_IBUF (
    .I(enable),
    .O(enable_IBUF_33)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_34)
  );
  IBUF   start_IBUF (
    .I(start),
    .O(start_IBUF_35)
  );
  OBUF   dDataOut_15_OBUF (
    .I(smdr1[15]),
    .O(dDataOut[15])
  );
  OBUF   dDataOut_14_OBUF (
    .I(smdr1[14]),
    .O(dDataOut[14])
  );
  OBUF   dDataOut_13_OBUF (
    .I(smdr1[13]),
    .O(dDataOut[13])
  );
  OBUF   dDataOut_12_OBUF (
    .I(smdr1[12]),
    .O(dDataOut[12])
  );
  OBUF   dDataOut_11_OBUF (
    .I(smdr1[11]),
    .O(dDataOut[11])
  );
  OBUF   dDataOut_10_OBUF (
    .I(smdr1[10]),
    .O(dDataOut[10])
  );
  OBUF   dDataOut_9_OBUF (
    .I(smdr1[9]),
    .O(dDataOut[9])
  );
  OBUF   dDataOut_8_OBUF (
    .I(smdr1[8]),
    .O(dDataOut[8])
  );
  OBUF   dDataOut_7_OBUF (
    .I(smdr1[7]),
    .O(dDataOut[7])
  );
  OBUF   dDataOut_6_OBUF (
    .I(smdr1[6]),
    .O(dDataOut[6])
  );
  OBUF   dDataOut_5_OBUF (
    .I(smdr1[5]),
    .O(dDataOut[5])
  );
  OBUF   dDataOut_4_OBUF (
    .I(smdr1[4]),
    .O(dDataOut[4])
  );
  OBUF   dDataOut_3_OBUF (
    .I(smdr1[3]),
    .O(dDataOut[3])
  );
  OBUF   dDataOut_2_OBUF (
    .I(smdr1[2]),
    .O(dDataOut[2])
  );
  OBUF   dDataOut_1_OBUF (
    .I(smdr1[1]),
    .O(dDataOut[1])
  );
  OBUF   dDataOut_0_OBUF (
    .I(smdr1[0]),
    .O(dDataOut[0])
  );
  LUT5 #(
    .INIT ( 32'h00404300 ))
  \idIr[2]_GND_1_o_mux_33_OUT<0>21  (
    .I0(idIr[11]),
    .I1(idIr[14]),
    .I2(idIr[15]),
    .I3(idIr[12]),
    .I4(idIr[13]),
    .O(N5)
  );
  LUT6 #(
    .INIT ( 64'h0000002000000000 ))
  _n0148_inv1 (
    .I0(idIr[11]),
    .I1(idIr[14]),
    .I2(idIr[12]),
    .I3(idIr[13]),
    .I4(idIr[15]),
    .I5(state_68),
    .O(_n0148_inv)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2AA828AAAA ))
  \idIr[2]_GND_1_o_mux_33_OUT<11>1  (
    .I0(\idIr[2]_read_port_29_OUT<11> ),
    .I1(idIr[14]),
    .I2(idIr[15]),
    .I3(idIr[11]),
    .I4(idIr[12]),
    .I5(idIr[13]),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2AA828AAAA ))
  \idIr[2]_GND_1_o_mux_33_OUT<10>1  (
    .I0(\idIr[2]_read_port_29_OUT<10> ),
    .I1(idIr[14]),
    .I2(idIr[15]),
    .I3(idIr[11]),
    .I4(idIr[12]),
    .I5(idIr[13]),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<10> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2AA828AAAA ))
  \idIr[2]_GND_1_o_mux_33_OUT<9>1  (
    .I0(\idIr[2]_read_port_29_OUT<9> ),
    .I1(idIr[14]),
    .I2(idIr[15]),
    .I3(idIr[11]),
    .I4(idIr[12]),
    .I5(idIr[13]),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<9> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2AA828AAAA ))
  \idIr[2]_GND_1_o_mux_33_OUT<8>1  (
    .I0(\idIr[2]_read_port_29_OUT<8> ),
    .I1(idIr[14]),
    .I2(idIr[15]),
    .I3(idIr[11]),
    .I4(idIr[12]),
    .I5(idIr[13]),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2AA828AAAA ))
  \idIr[2]_GND_1_o_mux_33_OUT<15>1  (
    .I0(\idIr[2]_read_port_29_OUT<15> ),
    .I1(idIr[14]),
    .I2(idIr[15]),
    .I3(idIr[11]),
    .I4(idIr[12]),
    .I5(idIr[13]),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<15> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2AA828AAAA ))
  \idIr[2]_GND_1_o_mux_33_OUT<14>1  (
    .I0(\idIr[2]_read_port_29_OUT<14> ),
    .I1(idIr[14]),
    .I2(idIr[15]),
    .I3(idIr[11]),
    .I4(idIr[12]),
    .I5(idIr[13]),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<14> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2AA828AAAA ))
  \idIr[2]_GND_1_o_mux_33_OUT<13>1  (
    .I0(\idIr[2]_read_port_29_OUT<13> ),
    .I1(idIr[14]),
    .I2(idIr[15]),
    .I3(idIr[11]),
    .I4(idIr[12]),
    .I5(idIr[13]),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<13> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2AA828AAAA ))
  \idIr[2]_GND_1_o_mux_33_OUT<12>1  (
    .I0(\idIr[2]_read_port_29_OUT<12> ),
    .I1(idIr[14]),
    .I2(idIr[15]),
    .I3(idIr[11]),
    .I4(idIr[12]),
    .I5(idIr[13]),
    .O(\idIr[2]_GND_1_o_mux_33_OUT<12> )
  );
  BUFGP   clock_BUFGP (
    .I(clock),
    .O(clock_BUFGP_32)
  );
  INV   reset_inv1_INV_0 (
    .I(reset_IBUF_34),
    .O(reset_inv)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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


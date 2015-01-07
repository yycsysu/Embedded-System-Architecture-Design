`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:00:50 01/06/2015 
// Design Name: 
// Module Name:    InstructionMemory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module InstructionMemory(
  input wire [7:0] iAddr,
  input wire ren,
  output reg [15:0] iDataOut
    );

//Operation
//000
parameter NOP   = 5'b00000; //c
parameter HALT  = 5'b00001; //c
parameter LOAD  = 5'b00010; // need data memory
parameter STORE = 5'b00011; // need data memory
//010
parameter ADD   = 5'b01000; //c
parameter ADDI  = 5'b01001; //c
//100/101
parameter LDIH  = 5'b10000; //c
parameter ADDC  = 5'b10001; //c
parameter SUB   = 5'b10010; //c
parameter SUBI  = 5'b10011; //c
parameter SUBC  = 5'b10100; //c
//011
parameter CMP   = 5'b01100; //c
parameter AND   = 5'b01101; //c
parameter OR    = 5'b01110; //---
parameter XOR   = 5'b01111; //---
//001
parameter SLL   = 5'b00100; //c
parameter SLA   = 5'b00101; //c
parameter SRL   = 5'b00110; //C
parameter SRA   = 5'b00111; //C
//110
parameter JUMP  = 5'b11000; //c
parameter JMPR  = 5'b11001; //c
parameter BZ    = 5'b11010; //c
parameter BNZ   = 5'b11011; //c
parameter BN    = 5'b11100; //c
parameter BNN   = 5'b11101; //c
parameter BC    = 5'b11110; //c
parameter BNC   = 5'b11111; //c


parameter GR0   = 3'b000;
parameter GR1   = 3'b001;
parameter GR2   = 3'b010;
parameter GR3   = 3'b011;

  reg [15:0] iMemory[7:0];
  
  initial begin
    iMemory[0] <= {LOAD, GR1, 1'b0, GR0, 4'b0000};
    iMemory[1] <= {LOAD, GR2, 1'b0, GR0, 4'b0001};
	  iMemory[2] <= {ADD, GR3, 1'b0, GR2, 1'b0, GR1};
	  iMemory[3] <= {HALT, 11'b000_0000_0000};
  end
  
  always @ (*)
    if (ren)
      iDataOut <= iMemory[iAddr];
    else iDataOut <= 16'b0000_0000_0000_0000;
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:13 01/06/2015 
// Design Name: 
// Module Name:    Controller 
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
module Controller(
    input wire clock, enable, reset, start,
    input wire [15:0] dDataIn,
    output wire [15:0] dDataOut
    );
    
    wire [7:0] iAddr, dAddr;
    wire [15:0] y,iDataIn;
    wire dWE;

    InstructionMemory im(iAddr, 1'b1, iDataIn);
    pcpu cpu(clock, enable, reset, start,
         dDataIn, iDataIn, 4'b0000, dWE, dAddr, iAddr, dDataOut, y);

endmodule

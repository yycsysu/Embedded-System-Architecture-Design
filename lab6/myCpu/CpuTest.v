`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:51:15 12/06/2014
// Design Name:   IFetch
// Module Name:   /home/wu/ise12.3/lab6/myCpu/CpuTest.v
// Project Name:  myCpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IFetch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CpuTest;
//Operation
parameter NOP   = 5'b00000;
parameter HALT  = 5'b00001;
parameter LOAD  = 5'b00010;
parameter STORE = 5'b00011;
parameter LDIH  = 5'b10000;
parameter ADD   = 5'b01000;
parameter ADDI  = 5'b01001;
parameter ADDC  = 5'b10001;
parameter SUB   = 5'b10010;
parameter CMP   = 5'b01100;
parameter AND   = 5'b01101;
parameter OR    = 5'b01110;
parameter XOR   = 5'b01111;
parameter SLL   = 5'b00100;
parameter SLA   = 5'b00101;

parameter JUMP  = 5'b11000;
parameter JMPR  = 5'b11001;
parameter BZ    = 5'b11010;
parameter BNZ   = 5'b11011;
parameter BN    = 5'b11100;
parameter BC    = 5'b11110;
parameter GR0   = 3'b000;
parameter GR1   = 3'b001;
parameter GR2   = 3'b010;
parameter GR3   = 3'b011;
	// Inputs
	reg clock;
	reg enable;
	reg reset;
	reg start;
	reg [15:0] dDataIn;
	reg [15:0] iDataIn;
	reg [3:0] ySelect;

	// Outputs
	wire dWE;
	wire [7:0] dAddr;
	wire [7:0] iAddr;
	wire [15:0] dDataOut;
	wire [15:0] y;
  
	// Instantiate the Unit Under Test (UUT)
	IFetch uut (
		.clock(clock), 
		.enable(enable), 
		.reset(reset), 
		.start(start), 
		.dDataIn(dDataIn), 
		.iDataIn(iDataIn), 
		.ySelect(ySelect), 
		.dWE(dWE), 
		.dAddr(dAddr), 
		.iAddr(iAddr), 
		.dDataOut(dDataOut), 
		.y(y)
	);
	initial begin

		clock <= 0; enable <= 1; start <= 0;
		dDataIn <= 0;
		iDataIn <= 0;
		ySelect <= 0;
		// Initialize Inputs
    #10 reset <= 0;
		#10 reset <= 1;
		#10 enable <= 1; 
    #10 start <= 1; 
    #10 start <= 0;
        iDataIn <= {LOAD, GR1, 1'b0, GR0, 4'b0000};
    #10 iDataIn <= {LOAD, GR2, 1'b0, GR0, 4'b0001};
		#10 iDataIn <= {NOP, 11'b000_0000_0000};
		#10 iDataIn <= {NOP, 11'b000_0000_0000};
        dDataIn <= 16'h00AB;
		#10 iDataIn <= {NOP, 11'b000_0000_0000};
        dDataIn <= 16'h3C00;
		#10 iDataIn <= {ADD, GR3, 1'b0, GR1, 1'b0, GR2};
		#10 iDataIn <= {NOP, 11'b000_0000_0000};
		#10 iDataIn <= {NOP, 11'b000_0000_0000};
		#10 iDataIn <= {NOP, 11'b000_0000_0000};
		#10 iDataIn <= {STORE, GR3, 1'b0, GR0, 4'b0010};
		#10 iDataIn <= {HALT, 11'b000_0000_0000};
		// Wait 100 ns for global reset to finish
		    
		// Add stimulus here

	end
  always #5 clock <= ~clock;  
  
  initial begin
    $display("pc:idir            :regA :regB :da:dd:  :w:regC1:gr1 :gr2:gr3 ");
    //$monitor("%b:%h:%h:%b",iDataIn, dAddr, dDataOut, dWE);
    $monitor("%h:%b:%h:%h:%h:%h:%h:%b:%h:%h:%h:%h",
      CpuTest.uut.pc, CpuTest.uut.idIr, CpuTest.uut.regA, CpuTest.uut.regB, CpuTest.uut.regC,
      dAddr, dDataOut, dWE, 
      CpuTest.uut.regC1, CpuTest.uut.gr[1], CpuTest.uut.gr[2], CpuTest.uut.gr[3]);
  
  end
endmodule


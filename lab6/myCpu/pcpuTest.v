`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:57:30 12/06/2014
// Design Name:   pcpu
// Module Name:   /home/wu/ise12.3/lab6/myCpu/pcpuTest.v
// Project Name:  myCpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pcpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pcpuTest;
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
	pcpu uut (
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
		#10 iDataIn <= {JUMP, GR1, 8'b10000000};
		#10 iDataIn <= {JMPR, GR1, 8'b00010000};
		#10 iDataIn <= {BZ, GR1, 8'b00100000};
        dDataIn <= 16'h000A;
		#10 iDataIn <= {BNZ, GR1, 8'b00110000};
		#10 iDataIn <= {BN, GR1, 8'b01000000};
		#10 iDataIn <= {BNN, GR1, 8'b01010000};
		#10 iDataIn <= {BC, GR1, 8'b01100000};
		#10 iDataIn <= {BNC, GR1, 8'b01110000};
		#10 iDataIn <= {HALT, 11'b000_0000_0000};


	end
  always #5 clock <= ~clock;  
  
  initial begin
    $display("pc:-----------idir-----------:regA :regB :regC :da:dd :w:regC1:gr1  :gr2  :gr3  :cf:zf:nf");
        //      00:0000000000000000:0000:0000:0000:zz:zzzz:z:0000:0000:0000:0000
    //$monitor("%b:%h:%h:%b",iDataIn, dAddr, dDataOut, dWE);
    $monitor("%h:%b:%h:%h:%h:%h:%h:%b:%h:%h:%h:%h:%b:%b:%b",
      pcpuTest.uut.pc, pcpuTest.uut.idIr, pcpuTest.uut.regA, pcpuTest.uut.regB, pcpuTest.uut.regC,
      dAddr, dDataOut, dWE, 
      pcpuTest.uut.regC1, pcpuTest.uut.gr[1], pcpuTest.uut.gr[2], pcpuTest.uut.gr[3],
      pcpuTest.uut.cf, pcpuTest.uut.zf, pcpuTest.uut.nf,
      );//pcpuTest.uut.ALUo
  
  end
      
endmodule


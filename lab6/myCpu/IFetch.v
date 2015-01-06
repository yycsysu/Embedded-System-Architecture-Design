`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:38:31 12/05/2014 
// Design Name: 
// Module Name:    IFetch 
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

module IFetch(
    input wire clock, enable, reset, start,
    input wire [15:0] dDataIn, iDataIn,
    input wire [3:0] ySelect,
    output wire dWE,
    output wire [7:0] dAddr, iAddr,
    output wire [15:0] dDataOut,
    output wire [15:0] y
    //output wire [15:0] id_ir
    );
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


//Stage instruction register
reg [15:0] idIr, exIr, memIr, wbIr;

//General registers
reg [15:0] gr[7:0];
//IF
reg [7:0] pc;
//ID
reg [15:0] regA, regB, smdr;

//EX
reg [15:0] regC, smdr1, ALUo;
reg zf, nf, cf, dw;

//WB
reg [15:0] regC1;

//cpu controller(FSM)
  reg state;
  reg nextState;

  parameter IDLE = 1'b0;
  parameter EXEC = 1'b1;

  always @ (posedge clock)
    if (!reset)
      state <= IDLE;
    else
      state <= nextState;

  always @ (*)
    case (state)
      IDLE:
        if ((enable == 1'b1)
        && (start == 1'b1))
          nextState <= EXEC;
        else
          nextState <= IDLE;
      EXEC:
        if ((enable == 1'b0)
        || (wbIr[15:11] == HALT))
          nextState <= IDLE;
        else
          nextState <= EXEC;
    endcase
//cpu controller (FSM) - End

//Instruction Fetch - Start
  always @ (posedge clock or negedge reset)
    if (!reset)
      {idIr, pc} <= {{16{1'b0}}, {8{1'b0}}};
    else if (state == EXEC) begin
      idIr <= iDataIn;
      
      if (((memIr[15:11] == BZ)  // BZ BN
          && (zf == 1'b1))
      || ((memIr[15:11] == BN)
          && (nf == 1'b1))
      || ((memIr[15:11] == BC)
          && (cf == 1'b1)))
          
          pc <= regC[7:0];
      else pc <= pc + 1'b1;
    end
    else;

//Instruction Fectch - End

//Instruction Decoder - Start
  always @ (posedge clock or negedge reset) begin
    if (!reset)
      {exIr, regA, regB, smdr} <= {{16{1'b0}}, {16{1'b0}}, {16{1'b0}}, {16{1'b0}}};
    else if (state == EXEC) begin
      exIr <= idIr;
      
      if ((idIr[15:11] == BZ) || (idIr[15:11] == BN))
        regA <= gr[(idIr[10:8])]; //operand1 in 10-8 bits
      else regA <= gr[idIr[6:4]]; //operand2 in 6-4 bits
      
      if (idIr[15:11] == LOAD)
        regB <= {{12{1'b0}}, idIr[3:0]}; //operand3 in 3-0 bits
      else if (idIr[15:11] == STORE)
        {regB, smdr} <= {{12{1'b0}}, idIr[3:0], gr[idIr[10:8]]};
      else if ((idIr[15:11] == BZ)
           || (idIr[15:11] == BN))
        regB <= {{8{1'b0}}, idIr[7:0]}; //operand2, 3: val2 + val3
      else
        regB <= gr[idIr[2:0]]; //operand3: r3
    end else;
  end
//Instruction Decoder - End

  
    //ALU Start
  always @ (*) begin
      if (exIr[15:11] == ADD)
        ALUo <= regA + regB;
      else if ((exIr[15:11] == CMP)
      || (exIr[15:11] == SUB))
        ALUo <= regA - regB;
      else if ((exIr[15:11] == LOAD)
      || (exIr[15:11] == STORE))
        ALUo <= regB;
      else;
  end
   //ALU End 

//exec - Start
  always @ (posedge clock or negedge reset) begin
    if (!reset) begin
      {memIr, regC, smdr1}
      <= {{16{1'b0}}, {16{1'b0}}, {16{1'b0}}};
      {cf, zf, nf} <= {1'b0, 1'b0, 1'b0};
    end else if (state == EXEC) begin
      memIr <= exIr;
      regC <= ALUo;
      
      if ((exIr[15:11] == ADD)
      || (exIr[15:11] == CMP)) begin
        if (ALUo == {16{1'b0}})
          zf <= 1'b1;
        else
          zf <= 1'b0;
        if (ALUo[15] == 1'b1)
          nf <= 1'b1;
        else
          nf <= 1'b0;
      end
      if (exIr[15:11] == STORE)
        {dw, smdr1} <= {1'b1, smdr};
      else
        dw <= 1'b0;
    end else;
  end
//exec - End

//mem - Start
  always @ (posedge clock or negedge reset) begin
    if (!reset)
      {wbIr, regC1} <= {{16{1'b0}}, {16{1'b0}}};
    else if (state == EXEC) begin
      wbIr <= memIr;
      if (memIr[15:11] == LOAD)
        regC1 <= dDataIn;
      else
        regC1 <= regC;
      
      end
    else;
  end
//mem - End

//wb - Start
  always @ (posedge clock or negedge reset) begin
    if (!reset) begin
      gr[0] <= {16{1'b0}};
      gr[1] <= {16{1'b0}};
      gr[2] <= {16{1'b0}};
      gr[3] <= {16{1'b0}};
    end else if (state == EXEC) begin
      if ((wbIr[15:11] == LOAD)
      || (wbIr[15:11] == ADD))
        gr[wbIr[10:8]] <= regC1;
    end
  end
//wb - End

  //assign dDataOut = smdr1;
  //assign dWE = dw;
  //assign dAddr = regC;

endmodule

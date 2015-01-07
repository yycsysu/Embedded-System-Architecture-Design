`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:56:30 12/06/2014 
// Design Name: 
// Module Name:    pcpu 
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
module pcpu(
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


//Stage instruction register
reg [15:0] idIr, exIr, memIr, wbIr;

//General registers
reg signed [15:0] gr[7:0];
//IF
reg [7:0] pc;
//ID
reg signed [15:0] regA, regB, smdr;

//EX
reg signed [15:0] regC, smdr1, ALUo;
reg zf, nf, cf, dw;

//WB
reg signed [15:0] regC1;

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
      if (idIr[15:11] == LOAD
        && (iDataIn[15:11] == ADD
         || iDataIn[15:11] == ADDC
         || iDataIn[15:11] == SUB
         || iDataIn[15:11] == SUBC
         || iDataIn[15:11] == CMP
         || iDataIn[15:11] == AND
         || iDataIn[15:11] == OR
         || iDataIn[15:11] == XOR)
        && (iDataIn[2:0] == idIr[10:8]
         || iDataIn[6:4] == idIr[10:8])) begin
        idIr <= {NOP, 11'b000_0000_0000};
      end else if (idIr[15:11] == LOAD
        && (iDataIn[15:11] == STORE
         || iDataIn[15:11] == SLL
         || iDataIn[15:11] == SRL
         || iDataIn[15:11] == SLA
         || iDataIn[15:11] == SRA)
       && (iDataIn[7:4] == idIr[10:8])) begin
        idIr <= {NOP, 11'b000_0000_0000};
      end else if (idIr[15:11] == LOAD
        && (iDataIn[15:11] == ADDI
         ||iDataIn[15:11] == SUBI
         ||iDataIn[15:11] == LDIH
         ||iDataIn[15:11] == BZ
         ||iDataIn[15:11] == BNZ
         ||iDataIn[15:11] == BN
         ||iDataIn[15:11] == BNN
         ||iDataIn[15:11] == BC
         ||iDataIn[15:11] == BNC
         || idIr[15:11] == JMPR)
        && (iDataIn[10:8] == idIr[10:8])) begin
        idIr <= {NOP, 11'b000_0000_0000};
      end else begin
        idIr <= iDataIn;
        if (((memIr[15:11] == BZ)  // BZ BN BC
            && (zf == 1'b1))
        || ((memIr[15:11] == BNZ)
            && (zf == 1'b0))
        || ((memIr[15:11] == BN)
            && (nf == 1'b1))
        || ((memIr[15:11] == BNN)
            && (nf == 1'b0))
        || ((memIr[15:11] == BC)
            && (cf == 1'b1))
        || ((memIr[15:11] == BNC)
            && (cf == 1'b0))
        || (memIr[15:11] == JUMP)
        || (memIr[15:11] == JMPR))
          pc <= regC[7:0];
        else pc <= pc + 1'b1;
      end
    end

//Instruction Fectch - End

//Instruction Decoder - Start
  always @ (posedge clock or negedge reset) begin
    if (!reset)
      {exIr, regA, regB, smdr} <= {{16{1'b0}}, {16{1'b0}}, {16{1'b0}}, {16{1'b0}}};
    else if (state == EXEC) begin
      exIr <= idIr;
      if ((idIr[15:11] == BZ) || (idIr[15:11] == BNZ) || (idIr[15:11] == BN)
        || (idIr[15:11] == BNN) || (idIr[15:11] == BC) || (idIr[15:11] == BNC)
        || (idIr[15:11] == JMPR) || (idIr[15:11] == LDIH) || (idIr[15:11] == ADDI)
        || (idIr[15:11] == SUBI)) begin
        if (idIr[10:8] == exIr[10:8])
          regA <= ALUo;
        else if (idIr[10:8] == memIr[10:8] && memIr[15:11] == LOAD)
          regA <= dDataIn;
        else if (idIr[10:8] == memIr[10:8])
          regA <= regC;
        else if (idIr[10:8] == wbIr[10:8])
            regA <= regC1;
        else regA <= gr[(idIr[10:8])]; //operand1 in 10-8 bits , I type
      end else begin
        if (idIr[7:4] == exIr[10:8])
          regA <= ALUo;
        else if (idIr[7:4] == memIr[10:8] && memIr[15:11] == LOAD)
            regA <= dDataIn;
        else if (idIr[7:4] == memIr[10:8])
            regA <= regC;
        else if (idIr[7:4] == wbIr[10:8])
            regA <= regC1;
        else regA <= gr[idIr[6:4]]; //operand2 in 6-4 bits , RI/R type
      end
      
      if ((idIr[15:11] == LOAD) || (idIr[15:11] == SLL) || (idIr[15:11] == SRL)
        || (idIr[15:11] == SLA) || (idIr[15:11] == SRA)) begin //RI type;
        regB <= {12'b0000_0000_0000, idIr[3:0]}; //operand3 in 3-0 bits
      end else if (idIr[15:11] == STORE) begin //RI type with smdr
        regB <= {12'b0000_0000_0000, idIr[3:0]};
        smdr <= gr[idIr[10:8]];
      end else if ((idIr[15:11] == BZ) || (idIr[15:11] == BNZ) || (idIr[15:11] == BN)
               || (idIr[15:11] == BNN) || (idIr[15:11] == BC) || (idIr[15:11] == BNC)
               || (idIr[15:11] == JUMP) || (idIr[15:11] == JMPR) || (idIr[15:11] == ADDI)
               || (idIr[15:11] == SUBI)) begin // I type
        regB <= {8'b0000_0000, idIr[7:0]}; //operand2, 3: val2 + val3, iType;
      end else if (idIr[15:11] == LDIH) begin // Itype
        regB <= {idIr[7:0], 8'b0000_0000};
      end else begin
        if (idIr[3:0] == exIr[10:8])
            regB <= ALUo;
        else if (idIr[3:0] == memIr[10:8] && (memIr[15:11] == LOAD))
            regB <= dDataIn;
        else if (idIr[3:0] == memIr[10:8])
            regB <= regC;
        else if (idIr[3:0] == wbIr[10:8])
            regB <= regC1;
        else regB <= gr[idIr[2:0]]; //operand3: r3 , R type
      end
    end else;
  end
//Instruction Decoder - End

  reg exCf, exNf, exZf;
    //ALU Start
  always @ (*) begin
    if (!reset) begin
      {cf, zf, nf} <= {1'b0, 1'b0, 1'b0};
    end else if ((exIr[15:11] == ADD)
      || (exIr[15:11] == ADDI)
      || (exIr[15:11] == JMPR)
      || (exIr[15:11] == LDIH)
      || (exIr[15:11] == BZ)
      || (exIr[15:11] == BNZ)
      || (exIr[15:11] == BN)
      || (exIr[15:11] == BNN)
      || (exIr[15:11] == BC)
      || (exIr[15:11] == BNC)) begin
        {cf, ALUo} <= regA + regB + 1'b0;
      end else if (exIr[15:11] == ADDC) begin
        {cf, ALUo} <= regA + regB + cf;
      end else if (exIr[15:11] == SUBC) begin
        {cf, ALUo} <= regA - regB - cf;
      end else if ((exIr[15:11] == CMP)
               || (exIr[15:11] == SUB)
               || (exIr[15:11] == SUBI)) begin
        {cf, ALUo} <= regA - regB - 1'b0;
      end else if (exIr[15:11] == AND) begin
        ALUo <= regA & regB;
      end else if (exIr[15:11] == OR) begin
        ALUo <= regA | regB;
      end else if (exIr[15:11] == XOR) begin
        ALUo <= regA ^ regB;
      end else if (exIr[15:11] == SLL) begin
        {cf, ALUo} <= regA << regB;
      end else if (exIr[15:11] == SRL) begin
        ALUo <= regA >> regB;
      end else if (exIr[15:11] == SLA) begin
        {cf, ALUo} <= regA <<< regB;
      end else if (exIr[15:11] == SRA) begin
        ALUo <= regA >>> regB;
      end else begin
        ALUo <= regB;
      end
      
      if ((exIr[15:11] == ADD)
      || (exIr[15:11] == ADDC)
      || (exIr[15:11] == ADDI)
      || (exIr[15:11] == LDIH)
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
  end
   //ALU End 

//exec - Start
  always @ (posedge clock or negedge reset) begin
    if (!reset) begin
      {memIr, regC, smdr1}
      <= {{16{1'b0}}, {16{1'b0}}, {16{1'b0}}};
    end else if (state == EXEC) begin
      memIr <= exIr;
      regC <= ALUo;
      //{cf, nf, zf} <= {exCf, exNf, exZf};
       
    end
  end
//exec - End

//mem - Start
  always @ (posedge clock or negedge reset) begin
    if (!reset)
      {wbIr, regC1} <= {{16{1'b0}}, {16{1'b0}}};
    else if (state == EXEC) begin
      wbIr <= memIr;
      if (memIr[15:11] == LOAD) begin
        regC1 <= dDataIn;
      end else begin
        regC1 <= regC;
      end
    end
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
      || (wbIr[15:11] == AND)
      || (wbIr[15:11] == OR)
      || (wbIr[15:11] == XOR)
      || (wbIr[15:11] == ADD)
      || (wbIr[15:11] == ADDI)
      || (wbIr[15:11] == ADDC)
      || (wbIr[15:11] == LDIH)
      || (wbIr[15:11] == SUB)
      || (wbIr[15:11] == SUBI)
      || (wbIr[15:11] == SUBC)
      || (wbIr[15:11] == SLL)
      || (wbIr[15:11] == SLA)
      || (wbIr[15:11] == SRL)
      || (wbIr[15:11] == SRA)) begin
        gr[wbIr[10:8]] <= regC1;
      end
    end
  end
//wb - End

  //assign dDataOut = smdr1;
  //assign dWE = dw;
  //assign dAddr = regC;
  assign iAddr = pc;


endmodule

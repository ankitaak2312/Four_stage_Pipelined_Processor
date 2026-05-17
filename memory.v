`include "define.v"

module memory(clk, rst, wen, addr, data_in, fileid, data_out);

input clk, rst, wen, fileid;
input [`ISIZE-1:0] addr;
input [`DSIZE-1:0] data_in;
output [`DSIZE-1:0] data_out;

reg [`DSIZE-1:0] mem [0:31];

// Hardcode instructions directly
initial begin
    mem[0]  = 32'h00000000; // NOP

    mem[1]  = 32'h05031000; // SUB R2,R8,R3

    // 3 NOPs 
    mem[2]  = 32'h00000000;
    mem[3]  = 32'h00000000;
    mem[4]  = 32'h00000000;

    mem[5]  = 32'h00430800; // ADD R1,R2,R3

    // 3 NOPs
    mem[6]  = 32'h00000000;
    mem[7]  = 32'h00000000;
    mem[8]  = 32'h00000000;

    mem[9]  = 32'h0901F000; // AND R30,R8,R1

    // 3 NOPs
    mem[10] = 32'h00000000;
    mem[11] = 32'h00000000;
    mem[12] = 32'h00000000;

    mem[13] = 32'h1502F800; // MUL R31,R8,R2

    // 3 NOPs
    mem[14] = 32'h00000000;
    mem[15] = 32'h00000000;
    mem[16] = 32'h00000000;

    mem[17] = 32'h03fA5000; // ADD R10,R31,R26

    mem[18] = 32'h18E40001; // ADDI R4,R7,1
end

assign data_out = mem[addr];

always @(posedge clk) begin
    if(wen)
        mem[addr] <= data_in;
end

endmodule
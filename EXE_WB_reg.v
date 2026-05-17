`timescale 1ns / 1ps

module EXE_WB_stage(
    input clk,
    input rst,
    input [31:0] alu_in,
    input [4:0] waddr,
    input wen_in,

    output reg [31:0] exe_wb_alu_in,
    output reg [4:0] exe_wb_addr,
    output reg wen_out
);

always @(posedge clk) begin
    if (rst) begin
        exe_wb_alu_in <= 0;
        exe_wb_addr   <= 0;
        wen_out       <= 0;
    end else begin
        exe_wb_alu_in <= alu_in;
        exe_wb_addr   <= waddr;
        wen_out       <= wen_in;
    end
end

endmodule
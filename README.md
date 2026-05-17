# Four Stage Pipelined Processor

A Verilog HDL implementation of a 4-stage pipelined processor designed to demonstrate instruction pipelining, parallel execution, and processor architecture concepts.

This project extends the basic pipelined processor design by introducing additional pipeline stages and registers for improved instruction flow and modularity.

# Overview

The processor executes instructions using a 4-stage pipeline architecture, allowing multiple instructions to be processed simultaneously at different stages.

# The design includes:

Instruction Fetch
Instruction Decode
Execute
Write Back

# The project also contains:

ALU implementation
Control unit
Register file
Pipeline registers
Memory module
Testbench for simulation

Pipeline Stages
1. IF Stage (Instruction Fetch)
Fetches instructions from instruction memory
Updates the Program Counter (PC)

Module: IF_IDstage.v

2. ID Stage (Instruction Decode)
Decodes instruction fields
Reads operands from register file
Generates control signals

Modules Used:

control.v
regfile.v

3. EXE Stage (Execute)
Performs arithmetic and logical operations
Processes ALU computations

Modules Used:

alu.v
ID_EXEstage.v

4. WB Stage (Write Back)
Writes processed data back to registers
Handles memory/output updates

Module: EXE_WB_reg.v

# Project Structure
Four_stage_Pipelined_Processor/
│
├── alu.v                           # Arithmetic Logic Unit
├── control.v                       # Control Unit
├── define.v                        # Macro and constant definitions
├── EXE_WB_reg.v                    # Execute to Write Back pipeline register
├── ID_EXEstage.v                   # Decode and Execute stage
├── IF_IDstage.v                    # Fetch and Decode stage
├── imem_test0.mem                  # Instruction memory initialization
├── memory.v                        # Memory module
├── PC.v                            # Program Counter
├── pipelined_4stage.v              # Top-level processor module
├── regfile.v                       # Register File
├── test_bench_4_stage_pipeline.v   # Testbench for simulation
└── README.md

# Features
4-stage pipelined architecture
Modular Verilog design
Pipeline register implementation
ALU operations
Register file support
Memory handling
Instruction execution flow
Testbench for verification and simulation

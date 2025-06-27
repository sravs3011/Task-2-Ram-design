# Task-2 RAM Module - CodTech Internship

This is my task-2 from codtech internship. In this I wrote verilog code for 16x8 RAM and a testbench to test reading and writing data.

## What this RAM does

- It has 16 memory locations (4-bit address).
- Each location stores 8-bit data.
- If we=1, then data is written to memory.
- If we=0, then data is read from memory.

## Ports used

- clk → input clock
- we → write enable (1 for write, 0 for read)
- addr → 4-bit address input
- din → 8-bit input data
- dout → 8-bit output data
- mem[15:0] is used inside

## Files in repo

- RAM.v — design code
- RAM_tb.v — testbench code
- ram.vcd — waveform file (generated after running)

## How I ran it

I used iverilog and gtkwave for simulation.

```bash
iverilog -o ram_test RAM.v RAM_tb.v
vvp ram_test
gtkwave ram.vcd

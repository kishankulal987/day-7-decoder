N-bit Decoder in Verilog

Overview

This project implements a parameterized N-bit decoder in Verilog using behavioral modeling. The decoder takes an N-bit input (in) and produces a 2^N-bit output (out), where only the bit corresponding to the input’s decimal value is set to 1 (e.g., for N=3, input 010 sets out[2]=1). A testbench is included to verify functionality for a 3-bit decoder through simulation in Vivado.

Module: decoder





Description: A parameterized N-bit decoder.



Parameters:





N: Number of input bits (default: 3).



Inputs:





in[N-1:0]: N-bit input representing a binary number.



Outputs:





out[(2**N)-1:0]: 2^N-bit output with one bit set high based on the input value.



Functionality:





Uses a left shift operation (out = 1 << in) to set the out bit corresponding to the decimal value of in.



For example, if N=3 and in=2 (binary 010), out=00000100 (bit 2 is high).



Style: Behavioral modeling with a single continuous assignment.

Testbench: decoder_tb





Description: A testbench to simulate and verify the 3-bit decoder (N=3).



Functionality:





Inputs: 3-bit in (defined by localparam N=3).



Tests all input combinations (in = 000 to 111) using a for loop.



Applies a 10ns delay between test cases.



Displays inputs (in) and outputs (out) using $display.



Time Scale: Defined as 1ns / 1ps for simulation precision.



Purpose: Verifies the decoder sets the correct output bit for each input value.

Files





decoder.v: Verilog module for the N-bit decoder.



decoder_tb.v: Testbench for simulation (configured for N=3).

Circuit Diagram

Below is the circuit diagram for the 3-bit decoder.
![1_iOfLDA4wyNKzW3etCYrgGw](https://github.com/user-attachments/assets/d5e81ee6-0de0-4aa7-95de-0ce2b8d07f07)


Simulation in Vivado





Setup:





Open Xilinx Vivado (e.g., 2023.2 or later).



Create a new RTL project and specify a project name/location.



Add Files:





Add decoder.v and decoder_tb.v via "Add Sources."



Set decoder_tb as the top module for simulation.



Run Simulation:





Go to "Flow" > "Run Simulation" > "Run Behavioral Simulation."



Vivado’s XSim simulator executes the testbench.



View Results:





Check the console for $display output (see below).



Open the waveform viewer to visualize signals.

Simulation Waveform


Below is the simulation waveform from Vivado, showing input in[2:0] and output out[7:0] over time.
![Screenshot 2025-06-08 194433](https://github.com/user-attachments/assets/96107466-0174-4f6a-a05c-29fdd983661d)


Console Output



Below is the console output from the testbench simulation.
![Screenshot 2025-06-08 195331](https://github.com/user-attachments/assets/bf2ac1c3-db11-414f-962c-fb77c36af1f6)






in=000 out=00000001



in=001 out=00000010



in=010 out=00000100



in=011 out=00001000



in=100 out=00010000



in=101 out=00100000



in=110 out=01000000



in=111 out=10000000

Features





Parameterized Design: Supports any N-bit input via the N parameter.



Compact Implementation: Uses a single shift operation for simplicity and efficiency.



Exhaustive Testing: Testbench covers all 2^N input combinations for N=3.



Educational: Ideal for learning Verilog, decoders, and parameterized designs.



Synthesizable: Suitable for FPGA implementation.

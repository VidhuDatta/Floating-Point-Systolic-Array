# Floating-Point-Systolic-Array

This study presents the design and simulation of an 8x8 systolic array for performing matrix multiplication with 32-bit floating point numbers. Leveraging parallelism and pipelining, the array efficiently processes subsets of input matrices, propagating partial products along rows and columns. Through Verilog hardware description languages and industry-standard simulation tools (Vivado), we simulate the systolic array with a test bench.

We use the following steps to design an 8x8 systolic array:
* Design a floating point adder
* Design a floating point multiplier
* Design PE Block (Processing Element Block)
* Design a 4x4 Systolic Array using the PE block
* Design an 8x8 Systolic Array using 4x4 Systolic Array



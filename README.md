# pipeline-DES-verilog
Pipelined DES implementation described in Verilog, for synthetizing on FPGA

## How does it work? 
It's simple, you put in a plaintext value and secret key, and 17 clock cycles later you have your encrypted plaintext in output. Since it's pipelined, you can put a different couple of plaintext / key each clock cycle.

## Module Input / Output explanation:
The module is defined like:

    module DES(
        input [0:63] plaintext,
        input [0:63] key,
        input clk,
        input en,
        input reset_n,
        output [0:63] cyphertext
        );

Where plaintext, key, cyphertext and clk are self explanatory, en is the enable signal, set high/low to start/pause the computation. reset_n is the reset signal (active low), setting it low will flush the pipeline.

## Testbench result
![Testbench result](https://github.com/mew27/pipeline-DES-verilog/blob/master/testbench%20result.PNG)

`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:49:56 06/13/2025
// Design Name:   jk_ff
// Module Name:   C:/Users/ACER/Documents/xilinix projects/jk_ff/tb_jk_ff.v
// Project Name:  jk_ff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jk_ff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_jk_ff;

	// Inputs
	reg clk;
	reg rst;
	reg j;
	reg k;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	jk_ff uut (
		.clk(clk), 
		.rst(rst), 
		.j(j), 
		.k(k), 
		.q(q)
	);
   always #50 clk=~clk;
	initial begin
	   $monitor("clk|rst|j|k|q");
		$monitor("%b|%b|%b|%b|%b",clk,rst,j,k,q);
		clk = 0;
		
		rst = 1;
		j = 0;
		k = 0;
		#100;
		
		rst = 0;
		j = 0;
		k = 0;
		#100;
		
		rst = 0;
		j = 0;
		k = 1;
		#100;
		
		rst = 0;
		j = 1;
		k = 0;
		#100;
		
		rst = 0;
		j = 1;
		k = 1;
		#100;
		
		rst = 0;
		j = 1;
		k = 1;
		#100;
        
		$stop;

	end
      
endmodule


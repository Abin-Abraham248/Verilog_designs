`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:44:25 06/13/2025
// Design Name:   d_ff
// Module Name:   C:/Users/ACER/Documents/xilinix projects/d_ff/tb_d_ff.v
// Project Name:  d_ff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: d_ff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_d_ff;

	// Inputs
	reg clk;
	reg rst;
	reg d;

	// Outputs
	wire q_n;

	// Instantiate the Unit Under Test (UUT)
	d_ff uut (
		.clk(clk), 
		.rst(rst), 
		.d(d), 
		.q_n(q_n)
	);
   
	always #50 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		
		rst = 1;
		d = 0;
		#100;
		
		rst=0;
		d=0;
		#100;
		
		rst=0;
		d=1;
      #100;
		$stop;
        
		// Add stimulus here

	end
      
endmodule


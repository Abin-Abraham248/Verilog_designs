`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:25:01 06/13/2025
// Design Name:   t_ff
// Module Name:   C:/Users/ACER/Documents/xilinix projects/t_ff/tb_t_ff.v
// Project Name:  t_ff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: t_ff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_t_ff;

	// Inputs
	reg clk;
	reg rst;
	reg t;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	t_ff uut (
		.clk(clk), 
		.rst(rst), 
		.t(t), 
		.q(q)
	);
   always #50 clk=~clk;
	initial begin
		$display("clk|rst|t|q|");
		$monitor("%b|%b|%b|%b",clk,rst,t,q);
		clk = 0;
		
		rst = 1;
		t = 0;
		#100;
		
		rst=0;
		t=0;
		#100;
		
		rst=0;
		t=1;
		#100;
		
		rst=0;
		t=1;
		#100;
		
      $stop;  
	end
      
endmodule


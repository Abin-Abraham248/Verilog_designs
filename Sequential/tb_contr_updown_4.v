`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:05:18 06/06/2025
// Design Name:   contr_updown_4
// Module Name:   C:/Users/ACER/Documents/xilinix projects/Updown_counter_4/tb_contr_updown_4.v
// Project Name:  Updown_counter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: contr_updown_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_contr_updown_4;

	// Inputs
	reg clk;
	reg rst;
	reg s;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	contr_updown_4 uut (
		.clk(clk), 
		.rst(rst), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		forever #50 clk=~clk;
		end
	initial begin
	   
		rst = 1;
		s = 0;
		#100;
      
		rst = 0;
		s=1;
		#400;
		
		rst=0;
		s=0;
		#400;
		$stop;
		
	end
      
endmodule


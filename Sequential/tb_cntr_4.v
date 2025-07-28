`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:44:55 06/06/2025
// Design Name:   cntr_4
// Module Name:   C:/Users/ACER/Documents/xilinix projects/Counter_4/tb_cntr_4.v
// Project Name:  Counter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cntr_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_cntr_4;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	cntr_4 uut (
		.clk(clk), 
		.rst(rst), 
		.y(y)
	);
	
	
	initial begin
	   
	   clk = 0;
		forever  #100 clk = ~clk;
	  end
	  
	initial begin
	
		rst = 1;	
		#100;
		rst = 0;
		#1000;
		
	  end
      
endmodule


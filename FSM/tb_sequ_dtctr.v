`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:01:44 06/10/2025
// Design Name:   seq_detctor
// Module Name:   C:/Users/ACER/Documents/xilinix projects/Seq_detctor/tb_sequ-dtctr.v
// Project Name:  Seq_detctor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seq_detctor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_sequ_dtctr;

	// Inputs
	reg clk;
	reg rst;
	reg x;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	seq_detctor uut (
		.clk(clk), 
		.rst(rst), 
		.x(x), 
		.z(z)
	);

	initial begin
		clk = 0;
		forever #50 clk=~clk;
		end
   initial begin
	   rst=1;
		#50;
		
		rst=0;
		x=1;
		#50;
		
		rst=0;
		x=0;
		#50;
		
		rst=0;
		x=0;
		#50;
		
		rst=0;
		x=1;
		#50;
		
		rst=0;
		x=0;
		#50;
		
		rst=0;
		x=1;
		#50;
		
		rst=0;
		x=0;
		#50;
		
		rst=0;
		x=0;
		#50;
		
		rst=0;
		x=1;
		#50;
		
		$stop;
		end
      
endmodule


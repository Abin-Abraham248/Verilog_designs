`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:18:47 06/10/2025
// Design Name:   sipo_4
// Module Name:   C:/Users/ACER/Documents/xilinix projects/shift_reg_sipo/tb_sipo.v
// Project Name:  shift_reg_sipo
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sipo_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_sipo;

	// Inputs
	reg s_in;
	reg rst;
	reg clk;

	// Outputs
	wire [3:0] p_out;

	// Instantiate the Unit Under Test (UUT)
	sipo_4 uut (
		.s_in(s_in), 
		.rst(rst), 
		.clk(clk), 
		.p_out(p_out)
	);

   always #25 clk=~clk;
	initial begin
      clk = 0;
		rst=1;
		s_in=0;
		#100;
		 
		rst = 0;
		s_in = 1;
		#100;
		
		rst = 0;
		s_in = 0;
		#100;
		
		rst = 0;
		s_in = 1;
		#100;
		
		rst = 0;
		s_in = 0;
		#100;
		
		rst = 0;
		s_in = 1;
		#100;
		
		rst = 0;
		s_in = 1;
		#100;
		$stop;
	end
      
endmodule


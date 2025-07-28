`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:28:36 06/10/2025
// Design Name:   siso_4
// Module Name:   C:/Users/ACER/Documents/xilinix projects/Shift_reg_siso/tb_siso_4.v
// Project Name:  Shift_reg_siso
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: siso_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_siso_4;

	// Inputs
	reg srl_in;
	reg clk;
	reg rst;

	// Outputs
	wire srl_out;

	// Instantiate the Unit Under Test (UUT)
	siso_4 uut (
		.srl_in(srl_in), 
		.clk(clk), 
		.rst(rst), 
		.srl_out(srl_out)
	);

	
	always #50 clk=~clk;
	initial begin
	   clk=0;
		rst = 1;
		srl_in=0;
		#100;
		
		rst=0;
		srl_in = 1;
		#100;
		
		rst=0;
		srl_in = 0;
		#100;
		
		rst=0;
		srl_in = 1;
		#100;
		
		rst=0;
		srl_in = 0;
		#100;
		
    end
      
endmodule


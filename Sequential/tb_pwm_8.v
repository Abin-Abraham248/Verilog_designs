`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:51:18 06/12/2025
// Design Name:   pwm_8
// Module Name:   C:/Users/ACER/Documents/xilinix projects/Pwm_generator/tb_pwm_8.v
// Project Name:  Pwm_generator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pwm_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_pwm_8;

	// Inputs
	reg rst;
	reg clk;
	reg dc_25;
	reg dc_50;
	reg dc_75;

	// Outputs
	wire pwm_out1;
	wire pwm_out2;
	wire pwm_out3;
   
	// Instantiate the Unit Under Test (UUT)
	pwm_8 uut (
		.rst(rst), 
		.clk(clk), 
		.dc_25(dc_25), 
		.dc_50(dc_50), 
		.dc_75(dc_75), 
		.pwm_out1(pwm_out1), 
		.pwm_out2(pwm_out2), 
		.pwm_out3(pwm_out3)
		
	);

   always #2clk=~clk;
	initial begin
		rst=1;
		#10;
		
		rst = 0;
		clk = 0;
		dc_25 = 1;
		dc_50 = 1;
		dc_75 = 1;
      
	   
      
		// Add stimulus here

	end
      
endmodule


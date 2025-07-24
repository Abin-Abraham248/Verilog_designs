`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:47:25 06/07/2025
// Design Name:   mux_2_1
// Module Name:   C:/Users/ACER/Documents/xilinix projects/Mux_2_1/tb_mux.v
// Project Name:  Mux_2_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_2_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mux;

	// Inputs
	reg [0:1] d;
	reg s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_2_1 uut (
		.d(d), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		d = 2'b01;
		s = 0;
		#100;
		
		d = 2'b01;
		s = 1;
		#100;
		
		d = 2'b10;
		s = 0;
		#100;
		
		d = 2'b10;
		s = 1;
		#100;
		
      $stop;  
		
	end
      
endmodule


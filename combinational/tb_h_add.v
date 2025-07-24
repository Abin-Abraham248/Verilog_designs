`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:23:45 06/06/2025
// Design Name:   h_add
// Module Name:   C:/Users/ACER/Documents/xilinix projects/Half_adder/tb_h_add.v
// Project Name:  Half_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: h_add
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_h_add;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	h_add uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		a = 0;
		b = 1;

		#100;
        
		  
		a = 1;
		b = 0;

		#100;
         
		a = 1;
		b = 1;

		#100;
      $finish; 

	end
      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:12:08 06/05/2025
// Design Name:   or_gate
// Module Name:   C:/Users/ACER/Documents/xilinix projects/Or/tb_or_gate.v
// Project Name:  Or
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: or_gate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_or_gate;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	or_gate uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 0;
		b = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 1;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		a = 1;
		b = 1;

		// Wait 100 ns for global reset to finish
		#100;  
		$stop;
		// Add stimulus here

	end
      
endmodule


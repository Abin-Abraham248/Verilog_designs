`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:01:18 06/07/2025
// Design Name:   Rca_4
// Module Name:   C:/Users/ACER/Documents/xilinix projects/Ripple_carry_adder_4/tb_rca_4.v
// Project Name:  Ripple_carry_adder_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Rca_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_rca_4;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	Rca_4 uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 4'b0001;
		b = 4'b0001;
		cin = 0;

		#100;
		
		a = 4'b1001;
		b = 4'b0101;
		cin = 0;

		#100;
		
		a = 4'b1011;
		b = 4'b1101;
		cin = 0;

		#100;
		
		a = 4'b1111;
		b = 4'b0001;
		cin = 0;

		#100;
		$stop;

	end
      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:27:01 06/05/2025
// Design Name:   full_adder
// Module Name:   C:/Users/ACER/Documents/xilinix projects/Full_adder/tb_full.v
// Project Name:  Full_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:46:11 06/05/2025
// Design Name:   full_adder
// Module Name:   C:/Users/ACER/Documents/xilinix projects/Full_adder/tb_full_adder.v
// Project Name:  Full_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_full_adder;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial  begin
	  // Initialize Inputs
	   a = 0;b = 0;cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
      a=0;b=	0;cin=1;

      #100;
       
      a=0;b=	1;cin=0;
		
		#100;
       
      a=0;b=	1;cin=1;
		
		#100;
       
      a=1;b=0;cin=0;
		
		#100;
       
      a=1;b=0;cin=1;
		
		#100;
       
      a=1;b=1;cin=0;
		
		#100;
       
      a=1; b=1; cin=1;
		
		#100;
		$finish;
      end
 endmodule


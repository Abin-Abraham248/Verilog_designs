`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:26:09 06/12/2025
// Design Name:   comp_4
// Module Name:   C:/Users/ACER/Documents/xilinix projects/Comparator_4/tb_comp_4.v
// Project Name:  Comparator_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comp_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_comp_4;

	reg [3:0] a;
	reg [3:0] b;

	wire [2:0]y;

	comp_4 uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	initial begin
		
		a = 4'b1111;b = 4'b1111;#100;
		a = 4'b1001;b = 4'b0110; #100;
		a = 4'b0011;b = 4'b0100;#100;
      $finish;  
	end
      
endmodule


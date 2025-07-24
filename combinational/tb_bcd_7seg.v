`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:33:24 06/14/2025
// Design Name:   bcd_7seg
// Module Name:   C:/Users/ACER/Documents/xilinix projects/Bcd_7segment_decoder/tb_bcd_7seg.v
// Project Name:  Bcd_7segment_decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd_7seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_bcd_7seg;

	// Inputs
	reg [3:0] bcd_in;

	// Outputs
	wire [6:0] out;

	// Instantiate the Unit Under Test (UUT)
	bcd_7seg uut (
		.bcd_in(bcd_in), 
		.out(out)
	);

	initial begin
   	bcd_in = 4'b0000;#10;
		bcd_in = 4'b0001;#10;
		bcd_in = 4'b0010;#10;
		bcd_in = 4'b0011;#10;
		bcd_in = 4'b0100;#10;
		bcd_in = 4'b0101;#10;
		bcd_in = 4'b0110;#10;
		bcd_in = 4'b0111;#10;
		bcd_in = 4'b1000;#10;
		bcd_in = 4'b1001;#10;
      $stop;
	end
      
endmodule


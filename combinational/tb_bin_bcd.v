`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:51:07 06/14/2025
// Design Name:   bin_bcd_4
// Module Name:   C:/Users/ACER/Documents/xilinix projects/Binary_bcd/tb_bin_bcd.v
// Project Name:  Binary_bcd
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bin_bcd_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_bin_bcd;

	reg [3:0] bin;

	wire [3:0] bcd_tens;
	wire [3:0] bcd_unit;

	bin_bcd_4 uut (
		.bin(bin), 
		.bcd_tens(bcd_tens),
		.bcd_unit(bcd_unit)
	);

	initial begin
	   $monitor("binary|BCD");
		$monitor("%b|%b %b",bin,bcd_tens,bcd_unit);
		bin = 4'b0000;#10;
      bin = 4'b0001;#10;
		bin = 4'b0010;#10;
		bin = 4'b0011;#10;
		bin = 4'b0100;#10;
		bin = 4'b0101;#10;
		bin = 4'b0110;#10;
		bin = 4'b0111;#10;
		bin = 4'b1000;#10;
		bin = 4'b1001;#10;
		bin = 4'b1010;#10;
		bin = 4'b1011;#10;
		bin = 4'b1100;#10;
		bin = 4'b1101;#10;
		bin = 4'b1110;#10;
		bin = 4'b1111;#10;
		$stop;   	
	end  
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:39:41 06/14/2025 
// Design Name: 
// Module Name:    bcd_7seg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bcd_7seg(
    input [3:0] bcd_in,
    output reg[6:0] out	, // A-G in 7 segment display
	 output reg[3:0]an //an3-an0
    );
    
	 always @ (*)begin
	   an=4'b1110;
      case(bcd_in)
        4'b0000: out = 7'b0000001;
		  4'b0001: out = 7'b1001111;
		  4'b0010: out = 7'b0010010;
		  4'b0011: out = 7'b0000110;
		  4'b0100: out = 7'b1001100;
		  4'b0101: out = 7'b0100100;
		  4'b0110: out = 7'b0100000;
		  4'b0111: out = 7'b0001111;
		  4'b1000: out = 7'b0000000;
		  4'b1001: out = 7'b0000100;
		  default: out = 7'b1111111;
		  endcase
		end
endmodule

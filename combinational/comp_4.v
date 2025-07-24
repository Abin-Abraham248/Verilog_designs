`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:11:47 06/12/2025 
// Design Name: 
// Module Name:    comp_4 
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
module comp_4(
    input [3:0] a,
    input [3:0] b,
    output reg[2:0]y
    );
	 
	 always @ (a or b)begin
	   y[2]=(a>b)?1:0;
		y[1]=(a<b)?1:0;
		y[0]=(a==b)?1:0;
		end
endmodule

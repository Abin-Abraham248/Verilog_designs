`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:15 06/05/2025 
// Design Name: 
// Module Name:    h_add 
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
module h_add(
    input a,
    input b,
    output s,
    output c
    );
	 
	 assign s=a^b;
	 assign c=a&b;
	 


endmodule

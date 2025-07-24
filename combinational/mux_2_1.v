`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:44:52 06/07/2025 
// Design Name: 
// Module Name:    mux_2_1 
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
module mux_2_1(
    input [0:1]d,
    input s,
    output y
    );
	 
	 assign y=s?d[1]:d[0];
	 
endmodule

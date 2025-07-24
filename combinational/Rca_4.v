`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:58 06/07/2025 
// Design Name: 
// Module Name:    Rca_4 
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
module Rca_4(
    input [3:0]a,
    input [3:0]b,
    input cin,
    output [3:0]s,
    output cout
    );
	 wire [2:0]c;
	 
	 full_adder f0(a[0],b[0],cin,s[0],c[0]);
	 full_adder f1(a[1],b[1],c[0],s[1],c[1]);
	 full_adder f2(a[2],b[2],c[1],s[2],c[2]);
	 full_adder f3(a[3],b[3],c[2],s[3],cout);

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:34:21 06/13/2025 
// Design Name: 
// Module Name:    d_ff 
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
module d_ff(
    input clk,
    input rst,
    input d,
    output reg q_n
    );
	 always @ (posedge clk)begin
	 if(rst)
	  q_n<=0;
	 else 
	  q_n<=d;
    end
endmodule

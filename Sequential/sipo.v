`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:55 06/10/2025 
// Design Name: 
// Module Name:    sipo_4 
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
module sipo_4(
    input s_in,
    input rst,
    input clk,
    output reg [3:0]p_out
    );
	 
	 always @ (posedge clk) begin
	  if (rst)
	   p_out<=4'b0000;
	  else
      p_out<={p_out[2:0],s_in};
     end		
endmodule

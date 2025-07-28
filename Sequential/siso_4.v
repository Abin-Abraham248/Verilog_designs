`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:21 06/10/2025 
// Design Name: 
// Module Name:    siso_4 
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
module siso_4(
    input srl_in,
    input clk,
    input rst,
	 output reg srl_out
    );
    reg [3:0]q;
	 
	 always @ (posedge clk ) begin
	  if (rst)
	   q<=4'b0000;
	  else begin
	   q<={q[2:0],srl_in};
		srl_out<=q[3];
      end
	  end
endmodule

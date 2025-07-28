`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:39:51 06/06/2025 
// Design Name: 
// Module Name:    cntr_4 
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
module cntr_4(
    input clk,
    input rst,
    output [3:0]y
    );
	 
	 reg [3:0]y;
	 
	 always @(posedge clk or posedge rst)
	  begin
	    if (rst)
     		 y[3:0]<=4'b0000;
		 else 
		    y[3:0]<=y+1;
	  end

endmodule

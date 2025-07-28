`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:57:05 06/06/2025 
// Design Name: 
// Module Name:    contr_updown_4 
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
module contr_updown_4(
    input clk,
    input rst,
    input s,
    output reg[3:0]y
    );
	 

    always @(posedge clk or posedge rst )
	   begin
		  if (rst) 
			  y<=4'b0000;  
		  else
		   begin
			  if (s) 
			    y<=y+4'b0001;
			  else 
			    y<=y-4'b0001;
			end
		end
endmodule

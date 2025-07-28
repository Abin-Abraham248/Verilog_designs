`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:58:05 06/13/2025 
// Design Name: 
// Module Name:    t_ff 
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
module t_ff(
    input clk,
    input rst,
    input t,
    output reg q
    );
    
	 always @(posedge clk)begin
	  if (rst)
	   q<=0;
	  else begin 
	    if(t)
		  q<=~q;
		 else
		  q<=q;
	    end
	  end 
endmodule

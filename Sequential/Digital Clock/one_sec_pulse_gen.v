`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:25:44 06/16/2025 
// Design Name: 
// Module Name:    one_sec_pulse_gen 
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
module one_sec_pulse_gen(
    input clk_100,
    input rst,
    output reg clk_1sec);
	 
	  reg [25:0]counter;
	 
	 always @ (posedge clk_100 or posedge rst)begin
	   if (rst)begin
		 counter<=0;
		 clk_1sec<=0;
		 end
		else if(counter==(50000000-1))begin
		 counter <= 0;
		 clk_1sec <= ~clk_1sec;
		 end
		else begin
		 counter <= counter+1;
		 end
		end
endmodule

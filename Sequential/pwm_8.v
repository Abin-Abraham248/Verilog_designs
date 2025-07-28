`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:43:16 06/12/2025 
// Design Name: 
// Module Name:    pwm_8 
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
module pwm_8(
    input rst,
    input clk,
    input dc_25,
	 input dc_50,
	 input dc_75,
    output reg pwm_out1,
	 output reg pwm_out2,
	 output reg pwm_out3
	// output reg[7:0]count
	 );
	 
	  reg[7:0]count;
	  
	 always @ (posedge clk or posedge rst )begin
	  if (rst)
	   count[7:0]<=8'b00000000;
	  else begin
	   count[7:0]<=count+1;
		pwm_out1=(dc_25)?((count<'d64)? 1:0):0;
		pwm_out2=(dc_50)?((count<'d128)? 1:0):0;
		pwm_out3=(dc_75)?((count<'d192)? 1:0):0;
	   end
	  end
endmodule

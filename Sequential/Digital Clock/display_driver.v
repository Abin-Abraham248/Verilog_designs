`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:19:27 06/17/2025 
// Design Name: 
// Module Name:    display_driver 
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
module display_driver(
    input clk,
    input rst,
    input wire[6:0] seg0,
    input wire[6:0] seg1,
    input wire[6:0] seg2,
    input wire[6:0] seg3,
    input wire[6:0] seg4,
    input wire[6:0] seg5,
    output reg[6:0] seg,
    output reg[7:0] an
    );	 
	 
	reg[2:0]dig_count;
	reg[16:0]ref_counter;
	 
	 always @ (posedge clk or posedge rst)begin
	  if (rst)begin
	   dig_count<=0;
		ref_counter<=0;
		end
	  else begin
	   ref_counter<=ref_counter+1;
	   if (ref_counter==100000)begin
		 ref_counter<=0;
		 dig_count<=dig_count+1;		 //frequency 1khz & 1ms
	    if(dig_count==5)
		  dig_count<=0;
		 end
		end
     end		
	  
	 always @(*)begin
	 case(dig_count)
	   0: begin seg = seg0; an=8'b11111110;end
		1: begin seg = seg1; an=8'b11111101;end
      2: begin seg = seg2; an=8'b11111011;end
		3: begin seg = seg3; an=8'b11110111;end
		4: begin seg = seg4; an=8'b11101111;end
		5: begin seg = seg5; an=8'b11011111;end
		default: begin seg=7'b1111111; an=8'b11111111;end
	   endcase
	 end
endmodule

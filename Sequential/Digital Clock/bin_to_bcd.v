`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:45:43 06/16/2025 
// Design Name: 
// Module Name:    bin_to_bcd 
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
module bin_to_bcd(
    input [5:0] bin,
    output reg[3:0] tens,
    output reg[3:0] unit
    );
	 
	 always @(*) begin
	  if (bin<10)begin
	   tens<=4'b0000;
		unit<=bin;
		end
	  else if(bin<20)begin
	   tens<=4'b0001;
		unit<=bin-10;
		end
	  else if(bin<30)begin
	   tens<=4'b0010;
		unit<=bin-20;
		end
	  else if(bin<40)begin
	   tens<=4'b0011;
		unit<=bin-30;
		end
	  else if(bin<50)begin
	   tens<=4'b0100;
		unit<=bin-40;
		end
	  else if(bin<60)begin
	   tens<=4'b0101;
		unit<=bin-50;
		end
	  else begin
	   tens<=0;
		unit<=0;
		end
	 end
endmodule

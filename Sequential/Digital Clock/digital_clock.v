`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:54:44 06/16/2025 
// Design Name: 
// Module Name:    digital_clock 
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
module digital_clock(
    
    input clk_100,
    input rst,
    output reg[5:0] second,
    output reg[5:0] minute,
    output reg[5:0] hour
    );
	 
	wire clk_1sec;
	one_sec_pulse_gen u1(.clk_100(clk_100),.rst(rst),.clk_1sec(clk_1sec));
	 
	 always @ (posedge clk_1sec or posedge rst)begin
	   if(rst)begin
		 second<=0;
		 minute<=0;
		 hour<=0;
		 end
		else begin 
		 if(second==59)begin
		   second<=0;
		   if(minute==59)begin
		    minute<=0;
		    if(hour==23)begin
		     hour<=0;
			  end
	       else begin
			  hour<=hour+1;
			  end
			 end
		   else begin
			 minute<=minute+1;
			 end
			end
	    else begin
        second<=second+1;
        end		  
       end			 
     end
endmodule

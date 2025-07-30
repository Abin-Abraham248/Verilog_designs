`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:18:23 06/10/2025 
// Design Name: 
// Module Name:    seq_detctor 
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
module seq_detctor(
    input clk,
    input rst,
    input x,
    output reg z
    );
	 
	 //stae encoding
	parameter a=2'b00,b=2'b01,c=2'b10,d=2'b11;
	reg [1:0] pst,nst;
	 
	
	
	//stae register logic
	always @(posedge clk)begin
	if (rst)
	  pst<=a;
	else 
	  pst<=nst;
	end
	
	 //next stae logic
	 always @(*)begin
	  case(pst)
	   a:nst=(x)?b:a;
		b:nst=(x)?b:c;
	   c:nst=(x)?b:d;
	   d:nst=(x)?b:a;
     endcase
    end
    
    //output logic
     always @(*)begin
      case(pst)
       d:z=(x)?1:0;
		 default: z=0;
      endcase
     end
endmodule	  
	 




`timescale 1ns / 1ps

module bin_bcd_4(
    input [3:0] bin,    
	 output reg[3:0] bcd_unit
    );
	 
	 reg[3:0] bcd_tens;
	 
	 always @ (bin)begin
	  if (bin<4'b1010)begin
	   bcd_tens<=0;
		bcd_unit<=bin;
		end
	  else begin 
	   bcd_tens<=4'b0001;
		bcd_unit<=bin-4'b1010;
      end	
     end	  
endmodule


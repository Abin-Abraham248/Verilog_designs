module digital_clock_7seg(
    input  rst,
	 input  clk,
	 output wire[6:0]seg,
	 output wire[7:0]an
	 );
	 
	 
	  wire[6:0]sec_u_out;
	  wire[6:0]sec_t_out;
	  wire[6:0]min_u_out;
	  wire[6:0]min_t_out;
	  wire[6:0]hr_u_out;
	  wire[6:0]hr_t_out;
	  wire[3:0]sec_unit,sec_tens,min_unit,min_tens,hr_unit,hr_tens;
	  wire[5:0]sec,min,hr;
   
	
	 //sub module instantiation
	 digital_clock a1(.rst(rst),.clk_100(clk),.second(sec),.minute(min),.hour(hr));
	 bin_to_bcd a2_1(.bin(sec),.unit(sec_unit),.tens(sec_tens));
	 bin_to_bcd a2_2(.bin(min),.unit(min_unit),.tens(min_tens));
	 bin_to_bcd a2_3(.bin(hr),.unit(hr_unit),.tens(hr_tens));
	 bcd_7seg a3_1(.bcd(sec_unit),.out(sec_u_out));
	 bcd_7seg a3_2(.bcd(sec_tens),.out(sec_t_out));
	 bcd_7seg a3_3(.bcd(min_unit),.out(min_u_out));
	 bcd_7seg a3_4(.bcd(min_tens),.out(min_t_out));
	 bcd_7seg a3_5(.bcd(hr_unit),.out(hr_u_out));
	 bcd_7seg a3_6(.bcd(hr_tens),.out(hr_t_out));
    display_driver a4(.rst(rst),
	                   .clk(clk),
							 .seg0(sec_u_out),
							 .seg1(sec_t_out),
							 .seg2(min_u_out),
							 .seg3(min_t_out),
							 .seg4(hr_u_out),
							 .seg5(hr_t_out),
							 .seg(seg),
							 .an(an)
							 );

endmodule

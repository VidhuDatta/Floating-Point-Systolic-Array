`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2022 05:38:14 PM
// Design Name: 
// Module Name: sys8_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sys8_tb;
reg rst,clk, Addbar;
reg [31:0] iw0, iw1, iw2, iw3, iw4, iw5, iw6, iw7,
              in0, in1, in2, in3, in4, in5, in6, in7 ;
wire [31:0]  result0, result1, result2, result3, result4, result5, result6, result7, result8, result9, result10, result11, result12, result13, result14, result15, 
                result16, result17, result18, result19, result20, result21, result22, result23, result24, result25, result26, result27, result28, result29, result30, result31, 
                result32, result33, result34, result35, result36, result37, result38, result39, result40, result41, result42, result43, result44, result45, result46, result47, 
                result48, result49, result50, result51, result52, result53, result54, result55, result56, result57, result58, result59, result60, result61, result62, result63 ;
// wire [31:0] oe1_0, oe1_1, oe1_2, oe1_3, os2_0, os2_1, os2_2, os2_3, oe3_0, oe3_1, oe3_2, oe3_3, os3_0, os3_1, os3_2, os3_3 ;
 
  sys8 uut (iw0, iw1, iw2, iw3, iw4, iw5, iw6, iw7, 
              in0, in1, in2, in3, in4, in5, in6, in7, 
                rst, clk, Addbar,
             //  oe1_0, oe1_1, oe1_2, oe1_3, os2_0, os2_1, os2_2, os2_3, oe3_0, oe3_1, oe3_2, oe3_3, os3_0, os3_1, os3_2, os3_3 ,
                result0, result1, result2, result3, result4, result5, result6, result7, result8, result9, result10, result11, result12, result13, result14, result15, 
                result16, result17, result18, result19, result20, result21, result22, result23, result24, result25, result26, result27, result28, result29, result30, result31, 
                result32, result33, result34, result35, result36, result37, result38, result39, result40, result41, result42, result43, result44, result45, result46, result47, 
                result48, result49, result50, result51, result52, result53, result54, result55, result56, result57, result58, result59, result60, result61, result62, result63  
   ) ;
               
 initial begin
#3 iw0 <= 32'hc85294e8;
    in0 <= 32'hcaf59f61;
#10 iw0 <= 32'hc94acb38;
    in0 <= 32'h4ace7a40;
#10 iw0 <= 32'h4ada9057;
    in0 <= 32'h4a072ccc;
#10 iw0 <= 32'hca023725;
    in0 <= 32'hca346ff9;
#10 iw0 <= 32'hc8727c4f;
    in0 <= 32'h49ee681d;
#10 iw0 <= 32'h4b014b48;
    in0 <= 32'hcaf3ebea;
#10 iw0 <= 32'h4a0ea518;
    in0 <= 32'h4b004438;
#10 iw0 <= 32'h4b04feaa;
    in0 <= 32'hca5d533b;

end
 
initial begin
#3 iw1 <= 32'h0;
    in1 <= 32'h0;
#10 iw1 <= 32'hc85294e8;
    in1 <= 32'hcaf59f61;
#10 iw1 <= 32'hc94acb38;
    in1 <= 32'h4ace7a40;
#10 iw1 <= 32'h4ada9057;
    in1 <= 32'h4a072ccc;
#10 iw1 <= 32'hca023725;
    in1 <= 32'hca346ff9;
#10 iw1 <= 32'hc8727c4f;
    in1 <= 32'h49ee681d;
#10 iw1 <= 32'h4b014b48;
    in1 <= 32'hcaf3ebea;
#10 iw1 <= 32'h4a0ea518;
    in1 <= 32'h4b004438;
#10 iw1 <= 32'h4b04feaa;
    in1 <= 32'hca5d533b;
   

end
               
initial begin
#3 iw2 <= 32'h0;
    in2 <= 32'h0;
#10 iw2 <= 32'h0;
    in2 <= 32'h0;
#10 iw2 <= 32'hc85294e8;
    in2 <= 32'hcaf59f61;
#10 iw2 <= 32'hc94acb38;
    in2 <= 32'h4ace7a40;
#10 iw2 <= 32'h4ada9057;
    in2 <= 32'h4a072ccc;
#10 iw2 <= 32'hca023725;
    in2 <= 32'hca346ff9;
#10 iw2 <= 32'hc8727c4f;
    in2 <= 32'h49ee681d;
#10 iw2 <= 32'h4b014b48;
    in2 <= 32'hcaf3ebea;
#10 iw2 <= 32'h4a0ea518;
    in2 <= 32'h4b004438;
#10 iw2 <= 32'h4b04feaa;
    in2 <= 32'hca5d533b;

end

initial begin
#3 iw3 <= 32'h0;
    in3 <= 32'h0;
#10 iw3 <= 32'h0;
    in3 <= 32'h0;
#10 iw3 <= 32'h0;
    in3 <= 32'h0;
#10 iw3 <= 32'hc85294e8;
    in3 <= 32'hcaf59f61;
#10 iw3 <= 32'hc94acb38;
    in3 <= 32'h4ace7a40;
#10 iw3 <= 32'h4ada9057;
    in3 <= 32'h4a072ccc;
#10 iw3 <= 32'hca023725;
    in3 <= 32'hca346ff9;
#10 iw3 <= 32'hc8727c4f;
    in3 <= 32'h49ee681d;
#10 iw3 <= 32'h4b014b48;
    in3 <= 32'hcaf3ebea;
#10 iw3 <= 32'h4a0ea518;
    in3 <= 32'h4b004438;
#10 iw3 <= 32'h4b04feaa;
    in3 <= 32'hca5d533b;

end                      
        
initial begin
#3 iw4 <= 32'h0;
    in4 <= 32'h0;
#10 iw4 <= 32'h0;
    in4 <= 32'h0;
#10 iw4 <= 32'h0;
    in4 <= 32'h0;
#10 iw4 <= 32'h0;
    in4 <= 32'h0;
#10 iw4 <= 32'hc85294e8;
    in4 <= 32'hcaf59f61;
#10 iw4 <= 32'hc94acb38;
    in4 <= 32'h4ace7a40;
#10 iw4 <= 32'h4ada9057;
    in4 <= 32'h4a072ccc;
#10 iw4 <= 32'hca023725;
    in4 <= 32'hca346ff9;
#10 iw4 <= 32'hc8727c4f;
    in4 <= 32'h49ee681d;
#10 iw4 <= 32'h4b014b48;
    in4 <= 32'hcaf3ebea;
#10 iw4 <= 32'h4a0ea518;
    in4 <= 32'h4b004438;
#10 iw4 <= 32'h4b04feaa;
    in4 <= 32'hca5d533b;

end  

initial begin
#3 iw5 <= 32'h0;
    in5 <= 32'h0;
#10 iw5 <= 32'h0;
    in5 <= 32'h0;
#10 iw5 <= 32'h0;
    in5 <= 32'h0;
#10 iw5 <= 32'h0;
    in5 <= 32'h0;
#10 iw5 <= 32'h0;
    in5 <= 32'h0;
#10 iw5 <= 32'hc85294e8;
    in5 <= 32'hcaf59f61;
#10 iw5 <= 32'hc94acb38;
    in5 <= 32'h4ace7a40;
#10 iw5 <= 32'h4ada9057;
    in5 <= 32'h4a072ccc;
#10 iw5 <= 32'hca023725;
    in5 <= 32'hca346ff9;
#10 iw5 <= 32'hc8727c4f;
    in5 <= 32'h49ee681d;
#10 iw5 <= 32'h4b014b48;
    in5 <= 32'hcaf3ebea;
#10 iw5 <= 32'h4a0ea518;
    in5 <= 32'h4b004438;
#10 iw5 <= 32'h4b04feaa;
    in5 <= 32'hca5d533b;

end

initial begin
#3 iw6 <= 32'h0;
    in6 <= 32'h0;
#10 iw6 <= 32'h0;
    in6 <= 32'h0;
#10 iw6 <= 32'h0;
    in6 <= 32'h0;
#10 iw6 <= 32'h0;
    in6 <= 32'h0;
#10 iw6 <= 32'h0;
    in6 <= 32'h0;
#10 iw6 <= 32'h0;
    in6 <= 32'h0;
#10 iw6 <= 32'hc85294e8;
    in6 <= 32'hcaf59f61;
#10 iw6 <= 32'hc94acb38;
    in6 <= 32'h4ace7a40;
#10 iw6 <= 32'h4ada9057;
    in6 <= 32'h4a072ccc;
#10 iw6 <= 32'hca023725;
    in6 <= 32'hca346ff9;
#10 iw6 <= 32'hc8727c4f;
    in6 <= 32'h49ee681d;
#10 iw6 <= 32'h4b014b48;
    in6 <= 32'hcaf3ebea;
#10 iw6 <= 32'h4a0ea518;
    in6 <= 32'h4b004438;
#10 iw6 <= 32'h4b04feaa;
    in6 <= 32'hca5d533b;
end 

initial begin
#3 iw7 <= 32'h0;
    in7 <= 32'h0;
#10 iw7 <= 32'h0;
    in7 <= 32'h0;
#10 iw7 <= 32'h0;
    in7 <= 32'h0;
#10 iw7 <= 32'h0;
    in7 <= 32'h0;
#10 iw7 <= 32'h0;
    in7 <= 32'h0;
#10 iw7 <= 32'h0;
    in7 <= 32'h0;
#10 iw7 <= 32'h0;
    in7 <= 32'h0;
#10 iw7 <= 32'hc85294e8;
    in7 <= 32'hcaf59f61;
#10 iw7 <= 32'hc94acb38;
    in7 <= 32'h4ace7a40;
#10 iw7 <= 32'h4ada9057;
    in7 <= 32'h4a072ccc;
#10 iw7 <= 32'hca023725;
    in7 <= 32'hca346ff9;
#10 iw7 <= 32'hc8727c4f;
    in7 <= 32'h49ee681d;
#10 iw7 <= 32'h4b014b48;
    in7 <= 32'hcaf3ebea;
#10 iw7 <= 32'h4a0ea518;
    in7 <= 32'h4b004438;
#10 iw7 <= 32'h4b04feaa;
    in7 <= 32'hca5d533b;

end

initial begin
rst <= 1;
clk <= 0;
Addbar <= 0;

#3
rst <= 0;
Addbar <= 0;

end

always begin
	    
		#5 clk <= ~clk;
end
     
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2022 01:04:23 PM
// Design Name: 
// Module Name: sys8
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


//`include "block.v"
//`include "sys4.v"

module sys8( iw0, iw1, iw2, iw3, iw4, iw5, iw6, iw7, 
              in0, in1, in2, in3, in4, in5, in6, in7, 
                rst, clk,Addbar,
              //  oe1_0,  oe1_1, oe1_2, oe1_3, os2_0, os2_1, os2_2, os2_3, oe3_0, oe3_1, oe3_2, oe3_3, os3_0, os3_1, os3_2, os3_3 ,
                result0, result1, result2, result3, result4, result5, result6, result7, result8, result9, result10, result11, result12, result13, result14, result15, 
                result16, result17, result18, result19, result20, result21, result22, result23, result24, result25, result26, result27, result28, result29, result30, result31, 
                result32, result33, result34, result35, result36, result37, result38, result39, result40, result41, result42, result43, result44, result45, result46, result47, 
                result48, result49, result50, result51, result52, result53, result54, result55, result56, result57, result58, result59, result60, result61, result62, result63  
                 
             //      result0,result15,result23,result31,result39,result47,result55,result63
    );
   
    input [31:0] iw0, iw1, iw2, iw3, iw4, iw5, iw6, iw7, in0, in1, in2, in3, in4, in5, in6, in7 ;
    input  rst,clk, Addbar ;
    
   // output  [63:0] result0,result15,result23,result31,result39,result47,result55,result63;
    
 output  wire [31:0] result0, result1, result2, result3, result4, result5, result6, result7, result8, result9, result10, result11, result12, result13, result14, result15, 
                result16, result17, result18, result19, result20, result21, result22, result23, result24, result25, result26, result27, result28, result29, result30, result31, 
                result32, result33, result34, result35, result36, result37, result38, result39, result40, result41, result42, result43, result44, result45, result46, result47, 
                result48, result49, result50, result51, result52, result53, result54, result55, result56, result57, result58, result59, result60, result61, result62, result63 ; 
     
    wire [31:0] oe1_0, oe1_1, oe1_2, oe1_3, os2_0, os2_1, os2_2, os2_3, oe3_0, oe3_1, oe3_2, oe3_3, os3_0, os3_1, os3_2, os3_3 ;
    
    wire [31:0]  oe0_0, oe0_1, oe0_2, oe0_3, os0_0, os0_1, os0_2, os0_3,  os1_0, os1_1, os1_2, os1_3, oe2_0, oe2_1, oe2_2, oe2_3 ;  
    
    
    //first row
        sys4 A0 ( iw0, iw1, iw2, iw3, in0, in1, in2, in3 , clk,rst, Addbar, oe0_0, oe0_1, oe0_2, oe0_3, os0_0, os0_1, os0_2, os0_3, result0, result1, result2, result3, result4, result5, result6, result7, result8, result9, result10, result11, result12, result13, result14, result15);
        sys4 A1 ( oe0_0, oe0_1, oe0_2, oe0_3, in4, in5, in6, in7 ,  clk,rst, Addbar,  oe1_0, oe1_1, oe1_2, oe1_3, os1_0, os1_1, os1_2, os1_3, result16, result17, result18, result19, result20, result21, result22, result23, result24, result25, result26, result27, result28, result29, result30, result31);        

    //second row
        sys4 A2 ( iw4, iw5, iw6, iw7, os0_0, os0_1, os0_2, os0_3  ,  clk,rst, Addbar, oe2_0, oe2_1, oe2_2, oe2_3, os2_0, os2_1, os2_2, os2_3, result32, result33, result34, result35, result36, result37, result38, result39, result40, result41, result42, result43, result44, result45, result46, result47 );
        sys4 A3 ( oe2_0, oe2_1, oe2_2, oe2_3, os1_0, os1_1, os1_2, os1_3 ,  clk,rst, Addbar,  oe3_0, oe3_1, oe3_2, oe3_3, os3_0, os3_1, os3_2, os3_3, result48, result49, result50, result51, result52, result53, result54, result55, result56, result57, result58, result59, result60, result61, result62, result63);
       
    
    
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:42:04 05/07/2016 
// Design Name: 
// Module Name:    mul 
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
//behavioral floating-point multiplication
module mul (flp_a, flp_b, sign, exponent,
						exp_unbiased, exp_sum, prod,sum);
	input [31:0] flp_a, flp_b;
	
	output sign;
	output [7:0] exponent, exp_unbiased;
	output [8:0] exp_sum;
	output [22:0] prod;
	output [31:0] sum ;
	
	integer i;
//variables used in an always block are declared as registers
	reg sign_a, sign_b;
	reg [7:0] exp_a, exp_b;
	reg [7:0] exp_a_bias, exp_b_bias;
	reg [8:0] exp_sum;
	reg [22:0] fract_a, fract_b;
	reg [45:0] prod_dbl;
	reg [22:0] prod;
	reg sign;
	reg [31:0] sum ;
	reg [7:0] exponent, exp_unbiased;
//define sign, exponent, and fraction
	always @ (flp_a or flp_b)
	begin
		
	sign_a = flp_a[31];
	sign_b = flp_b[31];
	exp_a = flp_a[30:23];
	exp_b = flp_b[30:23];
	fract_a = flp_a[22:0];
	fract_b = flp_b[22:0];
//bias exponents
	exp_a_bias = exp_a + 8'b0111_1111;
	exp_b_bias = exp_b + 8'b0111_1111;
//add exponents
	exp_sum = exp_a_bias + exp_b_bias;
//remove one bias
	exponent = exp_sum - 8'b0111_1111;
	exp_unbiased = exponent - 8'b0111_1111;
//multiply fractions
//if (flp_a != 0 || flp_b!=0) begin
	prod_dbl = fract_a * fract_b;
	prod = prod_dbl[45:23];
	if (prod == 0) begin
       sum = 32'b0;
    end
    else begin
       for (i = 0; i < 22; i = i + 1) begin
           if (prod[22] == 0) begin
              prod = prod << 1;
              exp_unbiased = exp_unbiased - 1;
           end
       end
    end
	
	
	sign = sign_a ^ sign_b;
	if (prod ==0) begin 
        sum =32'b0;
end	else sum ={sign, exp_unbiased, prod};

	
end		
//     always @(posedge clk ) begin
//		if(rst) begin
//			result <= 0;
//			inp_north <= flp_a;
//			inp_west <= flp_b; 
//			outp_east <= 0;
//			outp_south <= 0; 
//		end
//		else if( alu_start )begin
		 //   multi <= inp_north*inp_west;
//			result <= result + sum;
//			outp_east <= inp_west;
//			outp_south <= inp_north;
//	   end
//	end	

		
		//end
	endmodule


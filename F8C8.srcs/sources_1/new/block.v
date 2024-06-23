module block (
  input [31:0] flp_a, flp_b,
  input clk, rst, AddBar,
  output reg [31:0] outp_south,
  output reg [31:0] outp_east,
  output  [31:0] result
);
  reg [31:0] inp_north, inp_west;
  reg [31:0] a_operand,b_operand;
  wire sign;
  wire [7:0] exponent, exp_unbiased;
  wire [8:0] exp_sum;
  wire [22:0] prod;
  wire [31:0] sum;
  wire [31:0] result1;
  reg [31:0] result2;
  reg AddBar_Sub;
  wire Exception;
 // reg [31:0] sum1,sum2;

  // Instantiate FPU multiplier module
  mul fpu_multiplier (
    .flp_a(flp_a),
    .flp_b(flp_b),
    .sign(sign),
    .exponent(exponent),
    .exp_unbiased(exp_unbiased),
    .exp_sum(exp_sum),
    .prod(prod),
    .sum(sum)
  );
  
  Addition_Subtraction AD(

 .a_operand(sum),.b_operand(result2), //Inputs in the format of IEEE-754 Representation.
.AddBar_Sub(AddBar),	//If Add_Sub is low then Addition else Subtraction.
.Exception(Exception),
.result(result1) //Outputs in the format of IEEE-754 Representation.
);

	always @(posedge rst or posedge clk) begin
		if(rst) begin
			//result <= 0;
			outp_east <= 0;
			outp_south <= 0;
			result2 <= 0;
			//a_operand <= 0;
			//b_operand <= 0;
		end
		else begin
		    //a_operand <= flp_a;
		   // b_operand <= flp_b; 
			//sum2 <= sum2 + sum;
			//b_operand <= sum2;
			result2 <= result1;
			
			outp_east <= flp_a;
			outp_south <= flp_b;
		end
	end
	
	assign result = result1;
endmodule

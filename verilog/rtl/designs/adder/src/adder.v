
module adder(

	`ifdef USE_POWER_PINS
		inout vdd,	// User area 1 1.8V supply
		inout vss,	// User area 1 digital ground
	`endif

	input [7:0] a_in,
	input [7:0] b_in,
	output [7:0] sum
	);


	adder_tree_7 U1(
		.a_in(a_in[7:0]),
		.b_in(b_in[7:0]),
		.sum(sum[7]),
		.n25_tree_7(n25_tree_7),
		.n24_tree_7(n24_tree_7),
		.n21_tree_7(n21_tree_7),
		.n20_tree_7(n20_tree_7),
		.n17_tree_7(n17_tree_7),
		.n16_tree_7(n16_tree_7),
		.n13_tree_7(n13_tree_7),
		.n12_tree_7(n12_tree_7),
		.n9_tree_7(n9_tree_7),
		.n8_tree_7(n8_tree_7),
		.n6_tree_7(n6_tree_7),
		.n7_tree_7(n7_tree_7),
		.n14_tree_7(n14_tree_7),
		.n15_tree_7(n15_tree_7),
		.n32_tree_7(n32_tree_7)
	);

	adder_tree_6 U2(
		.a_in(a_in[6:0]),
		.b_in(b_in[6:0]),
		.n25_tree_7(n25_tree_7),
		.n24_tree_7(n24_tree_7),
		.n6_tree_7(n6_tree_7),
		.n7_tree_7(n7_tree_7),
		.n14_tree_7(n14_tree_7),
		.n15_tree_7(n15_tree_7),
		.n32_tree_7(n32_tree_7),
		.sum(sum[6]),
		.n27_tree_6(n27_tree_6)
	);

	adder_tree_5 U3(
		.a_in(a_in[5:0]),
		.b_in(b_in[5:0]),
		.n13_tree_7(n13_tree_7),
		.n12_tree_7(n12_tree_7),
		.n14_tree_7(n14_tree_7),
		.n15_tree_7(n15_tree_7),
		.n27_tree_6(n27_tree_6),
		.sum(sum[5]),
		.n21_tree_5(n21_tree_5)
	);

	adder_tree_4 U4(
		.a_in(a_in[4:0]),
		.b_in(b_in[4:0]),
		.n21_tree_5(n21_tree_5),
		.sum(sum[4])
	);

	adder_tree_3 U5(
		.a_in(a_in[3:0]),
		.b_in(b_in[3:0]),
		.n21_tree_7(n21_tree_7),
		.n20_tree_7(n20_tree_7),
		.n27_tree_6(n27_tree_6),
		.sum(sum[3])
	);

	adder_tree_2 U6(
		.a_in(a_in[2:0]),
		.b_in(b_in[2:0]),
		.n27_tree_6(n27_tree_6),
		.sum(sum[2])
	);

	adder_tree_1 U7(
		.a_in(a_in[1:0]),
		.b_in(b_in[1:0]),
		.n32_tree_7(n32_tree_7),
		.sum(sum[1])
	);

	adder_tree_0 U8(
		.a_in(a_in[0]),
		.b_in(b_in[0]),
		.sum(sum[0])
	);
endmodule // adder

module adder_tree_0(

	input  a_in,
	input  b_in,
	output  sum
	);

// adder_forest tree_0
	wire n1_tree_0;
	assign sum = n1_tree_0;
    assign n1_tree_0 = a_in^b_in;

endmodule // adder_tree_0

module adder_tree_1(

	input [1:0] a_in,
	input [1:0] b_in,
	input  n32_tree_7,
	output  sum
	);

// adder_forest tree_1
	wire n5_tree_1;
    assign sum = n32_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];

endmodule // adder_tree_1

module adder_tree_2(

	input [2:0] a_in,
	input [2:0] b_in,
	input  n27_tree_6,
	output  sum
	);

// adder_forest tree_2
	wire n10_tree_2;
    assign sum = n27_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];

endmodule // adder_tree_2

module adder_tree_3(

	input [3:0] a_in,
	input [3:0] b_in,
	input  n21_tree_7,
	input  n20_tree_7,
	input  n27_tree_6,
	output  sum
	);

// adder_forest tree_3
	wire n12_tree_3, n15_tree_3;
    assign n12_tree_3 = (n27_tree_6&n21_tree_7)|n20_tree_7;
    assign sum = n12_tree_3^n15_tree_3;
    assign n15_tree_3 = a_in[3]^b_in[3];

endmodule // adder_tree_3

module adder_tree_4(

	input [4:0] a_in,
	input [4:0] b_in,
	input  n21_tree_5,
	output  sum
	);

// adder_forest tree_4
	wire n20_tree_4;
    assign sum = n21_tree_5^n20_tree_4;
    assign n20_tree_4 = a_in[4]^b_in[4];

endmodule // adder_tree_4

module adder_tree_5(

	input [5:0] a_in,
	input [5:0] b_in,
	input  n13_tree_7,
	input  n12_tree_7,
	input  n14_tree_7,
	input  n15_tree_7,
	input  n27_tree_6,
	output  sum,
	output  n21_tree_5
	);

// adder_forest tree_5
	wire n20_tree_5, n24_tree_5;
    assign n20_tree_5 = (n21_tree_5&n13_tree_7)|n12_tree_7;
    assign n21_tree_5 = (n27_tree_6&n15_tree_7)|n14_tree_7;
    assign sum = n20_tree_5^n24_tree_5;
    assign n24_tree_5 = a_in[5]^b_in[5];

endmodule // adder_tree_5

module adder_tree_6(

	input [6:0] a_in,
	input [6:0] b_in,
	input  n25_tree_7,
	input  n24_tree_7,
	input  n6_tree_7,
	input  n7_tree_7,
	input  n14_tree_7,
	input  n15_tree_7,
	input  n32_tree_7,
	output  sum,
	output  n27_tree_6
	);

// adder_forest tree_6
	wire n25_tree_6, n26_tree_6, n29_tree_6;
    assign n25_tree_6 = (n26_tree_6&n7_tree_7)|n6_tree_7;
    assign n26_tree_6 = (n27_tree_6&n15_tree_7)|n14_tree_7;
    assign n27_tree_6 = (n32_tree_7&n25_tree_7)|n24_tree_7;
    assign sum = n25_tree_6^n29_tree_6;
    assign n29_tree_6 = a_in[6]^b_in[6];

endmodule // adder_tree_6

module adder_tree_7(

	input [7:0] a_in,
	input [7:0] b_in,
	output  sum,
	output  n25_tree_7,
	output  n24_tree_7,
	output  n21_tree_7,
	output  n20_tree_7,
	output  n17_tree_7,
	output  n16_tree_7,
	output  n13_tree_7,
	output  n12_tree_7,
	output  n9_tree_7,
	output  n8_tree_7,
	output  n6_tree_7,
	output  n7_tree_7,
	output  n14_tree_7,
	output  n15_tree_7,
	output  n32_tree_7
	);

// adder_forest tree_7
	wire n3_tree_7, n4_tree_7, n5_tree_7, n28_tree_7, n29_tree_7, n30_tree_7, n31_tree_7, n33_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];

    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n21_tree_7 = a_in[2]^b_in[2];

    assign n20_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];

    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n13_tree_7 = a_in[4]^b_in[4];

    assign n12_tree_7 = a_in[4]&b_in[4];
    assign n9_tree_7 = a_in[5]^b_in[5];

    assign n8_tree_7 = a_in[5]&b_in[5];
    assign n5_tree_7 = a_in[6]^b_in[6];

    assign n4_tree_7 = a_in[6]&b_in[6];
    assign n28_tree_7 = n5_tree_7&n7_tree_7;

    assign n3_tree_7 = (n6_tree_7&n5_tree_7)|n4_tree_7;
    assign n7_tree_7 = n9_tree_7&n13_tree_7;

    assign n6_tree_7 = (n12_tree_7&n9_tree_7)|n8_tree_7;
    assign n15_tree_7 = n17_tree_7&n21_tree_7;

    assign n14_tree_7 = (n20_tree_7&n17_tree_7)|n16_tree_7;
    assign n29_tree_7 = (n30_tree_7&n28_tree_7)|n3_tree_7;
    assign n30_tree_7 = (n31_tree_7&n15_tree_7)|n14_tree_7;
    assign n31_tree_7 = (n32_tree_7&n25_tree_7)|n24_tree_7;
    assign n32_tree_7 = a_in[0]&b_in[0];
    assign sum = n29_tree_7^n33_tree_7;
    assign n33_tree_7 = a_in[7]^b_in[7];

endmodule // adder_tree_7

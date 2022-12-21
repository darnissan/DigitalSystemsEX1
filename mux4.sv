// 4->1 multiplexer template
module mux4 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic d2,          // Data input 2
    input logic d3,          // Data input 3
    input logic [1:0] sel,   // Select input
    output logic z           // Output
);

    logic a, b, c, d, e, f, g, h, i, j;

    assign a = sel[0];
	assign b = sel[0];
	assign c = sel[1];
	assign d = d0;
	assign e = d1;
	assign f = d2;
	assign g = d3;
	assign j = z;
	
	mux2 mux_0 (
		.z(h), 
		.d0(d), 
		.d1(e), 
		.sel(a));
    mux2 mux_1 (
		.z(i), 
		.d0(f), 
		.d1(g), 
		.sel(b));
    mux2 mux_2 (
		.z(j), 
		.d0(h), 
		.d1(i), 
		.sel(c));

endmodule

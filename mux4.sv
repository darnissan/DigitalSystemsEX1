// 4->1 multiplexer template
module mux4 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic d2,          // Data input 2
    input logic d3,          // Data input 3
    input logic [1:0] sel,   // Select input
    output logic z           // Output
);

    logic mux0_out, mux1_out;
    mux2 mux_0 (
		.z(mux0_out), 
		.d0(d0), 
		.d1(d1), 
		.sel(sel[0]));
    mux2 mux_1 (
		.z(mux1_out), 
		.d0(d2), 
		.d1(d3), 
		.sel(sel[0]));
    mux2 mux_2 (
		.z(z), 
		.d0(mux0_out), 
		.d1(mux1_out), 
		.sel(sel[1]));

endmodule

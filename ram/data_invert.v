module data_invert(ram_invert, odd, even, out);

input ram_invert;
// input BHE, A0;
input[7:0] odd, even;
output [15:0] out;

// reg [7:0]odd_r, even_r;

// always @(even)
// begin
// 	even_r<=even;
// end

// always @(odd)
// begin
// 	odd_r<=odd;
// end

// assign out = ram_invert ? {even_r, odd_r} : {odd_r, even_r};

assign out = ram_invert ? {even, odd} : {odd, even};

endmodule

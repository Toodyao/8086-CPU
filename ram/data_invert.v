module data_invert(ram_invert, BHE, A0, odd, even, out);

input ram_invert, BHE, A0;
input[7:0] odd, even;
output [15:0] out;

reg [7:0]odd_r, even_r;

always @(posedge BHE)
begin
	even_r<=even;
end

always @(posedge A0)
begin
	odd_r<=odd;
end

assign out = ram_invert ? {even_r, odd_r} : {odd_r, even_r};

endmodule

module ad_control(BHE, A0, in_ad, out_odd, out_even);

input BHE, A0;
input[15:0] in_ad;
output reg[15:0] out_odd, out_even;

always @(BHE)
begin
	if(~BHE)
		begin out_even<= in_ad>>1; end
end

always @(A0)
begin
	// out_odd<={1'b0, in_ad[15:9]};
	if (~A0)
		begin out_odd<=in_ad>>1; end
end

endmodule

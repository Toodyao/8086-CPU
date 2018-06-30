module controller(BHE, A0, RD, WR, WRE, inclk1, outclk1, we1, inclk2, outclk2, we2);

input BHE, A0, RD, WR, WRE;
output wire inclk1, outclk1, we1;
output wire inclk2, outclk2, we2;
// output wire test;

// assign test = (~WRE & WR & ~RD & ~BHE & ~A0);

assign inclk1 = (WR & ~RD & ~BHE & ~A0) | (WRE & WR & ~RD & ~BHE);
assign outclk1 = ~WRE & ~WR & RD & ~BHE;
assign we1 = WRE & WR & ~RD & ~BHE;

assign inclk2 = (WR & ~RD & ~BHE & ~A0) | (WRE & WR & ~RD & ~A0);
assign outclk2 = ~WRE & ~WR & RD & ~A0;
assign we2 = WRE & WR & ~RD & ~A0;

endmodule

// PROGRAM		"Quartus II"
// VERSION		"Version 9.0 Build 184 04/29/2009 Service Pack 1 SJ Web Edition"
// CREATED ON	"Tue Jan 10 12:45:38 2023"

module datapath_and_controller(
	start,
	clk,
	Clear1,
	A2,
	A3,
	G0,
	G1,
	set_e,
	clr_e,
	set_f,
	clr_a_f,
	incre_a
);


input	start;
input	clk;
input	Clear1;
input	A2;
input	A3;
output	G0;
output	G1;
output	set_e;
output	clr_e;
output	set_f;
output	clr_a_f;
output	incre_a;

reg	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_0;
reg	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;

assign	G0 = SYNTHESIZED_WIRE_12;
assign	G1 = SYNTHESIZED_WIRE_13;



assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_12 & A3 & A2;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_2 = start & SYNTHESIZED_WIRE_14 & SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_6 =  ~A2;

assign	SYNTHESIZED_WIRE_14 =  ~SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_15 =  ~SYNTHESIZED_WIRE_13;

assign	set_e = SYNTHESIZED_WIRE_12 & A2 & SYNTHESIZED_WIRE_15;

assign	clr_e = SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_15;

assign	set_f = SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_13;

assign	clr_a_f = start & SYNTHESIZED_WIRE_14;

assign	incre_a = SYNTHESIZED_WIRE_15 & SYNTHESIZED_WIRE_12;


always@(posedge clk or negedge Clear1)
begin
if (!Clear1)
	begin
	SYNTHESIZED_WIRE_12 = 0;
	end
else
	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_12 ^ SYNTHESIZED_WIRE_10;
end


always@(posedge clk or negedge Clear1)
begin
if (!Clear1)
	begin
	SYNTHESIZED_WIRE_13 = 0;
	end
else
	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_13 ^ SYNTHESIZED_WIRE_11;
end


endmodule

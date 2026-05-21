`timescale 1ns/1ps

module ripple_tb;

reg [3:0] A, B;
reg Cin;

wire [3:0] Sum;
wire Cout;

ripple_carry_adder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial
begin

$display("A      B      Cin   Sum   Cout");

A=4'b0101; B=4'b0011; Cin=0;
#10;
$display("%b   %b    %b    %b    %b",
A,B,Cin,Sum,Cout);

A=4'b0110; B=4'b0010; Cin=0;
#10;
$display("%b   %b    %b    %b    %b",
A,B,Cin,Sum,Cout);

A=4'b1111; B=4'b0001; Cin=0;
#10;
$display("%b   %b    %b    %b    %b",
A,B,Cin,Sum,Cout);

$finish;

end

endmodule

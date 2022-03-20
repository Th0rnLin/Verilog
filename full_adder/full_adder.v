`include "../half_adder/half_adder.v"

module full_adder(
    input  wire a,
    input  wire b,
    input  wire cin,
    output wire cout,
    output wire sum
);
    
    wire c1, c2, s1;

    half_adder ha1(a, b, c1, s1);
    half_adder ha2(s1, cin, c2, sum);
    or (cout, c1, c2);
endmodule
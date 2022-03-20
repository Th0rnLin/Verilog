module half_adder(
    input  wire a,
    input  wire b,
    output wire cout,
    output wire sum
);
    
    and(cout, a, b);
    xor(sum, a, b);
endmodule
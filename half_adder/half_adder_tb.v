module half_adder_tb;
    reg a, b;
    wire cout, sum;

    half_adder ha(a, b, cout, sum);

    initial begin
        $dumpfile("half_adder_tb.vcd");
        $dumpvars(0, half_adder_tb);
        #50 a=1'b0; b=1'b0;
        #50 a=1'b0; b=1'b1;
        #50 a=1'b1; b=1'b0;
        #50 a=1'b1; b=1'b1;
        #50 $finish;
    end
endmodule
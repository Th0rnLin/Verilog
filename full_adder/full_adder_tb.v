module full_adder_tb;
    reg a, b, cin;
    wire cout, sum;
    
    full_adder fa(a, b, cin, cout, sum);

    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);
        #50 a=1'b0; b=1'b0; cin=1'b0;
        #50 a=1'b0; b=1'b0; cin=1'b1;
        #50 a=1'b0; b=1'b1; cin=1'b0;
        #50 a=1'b0; b=1'b1; cin=1'b1;
        #50 a=1'b1; b=1'b0; cin=1'b0;
        #50 a=1'b1; b=1'b0; cin=1'b1;
        #50 a=1'b1; b=1'b1; cin=1'b0;
        #50 a=1'b1; b=1'b1; cin=1'b1;
        #50 $finish;
    end
endmodule
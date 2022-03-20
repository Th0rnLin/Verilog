module fpu_tb();
    wire [63: 0] x, y;

    fpu f(x, y);
    
    assign x=1;

    initial begin    
        $display("%b", y);
        $display("%f", $bitstoreal(y));
    end
endmodule
module fpu(
    input  wire [63: 0] x,
    output reg  [63: 0] y
);
    real e, y1, y2;

    initial begin
        e=2.71828;
        
        y1=e**x;            //%floating
        y =$realtobits(y1); //%bits
        //y2=$bitstoreal(y);//%floating

        //$display("%f", y1); //2.718280
        //$display("%b", y);  //0->sign bit
                            //10000000000->exponent
                            //0101101111110000100110010101101010101111011110010000->mantissa
                            //(-1)^(sign bit)*2^(exponent)*1.mantissa
        //$display("%f", y2); //2.718280
    end
endmodule
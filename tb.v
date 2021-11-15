module tb();
  
    reg clk;
    reg reset;

    // instantiate device to be tested
    top mipstop(clk, reset);

    // initialize test 
    initial
        begin
            reset <= 1; # 22; reset <= 0;
        end
    // generate clock to sequence tests 
    always
        begin
            clk <= 1; # 5; clk <= 0; # 5;
        end

endmodule

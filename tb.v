module tb();
  
    wire clk;
    wire reset;

    // instantiate device to be tested
    mipstop mipstop(clk, reset);

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

module PWM_gen_tb;
    reg clk,rst,start;
    wire [3:0] d_c;
  
  PWM_generator #(
    .t1(6'd20),.t2(6'd30))
   p2 (
    .clk(clk),
    .rst(rst),
    .d_c(d_c),
    .start(start)
  );
  
  initial begin 
    $dumpfile("v.vcd");
    $dumpvars();
  end
  initial begin 
    start = 1'b0;
  	clk = 1'b0;
    rst = 1'b1;
    #24;
    rst = 1'b0;
    start = 1'b1;
    #150;
    start = 1'b0;
    #300;
    start = 1'b1;
    #150;
    start = 1'b0;
    #5000;
    start = 1'b1;
    #100;
    start = 1'b0;
    #5000;
    start = 1'b1;
    #150;
    start = 1'b0;
    #15000;
    $finish;
  end
  
  always begin 
  	#10 clk = ~clk;
  end
  
endmodule
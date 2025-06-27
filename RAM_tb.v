`timescale 1ns/1ps
module RAM_tb;
  logic clk;
  logic we;
  logic [3:0]addr;
  logic [7:0]din;
  logic [7:0]dout;
  RAM uut(
    . clk(clk), 
    . we(we), 
    . addr(addr), 
    . din(din), 
    . dout(dout) 
  );
  always#5 clk=~clk;
  initial begin
    $dumpfile("ram.vcd");
    $dumpvars(0,RAM_tb);
    clk=0;
    we=0;
    addr=0;
    din=0;
    #10 we=1;addr=4'b0001;din=8'hA5;
    #10 addr=4'b0010;din=8'h5A;
    #10 we=0;addr=4'b0001;
    #10 addr=4'b0010;
    #10 $finish;
  end 
endmodule

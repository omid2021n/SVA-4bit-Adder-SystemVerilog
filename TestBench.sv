module tb;
  
  reg [3:0] a, b;
  wire [4:0] y;
  
  adder dut (a, b, y);
  
  initial begin
    for(int i = 0; i < 10; i++) begin
      a = $urandom;
      b = $urandom;
      #10;
    end   
  end

 always @(a, b, y) begin
  #1; // let DUT settle
  A1: assert (y == a+b)
    $info("a=%0d, b=%0d, y=%0d, Success at %0t", a, b, y, $time);
  else
    $error("Failure at %0t: a=%0d, b=%0d, y=%0d, expected=%0d",
           $time, a, b, y, a+b);
end
      
   initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
    $assertvacuousoff(0);
    #110;
    $finish();
  end
  
  
endmodule


  
  
 

  
  

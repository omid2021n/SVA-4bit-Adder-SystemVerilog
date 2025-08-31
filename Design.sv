module adder(
  input      [3:0] a,b,
  output reg [4:0] y
);
  
  
  always@(*)
    begin
      y = a + b;
    end

  
endmodule

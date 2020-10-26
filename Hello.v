module Hello(
  input   clock,
  input   reset,
  output  io_led,
  input   io_clk
);
  assign io_led = io_clk; // @[Hello.scala 7:10]
endmodule

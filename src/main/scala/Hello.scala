import chisel3._;
class Hello extends Module {
  val io = IO(new Bundle {
    val led = Output(UInt(1.W))
    val clk = Input(UInt(1.W))
  })
  io.led := io.clk
}

object convert extends App{
  (new chisel3.stage.ChiselStage).emitVerilog(new Hello)
}
;buildInfoPackage: chisel3, version: 3.4.0, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Hello : 
  module Hello : 
    input clock : Clock
    input reset : UInt<1>
    output io : {led : UInt<1>, flip clk : UInt<1>}
    
    io.led <= io.clk @[Hello.scala 7:10]
    

;buildInfoPackage: chisel3, version: 3.4.0, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Hello : 
  module Hello : 
    input clock : Clock
    input reset : UInt<1>
    output io : {led : UInt<1>}
    
    reg cntReg : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Hello.scala 8:23]
    reg blkReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Hello.scala 9:23]
    node _cntReg_T = add(cntReg, UInt<1>("h01")) @[Hello.scala 11:20]
    node _cntReg_T_1 = tail(_cntReg_T, 1) @[Hello.scala 11:20]
    cntReg <= _cntReg_T_1 @[Hello.scala 11:10]
    node _T = eq(cntReg, UInt<25>("h017d783f")) @[Hello.scala 12:15]
    when _T : @[Hello.scala 12:28]
      cntReg <= UInt<1>("h00") @[Hello.scala 13:12]
      node _blkReg_T = not(blkReg) @[Hello.scala 14:15]
      blkReg <= _blkReg_T @[Hello.scala 14:12]
      skip @[Hello.scala 12:28]
    io.led <= blkReg @[Hello.scala 16:10]
    

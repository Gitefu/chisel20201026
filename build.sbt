name := "chisel20201026"

version := "0.1"

scalaVersion := "2.12.12"

scalacOptions ++= Seq("-deprecation", "-feature", "-unchecked", "-language:reflectiveCalls", "-Xsource:2.11")

resolvers ++= Seq(
  Resolver.sonatypeRepo("snapshots"),
  Resolver.sonatypeRepo("releases"),
)

libraryDependencies += "edu.berkeley.cs" %% "chisel3" % "latest.release"
//libraryDependencies += "edu.berkeley.cs" %% "chisel3" % "3.4.0"
libraryDependencies += "edu.berkeley.cs" %% "chiseltest" % "latest.release"
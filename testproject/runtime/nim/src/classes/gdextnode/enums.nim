import gdext

import typedef

const Const = 1'u8

type TestEnumA = enum
  EnumA1
  EnumA2
  EnumA3

type TestEnumB = enum
  EnumB1 = Const
  EnumB2
  EnumB3 = (4, "ENUM!")


GDExtNode.registerEnum TestEnumA
GDExtNode.registerEnum TestEnumB

var testEnumA: TestEnumA = EnumA2
var testEnumB: TestEnumB = EnumB2

gdexport "test_enum_a",
  proc(x: GDExtNode): TestEnumA = testEnumA,
  proc(x: GDExtNode; value: TestEnumA) = testEnumA = value

gdexport "test_enum_b",
  proc(x: GDExtNode): TestEnumB = testEnumB,
  proc(x: GDExtNode; value: TestEnumB) = testEnumB = value

proc echoTestEnumA(self: GDextNode; x: TestEnumA): TestEnumA {.gdsync.} = x
proc echoTestEnumB(self: GDextNode; x: TestEnumB): TestEnumB {.gdsync.} = x
proc echoVector2Axis(self: GDextNode; x: Vector2_Axis): Vector2_Axis {.gdsync.} = x
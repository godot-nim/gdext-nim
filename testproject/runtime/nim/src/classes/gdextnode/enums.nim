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

type TestFlags = enum
  Flag1
  Flag2
  Flag3
  Flag4
  Flag5


GDExtNode.registerEnum TestEnumA
GDExtNode.registerEnum TestEnumB
GDExtNode.registerBitField TestFlags

var testEnumA: TestEnumA = EnumA2
var testEnumB: TestEnumB = EnumB2
var testFlags: set[TestFlags] = {Flag2}

gdexport "test_enum_a",
  proc(x: GDExtNode): TestEnumA = testEnumA,
  proc(x: GDExtNode; value: TestEnumA) = testEnumA = value

gdexport "test_enum_b",
  proc(x: GDExtNode): TestEnumB = testEnumB,
  proc(x: GDExtNode; value: TestEnumB) = testEnumB = value

gdexport "test_flags",
  proc(x: GDExtNode): set[TestFlags] = testFlags,
  proc(x: GDExtNode; value: set[TestFlags]) = testFlags = value

proc echoTestEnumA(self: GDextNode; x: TestEnumA): TestEnumA {.gdsync.} = x
proc echoTestEnumB(self: GDextNode; x: TestEnumB): TestEnumB {.gdsync.} = x
proc echoTestFlags(self: GDextNode; x: set[TestFlags]): set[TestFlags] {.gdsync.} = x
proc echoVector2Axis(self: GDextNode; x: Vector2_Axis): Vector2_Axis {.gdsync.} = x
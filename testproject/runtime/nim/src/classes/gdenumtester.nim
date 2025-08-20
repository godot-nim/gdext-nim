import gdext


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
  Flag2 = 3
  Flag3
  Flag4
  Flag5

type EnumTester* {.gdsync.} = ptr object of Node
  testEnumA: TestEnumA = EnumA2
  testEnumB: TestEnumB = EnumB2
  testFlags: set[TestFlags] = {Flag2}


EnumTester.bind TestEnumA
EnumTester.bind TestEnumB
EnumTester.bind set[TestFlags]

gdexport "test_enum_a",
  proc(x: EnumTester): TestEnumA = x.testEnumA,
  proc(x: EnumTester; value: TestEnumA) = x.testEnumA = value

gdexport "test_enum_b",
  proc(x: EnumTester): TestEnumB = x.testEnumB,
  proc(x: EnumTester; value: TestEnumB) = x.testEnumB = value

gdexport "test_flags",
  proc(x: EnumTester): set[TestFlags] = x.testFlags,
  proc(x: EnumTester; value: set[TestFlags]) = x.testFlags = value

proc echoTestEnumA(self: EnumTester; x: TestEnumA): TestEnumA {.gdsync.} = x
proc echoTestEnumB(self: EnumTester; x: TestEnumB): TestEnumB {.gdsync.} = x
proc echoTestFlags(self: EnumTester; x: set[TestFlags]): set[TestFlags] {.gdsync.} = x
proc echoVector2Axis(self: EnumTester; x: Vector2_Axis): Vector2_Axis {.gdsync.} = x
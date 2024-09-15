import gdext

type TestEnumA = enum
  EnumA1
  EnumA2
  EnumA3

type TestEnumB = enum
  EnumB1
  EnumB2
  EnumB3

type TestEnumC = enum
  EnumC1 = 1
  EnumC2
  EnumC3 = (4, "ENUM!")


ExtensionMain.registerEnum TestEnumA
ExtensionMain.registerBitField TestEnumB
registerEnum TestEnumC

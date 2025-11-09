{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(Marshalls, Object)

proc variantToBase64*(self: Marshalls; variant: Variant; fullObjects: bool = false): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Marshalls, "variant_to_base64", 3876248563)
  methodbind.ptrcall(self, [getPtr variant, getPtr fullObjects], String)

proc base64ToVariant*(self: Marshalls; base64Str: String; allowObjects: bool = false): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Marshalls, "base64_to_variant", 218087648)
  methodbind.ptrcall(self, [getPtr base64Str, getPtr allowObjects], Variant)

proc rawToBase64*(self: Marshalls; array: PackedByteArray): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Marshalls, "raw_to_base64", 3999417757)
  methodbind.ptrcall(self, [getPtr array], String)

proc base64ToRaw*(self: Marshalls; base64Str: String): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Marshalls, "base64_to_raw", 659035735)
  methodbind.ptrcall(self, [getPtr base64Str], PackedByteArray)

proc utf8ToBase64*(self: Marshalls; utf8Str: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Marshalls, "utf8_to_base64", 1703090593)
  methodbind.ptrcall(self, [getPtr utf8Str], String)

proc base64ToUtf8*(self: Marshalls; base64Str: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Marshalls, "base64_to_utf8", 1703090593)
  methodbind.ptrcall(self, [getPtr base64Str], String)

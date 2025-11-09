{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(StreamPeer, RefCounted)

proc putData*(self: StreamPeer; data: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_data", 680677267)
  methodbind.ptrcall(self, [getPtr data], Error)

proc putPartialData*(self: StreamPeer; data: PackedByteArray): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_partial_data", 2934048347)
  methodbind.ptrcall(self, [getPtr data], Array)

proc getData*(self: StreamPeer; bytes: int32): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_data", 1171824711)
  methodbind.ptrcall(self, [getPtr bytes], Array)

proc getPartialData*(self: StreamPeer; bytes: int32): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_partial_data", 1171824711)
  methodbind.ptrcall(self, [getPtr bytes], Array)

proc getAvailableBytes*(self: StreamPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_available_bytes", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setBigEndian*(self: StreamPeer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "set_big_endian", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isBigEndianEnabled*(self: StreamPeer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "is_big_endian_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc put8*(self: StreamPeer; value: int8): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_8", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc putU8*(self: StreamPeer; value: uint8): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_u8", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc put16*(self: StreamPeer; value: int16): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_16", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc putU16*(self: StreamPeer; value: uint16): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_u16", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc put32*(self: StreamPeer; value: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_32", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc putU32*(self: StreamPeer; value: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_u32", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc put64*(self: StreamPeer; value: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_64", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc putU64*(self: StreamPeer; value: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_u64", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc putHalf*(self: StreamPeer; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_half", 373806689)
  methodbind.ptrcall(self, [getPtr value], void)

proc putFloat*(self: StreamPeer; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_float", 373806689)
  methodbind.ptrcall(self, [getPtr value], void)

proc putDouble*(self: StreamPeer; value: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_double", 373806689)
  methodbind.ptrcall(self, [getPtr value], void)

proc putString*(self: StreamPeer; value: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_string", 83702148)
  methodbind.ptrcall(self, [getPtr value], void)

proc putUtf8String*(self: StreamPeer; value: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_utf8_string", 83702148)
  methodbind.ptrcall(self, [getPtr value], void)

proc putVar*(self: StreamPeer; value: Variant; fullObjects: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "put_var", 738511890)
  methodbind.ptrcall(self, [getPtr value, getPtr fullObjects], void)

proc get8*(self: StreamPeer): int8 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_8", 2455072627)
  methodbind.ptrcall(self, [], int8)

proc getU8*(self: StreamPeer): uint8 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_u8", 2455072627)
  methodbind.ptrcall(self, [], uint8)

proc get16*(self: StreamPeer): int16 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_16", 2455072627)
  methodbind.ptrcall(self, [], int16)

proc getU16*(self: StreamPeer): uint16 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_u16", 2455072627)
  methodbind.ptrcall(self, [], uint16)

proc get32*(self: StreamPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_32", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc getU32*(self: StreamPeer): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_u32", 2455072627)
  methodbind.ptrcall(self, [], uint32)

proc get64*(self: StreamPeer): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_64", 2455072627)
  methodbind.ptrcall(self, [], int64)

proc getU64*(self: StreamPeer): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_u64", 2455072627)
  methodbind.ptrcall(self, [], uint64)

proc getHalf*(self: StreamPeer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_half", 191475506)
  methodbind.ptrcall(self, [], Float)

proc getFloat*(self: StreamPeer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_float", 191475506)
  methodbind.ptrcall(self, [], Float)

proc getDouble*(self: StreamPeer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_double", 191475506)
  methodbind.ptrcall(self, [], float64)

proc getString*(self: StreamPeer; bytes: int32 = -1): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_string", 2309358862)
  methodbind.ptrcall(self, [getPtr bytes], String)

proc getUtf8String*(self: StreamPeer; bytes: int32 = -1): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_utf8_string", 2309358862)
  methodbind.ptrcall(self, [getPtr bytes], String)

proc getVar*(self: StreamPeer; allowObjects: bool = false): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeer, "get_var", 3442865206)
  methodbind.ptrcall(self, [getPtr allowObjects], Variant)

template bigEndian*(self: StreamPeer): untyped = self.isBigEndianEnabled()
template `bigEndian=`*(self: StreamPeer; value) = self.setBigEndian(value)

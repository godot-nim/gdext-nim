{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc putData*(self: StreamPeer; data: PackedByteArray): Error =
  expandMethodBind(className StreamPeer, "put_data", 680677267)
  var `?param` = [getPtr data]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc putPartialData*(self: StreamPeer; data: PackedByteArray): Array =
  expandMethodBind(className StreamPeer, "put_partial_data", 2934048347)
  var `?param` = [getPtr data]
  var ret: encoded Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Array)

proc getData*(self: StreamPeer; bytes: int32): Array =
  expandMethodBind(className StreamPeer, "get_data", 1171824711)
  var `?param` = [getPtr bytes]
  var ret: encoded Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Array)

proc getPartialData*(self: StreamPeer; bytes: int32): Array =
  expandMethodBind(className StreamPeer, "get_partial_data", 1171824711)
  var `?param` = [getPtr bytes]
  var ret: encoded Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Array)

proc getAvailableBytes*(self: StreamPeer): int32 =
  expandMethodBind(className StreamPeer, "get_available_bytes", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setBigEndian*(self: StreamPeer; enable: bool): void =
  expandMethodBind(className StreamPeer, "set_big_endian", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isBigEndianEnabled*(self: StreamPeer): bool =
  expandMethodBind(className StreamPeer, "is_big_endian_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc put8*(self: StreamPeer; value: int8): void =
  expandMethodBind(className StreamPeer, "put_8", 1286410249)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc putU8*(self: StreamPeer; value: uint8): void =
  expandMethodBind(className StreamPeer, "put_u8", 1286410249)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc put16*(self: StreamPeer; value: int16): void =
  expandMethodBind(className StreamPeer, "put_16", 1286410249)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc putU16*(self: StreamPeer; value: uint16): void =
  expandMethodBind(className StreamPeer, "put_u16", 1286410249)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc put32*(self: StreamPeer; value: int32): void =
  expandMethodBind(className StreamPeer, "put_32", 1286410249)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc putU32*(self: StreamPeer; value: uint32): void =
  expandMethodBind(className StreamPeer, "put_u32", 1286410249)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc put64*(self: StreamPeer; value: int64): void =
  expandMethodBind(className StreamPeer, "put_64", 1286410249)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc putU64*(self: StreamPeer; value: uint64): void =
  expandMethodBind(className StreamPeer, "put_u64", 1286410249)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc putFloat*(self: StreamPeer; value: Float): void =
  expandMethodBind(className StreamPeer, "put_float", 373806689)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc putDouble*(self: StreamPeer; value: float64): void =
  expandMethodBind(className StreamPeer, "put_double", 373806689)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc putString*(self: StreamPeer; value: String): void =
  expandMethodBind(className StreamPeer, "put_string", 83702148)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc putUtf8String*(self: StreamPeer; value: String): void =
  expandMethodBind(className StreamPeer, "put_utf8_string", 83702148)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc putVar*(self: StreamPeer; value: Variant; fullObjects: bool = false): void =
  expandMethodBind(className StreamPeer, "put_var", 738511890)
  var `?param` = [getPtr value, getPtr fullObjects]
  methodbind.ptrcall(self, addr `?param`[0])

proc get8*(self: StreamPeer): int8 =
  expandMethodBind(className StreamPeer, "get_8", 2455072627)
  var ret: encoded int8
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int8)

proc getU8*(self: StreamPeer): uint8 =
  expandMethodBind(className StreamPeer, "get_u8", 2455072627)
  var ret: encoded uint8
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint8)

proc get16*(self: StreamPeer): int16 =
  expandMethodBind(className StreamPeer, "get_16", 2455072627)
  var ret: encoded int16
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int16)

proc getU16*(self: StreamPeer): uint16 =
  expandMethodBind(className StreamPeer, "get_u16", 2455072627)
  var ret: encoded uint16
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint16)

proc get32*(self: StreamPeer): int32 =
  expandMethodBind(className StreamPeer, "get_32", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getU32*(self: StreamPeer): uint32 =
  expandMethodBind(className StreamPeer, "get_u32", 2455072627)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc get64*(self: StreamPeer): int64 =
  expandMethodBind(className StreamPeer, "get_64", 2455072627)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc getU64*(self: StreamPeer): uint64 =
  expandMethodBind(className StreamPeer, "get_u64", 2455072627)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc getFloat*(self: StreamPeer): Float =
  expandMethodBind(className StreamPeer, "get_float", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getDouble*(self: StreamPeer): float64 =
  expandMethodBind(className StreamPeer, "get_double", 191475506)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getString*(self: StreamPeer; bytes: int32 = -1): String =
  expandMethodBind(className StreamPeer, "get_string", 2309358862)
  var `?param` = [getPtr bytes]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getUtf8String*(self: StreamPeer; bytes: int32 = -1): String =
  expandMethodBind(className StreamPeer, "get_utf8_string", 2309358862)
  var `?param` = [getPtr bytes]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getVar*(self: StreamPeer; allowObjects: bool = false): Variant =
  expandMethodBind(className StreamPeer, "get_var", 3442865206)
  var `?param` = [getPtr allowObjects]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

template bigEndian*(self: StreamPeer): untyped = self.isBigEndianEnabled()
template `bigEndian=`*(self: StreamPeer; value) = self.setBigEndian(value)

const StreamPeer_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StreamPeer]): Table[string, string] = StreamPeer_vmap
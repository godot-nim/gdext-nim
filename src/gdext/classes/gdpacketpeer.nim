{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(PacketPeer, RefCounted)

proc getVar*(self: PacketPeer; allowObjects: bool = false): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeer, "get_var", 3442865206)
  methodbind.ptrcall(self, [getPtr allowObjects], Variant)

proc putVar*(self: PacketPeer; `var`: Variant; fullObjects: bool = false): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeer, "put_var", 2436251611)
  methodbind.ptrcall(self, [getPtr `var`, getPtr fullObjects], Error)

proc getPacket*(self: PacketPeer): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeer, "get_packet", 2115431945)
  methodbind.ptrcall(self, [], PackedByteArray)

proc putPacket*(self: PacketPeer; buffer: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeer, "put_packet", 680677267)
  methodbind.ptrcall(self, [getPtr buffer], Error)

proc getPacketError*(self: PacketPeer): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeer, "get_packet_error", 3185525595)
  methodbind.ptrcall(self, [], Error)

proc getAvailablePacketCount*(self: PacketPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeer, "get_available_packet_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getEncodeBufferMaxSize*(self: PacketPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeer, "get_encode_buffer_max_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setEncodeBufferMaxSize*(self: PacketPeer; maxSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeer, "set_encode_buffer_max_size", 1286410249)
  methodbind.ptrcall(self, [getPtr maxSize], void)

template encodeBufferMaxSize*(self: PacketPeer): untyped = self.getEncodeBufferMaxSize()
template `encodeBufferMaxSize=`*(self: PacketPeer; value) = self.setEncodeBufferMaxSize(value)

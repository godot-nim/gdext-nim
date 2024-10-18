{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getVar*(self: PacketPeer; allowObjects: bool = false): Variant =
  expandMethodBind(className PacketPeer, "get_var", 3442865206)
  var `?param` = [getPtr allowObjects]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc putVar*(self: PacketPeer; `var`: Variant; fullObjects: bool = false): Error =
  expandMethodBind(className PacketPeer, "put_var", 2436251611)
  var `?param` = [getPtr `var`, getPtr fullObjects]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getPacket*(self: PacketPeer): PackedByteArray =
  expandMethodBind(className PacketPeer, "get_packet", 2115431945)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc putPacket*(self: PacketPeer; buffer: PackedByteArray): Error =
  expandMethodBind(className PacketPeer, "put_packet", 680677267)
  var `?param` = [getPtr buffer]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getPacketError*(self: PacketPeer): Error =
  expandMethodBind(className PacketPeer, "get_packet_error", 3185525595)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc getAvailablePacketCount*(self: PacketPeer): int32 =
  expandMethodBind(className PacketPeer, "get_available_packet_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getEncodeBufferMaxSize*(self: PacketPeer): int32 =
  expandMethodBind(className PacketPeer, "get_encode_buffer_max_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setEncodeBufferMaxSize*(self: PacketPeer; maxSize: int32): void =
  expandMethodBind(className PacketPeer, "set_encode_buffer_max_size", 1286410249)
  var `?param` = [getPtr maxSize]
  methodbind.ptrcall(self, addr `?param`[0])

template encodeBufferMaxSize*(self: PacketPeer): untyped = self.getEncodeBufferMaxSize()
template `encodeBufferMaxSize=`*(self: PacketPeer; value) = self.setEncodeBufferMaxSize(value)

const PacketPeer_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PacketPeer]): Table[string, string] = PacketPeer_vmap
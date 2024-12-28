{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstreampeer; export gdstreampeer

proc seek*(self: StreamPeerBuffer; position: int32): void =
  expandMethodBind(className StreamPeerBuffer, "seek", 1286410249)
  methodbind.ptrcall(self, [getPtr position])

proc getSize*(self: StreamPeerBuffer): int32 =
  expandMethodBind(className StreamPeerBuffer, "get_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getPosition*(self: StreamPeerBuffer): int32 =
  expandMethodBind(className StreamPeerBuffer, "get_position", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc resize*(self: StreamPeerBuffer; size: int32): void =
  expandMethodBind(className StreamPeerBuffer, "resize", 1286410249)
  methodbind.ptrcall(self, [getPtr size])

proc setDataArray*(self: StreamPeerBuffer; data: PackedByteArray): void =
  expandMethodBind(className StreamPeerBuffer, "set_data_array", 2971499966)
  methodbind.ptrcall(self, [getPtr data])

proc getDataArray*(self: StreamPeerBuffer): PackedByteArray =
  expandMethodBind(className StreamPeerBuffer, "get_data_array", 2362200018)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc clear*(self: StreamPeerBuffer): void =
  expandMethodBind(className StreamPeerBuffer, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc duplicate*(self: StreamPeerBuffer): gdref StreamPeerBuffer =
  expandMethodBind(className StreamPeerBuffer, "duplicate", 2474064677)
  var ret: encoded gdref StreamPeerBuffer
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref StreamPeerBuffer)

template dataArray*(self: StreamPeerBuffer): untyped = self.getDataArray()
template `dataArray=`*(self: StreamPeerBuffer; value) = self.setDataArray(value)

const StreamPeerBuffer_vmap =
  StreamPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StreamPeerBuffer]): Table[string, string] = StreamPeerBuffer_vmap
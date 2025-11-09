{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstreampeer; export gdstreampeer

expandOnClassImported(StreamPeerBuffer, StreamPeer)

proc seek*(self: StreamPeerBuffer; position: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerBuffer, "seek", 1286410249)
  methodbind.ptrcall(self, [getPtr position], void)

proc getSize*(self: StreamPeerBuffer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerBuffer, "get_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getPosition*(self: StreamPeerBuffer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerBuffer, "get_position", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc resize*(self: StreamPeerBuffer; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerBuffer, "resize", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc setDataArray*(self: StreamPeerBuffer; data: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerBuffer, "set_data_array", 2971499966)
  methodbind.ptrcall(self, [getPtr data], void)

proc getDataArray*(self: StreamPeerBuffer): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerBuffer, "get_data_array", 2362200018)
  methodbind.ptrcall(self, [], PackedByteArray)

proc clear*(self: StreamPeerBuffer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerBuffer, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc duplicate*(self: StreamPeerBuffer): gdref StreamPeerBuffer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerBuffer, "duplicate", 2474064677)
  methodbind.ptrcall(self, [], gdref StreamPeerBuffer)

template dataArray*(self: StreamPeerBuffer): untyped = self.getDataArray()
template `dataArray=`*(self: StreamPeerBuffer; value) = self.setDataArray(value)

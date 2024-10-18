{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc loadBufferViewData*(self: GltfBufferView; state: gdref GltfState): PackedByteArray =
  expandMethodBind(className GltfBufferView, "load_buffer_view_data", 3945446907)
  var `?param` = [getPtr state]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getBuffer*(self: GltfBufferView): int32 =
  expandMethodBind(className GltfBufferView, "get_buffer", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setBuffer*(self: GltfBufferView; buffer: int32): void =
  expandMethodBind(className GltfBufferView, "set_buffer", 1286410249)
  var `?param` = [getPtr buffer]
  methodbind.ptrcall(self, addr `?param`[0])

proc getByteOffset*(self: GltfBufferView): int32 =
  expandMethodBind(className GltfBufferView, "get_byte_offset", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setByteOffset*(self: GltfBufferView; byteOffset: int32): void =
  expandMethodBind(className GltfBufferView, "set_byte_offset", 1286410249)
  var `?param` = [getPtr byteOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getByteLength*(self: GltfBufferView): int32 =
  expandMethodBind(className GltfBufferView, "get_byte_length", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setByteLength*(self: GltfBufferView; byteLength: int32): void =
  expandMethodBind(className GltfBufferView, "set_byte_length", 1286410249)
  var `?param` = [getPtr byteLength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getByteStride*(self: GltfBufferView): int32 =
  expandMethodBind(className GltfBufferView, "get_byte_stride", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setByteStride*(self: GltfBufferView; byteStride: int32): void =
  expandMethodBind(className GltfBufferView, "set_byte_stride", 1286410249)
  var `?param` = [getPtr byteStride]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIndices*(self: GltfBufferView): bool =
  expandMethodBind(className GltfBufferView, "get_indices", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setIndices*(self: GltfBufferView; indices: bool): void =
  expandMethodBind(className GltfBufferView, "set_indices", 2586408642)
  var `?param` = [getPtr indices]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVertexAttributes*(self: GltfBufferView): bool =
  expandMethodBind(className GltfBufferView, "get_vertex_attributes", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setVertexAttributes*(self: GltfBufferView; isAttributes: bool): void =
  expandMethodBind(className GltfBufferView, "set_vertex_attributes", 2586408642)
  var `?param` = [getPtr isAttributes]
  methodbind.ptrcall(self, addr `?param`[0])

template buffer*(self: GltfBufferView): untyped = self.getBuffer()
template `buffer=`*(self: GltfBufferView; value) = self.setBuffer(value)

template byteOffset*(self: GltfBufferView): untyped = self.getByteOffset()
template `byteOffset=`*(self: GltfBufferView; value) = self.setByteOffset(value)

template byteLength*(self: GltfBufferView): untyped = self.getByteLength()
template `byteLength=`*(self: GltfBufferView; value) = self.setByteLength(value)

template byteStride*(self: GltfBufferView): untyped = self.getByteStride()
template `byteStride=`*(self: GltfBufferView; value) = self.setByteStride(value)

template indices*(self: GltfBufferView): untyped = self.getIndices()
template `indices=`*(self: GltfBufferView; value) = self.setIndices(value)

template vertexAttributes*(self: GltfBufferView): untyped = self.getVertexAttributes()
template `vertexAttributes=`*(self: GltfBufferView; value) = self.setVertexAttributes(value)

const GltfBufferView_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfBufferView]): Table[string, string] = GltfBufferView_vmap
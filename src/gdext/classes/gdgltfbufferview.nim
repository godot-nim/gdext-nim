{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc loadBufferViewData*(self: GLTFBufferView; state: gdref GLTFState): PackedByteArray =
  expandMethodBind(className GLTFBufferView, "load_buffer_view_data", 3945446907)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr state], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getBuffer*(self: GLTFBufferView): int32 =
  expandMethodBind(className GLTFBufferView, "get_buffer", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setBuffer*(self: GLTFBufferView; buffer: int32): void =
  expandMethodBind(className GLTFBufferView, "set_buffer", 1286410249)
  methodbind.ptrcall(self, [getPtr buffer])

proc getByteOffset*(self: GLTFBufferView): int32 =
  expandMethodBind(className GLTFBufferView, "get_byte_offset", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setByteOffset*(self: GLTFBufferView; byteOffset: int32): void =
  expandMethodBind(className GLTFBufferView, "set_byte_offset", 1286410249)
  methodbind.ptrcall(self, [getPtr byteOffset])

proc getByteLength*(self: GLTFBufferView): int32 =
  expandMethodBind(className GLTFBufferView, "get_byte_length", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setByteLength*(self: GLTFBufferView; byteLength: int32): void =
  expandMethodBind(className GLTFBufferView, "set_byte_length", 1286410249)
  methodbind.ptrcall(self, [getPtr byteLength])

proc getByteStride*(self: GLTFBufferView): int32 =
  expandMethodBind(className GLTFBufferView, "get_byte_stride", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setByteStride*(self: GLTFBufferView; byteStride: int32): void =
  expandMethodBind(className GLTFBufferView, "set_byte_stride", 1286410249)
  methodbind.ptrcall(self, [getPtr byteStride])

proc getIndices*(self: GLTFBufferView): bool =
  expandMethodBind(className GLTFBufferView, "get_indices", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setIndices*(self: GLTFBufferView; indices: bool): void =
  expandMethodBind(className GLTFBufferView, "set_indices", 2586408642)
  methodbind.ptrcall(self, [getPtr indices])

proc getVertexAttributes*(self: GLTFBufferView): bool =
  expandMethodBind(className GLTFBufferView, "get_vertex_attributes", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setVertexAttributes*(self: GLTFBufferView; isAttributes: bool): void =
  expandMethodBind(className GLTFBufferView, "set_vertex_attributes", 2586408642)
  methodbind.ptrcall(self, [getPtr isAttributes])

template buffer*(self: GLTFBufferView): untyped = self.getBuffer()
template `buffer=`*(self: GLTFBufferView; value) = self.setBuffer(value)

template byteOffset*(self: GLTFBufferView): untyped = self.getByteOffset()
template `byteOffset=`*(self: GLTFBufferView; value) = self.setByteOffset(value)

template byteLength*(self: GLTFBufferView): untyped = self.getByteLength()
template `byteLength=`*(self: GLTFBufferView; value) = self.setByteLength(value)

template byteStride*(self: GLTFBufferView): untyped = self.getByteStride()
template `byteStride=`*(self: GLTFBufferView; value) = self.setByteStride(value)

template indices*(self: GLTFBufferView): untyped = self.getIndices()
template `indices=`*(self: GLTFBufferView; value) = self.setIndices(value)

template vertexAttributes*(self: GLTFBufferView): untyped = self.getVertexAttributes()
template `vertexAttributes=`*(self: GLTFBufferView; value) = self.setVertexAttributes(value)

const GLTFBufferView_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFBufferView]): Table[string, string] = GLTFBufferView_vmap
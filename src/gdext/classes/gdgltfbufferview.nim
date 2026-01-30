{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFBufferView, Resource)

proc loadBufferViewData*(self: GLTFBufferView; state: gdref GLTFState): PackedByteArray =
  expandMethodBind(className GLTFBufferView, "load_buffer_view_data", 3945446907)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr state], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc fromDictionary*(_: typedesc[GLTFBufferView]; dictionary: Dictionary[Variant, Variant]): gdref GLTFBufferView =
  expandMethodBind(className GLTFBufferView, "from_dictionary", 2594413512)
  nilCheck dictionary
  var ret: encoded gdref GLTFBufferView
  methodbind.ptrcall([getPtr dictionary], addr ret)
  (addr ret).decode_result(gdref GLTFBufferView)

proc toDictionary*(self: GLTFBufferView): Dictionary[Variant, Variant] =
  expandMethodBind(className GLTFBufferView, "to_dictionary", 3102165223)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc getBuffer*(self: GLTFBufferView): int32 =
  expandMethodBind(className GLTFBufferView, "get_buffer", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setBuffer*(self: GLTFBufferView; buffer: int32): void =
  expandMethodBind(className GLTFBufferView, "set_buffer", 1286410249)
  methodbind.ptrcall(self, [getPtr buffer])

proc getByteOffset*(self: GLTFBufferView): int64 =
  expandMethodBind(className GLTFBufferView, "get_byte_offset", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc setByteOffset*(self: GLTFBufferView; byteOffset: int64): void =
  expandMethodBind(className GLTFBufferView, "set_byte_offset", 1286410249)
  methodbind.ptrcall(self, [getPtr byteOffset])

proc getByteLength*(self: GLTFBufferView): int64 =
  expandMethodBind(className GLTFBufferView, "get_byte_length", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc setByteLength*(self: GLTFBufferView; byteLength: int64): void =
  expandMethodBind(className GLTFBufferView, "set_byte_length", 1286410249)
  methodbind.ptrcall(self, [getPtr byteLength])

proc getByteStride*(self: GLTFBufferView): int64 =
  expandMethodBind(className GLTFBufferView, "get_byte_stride", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc setByteStride*(self: GLTFBufferView; byteStride: int64): void =
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

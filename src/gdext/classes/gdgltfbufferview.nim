{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFBufferView, Resource)

proc loadBufferViewData*(self: GLTFBufferView; state: gdref GLTFState): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFBufferView, "load_buffer_view_data", 3945446907)
  methodbind.ptrcall(self, [getPtr state], PackedByteArray)

proc getBuffer*(self: GLTFBufferView): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFBufferView, "get_buffer", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setBuffer*(self: GLTFBufferView; buffer: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFBufferView, "set_buffer", 1286410249)
  methodbind.ptrcall(self, [getPtr buffer], void)

proc getByteOffset*(self: GLTFBufferView): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFBufferView, "get_byte_offset", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc setByteOffset*(self: GLTFBufferView; byteOffset: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFBufferView, "set_byte_offset", 1286410249)
  methodbind.ptrcall(self, [getPtr byteOffset], void)

proc getByteLength*(self: GLTFBufferView): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFBufferView, "get_byte_length", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc setByteLength*(self: GLTFBufferView; byteLength: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFBufferView, "set_byte_length", 1286410249)
  methodbind.ptrcall(self, [getPtr byteLength], void)

proc getByteStride*(self: GLTFBufferView): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFBufferView, "get_byte_stride", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc setByteStride*(self: GLTFBufferView; byteStride: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFBufferView, "set_byte_stride", 1286410249)
  methodbind.ptrcall(self, [getPtr byteStride], void)

proc getIndices*(self: GLTFBufferView): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFBufferView, "get_indices", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setIndices*(self: GLTFBufferView; indices: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFBufferView, "set_indices", 2586408642)
  methodbind.ptrcall(self, [getPtr indices], void)

proc getVertexAttributes*(self: GLTFBufferView): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFBufferView, "get_vertex_attributes", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setVertexAttributes*(self: GLTFBufferView; isAttributes: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFBufferView, "set_vertex_attributes", 2586408642)
  methodbind.ptrcall(self, [getPtr isAttributes], void)

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

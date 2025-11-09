{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RDVertexAttribute, RefCounted)

proc setLocation*(self: RDVertexAttribute; pMember: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDVertexAttribute, "set_location", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getLocation*(self: RDVertexAttribute): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDVertexAttribute, "get_location", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setOffset*(self: RDVertexAttribute; pMember: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDVertexAttribute, "set_offset", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getOffset*(self: RDVertexAttribute): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDVertexAttribute, "get_offset", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setFormat*(self: RDVertexAttribute; pMember: RenderingDevice_DataFormat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDVertexAttribute, "set_format", 565531219)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getFormat*(self: RDVertexAttribute): RenderingDevice_DataFormat =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDVertexAttribute, "get_format", 2235804183)
  methodbind.ptrcall(self, [], RenderingDevice_DataFormat)

proc setStride*(self: RDVertexAttribute; pMember: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDVertexAttribute, "set_stride", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getStride*(self: RDVertexAttribute): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDVertexAttribute, "get_stride", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setFrequency*(self: RDVertexAttribute; pMember: RenderingDevice_VertexFrequency): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDVertexAttribute, "set_frequency", 522141836)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getFrequency*(self: RDVertexAttribute): RenderingDevice_VertexFrequency =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDVertexAttribute, "get_frequency", 4154106413)
  methodbind.ptrcall(self, [], RenderingDevice_VertexFrequency)

template location*(self: RDVertexAttribute): untyped = self.getLocation()
template `location=`*(self: RDVertexAttribute; value) = self.setLocation(value)

template offset*(self: RDVertexAttribute): untyped = self.getOffset()
template `offset=`*(self: RDVertexAttribute; value) = self.setOffset(value)

template format*(self: RDVertexAttribute): untyped = self.getFormat()
template `format=`*(self: RDVertexAttribute; value) = self.setFormat(value)

template stride*(self: RDVertexAttribute): untyped = self.getStride()
template `stride=`*(self: RDVertexAttribute; value) = self.setStride(value)

template frequency*(self: RDVertexAttribute): untyped = self.getFrequency()
template `frequency=`*(self: RDVertexAttribute; value) = self.setFrequency(value)

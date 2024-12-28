{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setLocation*(self: RDVertexAttribute; pMember: uint32): void =
  expandMethodBind(className RDVertexAttribute, "set_location", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember])

proc getLocation*(self: RDVertexAttribute): uint32 =
  expandMethodBind(className RDVertexAttribute, "get_location", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setOffset*(self: RDVertexAttribute; pMember: uint32): void =
  expandMethodBind(className RDVertexAttribute, "set_offset", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember])

proc getOffset*(self: RDVertexAttribute): uint32 =
  expandMethodBind(className RDVertexAttribute, "get_offset", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setFormat*(self: RDVertexAttribute; pMember: RenderingDevice_DataFormat): void =
  expandMethodBind(className RDVertexAttribute, "set_format", 565531219)
  methodbind.ptrcall(self, [getPtr pMember])

proc getFormat*(self: RDVertexAttribute): RenderingDevice_DataFormat =
  expandMethodBind(className RDVertexAttribute, "get_format", 2235804183)
  var ret: encoded RenderingDevice_DataFormat
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_DataFormat)

proc setStride*(self: RDVertexAttribute; pMember: uint32): void =
  expandMethodBind(className RDVertexAttribute, "set_stride", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember])

proc getStride*(self: RDVertexAttribute): uint32 =
  expandMethodBind(className RDVertexAttribute, "get_stride", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setFrequency*(self: RDVertexAttribute; pMember: RenderingDevice_VertexFrequency): void =
  expandMethodBind(className RDVertexAttribute, "set_frequency", 522141836)
  methodbind.ptrcall(self, [getPtr pMember])

proc getFrequency*(self: RDVertexAttribute): RenderingDevice_VertexFrequency =
  expandMethodBind(className RDVertexAttribute, "get_frequency", 4154106413)
  var ret: encoded RenderingDevice_VertexFrequency
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_VertexFrequency)

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

const RDVertexAttribute_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDVertexAttribute]): Table[string, string] = RDVertexAttribute_vmap
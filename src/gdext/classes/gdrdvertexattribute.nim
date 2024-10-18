{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setLocation*(self: RdVertexAttribute; pMember: uint32): void =
  expandMethodBind(className RdVertexAttribute, "set_location", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLocation*(self: RdVertexAttribute): uint32 =
  expandMethodBind(className RdVertexAttribute, "get_location", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setOffset*(self: RdVertexAttribute; pMember: uint32): void =
  expandMethodBind(className RdVertexAttribute, "set_offset", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOffset*(self: RdVertexAttribute): uint32 =
  expandMethodBind(className RdVertexAttribute, "get_offset", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setFormat*(self: RdVertexAttribute; pMember: RenderingDevice_DataFormat): void =
  expandMethodBind(className RdVertexAttribute, "set_format", 565531219)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFormat*(self: RdVertexAttribute): RenderingDevice_DataFormat =
  expandMethodBind(className RdVertexAttribute, "get_format", 2235804183)
  var ret: encoded RenderingDevice_DataFormat
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_DataFormat)

proc setStride*(self: RdVertexAttribute; pMember: uint32): void =
  expandMethodBind(className RdVertexAttribute, "set_stride", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStride*(self: RdVertexAttribute): uint32 =
  expandMethodBind(className RdVertexAttribute, "get_stride", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setFrequency*(self: RdVertexAttribute; pMember: RenderingDevice_VertexFrequency): void =
  expandMethodBind(className RdVertexAttribute, "set_frequency", 522141836)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrequency*(self: RdVertexAttribute): RenderingDevice_VertexFrequency =
  expandMethodBind(className RdVertexAttribute, "get_frequency", 4154106413)
  var ret: encoded RenderingDevice_VertexFrequency
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_VertexFrequency)

template location*(self: RdVertexAttribute): untyped = self.getLocation()
template `location=`*(self: RdVertexAttribute; value) = self.setLocation(value)

template offset*(self: RdVertexAttribute): untyped = self.getOffset()
template `offset=`*(self: RdVertexAttribute; value) = self.setOffset(value)

template format*(self: RdVertexAttribute): untyped = self.getFormat()
template `format=`*(self: RdVertexAttribute; value) = self.setFormat(value)

template stride*(self: RdVertexAttribute): untyped = self.getStride()
template `stride=`*(self: RdVertexAttribute; value) = self.setStride(value)

template frequency*(self: RdVertexAttribute): untyped = self.getFrequency()
template `frequency=`*(self: RdVertexAttribute; value) = self.setFrequency(value)

const RdVertexAttribute_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdVertexAttribute]): Table[string, string] = RdVertexAttribute_vmap
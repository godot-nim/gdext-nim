{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setUniformType*(self: RDUniform; pMember: RenderingDevice_UniformType): void =
  expandMethodBind(className RDUniform, "set_uniform_type", 1664894931)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUniformType*(self: RDUniform): RenderingDevice_UniformType =
  expandMethodBind(className RDUniform, "get_uniform_type", 475470040)
  var ret: encoded RenderingDevice_UniformType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_UniformType)

proc setBinding*(self: RDUniform; pMember: int32): void =
  expandMethodBind(className RDUniform, "set_binding", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBinding*(self: RDUniform): int32 =
  expandMethodBind(className RDUniform, "get_binding", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc addId*(self: RDUniform; id: RID): void =
  expandMethodBind(className RDUniform, "add_id", 2722037293)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearIds*(self: RDUniform): void =
  expandMethodBind(className RDUniform, "clear_ids", 3218959716)
  methodbind.ptrcall(self, nil)

proc getIds*(self: RDUniform): TypedArray[RID] =
  expandMethodBind(className RDUniform, "get_ids", 3995934104)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[RID])

template uniformType*(self: RDUniform): untyped = self.getUniformType()
template `uniformType=`*(self: RDUniform; value) = self.setUniformType(value)

template binding*(self: RDUniform): untyped = self.getBinding()
template `binding=`*(self: RDUniform; value) = self.setBinding(value)

const RDUniform_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDUniform]): Table[string, string] = RDUniform_vmap
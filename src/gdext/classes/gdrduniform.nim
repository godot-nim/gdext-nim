{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setUniformType*(self: RdUniform; pMember: RenderingDevice_UniformType): void =
  expandMethodBind(className RdUniform, "set_uniform_type", 1664894931)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUniformType*(self: RdUniform): RenderingDevice_UniformType =
  expandMethodBind(className RdUniform, "get_uniform_type", 475470040)
  var ret: encoded RenderingDevice_UniformType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_UniformType)

proc setBinding*(self: RdUniform; pMember: int32): void =
  expandMethodBind(className RdUniform, "set_binding", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBinding*(self: RdUniform): int32 =
  expandMethodBind(className RdUniform, "get_binding", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc addId*(self: RdUniform; id: Rid): void =
  expandMethodBind(className RdUniform, "add_id", 2722037293)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearIds*(self: RdUniform): void =
  expandMethodBind(className RdUniform, "clear_ids", 3218959716)
  methodbind.ptrcall(self, nil)

proc getIds*(self: RdUniform): TypedArray[Rid] =
  expandMethodBind(className RdUniform, "get_ids", 3995934104)
  var ret: encoded TypedArray[Rid]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Rid])

template uniformType*(self: RdUniform): untyped = self.getUniformType()
template `uniformType=`*(self: RdUniform; value) = self.setUniformType(value)

template binding*(self: RdUniform): untyped = self.getBinding()
template `binding=`*(self: RdUniform; value) = self.setBinding(value)

const RdUniform_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdUniform]): Table[string, string] = RdUniform_vmap
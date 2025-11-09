{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RDUniform, RefCounted)

proc setUniformType*(self: RDUniform; pMember: RenderingDevice_UniformType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDUniform, "set_uniform_type", 1664894931)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getUniformType*(self: RDUniform): RenderingDevice_UniformType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDUniform, "get_uniform_type", 475470040)
  methodbind.ptrcall(self, [], RenderingDevice_UniformType)

proc setBinding*(self: RDUniform; pMember: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDUniform, "set_binding", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getBinding*(self: RDUniform): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDUniform, "get_binding", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc addId*(self: RDUniform; id: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDUniform, "add_id", 2722037293)
  methodbind.ptrcall(self, [getPtr id], void)

proc clearIds*(self: RDUniform): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDUniform, "clear_ids", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getIds*(self: RDUniform): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDUniform, "get_ids", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

template uniformType*(self: RDUniform): untyped = self.getUniformType()
template `uniformType=`*(self: RDUniform; value) = self.setUniformType(value)

template binding*(self: RDUniform): untyped = self.getBinding()
template `binding=`*(self: RDUniform; value) = self.setBinding(value)

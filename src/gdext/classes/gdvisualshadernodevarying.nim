{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeVarying, VisualShaderNode)

proc setVaryingName*(self: VisualShaderNodeVarying; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVarying, "set_varying_name", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getVaryingName*(self: VisualShaderNodeVarying): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVarying, "get_varying_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc setVaryingType*(self: VisualShaderNodeVarying; `type`: VisualShader_VaryingType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVarying, "set_varying_type", 3565867981)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getVaryingType*(self: VisualShaderNodeVarying): VisualShader_VaryingType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVarying, "get_varying_type", 523183580)
  methodbind.ptrcall(self, [], VisualShader_VaryingType)

template varyingName*(self: VisualShaderNodeVarying): untyped = self.getVaryingName()
template `varyingName=`*(self: VisualShaderNodeVarying; value) = self.setVaryingName(value)

template varyingType*(self: VisualShaderNodeVarying): untyped = self.getVaryingType()
template `varyingType=`*(self: VisualShaderNodeVarying; value) = self.setVaryingType(value)

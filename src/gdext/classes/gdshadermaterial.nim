{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

expandOnClassImported(ShaderMaterial, Material)

proc setShader*(self: ShaderMaterial; shader: gdref Shader): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShaderMaterial, "set_shader", 3341921675)
  methodbind.ptrcall(self, [getPtr shader], void)

proc getShader*(self: ShaderMaterial): gdref Shader =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShaderMaterial, "get_shader", 2078273437)
  methodbind.ptrcall(self, [], gdref Shader)

proc setShaderParameter*(self: ShaderMaterial; param: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShaderMaterial, "set_shader_parameter", 3776071444)
  methodbind.ptrcall(self, [getPtr param, getPtr value], void)

proc getShaderParameter*(self: ShaderMaterial; param: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShaderMaterial, "get_shader_parameter", 2760726917)
  methodbind.ptrcall(self, [getPtr param], Variant)

template shader*(self: ShaderMaterial): untyped = self.getShader()
template `shader=`*(self: ShaderMaterial; value) = self.setShader(value)

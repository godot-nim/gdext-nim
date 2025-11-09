{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Shader, Resource)

proc getMode*(self: Shader): Shader_Mode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shader, "get_mode", 3392948163)
  methodbind.ptrcall(self, [], Shader_Mode)

proc setCode*(self: Shader; code: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shader, "set_code", 83702148)
  methodbind.ptrcall(self, [getPtr code], void)

proc getCode*(self: Shader): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shader, "get_code", 201670096)
  methodbind.ptrcall(self, [], String)

proc setDefaultTextureParameter*(self: Shader; name: StringName; texture: gdref Texture; index: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shader, "set_default_texture_parameter", 3850209648)
  methodbind.ptrcall(self, [getPtr name, getPtr texture, getPtr index], void)

proc getDefaultTextureParameter*(self: Shader; name: StringName; index: int32 = 0): gdref Texture =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shader, "get_default_texture_parameter", 4213877425)
  methodbind.ptrcall(self, [getPtr name, getPtr index], gdref Texture)

proc getShaderUniformList*(self: Shader; getGroups: bool = false): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shader, "get_shader_uniform_list", 1230511656)
  methodbind.ptrcall(self, [getPtr getGroups], Array)

proc inspectNativeShaderCode*(self: Shader): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shader, "inspect_native_shader_code", 3218959716)
  methodbind.ptrcall(self, [], void)

template code*(self: Shader): untyped = self.getCode()
template `code=`*(self: Shader; value) = self.setCode(value)

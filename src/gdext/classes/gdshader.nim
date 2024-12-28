{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getMode*(self: Shader): Shader_Mode =
  expandMethodBind(className Shader, "get_mode", 3392948163)
  var ret: encoded Shader_Mode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Shader_Mode)

proc setCode*(self: Shader; code: String): void =
  expandMethodBind(className Shader, "set_code", 83702148)
  methodbind.ptrcall(self, [getPtr code])

proc getCode*(self: Shader): String =
  expandMethodBind(className Shader, "get_code", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setDefaultTextureParameter*(self: Shader; name: StringName; texture: gdref Texture2D; index: int32 = 0): void =
  expandMethodBind(className Shader, "set_default_texture_parameter", 2750740428)
  methodbind.ptrcall(self, [getPtr name, getPtr texture, getPtr index])

proc getDefaultTextureParameter*(self: Shader; name: StringName; index: int32 = 0): gdref Texture2D =
  expandMethodBind(className Shader, "get_default_texture_parameter", 3090538643)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [getPtr name, getPtr index], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getShaderUniformList*(self: Shader; getGroups: bool = false): Array =
  expandMethodBind(className Shader, "get_shader_uniform_list", 1230511656)
  var ret: encoded Array
  methodbind.ptrcall(self, [getPtr getGroups], addr ret)
  (addr ret).decode_result(Array)

template code*(self: Shader): untyped = self.getCode()
template `code=`*(self: Shader; value) = self.setCode(value)

const Shader_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Shader]): Table[string, string] = Shader_vmap
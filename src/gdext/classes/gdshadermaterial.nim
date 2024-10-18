{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

proc setShader*(self: ShaderMaterial; shader: gdref Shader): void =
  expandMethodBind(className ShaderMaterial, "set_shader", 3341921675)
  var `?param` = [getPtr shader]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShader*(self: ShaderMaterial): gdref Shader =
  expandMethodBind(className ShaderMaterial, "get_shader", 2078273437)
  var ret: encoded gdref Shader
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Shader)

proc setShaderParameter*(self: ShaderMaterial; param: StringName; value: Variant): void =
  expandMethodBind(className ShaderMaterial, "set_shader_parameter", 3776071444)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShaderParameter*(self: ShaderMaterial; param: StringName): Variant =
  expandMethodBind(className ShaderMaterial, "get_shader_parameter", 2760726917)
  var `?param` = [getPtr param]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

template shader*(self: ShaderMaterial): untyped = self.getShader()
template `shader=`*(self: ShaderMaterial; value) = self.setShader(value)

const ShaderMaterial_vmap =
  Material.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ShaderMaterial]): Table[string, string] = ShaderMaterial_vmap
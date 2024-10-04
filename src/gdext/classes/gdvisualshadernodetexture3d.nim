{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodesample3d; export gdvisualshadernodesample3d

proc setTexture*(self: VisualShaderNodeTexture3D; value: gdref Texture3D): void =
  expandMethodBind(className VisualShaderNodeTexture3D, "set_texture", 1188404210)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: VisualShaderNodeTexture3D): gdref Texture3D =
  expandMethodBind(className VisualShaderNodeTexture3D, "get_texture", 373985333)
  var ret: encoded gdref Texture3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture3D)

template texture*(self: VisualShaderNodeTexture3D): untyped = self.getTexture()
template `texture=`*(self: VisualShaderNodeTexture3D; value) = self.setTexture(value)

const VisualShaderNodeTexture3D_vmap =
  VisualShaderNodeSample3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTexture3D]): Table[string, string] = VisualShaderNodeTexture3D_vmap
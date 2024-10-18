{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setSource*(self: VisualShaderNodeTexture; value: VisualShaderNodeTexture_Source): void =
  expandMethodBind(className VisualShaderNodeTexture, "set_source", 905262939)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSource*(self: VisualShaderNodeTexture): VisualShaderNodeTexture_Source =
  expandMethodBind(className VisualShaderNodeTexture, "get_source", 2896297444)
  var ret: encoded VisualShaderNodeTexture_Source
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeTexture_Source)

proc setTexture*(self: VisualShaderNodeTexture; value: gdref Texture2D): void =
  expandMethodBind(className VisualShaderNodeTexture, "set_texture", 4051416890)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: VisualShaderNodeTexture): gdref Texture2D =
  expandMethodBind(className VisualShaderNodeTexture, "get_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setTextureType*(self: VisualShaderNodeTexture; value: VisualShaderNodeTexture_TextureType): void =
  expandMethodBind(className VisualShaderNodeTexture, "set_texture_type", 986314081)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureType*(self: VisualShaderNodeTexture): VisualShaderNodeTexture_TextureType =
  expandMethodBind(className VisualShaderNodeTexture, "get_texture_type", 3290430153)
  var ret: encoded VisualShaderNodeTexture_TextureType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeTexture_TextureType)

template source*(self: VisualShaderNodeTexture): untyped = self.getSource()
template `source=`*(self: VisualShaderNodeTexture; value) = self.setSource(value)

template texture*(self: VisualShaderNodeTexture): untyped = self.getTexture()
template `texture=`*(self: VisualShaderNodeTexture; value) = self.setTexture(value)

template textureType*(self: VisualShaderNodeTexture): untyped = self.getTextureType()
template `textureType=`*(self: VisualShaderNodeTexture; value) = self.setTextureType(value)

const VisualShaderNodeTexture_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTexture]): Table[string, string] = VisualShaderNodeTexture_vmap
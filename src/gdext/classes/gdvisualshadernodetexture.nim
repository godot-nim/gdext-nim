{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeTexture, VisualShaderNode)

proc setSource*(self: VisualShaderNodeTexture; value: VisualShaderNodeTexture_Source): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTexture, "set_source", 905262939)
  methodbind.ptrcall(self, [getPtr value], void)

proc getSource*(self: VisualShaderNodeTexture): VisualShaderNodeTexture_Source =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTexture, "get_source", 2896297444)
  methodbind.ptrcall(self, [], VisualShaderNodeTexture_Source)

proc setTexture*(self: VisualShaderNodeTexture; value: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTexture, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr value], void)

proc getTexture*(self: VisualShaderNodeTexture): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTexture, "get_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setTextureType*(self: VisualShaderNodeTexture; value: VisualShaderNodeTexture_TextureType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTexture, "set_texture_type", 986314081)
  methodbind.ptrcall(self, [getPtr value], void)

proc getTextureType*(self: VisualShaderNodeTexture): VisualShaderNodeTexture_TextureType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTexture, "get_texture_type", 3290430153)
  methodbind.ptrcall(self, [], VisualShaderNodeTexture_TextureType)

template source*(self: VisualShaderNodeTexture): untyped = self.getSource()
template `source=`*(self: VisualShaderNodeTexture; value) = self.setSource(value)

template texture*(self: VisualShaderNodeTexture): untyped = self.getTexture()
template `texture=`*(self: VisualShaderNodeTexture; value) = self.setTexture(value)

template textureType*(self: VisualShaderNodeTexture): untyped = self.getTextureType()
template `textureType=`*(self: VisualShaderNodeTexture; value) = self.setTextureType(value)

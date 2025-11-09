{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(CanvasTexture, Texture2D)

proc setDiffuseTexture*(self: CanvasTexture; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasTexture, "set_diffuse_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getDiffuseTexture*(self: CanvasTexture): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasTexture, "get_diffuse_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setNormalTexture*(self: CanvasTexture; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasTexture, "set_normal_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getNormalTexture*(self: CanvasTexture): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasTexture, "get_normal_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setSpecularTexture*(self: CanvasTexture; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasTexture, "set_specular_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getSpecularTexture*(self: CanvasTexture): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasTexture, "get_specular_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setSpecularColor*(self: CanvasTexture; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasTexture, "set_specular_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getSpecularColor*(self: CanvasTexture): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasTexture, "get_specular_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setSpecularShininess*(self: CanvasTexture; shininess: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasTexture, "set_specular_shininess", 373806689)
  methodbind.ptrcall(self, [getPtr shininess], void)

proc getSpecularShininess*(self: CanvasTexture): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasTexture, "get_specular_shininess", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTextureFilter*(self: CanvasTexture; filter: CanvasItem_TextureFilter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasTexture, "set_texture_filter", 1037999706)
  methodbind.ptrcall(self, [getPtr filter], void)

proc getTextureFilter*(self: CanvasTexture): CanvasItem_TextureFilter =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasTexture, "get_texture_filter", 121960042)
  methodbind.ptrcall(self, [], CanvasItem_TextureFilter)

proc setTextureRepeat*(self: CanvasTexture; repeat: CanvasItem_TextureRepeat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasTexture, "set_texture_repeat", 1716472974)
  methodbind.ptrcall(self, [getPtr repeat], void)

proc getTextureRepeat*(self: CanvasTexture): CanvasItem_TextureRepeat =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasTexture, "get_texture_repeat", 2667158319)
  methodbind.ptrcall(self, [], CanvasItem_TextureRepeat)

template diffuseTexture*(self: CanvasTexture): untyped = self.getDiffuseTexture()
template `diffuseTexture=`*(self: CanvasTexture; value) = self.setDiffuseTexture(value)

template normalTexture*(self: CanvasTexture): untyped = self.getNormalTexture()
template `normalTexture=`*(self: CanvasTexture; value) = self.setNormalTexture(value)

template specularTexture*(self: CanvasTexture): untyped = self.getSpecularTexture()
template `specularTexture=`*(self: CanvasTexture; value) = self.setSpecularTexture(value)

template specularColor*(self: CanvasTexture): untyped = self.getSpecularColor()
template `specularColor=`*(self: CanvasTexture; value) = self.setSpecularColor(value)

template specularShininess*(self: CanvasTexture): untyped = self.getSpecularShininess()
template `specularShininess=`*(self: CanvasTexture; value) = self.setSpecularShininess(value)

template textureFilter*(self: CanvasTexture): untyped = self.getTextureFilter()
template `textureFilter=`*(self: CanvasTexture; value) = self.setTextureFilter(value)

template textureRepeat*(self: CanvasTexture): untyped = self.getTextureRepeat()
template `textureRepeat=`*(self: CanvasTexture; value) = self.setTextureRepeat(value)

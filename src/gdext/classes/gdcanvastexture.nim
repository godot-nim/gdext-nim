{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setDiffuseTexture*(self: CanvasTexture; texture: gdref Texture2D): void =
  expandMethodBind(className CanvasTexture, "set_diffuse_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDiffuseTexture*(self: CanvasTexture): gdref Texture2D =
  expandMethodBind(className CanvasTexture, "get_diffuse_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setNormalTexture*(self: CanvasTexture; texture: gdref Texture2D): void =
  expandMethodBind(className CanvasTexture, "set_normal_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNormalTexture*(self: CanvasTexture): gdref Texture2D =
  expandMethodBind(className CanvasTexture, "get_normal_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setSpecularTexture*(self: CanvasTexture; texture: gdref Texture2D): void =
  expandMethodBind(className CanvasTexture, "set_specular_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpecularTexture*(self: CanvasTexture): gdref Texture2D =
  expandMethodBind(className CanvasTexture, "get_specular_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setSpecularColor*(self: CanvasTexture; color: Color): void =
  expandMethodBind(className CanvasTexture, "set_specular_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpecularColor*(self: CanvasTexture): Color =
  expandMethodBind(className CanvasTexture, "get_specular_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setSpecularShininess*(self: CanvasTexture; shininess: Float): void =
  expandMethodBind(className CanvasTexture, "set_specular_shininess", 373806689)
  var `?param` = [getPtr shininess]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpecularShininess*(self: CanvasTexture): Float =
  expandMethodBind(className CanvasTexture, "get_specular_shininess", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTextureFilter*(self: CanvasTexture; filter: CanvasItem_TextureFilter): void =
  expandMethodBind(className CanvasTexture, "set_texture_filter", 1037999706)
  var `?param` = [getPtr filter]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureFilter*(self: CanvasTexture): CanvasItem_TextureFilter =
  expandMethodBind(className CanvasTexture, "get_texture_filter", 121960042)
  var ret: encoded CanvasItem_TextureFilter
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CanvasItem_TextureFilter)

proc setTextureRepeat*(self: CanvasTexture; repeat: CanvasItem_TextureRepeat): void =
  expandMethodBind(className CanvasTexture, "set_texture_repeat", 1716472974)
  var `?param` = [getPtr repeat]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureRepeat*(self: CanvasTexture): CanvasItem_TextureRepeat =
  expandMethodBind(className CanvasTexture, "get_texture_repeat", 2667158319)
  var ret: encoded CanvasItem_TextureRepeat
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CanvasItem_TextureRepeat)

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

const CanvasTexture_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CanvasTexture]): Table[string, string] = CanvasTexture_vmap
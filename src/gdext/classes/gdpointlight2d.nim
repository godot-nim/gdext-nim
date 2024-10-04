{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdlight2d; export gdlight2d

proc setTexture*(self: PointLight2D; texture: gdref Texture2D): void =
  expandMethodBind(className PointLight2D, "set_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: PointLight2D): gdref Texture2D =
  expandMethodBind(className PointLight2D, "get_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setTextureOffset*(self: PointLight2D; textureOffset: Vector2): void =
  expandMethodBind(className PointLight2D, "set_texture_offset", 743155724)
  var `?param` = [getPtr textureOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureOffset*(self: PointLight2D): Vector2 =
  expandMethodBind(className PointLight2D, "get_texture_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setTextureScale*(self: PointLight2D; textureScale: Float): void =
  expandMethodBind(className PointLight2D, "set_texture_scale", 373806689)
  var `?param` = [getPtr textureScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureScale*(self: PointLight2D): Float =
  expandMethodBind(className PointLight2D, "get_texture_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template texture*(self: PointLight2D): untyped = self.getTexture()
template `texture=`*(self: PointLight2D; value) = self.setTexture(value)

template offset*(self: PointLight2D): untyped = self.getTextureOffset()
template `offset=`*(self: PointLight2D; value) = self.setTextureOffset(value)

template textureScale*(self: PointLight2D): untyped = self.getTextureScale()
template `textureScale=`*(self: PointLight2D; value) = self.setTextureScale(value)

template height*(self: PointLight2D): untyped = self.getHeight()
template `height=`*(self: PointLight2D; value) = self.setHeight(value)

const PointLight2D_vmap =
  Light2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PointLight2D]): Table[string, string] = PointLight2D_vmap
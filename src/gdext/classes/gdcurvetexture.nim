{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setWidth*(self: CurveTexture; width: int32): void =
  expandMethodBind(className CurveTexture, "set_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width])

proc setCurve*(self: CurveTexture; curve: gdref Curve): void =
  expandMethodBind(className CurveTexture, "set_curve", 270443179)
  methodbind.ptrcall(self, [getPtr curve])

proc getCurve*(self: CurveTexture): gdref Curve =
  expandMethodBind(className CurveTexture, "get_curve", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Curve)

proc setTextureMode*(self: CurveTexture; textureMode: CurveTexture_TextureMode): void =
  expandMethodBind(className CurveTexture, "set_texture_mode", 1321955367)
  methodbind.ptrcall(self, [getPtr textureMode])

proc getTextureMode*(self: CurveTexture): CurveTexture_TextureMode =
  expandMethodBind(className CurveTexture, "get_texture_mode", 715756376)
  var ret: encoded CurveTexture_TextureMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(CurveTexture_TextureMode)

template width*(self: CurveTexture): untyped = self.getWidth()
template `width=`*(self: CurveTexture; value) = self.setWidth(value)

template textureMode*(self: CurveTexture): untyped = self.getTextureMode()
template `textureMode=`*(self: CurveTexture; value) = self.setTextureMode(value)

template curve*(self: CurveTexture): untyped = self.getCurve()
template `curve=`*(self: CurveTexture; value) = self.setCurve(value)

const CurveTexture_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CurveTexture]): Table[string, string] = CurveTexture_vmap
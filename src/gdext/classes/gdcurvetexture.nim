{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(CurveTexture, Texture2D)

proc setWidth*(self: CurveTexture; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CurveTexture, "set_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width], void)

proc setCurve*(self: CurveTexture; curve: gdref Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CurveTexture, "set_curve", 270443179)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getCurve*(self: CurveTexture): gdref Curve =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CurveTexture, "get_curve", 2460114913)
  methodbind.ptrcall(self, [], gdref Curve)

proc setTextureMode*(self: CurveTexture; textureMode: CurveTexture_TextureMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CurveTexture, "set_texture_mode", 1321955367)
  methodbind.ptrcall(self, [getPtr textureMode], void)

proc getTextureMode*(self: CurveTexture): CurveTexture_TextureMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CurveTexture, "get_texture_mode", 715756376)
  methodbind.ptrcall(self, [], CurveTexture_TextureMode)

template width*(self: CurveTexture): untyped = self.getWidth()
template `width=`*(self: CurveTexture; value) = self.setWidth(value)

template textureMode*(self: CurveTexture): untyped = self.getTextureMode()
template `textureMode=`*(self: CurveTexture; value) = self.setTextureMode(value)

template curve*(self: CurveTexture): untyped = self.getCurve()
template `curve=`*(self: CurveTexture; value) = self.setCurve(value)

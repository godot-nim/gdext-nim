{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(CurveXYZTexture, Texture2D)

proc setWidth*(self: CurveXYZTexture; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CurveXYZTexture, "set_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width], void)

proc setCurveX*(self: CurveXYZTexture; curve: gdref Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CurveXYZTexture, "set_curve_x", 270443179)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getCurveX*(self: CurveXYZTexture): gdref Curve =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CurveXYZTexture, "get_curve_x", 2460114913)
  methodbind.ptrcall(self, [], gdref Curve)

proc setCurveY*(self: CurveXYZTexture; curve: gdref Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CurveXYZTexture, "set_curve_y", 270443179)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getCurveY*(self: CurveXYZTexture): gdref Curve =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CurveXYZTexture, "get_curve_y", 2460114913)
  methodbind.ptrcall(self, [], gdref Curve)

proc setCurveZ*(self: CurveXYZTexture; curve: gdref Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CurveXYZTexture, "set_curve_z", 270443179)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getCurveZ*(self: CurveXYZTexture): gdref Curve =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CurveXYZTexture, "get_curve_z", 2460114913)
  methodbind.ptrcall(self, [], gdref Curve)

template width*(self: CurveXYZTexture): untyped = self.getWidth()
template `width=`*(self: CurveXYZTexture; value) = self.setWidth(value)

template curveX*(self: CurveXYZTexture): untyped = self.getCurveX()
template `curveX=`*(self: CurveXYZTexture; value) = self.setCurveX(value)

template curveY*(self: CurveXYZTexture): untyped = self.getCurveY()
template `curveY=`*(self: CurveXYZTexture; value) = self.setCurveY(value)

template curveZ*(self: CurveXYZTexture): untyped = self.getCurveZ()
template `curveZ=`*(self: CurveXYZTexture; value) = self.setCurveZ(value)

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setWidth*(self: CurveXYZTexture; width: int32): void =
  expandMethodBind(className CurveXYZTexture, "set_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width])

proc setCurveX*(self: CurveXYZTexture; curve: gdref Curve): void =
  expandMethodBind(className CurveXYZTexture, "set_curve_x", 270443179)
  methodbind.ptrcall(self, [getPtr curve])

proc getCurveX*(self: CurveXYZTexture): gdref Curve =
  expandMethodBind(className CurveXYZTexture, "get_curve_x", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Curve)

proc setCurveY*(self: CurveXYZTexture; curve: gdref Curve): void =
  expandMethodBind(className CurveXYZTexture, "set_curve_y", 270443179)
  methodbind.ptrcall(self, [getPtr curve])

proc getCurveY*(self: CurveXYZTexture): gdref Curve =
  expandMethodBind(className CurveXYZTexture, "get_curve_y", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Curve)

proc setCurveZ*(self: CurveXYZTexture; curve: gdref Curve): void =
  expandMethodBind(className CurveXYZTexture, "set_curve_z", 270443179)
  methodbind.ptrcall(self, [getPtr curve])

proc getCurveZ*(self: CurveXYZTexture): gdref Curve =
  expandMethodBind(className CurveXYZTexture, "get_curve_z", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Curve)

template width*(self: CurveXYZTexture): untyped = self.getWidth()
template `width=`*(self: CurveXYZTexture; value) = self.setWidth(value)

template curveX*(self: CurveXYZTexture): untyped = self.getCurveX()
template `curveX=`*(self: CurveXYZTexture; value) = self.setCurveX(value)

template curveY*(self: CurveXYZTexture): untyped = self.getCurveY()
template `curveY=`*(self: CurveXYZTexture; value) = self.setCurveY(value)

template curveZ*(self: CurveXYZTexture): untyped = self.getCurveZ()
template `curveZ=`*(self: CurveXYZTexture; value) = self.setCurveZ(value)

const CurveXYZTexture_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CurveXYZTexture]): Table[string, string] = CurveXYZTexture_vmap
{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setWidth*(self: CurveXyzTexture; width: int32): void =
  expandMethodBind(className CurveXyzTexture, "set_width", 1286410249)
  var `?param` = [getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCurveX*(self: CurveXyzTexture; curve: gdref Curve): void =
  expandMethodBind(className CurveXyzTexture, "set_curve_x", 270443179)
  var `?param` = [getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCurveX*(self: CurveXyzTexture): gdref Curve =
  expandMethodBind(className CurveXyzTexture, "get_curve_x", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setCurveY*(self: CurveXyzTexture; curve: gdref Curve): void =
  expandMethodBind(className CurveXyzTexture, "set_curve_y", 270443179)
  var `?param` = [getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCurveY*(self: CurveXyzTexture): gdref Curve =
  expandMethodBind(className CurveXyzTexture, "get_curve_y", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setCurveZ*(self: CurveXyzTexture; curve: gdref Curve): void =
  expandMethodBind(className CurveXyzTexture, "set_curve_z", 270443179)
  var `?param` = [getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCurveZ*(self: CurveXyzTexture): gdref Curve =
  expandMethodBind(className CurveXyzTexture, "get_curve_z", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

template width*(self: CurveXyzTexture): untyped = self.getWidth()
template `width=`*(self: CurveXyzTexture; value) = self.setWidth(value)

template curveX*(self: CurveXyzTexture): untyped = self.getCurveX()
template `curveX=`*(self: CurveXyzTexture; value) = self.setCurveX(value)

template curveY*(self: CurveXyzTexture): untyped = self.getCurveY()
template `curveY=`*(self: CurveXyzTexture; value) = self.setCurveY(value)

template curveZ*(self: CurveXyzTexture): untyped = self.getCurveZ()
template `curveZ=`*(self: CurveXyzTexture; value) = self.setCurveZ(value)

const CurveXyzTexture_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CurveXyzTexture]): Table[string, string] = CurveXyzTexture_vmap
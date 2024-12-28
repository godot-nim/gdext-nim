{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setPoints*(self: Line2D; points: PackedVector2Array): void =
  expandMethodBind(className Line2D, "set_points", 1509147220)
  methodbind.ptrcall(self, [getPtr points])

proc getPoints*(self: Line2D): PackedVector2Array =
  expandMethodBind(className Line2D, "get_points", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc setPointPosition*(self: Line2D; index: int32; position: Vector2): void =
  expandMethodBind(className Line2D, "set_point_position", 163021252)
  methodbind.ptrcall(self, [getPtr index, getPtr position])

proc getPointPosition*(self: Line2D; index: int32): Vector2 =
  expandMethodBind(className Line2D, "get_point_position", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Vector2)

proc getPointCount*(self: Line2D): int32 =
  expandMethodBind(className Line2D, "get_point_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc addPoint*(self: Line2D; position: Vector2; index: int32 = -1): void =
  expandMethodBind(className Line2D, "add_point", 2654014372)
  methodbind.ptrcall(self, [getPtr position, getPtr index])

proc removePoint*(self: Line2D; index: int32): void =
  expandMethodBind(className Line2D, "remove_point", 1286410249)
  methodbind.ptrcall(self, [getPtr index])

proc clearPoints*(self: Line2D): void =
  expandMethodBind(className Line2D, "clear_points", 3218959716)
  methodbind.ptrcall(self, [])

proc setClosed*(self: Line2D; closed: bool): void =
  expandMethodBind(className Line2D, "set_closed", 2586408642)
  methodbind.ptrcall(self, [getPtr closed])

proc isClosed*(self: Line2D): bool =
  expandMethodBind(className Line2D, "is_closed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setWidth*(self: Line2D; width: Float): void =
  expandMethodBind(className Line2D, "set_width", 373806689)
  methodbind.ptrcall(self, [getPtr width])

proc getWidth*(self: Line2D): Float =
  expandMethodBind(className Line2D, "get_width", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setCurve*(self: Line2D; curve: gdref Curve): void =
  expandMethodBind(className Line2D, "set_curve", 270443179)
  methodbind.ptrcall(self, [getPtr curve])

proc getCurve*(self: Line2D): gdref Curve =
  expandMethodBind(className Line2D, "get_curve", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Curve)

proc setDefaultColor*(self: Line2D; color: Color): void =
  expandMethodBind(className Line2D, "set_default_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getDefaultColor*(self: Line2D): Color =
  expandMethodBind(className Line2D, "get_default_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setGradient*(self: Line2D; color: gdref Gradient): void =
  expandMethodBind(className Line2D, "set_gradient", 2756054477)
  methodbind.ptrcall(self, [getPtr color])

proc getGradient*(self: Line2D): gdref Gradient =
  expandMethodBind(className Line2D, "get_gradient", 132272999)
  var ret: encoded gdref Gradient
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Gradient)

proc setTexture*(self: Line2D; texture: gdref Texture2D): void =
  expandMethodBind(className Line2D, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture])

proc getTexture*(self: Line2D): gdref Texture2D =
  expandMethodBind(className Line2D, "get_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setTextureMode*(self: Line2D; mode: Line2D_LineTextureMode): void =
  expandMethodBind(className Line2D, "set_texture_mode", 1952559516)
  methodbind.ptrcall(self, [getPtr mode])

proc getTextureMode*(self: Line2D): Line2D_LineTextureMode =
  expandMethodBind(className Line2D, "get_texture_mode", 2341040722)
  var ret: encoded Line2D_LineTextureMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Line2D_LineTextureMode)

proc setJointMode*(self: Line2D; mode: Line2D_LineJointMode): void =
  expandMethodBind(className Line2D, "set_joint_mode", 604292979)
  methodbind.ptrcall(self, [getPtr mode])

proc getJointMode*(self: Line2D): Line2D_LineJointMode =
  expandMethodBind(className Line2D, "get_joint_mode", 2546544037)
  var ret: encoded Line2D_LineJointMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Line2D_LineJointMode)

proc setBeginCapMode*(self: Line2D; mode: Line2D_LineCapMode): void =
  expandMethodBind(className Line2D, "set_begin_cap_mode", 1669024546)
  methodbind.ptrcall(self, [getPtr mode])

proc getBeginCapMode*(self: Line2D): Line2D_LineCapMode =
  expandMethodBind(className Line2D, "get_begin_cap_mode", 1107511441)
  var ret: encoded Line2D_LineCapMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Line2D_LineCapMode)

proc setEndCapMode*(self: Line2D; mode: Line2D_LineCapMode): void =
  expandMethodBind(className Line2D, "set_end_cap_mode", 1669024546)
  methodbind.ptrcall(self, [getPtr mode])

proc getEndCapMode*(self: Line2D): Line2D_LineCapMode =
  expandMethodBind(className Line2D, "get_end_cap_mode", 1107511441)
  var ret: encoded Line2D_LineCapMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Line2D_LineCapMode)

proc setSharpLimit*(self: Line2D; limit: Float): void =
  expandMethodBind(className Line2D, "set_sharp_limit", 373806689)
  methodbind.ptrcall(self, [getPtr limit])

proc getSharpLimit*(self: Line2D): Float =
  expandMethodBind(className Line2D, "get_sharp_limit", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setRoundPrecision*(self: Line2D; precision: int32): void =
  expandMethodBind(className Line2D, "set_round_precision", 1286410249)
  methodbind.ptrcall(self, [getPtr precision])

proc getRoundPrecision*(self: Line2D): int32 =
  expandMethodBind(className Line2D, "get_round_precision", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setAntialiased*(self: Line2D; antialiased: bool): void =
  expandMethodBind(className Line2D, "set_antialiased", 2586408642)
  methodbind.ptrcall(self, [getPtr antialiased])

proc getAntialiased*(self: Line2D): bool =
  expandMethodBind(className Line2D, "get_antialiased", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template points*(self: Line2D): untyped = self.getPoints()
template `points=`*(self: Line2D; value) = self.setPoints(value)

template closed*(self: Line2D): untyped = self.isClosed()
template `closed=`*(self: Line2D; value) = self.setClosed(value)

template width*(self: Line2D): untyped = self.getWidth()
template `width=`*(self: Line2D; value) = self.setWidth(value)

template widthCurve*(self: Line2D): untyped = self.getCurve()
template `widthCurve=`*(self: Line2D; value) = self.setCurve(value)

template defaultColor*(self: Line2D): untyped = self.getDefaultColor()
template `defaultColor=`*(self: Line2D; value) = self.setDefaultColor(value)

template gradient*(self: Line2D): untyped = self.getGradient()
template `gradient=`*(self: Line2D; value) = self.setGradient(value)

template texture*(self: Line2D): untyped = self.getTexture()
template `texture=`*(self: Line2D; value) = self.setTexture(value)

template textureMode*(self: Line2D): untyped = self.getTextureMode()
template `textureMode=`*(self: Line2D; value) = self.setTextureMode(value)

template jointMode*(self: Line2D): untyped = self.getJointMode()
template `jointMode=`*(self: Line2D; value) = self.setJointMode(value)

template beginCapMode*(self: Line2D): untyped = self.getBeginCapMode()
template `beginCapMode=`*(self: Line2D; value) = self.setBeginCapMode(value)

template endCapMode*(self: Line2D): untyped = self.getEndCapMode()
template `endCapMode=`*(self: Line2D; value) = self.setEndCapMode(value)

template sharpLimit*(self: Line2D): untyped = self.getSharpLimit()
template `sharpLimit=`*(self: Line2D; value) = self.setSharpLimit(value)

template roundPrecision*(self: Line2D): untyped = self.getRoundPrecision()
template `roundPrecision=`*(self: Line2D; value) = self.setRoundPrecision(value)

template antialiased*(self: Line2D): untyped = self.getAntialiased()
template `antialiased=`*(self: Line2D; value) = self.setAntialiased(value)

const Line2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Line2D]): Table[string, string] = Line2D_vmap
{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstylebox; export gdstylebox

proc setBgColor*(self: StyleBoxFlat; color: Color): void =
  expandMethodBind(className StyleBoxFlat, "set_bg_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBgColor*(self: StyleBoxFlat): Color =
  expandMethodBind(className StyleBoxFlat, "get_bg_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setBorderColor*(self: StyleBoxFlat; color: Color): void =
  expandMethodBind(className StyleBoxFlat, "set_border_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBorderColor*(self: StyleBoxFlat): Color =
  expandMethodBind(className StyleBoxFlat, "get_border_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setBorderWidthAll*(self: StyleBoxFlat; width: int32): void =
  expandMethodBind(className StyleBoxFlat, "set_border_width_all", 1286410249)
  var `?param` = [getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBorderWidthMin*(self: StyleBoxFlat): int32 =
  expandMethodBind(className StyleBoxFlat, "get_border_width_min", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setBorderWidth*(self: StyleBoxFlat; margin: Side; width: int32): void =
  expandMethodBind(className StyleBoxFlat, "set_border_width", 437707142)
  var `?param` = [getPtr margin, getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBorderWidth*(self: StyleBoxFlat; margin: Side): int32 =
  expandMethodBind(className StyleBoxFlat, "get_border_width", 1983885014)
  var `?param` = [getPtr margin]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setBorderBlend*(self: StyleBoxFlat; blend: bool): void =
  expandMethodBind(className StyleBoxFlat, "set_border_blend", 2586408642)
  var `?param` = [getPtr blend]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBorderBlend*(self: StyleBoxFlat): bool =
  expandMethodBind(className StyleBoxFlat, "get_border_blend", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCornerRadiusAll*(self: StyleBoxFlat; radius: int32): void =
  expandMethodBind(className StyleBoxFlat, "set_corner_radius_all", 1286410249)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCornerRadius*(self: StyleBoxFlat; corner: Corner; radius: int32): void =
  expandMethodBind(className StyleBoxFlat, "set_corner_radius", 2696158768)
  var `?param` = [getPtr corner, getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCornerRadius*(self: StyleBoxFlat; corner: Corner): int32 =
  expandMethodBind(className StyleBoxFlat, "get_corner_radius", 3982397690)
  var `?param` = [getPtr corner]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setExpandMargin*(self: StyleBoxFlat; margin: Side; size: Float): void =
  expandMethodBind(className StyleBoxFlat, "set_expand_margin", 4290182280)
  var `?param` = [getPtr margin, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc setExpandMarginAll*(self: StyleBoxFlat; size: Float): void =
  expandMethodBind(className StyleBoxFlat, "set_expand_margin_all", 373806689)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExpandMargin*(self: StyleBoxFlat; margin: Side): Float =
  expandMethodBind(className StyleBoxFlat, "get_expand_margin", 2869120046)
  var `?param` = [getPtr margin]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setDrawCenter*(self: StyleBoxFlat; drawCenter: bool): void =
  expandMethodBind(className StyleBoxFlat, "set_draw_center", 2586408642)
  var `?param` = [getPtr drawCenter]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDrawCenterEnabled*(self: StyleBoxFlat): bool =
  expandMethodBind(className StyleBoxFlat, "is_draw_center_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSkew*(self: StyleBoxFlat; skew: Vector2): void =
  expandMethodBind(className StyleBoxFlat, "set_skew", 743155724)
  var `?param` = [getPtr skew]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkew*(self: StyleBoxFlat): Vector2 =
  expandMethodBind(className StyleBoxFlat, "get_skew", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setShadowColor*(self: StyleBoxFlat; color: Color): void =
  expandMethodBind(className StyleBoxFlat, "set_shadow_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShadowColor*(self: StyleBoxFlat): Color =
  expandMethodBind(className StyleBoxFlat, "get_shadow_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setShadowSize*(self: StyleBoxFlat; size: int32): void =
  expandMethodBind(className StyleBoxFlat, "set_shadow_size", 1286410249)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShadowSize*(self: StyleBoxFlat): int32 =
  expandMethodBind(className StyleBoxFlat, "get_shadow_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setShadowOffset*(self: StyleBoxFlat; offset: Vector2): void =
  expandMethodBind(className StyleBoxFlat, "set_shadow_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShadowOffset*(self: StyleBoxFlat): Vector2 =
  expandMethodBind(className StyleBoxFlat, "get_shadow_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setAntiAliased*(self: StyleBoxFlat; antiAliased: bool): void =
  expandMethodBind(className StyleBoxFlat, "set_anti_aliased", 2586408642)
  var `?param` = [getPtr antiAliased]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAntiAliased*(self: StyleBoxFlat): bool =
  expandMethodBind(className StyleBoxFlat, "is_anti_aliased", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAaSize*(self: StyleBoxFlat; size: Float): void =
  expandMethodBind(className StyleBoxFlat, "set_aa_size", 373806689)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAaSize*(self: StyleBoxFlat): Float =
  expandMethodBind(className StyleBoxFlat, "get_aa_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCornerDetail*(self: StyleBoxFlat; detail: int32): void =
  expandMethodBind(className StyleBoxFlat, "set_corner_detail", 1286410249)
  var `?param` = [getPtr detail]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCornerDetail*(self: StyleBoxFlat): int32 =
  expandMethodBind(className StyleBoxFlat, "get_corner_detail", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template bgColor*(self: StyleBoxFlat): untyped = self.getBgColor()
template `bgColor=`*(self: StyleBoxFlat; value) = self.setBgColor(value)

template drawCenter*(self: StyleBoxFlat): untyped = self.isDrawCenterEnabled()
template `drawCenter=`*(self: StyleBoxFlat; value) = self.setDrawCenter(value)

template skew*(self: StyleBoxFlat): untyped = self.getSkew()
template `skew=`*(self: StyleBoxFlat; value) = self.setSkew(value)

template borderWidthLeft*(self: StyleBoxFlat): untyped = self.getBorderWidth(Side(0))
template `borderWidthLeft=`*(self: StyleBoxFlat; value) = self.setBorderWidth(Side(0), value)

template borderWidthTop*(self: StyleBoxFlat): untyped = self.getBorderWidth(Side(1))
template `borderWidthTop=`*(self: StyleBoxFlat; value) = self.setBorderWidth(Side(1), value)

template borderWidthRight*(self: StyleBoxFlat): untyped = self.getBorderWidth(Side(2))
template `borderWidthRight=`*(self: StyleBoxFlat; value) = self.setBorderWidth(Side(2), value)

template borderWidthBottom*(self: StyleBoxFlat): untyped = self.getBorderWidth(Side(3))
template `borderWidthBottom=`*(self: StyleBoxFlat; value) = self.setBorderWidth(Side(3), value)

template borderColor*(self: StyleBoxFlat): untyped = self.getBorderColor()
template `borderColor=`*(self: StyleBoxFlat; value) = self.setBorderColor(value)

template borderBlend*(self: StyleBoxFlat): untyped = self.getBorderBlend()
template `borderBlend=`*(self: StyleBoxFlat; value) = self.setBorderBlend(value)

template cornerRadiusTopLeft*(self: StyleBoxFlat): untyped = self.getCornerRadius(Corner(0))
template `cornerRadiusTopLeft=`*(self: StyleBoxFlat; value) = self.setCornerRadius(Corner(0), value)

template cornerRadiusTopRight*(self: StyleBoxFlat): untyped = self.getCornerRadius(Corner(1))
template `cornerRadiusTopRight=`*(self: StyleBoxFlat; value) = self.setCornerRadius(Corner(1), value)

template cornerRadiusBottomRight*(self: StyleBoxFlat): untyped = self.getCornerRadius(Corner(2))
template `cornerRadiusBottomRight=`*(self: StyleBoxFlat; value) = self.setCornerRadius(Corner(2), value)

template cornerRadiusBottomLeft*(self: StyleBoxFlat): untyped = self.getCornerRadius(Corner(3))
template `cornerRadiusBottomLeft=`*(self: StyleBoxFlat; value) = self.setCornerRadius(Corner(3), value)

template cornerDetail*(self: StyleBoxFlat): untyped = self.getCornerDetail()
template `cornerDetail=`*(self: StyleBoxFlat; value) = self.setCornerDetail(value)

template expandMarginLeft*(self: StyleBoxFlat): untyped = self.getExpandMargin(Side(0))
template `expandMarginLeft=`*(self: StyleBoxFlat; value) = self.setExpandMargin(Side(0), value)

template expandMarginTop*(self: StyleBoxFlat): untyped = self.getExpandMargin(Side(1))
template `expandMarginTop=`*(self: StyleBoxFlat; value) = self.setExpandMargin(Side(1), value)

template expandMarginRight*(self: StyleBoxFlat): untyped = self.getExpandMargin(Side(2))
template `expandMarginRight=`*(self: StyleBoxFlat; value) = self.setExpandMargin(Side(2), value)

template expandMarginBottom*(self: StyleBoxFlat): untyped = self.getExpandMargin(Side(3))
template `expandMarginBottom=`*(self: StyleBoxFlat; value) = self.setExpandMargin(Side(3), value)

template shadowColor*(self: StyleBoxFlat): untyped = self.getShadowColor()
template `shadowColor=`*(self: StyleBoxFlat; value) = self.setShadowColor(value)

template shadowSize*(self: StyleBoxFlat): untyped = self.getShadowSize()
template `shadowSize=`*(self: StyleBoxFlat; value) = self.setShadowSize(value)

template shadowOffset*(self: StyleBoxFlat): untyped = self.getShadowOffset()
template `shadowOffset=`*(self: StyleBoxFlat; value) = self.setShadowOffset(value)

template antiAliasing*(self: StyleBoxFlat): untyped = self.isAntiAliased()
template `antiAliasing=`*(self: StyleBoxFlat; value) = self.setAntiAliased(value)

template antiAliasingSize*(self: StyleBoxFlat): untyped = self.getAaSize()
template `antiAliasingSize=`*(self: StyleBoxFlat; value) = self.setAaSize(value)

const StyleBoxFlat_vmap =
  StyleBox.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StyleBoxFlat]): Table[string, string] = StyleBoxFlat_vmap
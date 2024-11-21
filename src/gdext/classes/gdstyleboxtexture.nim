{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstylebox; export gdstylebox

proc setTexture*(self: StyleBoxTexture; texture: gdref Texture2D): void =
  expandMethodBind(className StyleBoxTexture, "set_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: StyleBoxTexture): gdref Texture2D =
  expandMethodBind(className StyleBoxTexture, "get_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setTextureMargin*(self: StyleBoxTexture; margin: Side; size: Float): void =
  expandMethodBind(className StyleBoxTexture, "set_texture_margin", 4290182280)
  var `?param` = [getPtr margin, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc setTextureMarginAll*(self: StyleBoxTexture; size: Float): void =
  expandMethodBind(className StyleBoxTexture, "set_texture_margin_all", 373806689)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureMargin*(self: StyleBoxTexture; margin: Side): Float =
  expandMethodBind(className StyleBoxTexture, "get_texture_margin", 2869120046)
  var `?param` = [getPtr margin]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setExpandMargin*(self: StyleBoxTexture; margin: Side; size: Float): void =
  expandMethodBind(className StyleBoxTexture, "set_expand_margin", 4290182280)
  var `?param` = [getPtr margin, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc setExpandMarginAll*(self: StyleBoxTexture; size: Float): void =
  expandMethodBind(className StyleBoxTexture, "set_expand_margin_all", 373806689)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExpandMargin*(self: StyleBoxTexture; margin: Side): Float =
  expandMethodBind(className StyleBoxTexture, "get_expand_margin", 2869120046)
  var `?param` = [getPtr margin]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setRegionRect*(self: StyleBoxTexture; region: Rect2): void =
  expandMethodBind(className StyleBoxTexture, "set_region_rect", 2046264180)
  var `?param` = [getPtr region]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRegionRect*(self: StyleBoxTexture): Rect2 =
  expandMethodBind(className StyleBoxTexture, "get_region_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

proc setDrawCenter*(self: StyleBoxTexture; enable: bool): void =
  expandMethodBind(className StyleBoxTexture, "set_draw_center", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDrawCenterEnabled*(self: StyleBoxTexture): bool =
  expandMethodBind(className StyleBoxTexture, "is_draw_center_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setModulate*(self: StyleBoxTexture; color: Color): void =
  expandMethodBind(className StyleBoxTexture, "set_modulate", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getModulate*(self: StyleBoxTexture): Color =
  expandMethodBind(className StyleBoxTexture, "get_modulate", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setHAxisStretchMode*(self: StyleBoxTexture; mode: StyleBoxTexture_AxisStretchMode): void =
  expandMethodBind(className StyleBoxTexture, "set_h_axis_stretch_mode", 2965538783)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHAxisStretchMode*(self: StyleBoxTexture): StyleBoxTexture_AxisStretchMode =
  expandMethodBind(className StyleBoxTexture, "get_h_axis_stretch_mode", 3807744063)
  var ret: encoded StyleBoxTexture_AxisStretchMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StyleBoxTexture_AxisStretchMode)

proc setVAxisStretchMode*(self: StyleBoxTexture; mode: StyleBoxTexture_AxisStretchMode): void =
  expandMethodBind(className StyleBoxTexture, "set_v_axis_stretch_mode", 2965538783)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVAxisStretchMode*(self: StyleBoxTexture): StyleBoxTexture_AxisStretchMode =
  expandMethodBind(className StyleBoxTexture, "get_v_axis_stretch_mode", 3807744063)
  var ret: encoded StyleBoxTexture_AxisStretchMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StyleBoxTexture_AxisStretchMode)

template texture*(self: StyleBoxTexture): untyped = self.getTexture()
template `texture=`*(self: StyleBoxTexture; value) = self.setTexture(value)

template textureMarginLeft*(self: StyleBoxTexture): untyped = self.getTextureMargin(Side(0))
template `textureMarginLeft=`*(self: StyleBoxTexture; value) = self.setTextureMargin(Side(0), value)

template textureMarginTop*(self: StyleBoxTexture): untyped = self.getTextureMargin(Side(1))
template `textureMarginTop=`*(self: StyleBoxTexture; value) = self.setTextureMargin(Side(1), value)

template textureMarginRight*(self: StyleBoxTexture): untyped = self.getTextureMargin(Side(2))
template `textureMarginRight=`*(self: StyleBoxTexture; value) = self.setTextureMargin(Side(2), value)

template textureMarginBottom*(self: StyleBoxTexture): untyped = self.getTextureMargin(Side(3))
template `textureMarginBottom=`*(self: StyleBoxTexture; value) = self.setTextureMargin(Side(3), value)

template expandMarginLeft*(self: StyleBoxTexture): untyped = self.getExpandMargin(Side(0))
template `expandMarginLeft=`*(self: StyleBoxTexture; value) = self.setExpandMargin(Side(0), value)

template expandMarginTop*(self: StyleBoxTexture): untyped = self.getExpandMargin(Side(1))
template `expandMarginTop=`*(self: StyleBoxTexture; value) = self.setExpandMargin(Side(1), value)

template expandMarginRight*(self: StyleBoxTexture): untyped = self.getExpandMargin(Side(2))
template `expandMarginRight=`*(self: StyleBoxTexture; value) = self.setExpandMargin(Side(2), value)

template expandMarginBottom*(self: StyleBoxTexture): untyped = self.getExpandMargin(Side(3))
template `expandMarginBottom=`*(self: StyleBoxTexture; value) = self.setExpandMargin(Side(3), value)

template axisStretchHorizontal*(self: StyleBoxTexture): untyped = self.getHAxisStretchMode()
template `axisStretchHorizontal=`*(self: StyleBoxTexture; value) = self.setHAxisStretchMode(value)

template axisStretchVertical*(self: StyleBoxTexture): untyped = self.getVAxisStretchMode()
template `axisStretchVertical=`*(self: StyleBoxTexture; value) = self.setVAxisStretchMode(value)

template regionRect*(self: StyleBoxTexture): untyped = self.getRegionRect()
template `regionRect=`*(self: StyleBoxTexture; value) = self.setRegionRect(value)

template modulateColor*(self: StyleBoxTexture): untyped = self.getModulate()
template `modulateColor=`*(self: StyleBoxTexture; value) = self.setModulate(value)

template drawCenter*(self: StyleBoxTexture): untyped = self.isDrawCenterEnabled()
template `drawCenter=`*(self: StyleBoxTexture; value) = self.setDrawCenter(value)

const StyleBoxTexture_vmap =
  StyleBox.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StyleBoxTexture]): Table[string, string] = StyleBoxTexture_vmap
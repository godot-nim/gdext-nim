{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstylebox; export gdstylebox

expandOnClassImported(StyleBoxTexture, StyleBox)

proc setTexture*(self: StyleBoxTexture; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexture*(self: StyleBoxTexture): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "get_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setTextureMargin*(self: StyleBoxTexture; margin: Side; size: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "set_texture_margin", 4290182280)
  methodbind.ptrcall(self, [getPtr margin, getPtr size], void)

proc setTextureMarginAll*(self: StyleBoxTexture; size: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "set_texture_margin_all", 373806689)
  methodbind.ptrcall(self, [getPtr size], void)

proc getTextureMargin*(self: StyleBoxTexture; margin: Side): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "get_texture_margin", 2869120046)
  methodbind.ptrcall(self, [getPtr margin], Float)

proc setExpandMargin*(self: StyleBoxTexture; margin: Side; size: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "set_expand_margin", 4290182280)
  methodbind.ptrcall(self, [getPtr margin, getPtr size], void)

proc setExpandMarginAll*(self: StyleBoxTexture; size: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "set_expand_margin_all", 373806689)
  methodbind.ptrcall(self, [getPtr size], void)

proc getExpandMargin*(self: StyleBoxTexture; margin: Side): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "get_expand_margin", 2869120046)
  methodbind.ptrcall(self, [getPtr margin], Float)

proc setRegionRect*(self: StyleBoxTexture; region: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "set_region_rect", 2046264180)
  methodbind.ptrcall(self, [getPtr region], void)

proc getRegionRect*(self: StyleBoxTexture): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "get_region_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc setDrawCenter*(self: StyleBoxTexture; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "set_draw_center", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDrawCenterEnabled*(self: StyleBoxTexture): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "is_draw_center_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setModulate*(self: StyleBoxTexture; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "set_modulate", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getModulate*(self: StyleBoxTexture): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "get_modulate", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setHAxisStretchMode*(self: StyleBoxTexture; mode: StyleBoxTexture_AxisStretchMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "set_h_axis_stretch_mode", 2965538783)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getHAxisStretchMode*(self: StyleBoxTexture): StyleBoxTexture_AxisStretchMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "get_h_axis_stretch_mode", 3807744063)
  methodbind.ptrcall(self, [], StyleBoxTexture_AxisStretchMode)

proc setVAxisStretchMode*(self: StyleBoxTexture; mode: StyleBoxTexture_AxisStretchMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "set_v_axis_stretch_mode", 2965538783)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getVAxisStretchMode*(self: StyleBoxTexture): StyleBoxTexture_AxisStretchMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBoxTexture, "get_v_axis_stretch_mode", 3807744063)
  methodbind.ptrcall(self, [], StyleBoxTexture_AxisStretchMode)

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

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(NinePatchRect, Control)

proc setTexture*(self: NinePatchRect; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NinePatchRect, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexture*(self: NinePatchRect): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NinePatchRect, "get_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setPatchMargin*(self: NinePatchRect; margin: Side; value: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NinePatchRect, "set_patch_margin", 437707142)
  methodbind.ptrcall(self, [getPtr margin, getPtr value], void)

proc getPatchMargin*(self: NinePatchRect; margin: Side): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NinePatchRect, "get_patch_margin", 1983885014)
  methodbind.ptrcall(self, [getPtr margin], int32)

proc setRegionRect*(self: NinePatchRect; rect: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NinePatchRect, "set_region_rect", 2046264180)
  methodbind.ptrcall(self, [getPtr rect], void)

proc getRegionRect*(self: NinePatchRect): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NinePatchRect, "get_region_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc setDrawCenter*(self: NinePatchRect; drawCenter: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NinePatchRect, "set_draw_center", 2586408642)
  methodbind.ptrcall(self, [getPtr drawCenter], void)

proc isDrawCenterEnabled*(self: NinePatchRect): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NinePatchRect, "is_draw_center_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHAxisStretchMode*(self: NinePatchRect; mode: NinePatchRect_AxisStretchMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NinePatchRect, "set_h_axis_stretch_mode", 3219608417)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getHAxisStretchMode*(self: NinePatchRect): NinePatchRect_AxisStretchMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NinePatchRect, "get_h_axis_stretch_mode", 3317113799)
  methodbind.ptrcall(self, [], NinePatchRect_AxisStretchMode)

proc setVAxisStretchMode*(self: NinePatchRect; mode: NinePatchRect_AxisStretchMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NinePatchRect, "set_v_axis_stretch_mode", 3219608417)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getVAxisStretchMode*(self: NinePatchRect): NinePatchRect_AxisStretchMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NinePatchRect, "get_v_axis_stretch_mode", 3317113799)
  methodbind.ptrcall(self, [], NinePatchRect_AxisStretchMode)

template texture*(self: NinePatchRect): untyped = self.getTexture()
template `texture=`*(self: NinePatchRect; value) = self.setTexture(value)

template drawCenter*(self: NinePatchRect): untyped = self.isDrawCenterEnabled()
template `drawCenter=`*(self: NinePatchRect; value) = self.setDrawCenter(value)

template regionRect*(self: NinePatchRect): untyped = self.getRegionRect()
template `regionRect=`*(self: NinePatchRect; value) = self.setRegionRect(value)

template patchMarginLeft*(self: NinePatchRect): untyped = self.getPatchMargin(Side(0))
template `patchMarginLeft=`*(self: NinePatchRect; value) = self.setPatchMargin(Side(0), value)

template patchMarginTop*(self: NinePatchRect): untyped = self.getPatchMargin(Side(1))
template `patchMarginTop=`*(self: NinePatchRect; value) = self.setPatchMargin(Side(1), value)

template patchMarginRight*(self: NinePatchRect): untyped = self.getPatchMargin(Side(2))
template `patchMarginRight=`*(self: NinePatchRect; value) = self.setPatchMargin(Side(2), value)

template patchMarginBottom*(self: NinePatchRect): untyped = self.getPatchMargin(Side(3))
template `patchMarginBottom=`*(self: NinePatchRect; value) = self.setPatchMargin(Side(3), value)

template axisStretchHorizontal*(self: NinePatchRect): untyped = self.getHAxisStretchMode()
template `axisStretchHorizontal=`*(self: NinePatchRect; value) = self.setHAxisStretchMode(value)

template axisStretchVertical*(self: NinePatchRect): untyped = self.getVAxisStretchMode()
template `axisStretchVertical=`*(self: NinePatchRect; value) = self.setVAxisStretchMode(value)

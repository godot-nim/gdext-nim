{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

proc setTexture*(self: NinePatchRect; texture: gdref Texture2D): void =
  expandMethodBind(className NinePatchRect, "set_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: NinePatchRect): gdref Texture2D =
  expandMethodBind(className NinePatchRect, "get_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setPatchMargin*(self: NinePatchRect; margin: Side; value: int32): void =
  expandMethodBind(className NinePatchRect, "set_patch_margin", 437707142)
  var `?param` = [getPtr margin, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPatchMargin*(self: NinePatchRect; margin: Side): int32 =
  expandMethodBind(className NinePatchRect, "get_patch_margin", 1983885014)
  var `?param` = [getPtr margin]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setRegionRect*(self: NinePatchRect; rect: Rect2): void =
  expandMethodBind(className NinePatchRect, "set_region_rect", 2046264180)
  var `?param` = [getPtr rect]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRegionRect*(self: NinePatchRect): Rect2 =
  expandMethodBind(className NinePatchRect, "get_region_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

proc setDrawCenter*(self: NinePatchRect; drawCenter: bool): void =
  expandMethodBind(className NinePatchRect, "set_draw_center", 2586408642)
  var `?param` = [getPtr drawCenter]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDrawCenterEnabled*(self: NinePatchRect): bool =
  expandMethodBind(className NinePatchRect, "is_draw_center_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setHAxisStretchMode*(self: NinePatchRect; mode: NinePatchRect_AxisStretchMode): void =
  expandMethodBind(className NinePatchRect, "set_h_axis_stretch_mode", 3219608417)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHAxisStretchMode*(self: NinePatchRect): NinePatchRect_AxisStretchMode =
  expandMethodBind(className NinePatchRect, "get_h_axis_stretch_mode", 3317113799)
  var ret: encoded NinePatchRect_AxisStretchMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NinePatchRect_AxisStretchMode)

proc setVAxisStretchMode*(self: NinePatchRect; mode: NinePatchRect_AxisStretchMode): void =
  expandMethodBind(className NinePatchRect, "set_v_axis_stretch_mode", 3219608417)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVAxisStretchMode*(self: NinePatchRect): NinePatchRect_AxisStretchMode =
  expandMethodBind(className NinePatchRect, "get_v_axis_stretch_mode", 3317113799)
  var ret: encoded NinePatchRect_AxisStretchMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NinePatchRect_AxisStretchMode)

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

const NinePatchRect_vmap =
  Control.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NinePatchRect]): Table[string, string] = NinePatchRect_vmap

proc textureChanged*(self: NinePatchRect): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("texture_changed")
  self.emitSignal(signalname)
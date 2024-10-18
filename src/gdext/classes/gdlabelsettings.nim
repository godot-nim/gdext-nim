{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setLineSpacing*(self: LabelSettings; spacing: Float): void =
  expandMethodBind(className LabelSettings, "set_line_spacing", 373806689)
  var `?param` = [getPtr spacing]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLineSpacing*(self: LabelSettings): Float =
  expandMethodBind(className LabelSettings, "get_line_spacing", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFont*(self: LabelSettings; font: gdref Font): void =
  expandMethodBind(className LabelSettings, "set_font", 1262170328)
  var `?param` = [getPtr font]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFont*(self: LabelSettings): gdref Font =
  expandMethodBind(className LabelSettings, "get_font", 3229501585)
  var ret: encoded gdref Font
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Font)

proc setFontSize*(self: LabelSettings; size: int32): void =
  expandMethodBind(className LabelSettings, "set_font_size", 1286410249)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFontSize*(self: LabelSettings): int32 =
  expandMethodBind(className LabelSettings, "get_font_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setFontColor*(self: LabelSettings; color: Color): void =
  expandMethodBind(className LabelSettings, "set_font_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFontColor*(self: LabelSettings): Color =
  expandMethodBind(className LabelSettings, "get_font_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setOutlineSize*(self: LabelSettings; size: int32): void =
  expandMethodBind(className LabelSettings, "set_outline_size", 1286410249)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOutlineSize*(self: LabelSettings): int32 =
  expandMethodBind(className LabelSettings, "get_outline_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setOutlineColor*(self: LabelSettings; color: Color): void =
  expandMethodBind(className LabelSettings, "set_outline_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOutlineColor*(self: LabelSettings): Color =
  expandMethodBind(className LabelSettings, "get_outline_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setShadowSize*(self: LabelSettings; size: int32): void =
  expandMethodBind(className LabelSettings, "set_shadow_size", 1286410249)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShadowSize*(self: LabelSettings): int32 =
  expandMethodBind(className LabelSettings, "get_shadow_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setShadowColor*(self: LabelSettings; color: Color): void =
  expandMethodBind(className LabelSettings, "set_shadow_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShadowColor*(self: LabelSettings): Color =
  expandMethodBind(className LabelSettings, "get_shadow_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setShadowOffset*(self: LabelSettings; offset: Vector2): void =
  expandMethodBind(className LabelSettings, "set_shadow_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShadowOffset*(self: LabelSettings): Vector2 =
  expandMethodBind(className LabelSettings, "get_shadow_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

template lineSpacing*(self: LabelSettings): untyped = self.getLineSpacing()
template `lineSpacing=`*(self: LabelSettings; value) = self.setLineSpacing(value)

template font*(self: LabelSettings): untyped = self.getFont()
template `font=`*(self: LabelSettings; value) = self.setFont(value)

template fontSize*(self: LabelSettings): untyped = self.getFontSize()
template `fontSize=`*(self: LabelSettings; value) = self.setFontSize(value)

template fontColor*(self: LabelSettings): untyped = self.getFontColor()
template `fontColor=`*(self: LabelSettings; value) = self.setFontColor(value)

template outlineSize*(self: LabelSettings): untyped = self.getOutlineSize()
template `outlineSize=`*(self: LabelSettings; value) = self.setOutlineSize(value)

template outlineColor*(self: LabelSettings): untyped = self.getOutlineColor()
template `outlineColor=`*(self: LabelSettings; value) = self.setOutlineColor(value)

template shadowSize*(self: LabelSettings): untyped = self.getShadowSize()
template `shadowSize=`*(self: LabelSettings; value) = self.setShadowSize(value)

template shadowColor*(self: LabelSettings): untyped = self.getShadowColor()
template `shadowColor=`*(self: LabelSettings; value) = self.setShadowColor(value)

template shadowOffset*(self: LabelSettings): untyped = self.getShadowOffset()
template `shadowOffset=`*(self: LabelSettings; value) = self.setShadowOffset(value)

const LabelSettings_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[LabelSettings]): Table[string, string] = LabelSettings_vmap
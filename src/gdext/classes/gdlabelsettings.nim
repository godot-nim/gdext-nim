{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(LabelSettings, Resource)

proc setLineSpacing*(self: LabelSettings; spacing: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_line_spacing", 373806689)
  methodbind.ptrcall(self, [getPtr spacing], void)

proc getLineSpacing*(self: LabelSettings): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_line_spacing", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setParagraphSpacing*(self: LabelSettings; spacing: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_paragraph_spacing", 373806689)
  methodbind.ptrcall(self, [getPtr spacing], void)

proc getParagraphSpacing*(self: LabelSettings): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_paragraph_spacing", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFont*(self: LabelSettings; font: gdref Font): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_font", 1262170328)
  methodbind.ptrcall(self, [getPtr font], void)

proc getFont*(self: LabelSettings): gdref Font =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_font", 3229501585)
  methodbind.ptrcall(self, [], gdref Font)

proc setFontSize*(self: LabelSettings; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_font_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc getFontSize*(self: LabelSettings): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_font_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFontColor*(self: LabelSettings; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_font_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getFontColor*(self: LabelSettings): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_font_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setOutlineSize*(self: LabelSettings; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_outline_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc getOutlineSize*(self: LabelSettings): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_outline_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setOutlineColor*(self: LabelSettings; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_outline_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getOutlineColor*(self: LabelSettings): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_outline_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setShadowSize*(self: LabelSettings; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_shadow_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc getShadowSize*(self: LabelSettings): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_shadow_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setShadowColor*(self: LabelSettings; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_shadow_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getShadowColor*(self: LabelSettings): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_shadow_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setShadowOffset*(self: LabelSettings; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_shadow_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getShadowOffset*(self: LabelSettings): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_shadow_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getStackedOutlineCount*(self: LabelSettings): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_stacked_outline_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setStackedOutlineCount*(self: LabelSettings; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_stacked_outline_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc addStackedOutline*(self: LabelSettings; index: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "add_stacked_outline", 1025054187)
  methodbind.ptrcall(self, [getPtr index], void)

proc moveStackedOutline*(self: LabelSettings; fromIndex: int32; toPosition: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "move_stacked_outline", 3937882851)
  methodbind.ptrcall(self, [getPtr fromIndex, getPtr toPosition], void)

proc removeStackedOutline*(self: LabelSettings; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "remove_stacked_outline", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc setStackedOutlineSize*(self: LabelSettings; index: int32; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_stacked_outline_size", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr size], void)

proc getStackedOutlineSize*(self: LabelSettings; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_stacked_outline_size", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc setStackedOutlineColor*(self: LabelSettings; index: int32; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_stacked_outline_color", 2878471219)
  methodbind.ptrcall(self, [getPtr index, getPtr color], void)

proc getStackedOutlineColor*(self: LabelSettings; index: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_stacked_outline_color", 3457211756)
  methodbind.ptrcall(self, [getPtr index], Color)

proc getStackedShadowCount*(self: LabelSettings): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_stacked_shadow_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setStackedShadowCount*(self: LabelSettings; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_stacked_shadow_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc addStackedShadow*(self: LabelSettings; index: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "add_stacked_shadow", 1025054187)
  methodbind.ptrcall(self, [getPtr index], void)

proc moveStackedShadow*(self: LabelSettings; fromIndex: int32; toPosition: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "move_stacked_shadow", 3937882851)
  methodbind.ptrcall(self, [getPtr fromIndex, getPtr toPosition], void)

proc removeStackedShadow*(self: LabelSettings; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "remove_stacked_shadow", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc setStackedShadowOffset*(self: LabelSettings; index: int32; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_stacked_shadow_offset", 163021252)
  methodbind.ptrcall(self, [getPtr index, getPtr offset], void)

proc getStackedShadowOffset*(self: LabelSettings; index: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_stacked_shadow_offset", 2299179447)
  methodbind.ptrcall(self, [getPtr index], Vector2)

proc setStackedShadowColor*(self: LabelSettings; index: int32; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_stacked_shadow_color", 2878471219)
  methodbind.ptrcall(self, [getPtr index, getPtr color], void)

proc getStackedShadowColor*(self: LabelSettings; index: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_stacked_shadow_color", 3457211756)
  methodbind.ptrcall(self, [getPtr index], Color)

proc setStackedShadowOutlineSize*(self: LabelSettings; index: int32; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "set_stacked_shadow_outline_size", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr size], void)

proc getStackedShadowOutlineSize*(self: LabelSettings; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LabelSettings, "get_stacked_shadow_outline_size", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

template lineSpacing*(self: LabelSettings): untyped = self.getLineSpacing()
template `lineSpacing=`*(self: LabelSettings; value) = self.setLineSpacing(value)

template paragraphSpacing*(self: LabelSettings): untyped = self.getParagraphSpacing()
template `paragraphSpacing=`*(self: LabelSettings; value) = self.setParagraphSpacing(value)

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

template stackedOutlineCount*(self: LabelSettings): untyped = self.getStackedOutlineCount()
template `stackedOutlineCount=`*(self: LabelSettings; value) = self.setStackedOutlineCount(value)

template stackedShadowCount*(self: LabelSettings): untyped = self.getStackedShadowCount()
template `stackedShadowCount=`*(self: LabelSettings; value) = self.setStackedShadowCount(value)

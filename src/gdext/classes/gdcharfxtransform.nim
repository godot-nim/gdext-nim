{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(CharFXTransform, RefCounted)

proc getTransform*(self: CharFXTransform): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "get_transform", 3761352769)
  methodbind.ptrcall(self, [], Transform2D)

proc setTransform*(self: CharFXTransform; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "set_transform", 2761652528)
  methodbind.ptrcall(self, [getPtr transform], void)

proc getRange*(self: CharFXTransform): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "get_range", 2741790807)
  methodbind.ptrcall(self, [], Vector2i)

proc setRange*(self: CharFXTransform; range: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "set_range", 1130785943)
  methodbind.ptrcall(self, [getPtr range], void)

proc getElapsedTime*(self: CharFXTransform): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "get_elapsed_time", 191475506)
  methodbind.ptrcall(self, [], float64)

proc setElapsedTime*(self: CharFXTransform; time: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "set_elapsed_time", 373806689)
  methodbind.ptrcall(self, [getPtr time], void)

proc isVisible*(self: CharFXTransform): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "is_visible", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setVisibility*(self: CharFXTransform; visibility: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "set_visibility", 2586408642)
  methodbind.ptrcall(self, [getPtr visibility], void)

proc isOutline*(self: CharFXTransform): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "is_outline", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setOutline*(self: CharFXTransform; outline: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "set_outline", 2586408642)
  methodbind.ptrcall(self, [getPtr outline], void)

proc getOffset*(self: CharFXTransform): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "get_offset", 1497962370)
  methodbind.ptrcall(self, [], Vector2)

proc setOffset*(self: CharFXTransform; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getColor*(self: CharFXTransform): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "get_color", 3200896285)
  methodbind.ptrcall(self, [], Color)

proc setColor*(self: CharFXTransform; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getEnvironment*(self: CharFXTransform): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "get_environment", 2382534195)
  methodbind.ptrcall(self, [], Dictionary)

proc setEnvironment*(self: CharFXTransform; environment: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "set_environment", 4155329257)
  methodbind.ptrcall(self, [getPtr environment], void)

proc getGlyphIndex*(self: CharFXTransform): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "get_glyph_index", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setGlyphIndex*(self: CharFXTransform; glyphIndex: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "set_glyph_index", 1286410249)
  methodbind.ptrcall(self, [getPtr glyphIndex], void)

proc getRelativeIndex*(self: CharFXTransform): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "get_relative_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setRelativeIndex*(self: CharFXTransform; relativeIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "set_relative_index", 1286410249)
  methodbind.ptrcall(self, [getPtr relativeIndex], void)

proc getGlyphCount*(self: CharFXTransform): uint8 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "get_glyph_count", 3905245786)
  methodbind.ptrcall(self, [], uint8)

proc setGlyphCount*(self: CharFXTransform; glyphCount: uint8): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "set_glyph_count", 1286410249)
  methodbind.ptrcall(self, [getPtr glyphCount], void)

proc getGlyphFlags*(self: CharFXTransform): uint16 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "get_glyph_flags", 3905245786)
  methodbind.ptrcall(self, [], uint16)

proc setGlyphFlags*(self: CharFXTransform; glyphFlags: uint16): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "set_glyph_flags", 1286410249)
  methodbind.ptrcall(self, [getPtr glyphFlags], void)

proc getFont*(self: CharFXTransform): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "get_font", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setFont*(self: CharFXTransform; font: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharFXTransform, "set_font", 2722037293)
  methodbind.ptrcall(self, [getPtr font], void)

template transform*(self: CharFXTransform): untyped = self.getTransform()
template `transform=`*(self: CharFXTransform; value) = self.setTransform(value)

template range*(self: CharFXTransform): untyped = self.getRange()
template `range=`*(self: CharFXTransform; value) = self.setRange(value)

template elapsedTime*(self: CharFXTransform): untyped = self.getElapsedTime()
template `elapsedTime=`*(self: CharFXTransform; value) = self.setElapsedTime(value)

template visible*(self: CharFXTransform): untyped = self.isVisible()
template `visible=`*(self: CharFXTransform; value) = self.setVisibility(value)

template outline*(self: CharFXTransform): untyped = self.isOutline()
template `outline=`*(self: CharFXTransform; value) = self.setOutline(value)

template offset*(self: CharFXTransform): untyped = self.getOffset()
template `offset=`*(self: CharFXTransform; value) = self.setOffset(value)

template color*(self: CharFXTransform): untyped = self.getColor()
template `color=`*(self: CharFXTransform; value) = self.setColor(value)

template env*(self: CharFXTransform): untyped = self.getEnvironment()
template `env=`*(self: CharFXTransform; value) = self.setEnvironment(value)

template glyphIndex*(self: CharFXTransform): untyped = self.getGlyphIndex()
template `glyphIndex=`*(self: CharFXTransform; value) = self.setGlyphIndex(value)

template glyphCount*(self: CharFXTransform): untyped = self.getGlyphCount()
template `glyphCount=`*(self: CharFXTransform; value) = self.setGlyphCount(value)

template glyphFlags*(self: CharFXTransform): untyped = self.getGlyphFlags()
template `glyphFlags=`*(self: CharFXTransform; value) = self.setGlyphFlags(value)

template relativeIndex*(self: CharFXTransform): untyped = self.getRelativeIndex()
template `relativeIndex=`*(self: CharFXTransform; value) = self.setRelativeIndex(value)

template font*(self: CharFXTransform): untyped = self.getFont()
template `font=`*(self: CharFXTransform; value) = self.setFont(value)

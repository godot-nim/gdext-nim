{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getTransform*(self: CharFXTransform): Transform2D =
  expandMethodBind(className CharFXTransform, "get_transform", 3761352769)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Transform2D)

proc setTransform*(self: CharFXTransform; transform: Transform2D): void =
  expandMethodBind(className CharFXTransform, "set_transform", 2761652528)
  methodbind.ptrcall(self, [getPtr transform])

proc getRange*(self: CharFXTransform): Vector2i =
  expandMethodBind(className CharFXTransform, "get_range", 2741790807)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc setRange*(self: CharFXTransform; range: Vector2i): void =
  expandMethodBind(className CharFXTransform, "set_range", 1130785943)
  methodbind.ptrcall(self, [getPtr range])

proc getElapsedTime*(self: CharFXTransform): float64 =
  expandMethodBind(className CharFXTransform, "get_elapsed_time", 191475506)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setElapsedTime*(self: CharFXTransform; time: float64): void =
  expandMethodBind(className CharFXTransform, "set_elapsed_time", 373806689)
  methodbind.ptrcall(self, [getPtr time])

proc isVisible*(self: CharFXTransform): bool =
  expandMethodBind(className CharFXTransform, "is_visible", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setVisibility*(self: CharFXTransform; visibility: bool): void =
  expandMethodBind(className CharFXTransform, "set_visibility", 2586408642)
  methodbind.ptrcall(self, [getPtr visibility])

proc isOutline*(self: CharFXTransform): bool =
  expandMethodBind(className CharFXTransform, "is_outline", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setOutline*(self: CharFXTransform; outline: bool): void =
  expandMethodBind(className CharFXTransform, "set_outline", 2586408642)
  methodbind.ptrcall(self, [getPtr outline])

proc getOffset*(self: CharFXTransform): Vector2 =
  expandMethodBind(className CharFXTransform, "get_offset", 1497962370)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setOffset*(self: CharFXTransform; offset: Vector2): void =
  expandMethodBind(className CharFXTransform, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset])

proc getColor*(self: CharFXTransform): Color =
  expandMethodBind(className CharFXTransform, "get_color", 3200896285)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setColor*(self: CharFXTransform; color: Color): void =
  expandMethodBind(className CharFXTransform, "set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getEnvironment*(self: CharFXTransform): Dictionary =
  expandMethodBind(className CharFXTransform, "get_environment", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc setEnvironment*(self: CharFXTransform; environment: Dictionary): void =
  expandMethodBind(className CharFXTransform, "set_environment", 4155329257)
  methodbind.ptrcall(self, [getPtr environment])

proc getGlyphIndex*(self: CharFXTransform): uint32 =
  expandMethodBind(className CharFXTransform, "get_glyph_index", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setGlyphIndex*(self: CharFXTransform; glyphIndex: uint32): void =
  expandMethodBind(className CharFXTransform, "set_glyph_index", 1286410249)
  methodbind.ptrcall(self, [getPtr glyphIndex])

proc getRelativeIndex*(self: CharFXTransform): int32 =
  expandMethodBind(className CharFXTransform, "get_relative_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setRelativeIndex*(self: CharFXTransform; relativeIndex: int32): void =
  expandMethodBind(className CharFXTransform, "set_relative_index", 1286410249)
  methodbind.ptrcall(self, [getPtr relativeIndex])

proc getGlyphCount*(self: CharFXTransform): uint8 =
  expandMethodBind(className CharFXTransform, "get_glyph_count", 3905245786)
  var ret: encoded uint8
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint8)

proc setGlyphCount*(self: CharFXTransform; glyphCount: uint8): void =
  expandMethodBind(className CharFXTransform, "set_glyph_count", 1286410249)
  methodbind.ptrcall(self, [getPtr glyphCount])

proc getGlyphFlags*(self: CharFXTransform): uint16 =
  expandMethodBind(className CharFXTransform, "get_glyph_flags", 3905245786)
  var ret: encoded uint16
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint16)

proc setGlyphFlags*(self: CharFXTransform; glyphFlags: uint16): void =
  expandMethodBind(className CharFXTransform, "set_glyph_flags", 1286410249)
  methodbind.ptrcall(self, [getPtr glyphFlags])

proc getFont*(self: CharFXTransform): RID =
  expandMethodBind(className CharFXTransform, "get_font", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setFont*(self: CharFXTransform; font: RID): void =
  expandMethodBind(className CharFXTransform, "set_font", 2722037293)
  methodbind.ptrcall(self, [getPtr font])

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

const CharFXTransform_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CharFXTransform]): Table[string, string] = CharFXTransform_vmap
{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getTransform*(self: CharFxTransform): Transform2D =
  expandMethodBind(className CharFxTransform, "get_transform", 3761352769)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc setTransform*(self: CharFxTransform; transform: Transform2D): void =
  expandMethodBind(className CharFxTransform, "set_transform", 2761652528)
  var `?param` = [getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRange*(self: CharFxTransform): Vector2i =
  expandMethodBind(className CharFxTransform, "get_range", 2741790807)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc setRange*(self: CharFxTransform; range: Vector2i): void =
  expandMethodBind(className CharFxTransform, "set_range", 1130785943)
  var `?param` = [getPtr range]
  methodbind.ptrcall(self, addr `?param`[0])

proc getElapsedTime*(self: CharFxTransform): float64 =
  expandMethodBind(className CharFxTransform, "get_elapsed_time", 191475506)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setElapsedTime*(self: CharFxTransform; time: float64): void =
  expandMethodBind(className CharFxTransform, "set_elapsed_time", 373806689)
  var `?param` = [getPtr time]
  methodbind.ptrcall(self, addr `?param`[0])

proc isVisible*(self: CharFxTransform): bool =
  expandMethodBind(className CharFxTransform, "is_visible", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setVisibility*(self: CharFxTransform; visibility: bool): void =
  expandMethodBind(className CharFxTransform, "set_visibility", 2586408642)
  var `?param` = [getPtr visibility]
  methodbind.ptrcall(self, addr `?param`[0])

proc isOutline*(self: CharFxTransform): bool =
  expandMethodBind(className CharFxTransform, "is_outline", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setOutline*(self: CharFxTransform; outline: bool): void =
  expandMethodBind(className CharFxTransform, "set_outline", 2586408642)
  var `?param` = [getPtr outline]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOffset*(self: CharFxTransform): Vector2 =
  expandMethodBind(className CharFxTransform, "get_offset", 1497962370)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setOffset*(self: CharFxTransform; offset: Vector2): void =
  expandMethodBind(className CharFxTransform, "set_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColor*(self: CharFxTransform): Color =
  expandMethodBind(className CharFxTransform, "get_color", 3200896285)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setColor*(self: CharFxTransform; color: Color): void =
  expandMethodBind(className CharFxTransform, "set_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnvironment*(self: CharFxTransform): Dictionary =
  expandMethodBind(className CharFxTransform, "get_environment", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc setEnvironment*(self: CharFxTransform; environment: Dictionary): void =
  expandMethodBind(className CharFxTransform, "set_environment", 4155329257)
  var `?param` = [getPtr environment]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlyphIndex*(self: CharFxTransform): uint32 =
  expandMethodBind(className CharFxTransform, "get_glyph_index", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setGlyphIndex*(self: CharFxTransform; glyphIndex: uint32): void =
  expandMethodBind(className CharFxTransform, "set_glyph_index", 1286410249)
  var `?param` = [getPtr glyphIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRelativeIndex*(self: CharFxTransform): int32 =
  expandMethodBind(className CharFxTransform, "get_relative_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setRelativeIndex*(self: CharFxTransform; relativeIndex: int32): void =
  expandMethodBind(className CharFxTransform, "set_relative_index", 1286410249)
  var `?param` = [getPtr relativeIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlyphCount*(self: CharFxTransform): uint8 =
  expandMethodBind(className CharFxTransform, "get_glyph_count", 3905245786)
  var ret: encoded uint8
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint8)

proc setGlyphCount*(self: CharFxTransform; glyphCount: uint8): void =
  expandMethodBind(className CharFxTransform, "set_glyph_count", 1286410249)
  var `?param` = [getPtr glyphCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlyphFlags*(self: CharFxTransform): uint16 =
  expandMethodBind(className CharFxTransform, "get_glyph_flags", 3905245786)
  var ret: encoded uint16
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint16)

proc setGlyphFlags*(self: CharFxTransform; glyphFlags: uint16): void =
  expandMethodBind(className CharFxTransform, "set_glyph_flags", 1286410249)
  var `?param` = [getPtr glyphFlags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFont*(self: CharFxTransform): Rid =
  expandMethodBind(className CharFxTransform, "get_font", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc setFont*(self: CharFxTransform; font: Rid): void =
  expandMethodBind(className CharFxTransform, "set_font", 2722037293)
  var `?param` = [getPtr font]
  methodbind.ptrcall(self, addr `?param`[0])

template transform*(self: CharFxTransform): untyped = self.getTransform()
template `transform=`*(self: CharFxTransform; value) = self.setTransform(value)

template range*(self: CharFxTransform): untyped = self.getRange()
template `range=`*(self: CharFxTransform; value) = self.setRange(value)

template elapsedTime*(self: CharFxTransform): untyped = self.getElapsedTime()
template `elapsedTime=`*(self: CharFxTransform; value) = self.setElapsedTime(value)

template visible*(self: CharFxTransform): untyped = self.isVisible()
template `visible=`*(self: CharFxTransform; value) = self.setVisibility(value)

template outline*(self: CharFxTransform): untyped = self.isOutline()
template `outline=`*(self: CharFxTransform; value) = self.setOutline(value)

template offset*(self: CharFxTransform): untyped = self.getOffset()
template `offset=`*(self: CharFxTransform; value) = self.setOffset(value)

template color*(self: CharFxTransform): untyped = self.getColor()
template `color=`*(self: CharFxTransform; value) = self.setColor(value)

template env*(self: CharFxTransform): untyped = self.getEnvironment()
template `env=`*(self: CharFxTransform; value) = self.setEnvironment(value)

template glyphIndex*(self: CharFxTransform): untyped = self.getGlyphIndex()
template `glyphIndex=`*(self: CharFxTransform; value) = self.setGlyphIndex(value)

template glyphCount*(self: CharFxTransform): untyped = self.getGlyphCount()
template `glyphCount=`*(self: CharFxTransform; value) = self.setGlyphCount(value)

template glyphFlags*(self: CharFxTransform): untyped = self.getGlyphFlags()
template `glyphFlags=`*(self: CharFxTransform; value) = self.setGlyphFlags(value)

template relativeIndex*(self: CharFxTransform): untyped = self.getRelativeIndex()
template `relativeIndex=`*(self: CharFxTransform; value) = self.setRelativeIndex(value)

template font*(self: CharFxTransform): untyped = self.getFont()
template `font=`*(self: CharFxTransform; value) = self.setFont(value)

const CharFxTransform_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CharFxTransform]): Table[string, string] = CharFxTransform_vmap
{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc clear*(self: TextLine): void =
  expandMethodBind(className TextLine, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

proc setDirection*(self: TextLine; direction: TextServer_Direction): void =
  expandMethodBind(className TextLine, "set_direction", 1418190634)
  var `?param` = [getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDirection*(self: TextLine): TextServer_Direction =
  expandMethodBind(className TextLine, "get_direction", 2516697328)
  var ret: encoded TextServer_Direction
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_Direction)

proc setOrientation*(self: TextLine; orientation: TextServer_Orientation): void =
  expandMethodBind(className TextLine, "set_orientation", 42823726)
  var `?param` = [getPtr orientation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOrientation*(self: TextLine): TextServer_Orientation =
  expandMethodBind(className TextLine, "get_orientation", 175768116)
  var ret: encoded TextServer_Orientation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_Orientation)

proc setPreserveInvalid*(self: TextLine; enabled: bool): void =
  expandMethodBind(className TextLine, "set_preserve_invalid", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPreserveInvalid*(self: TextLine): bool =
  expandMethodBind(className TextLine, "get_preserve_invalid", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPreserveControl*(self: TextLine; enabled: bool): void =
  expandMethodBind(className TextLine, "set_preserve_control", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPreserveControl*(self: TextLine): bool =
  expandMethodBind(className TextLine, "get_preserve_control", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setBidiOverride*(self: TextLine; override: Array): void =
  expandMethodBind(className TextLine, "set_bidi_override", 381264803)
  var `?param` = [getPtr override]
  methodbind.ptrcall(self, addr `?param`[0])

proc addString*(self: TextLine; text: String; font: gdref Font; fontSize: int32; language: String = gdstring""; meta: Variant = default(Variant)): bool =
  expandMethodBind(className TextLine, "add_string", 621426851)
  var `?param` = [getPtr text, getPtr font, getPtr fontSize, getPtr language, getPtr meta]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc addObject*(self: TextLine; key: Variant; size: Vector2; inlineAlign: InlineAlignment = inlineAlignmentCenter; length: int32 = 1; baseline: Float = 0.0): bool =
  expandMethodBind(className TextLine, "add_object", 1316529304)
  var `?param` = [getPtr key, getPtr size, getPtr inlineAlign, getPtr length, getPtr baseline]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc resizeObject*(self: TextLine; key: Variant; size: Vector2; inlineAlign: InlineAlignment = inlineAlignmentCenter; baseline: Float = 0.0): bool =
  expandMethodBind(className TextLine, "resize_object", 2095776372)
  var `?param` = [getPtr key, getPtr size, getPtr inlineAlign, getPtr baseline]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setWidth*(self: TextLine; width: Float): void =
  expandMethodBind(className TextLine, "set_width", 373806689)
  var `?param` = [getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWidth*(self: TextLine): Float =
  expandMethodBind(className TextLine, "get_width", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setHorizontalAlignment*(self: TextLine; alignment: HorizontalAlignment): void =
  expandMethodBind(className TextLine, "set_horizontal_alignment", 2312603777)
  var `?param` = [getPtr alignment]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHorizontalAlignment*(self: TextLine): HorizontalAlignment =
  expandMethodBind(className TextLine, "get_horizontal_alignment", 341400642)
  var ret: encoded HorizontalAlignment
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(HorizontalAlignment)

proc tabAlign*(self: TextLine; tabStops: PackedFloat32Array): void =
  expandMethodBind(className TextLine, "tab_align", 2899603908)
  var `?param` = [getPtr tabStops]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFlags*(self: TextLine; flags: set[TextServer_JustificationFlag]): void =
  expandMethodBind(className TextLine, "set_flags", 2877345813)
  var `?param` = [getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFlags*(self: TextLine): set[TextServer_JustificationFlag] =
  expandMethodBind(className TextLine, "get_flags", 1583363614)
  var ret: encoded set[TextServer_JustificationFlag]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[TextServer_JustificationFlag])

proc setTextOverrunBehavior*(self: TextLine; overrunBehavior: TextServer_OverrunBehavior): void =
  expandMethodBind(className TextLine, "set_text_overrun_behavior", 1008890932)
  var `?param` = [getPtr overrunBehavior]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextOverrunBehavior*(self: TextLine): TextServer_OverrunBehavior =
  expandMethodBind(className TextLine, "get_text_overrun_behavior", 3779142101)
  var ret: encoded TextServer_OverrunBehavior
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_OverrunBehavior)

proc setEllipsisChar*(self: TextLine; char: String): void =
  expandMethodBind(className TextLine, "set_ellipsis_char", 83702148)
  var `?param` = [getPtr char]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEllipsisChar*(self: TextLine): String =
  expandMethodBind(className TextLine, "get_ellipsis_char", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getObjects*(self: TextLine): Array =
  expandMethodBind(className TextLine, "get_objects", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

proc getObjectRect*(self: TextLine; key: Variant): Rect2 =
  expandMethodBind(className TextLine, "get_object_rect", 1742700391)
  var `?param` = [getPtr key]
  var ret: encoded Rect2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rect2)

proc getSize*(self: TextLine): Vector2 =
  expandMethodBind(className TextLine, "get_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getRid*(self: TextLine): RID =
  expandMethodBind(className TextLine, "get_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc getLineAscent*(self: TextLine): Float =
  expandMethodBind(className TextLine, "get_line_ascent", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getLineDescent*(self: TextLine): Float =
  expandMethodBind(className TextLine, "get_line_descent", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getLineWidth*(self: TextLine): Float =
  expandMethodBind(className TextLine, "get_line_width", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getLineUnderlinePosition*(self: TextLine): Float =
  expandMethodBind(className TextLine, "get_line_underline_position", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getLineUnderlineThickness*(self: TextLine): Float =
  expandMethodBind(className TextLine, "get_line_underline_thickness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc draw*(self: TextLine; canvas: RID; pos: Vector2; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextLine, "draw", 856975658)
  var `?param` = [getPtr canvas, getPtr pos, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawOutline*(self: TextLine; canvas: RID; pos: Vector2; outlineSize: int32 = 1; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextLine, "draw_outline", 1343401456)
  var `?param` = [getPtr canvas, getPtr pos, getPtr outlineSize, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc hitTest*(self: TextLine; coords: Float): int32 =
  expandMethodBind(className TextLine, "hit_test", 2401831903)
  var `?param` = [getPtr coords]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

template direction*(self: TextLine): untyped = self.getDirection()
template `direction=`*(self: TextLine; value) = self.setDirection(value)

template orientation*(self: TextLine): untyped = self.getOrientation()
template `orientation=`*(self: TextLine; value) = self.setOrientation(value)

template preserveInvalid*(self: TextLine): untyped = self.getPreserveInvalid()
template `preserveInvalid=`*(self: TextLine; value) = self.setPreserveInvalid(value)

template preserveControl*(self: TextLine): untyped = self.getPreserveControl()
template `preserveControl=`*(self: TextLine; value) = self.setPreserveControl(value)

template width*(self: TextLine): untyped = self.getWidth()
template `width=`*(self: TextLine; value) = self.setWidth(value)

template alignment*(self: TextLine): untyped = self.getHorizontalAlignment()
template `alignment=`*(self: TextLine; value) = self.setHorizontalAlignment(value)

template flags*(self: TextLine): untyped = self.getFlags()
template `flags=`*(self: TextLine; value) = self.setFlags(value)

template textOverrunBehavior*(self: TextLine): untyped = self.getTextOverrunBehavior()
template `textOverrunBehavior=`*(self: TextLine; value) = self.setTextOverrunBehavior(value)

template ellipsisChar*(self: TextLine): untyped = self.getEllipsisChar()
template `ellipsisChar=`*(self: TextLine; value) = self.setEllipsisChar(value)

const TextLine_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextLine]): Table[string, string] = TextLine_vmap
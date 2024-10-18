{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc clear*(self: TextParagraph): void =
  expandMethodBind(className TextParagraph, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

proc setDirection*(self: TextParagraph; direction: TextServer_Direction): void =
  expandMethodBind(className TextParagraph, "set_direction", 1418190634)
  var `?param` = [getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDirection*(self: TextParagraph): TextServer_Direction =
  expandMethodBind(className TextParagraph, "get_direction", 2516697328)
  var ret: encoded TextServer_Direction
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_Direction)

proc setCustomPunctuation*(self: TextParagraph; customPunctuation: String): void =
  expandMethodBind(className TextParagraph, "set_custom_punctuation", 83702148)
  var `?param` = [getPtr customPunctuation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomPunctuation*(self: TextParagraph): String =
  expandMethodBind(className TextParagraph, "get_custom_punctuation", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setOrientation*(self: TextParagraph; orientation: TextServer_Orientation): void =
  expandMethodBind(className TextParagraph, "set_orientation", 42823726)
  var `?param` = [getPtr orientation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOrientation*(self: TextParagraph): TextServer_Orientation =
  expandMethodBind(className TextParagraph, "get_orientation", 175768116)
  var ret: encoded TextServer_Orientation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_Orientation)

proc setPreserveInvalid*(self: TextParagraph; enabled: bool): void =
  expandMethodBind(className TextParagraph, "set_preserve_invalid", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPreserveInvalid*(self: TextParagraph): bool =
  expandMethodBind(className TextParagraph, "get_preserve_invalid", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPreserveControl*(self: TextParagraph; enabled: bool): void =
  expandMethodBind(className TextParagraph, "set_preserve_control", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPreserveControl*(self: TextParagraph): bool =
  expandMethodBind(className TextParagraph, "get_preserve_control", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setBidiOverride*(self: TextParagraph; override: Array): void =
  expandMethodBind(className TextParagraph, "set_bidi_override", 381264803)
  var `?param` = [getPtr override]
  methodbind.ptrcall(self, addr `?param`[0])

proc setDropcap*(self: TextParagraph; text: String; font: gdref Font; fontSize: int32; dropcapMargins: Rect2 = rect2(0, 0, 0, 0); language: String = gdstring""): bool =
  expandMethodBind(className TextParagraph, "set_dropcap", 2498990330)
  var `?param` = [getPtr text, getPtr font, getPtr fontSize, getPtr dropcapMargins, getPtr language]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc clearDropcap*(self: TextParagraph): void =
  expandMethodBind(className TextParagraph, "clear_dropcap", 3218959716)
  methodbind.ptrcall(self, nil)

proc addString*(self: TextParagraph; text: String; font: gdref Font; fontSize: int32; language: String = gdstring""; meta: Variant = default(Variant)): bool =
  expandMethodBind(className TextParagraph, "add_string", 621426851)
  var `?param` = [getPtr text, getPtr font, getPtr fontSize, getPtr language, getPtr meta]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc addObject*(self: TextParagraph; key: Variant; size: Vector2; inlineAlign: InlineAlignment = inlineAlignmentCenter; length: int32 = 1; baseline: Float = 0.0): bool =
  expandMethodBind(className TextParagraph, "add_object", 1316529304)
  var `?param` = [getPtr key, getPtr size, getPtr inlineAlign, getPtr length, getPtr baseline]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc resizeObject*(self: TextParagraph; key: Variant; size: Vector2; inlineAlign: InlineAlignment = inlineAlignmentCenter; baseline: Float = 0.0): bool =
  expandMethodBind(className TextParagraph, "resize_object", 2095776372)
  var `?param` = [getPtr key, getPtr size, getPtr inlineAlign, getPtr baseline]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setAlignment*(self: TextParagraph; alignment: HorizontalAlignment): void =
  expandMethodBind(className TextParagraph, "set_alignment", 2312603777)
  var `?param` = [getPtr alignment]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAlignment*(self: TextParagraph): HorizontalAlignment =
  expandMethodBind(className TextParagraph, "get_alignment", 341400642)
  var ret: encoded HorizontalAlignment
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(HorizontalAlignment)

proc tabAlign*(self: TextParagraph; tabStops: PackedFloat32Array): void =
  expandMethodBind(className TextParagraph, "tab_align", 2899603908)
  var `?param` = [getPtr tabStops]
  methodbind.ptrcall(self, addr `?param`[0])

proc setBreakFlags*(self: TextParagraph; flags: set[TextServer_LineBreakFlag]): void =
  expandMethodBind(className TextParagraph, "set_break_flags", 2809697122)
  var `?param` = [getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBreakFlags*(self: TextParagraph): set[TextServer_LineBreakFlag] =
  expandMethodBind(className TextParagraph, "get_break_flags", 2340632602)
  var ret: encoded set[TextServer_LineBreakFlag]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[TextServer_LineBreakFlag])

proc setJustificationFlags*(self: TextParagraph; flags: set[TextServer_JustificationFlag]): void =
  expandMethodBind(className TextParagraph, "set_justification_flags", 2877345813)
  var `?param` = [getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJustificationFlags*(self: TextParagraph): set[TextServer_JustificationFlag] =
  expandMethodBind(className TextParagraph, "get_justification_flags", 1583363614)
  var ret: encoded set[TextServer_JustificationFlag]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[TextServer_JustificationFlag])

proc setTextOverrunBehavior*(self: TextParagraph; overrunBehavior: TextServer_OverrunBehavior): void =
  expandMethodBind(className TextParagraph, "set_text_overrun_behavior", 1008890932)
  var `?param` = [getPtr overrunBehavior]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextOverrunBehavior*(self: TextParagraph): TextServer_OverrunBehavior =
  expandMethodBind(className TextParagraph, "get_text_overrun_behavior", 3779142101)
  var ret: encoded TextServer_OverrunBehavior
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_OverrunBehavior)

proc setEllipsisChar*(self: TextParagraph; char: String): void =
  expandMethodBind(className TextParagraph, "set_ellipsis_char", 83702148)
  var `?param` = [getPtr char]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEllipsisChar*(self: TextParagraph): String =
  expandMethodBind(className TextParagraph, "get_ellipsis_char", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setWidth*(self: TextParagraph; width: Float): void =
  expandMethodBind(className TextParagraph, "set_width", 373806689)
  var `?param` = [getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWidth*(self: TextParagraph): Float =
  expandMethodBind(className TextParagraph, "get_width", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getNonWrappedSize*(self: TextParagraph): Vector2 =
  expandMethodBind(className TextParagraph, "get_non_wrapped_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getSize*(self: TextParagraph): Vector2 =
  expandMethodBind(className TextParagraph, "get_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getRid*(self: TextParagraph): Rid =
  expandMethodBind(className TextParagraph, "get_rid", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getLineRid*(self: TextParagraph; line: int32): Rid =
  expandMethodBind(className TextParagraph, "get_line_rid", 495598643)
  var `?param` = [getPtr line]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getDropcapRid*(self: TextParagraph): Rid =
  expandMethodBind(className TextParagraph, "get_dropcap_rid", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getLineCount*(self: TextParagraph): int32 =
  expandMethodBind(className TextParagraph, "get_line_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMaxLinesVisible*(self: TextParagraph; maxLinesVisible: int32): void =
  expandMethodBind(className TextParagraph, "set_max_lines_visible", 1286410249)
  var `?param` = [getPtr maxLinesVisible]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxLinesVisible*(self: TextParagraph): int32 =
  expandMethodBind(className TextParagraph, "get_max_lines_visible", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getLineObjects*(self: TextParagraph; line: int32): Array =
  expandMethodBind(className TextParagraph, "get_line_objects", 663333327)
  var `?param` = [getPtr line]
  var ret: encoded Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Array)

proc getLineObjectRect*(self: TextParagraph; line: int32; key: Variant): Rect2 =
  expandMethodBind(className TextParagraph, "get_line_object_rect", 204315017)
  var `?param` = [getPtr line, getPtr key]
  var ret: encoded Rect2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rect2)

proc getLineSize*(self: TextParagraph; line: int32): Vector2 =
  expandMethodBind(className TextParagraph, "get_line_size", 2299179447)
  var `?param` = [getPtr line]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc getLineRange*(self: TextParagraph; line: int32): Vector2i =
  expandMethodBind(className TextParagraph, "get_line_range", 880721226)
  var `?param` = [getPtr line]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc getLineAscent*(self: TextParagraph; line: int32): Float =
  expandMethodBind(className TextParagraph, "get_line_ascent", 2339986948)
  var `?param` = [getPtr line]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getLineDescent*(self: TextParagraph; line: int32): Float =
  expandMethodBind(className TextParagraph, "get_line_descent", 2339986948)
  var `?param` = [getPtr line]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getLineWidth*(self: TextParagraph; line: int32): Float =
  expandMethodBind(className TextParagraph, "get_line_width", 2339986948)
  var `?param` = [getPtr line]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getLineUnderlinePosition*(self: TextParagraph; line: int32): Float =
  expandMethodBind(className TextParagraph, "get_line_underline_position", 2339986948)
  var `?param` = [getPtr line]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getLineUnderlineThickness*(self: TextParagraph; line: int32): Float =
  expandMethodBind(className TextParagraph, "get_line_underline_thickness", 2339986948)
  var `?param` = [getPtr line]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getDropcapSize*(self: TextParagraph): Vector2 =
  expandMethodBind(className TextParagraph, "get_dropcap_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getDropcapLines*(self: TextParagraph): int32 =
  expandMethodBind(className TextParagraph, "get_dropcap_lines", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc draw*(self: TextParagraph; canvas: Rid; pos: Vector2; color: Color = color(1, 1, 1, 1); dcColor: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextParagraph, "draw", 1567802413)
  var `?param` = [getPtr canvas, getPtr pos, getPtr color, getPtr dcColor]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawOutline*(self: TextParagraph; canvas: Rid; pos: Vector2; outlineSize: int32 = 1; color: Color = color(1, 1, 1, 1); dcColor: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextParagraph, "draw_outline", 1893131224)
  var `?param` = [getPtr canvas, getPtr pos, getPtr outlineSize, getPtr color, getPtr dcColor]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawLine*(self: TextParagraph; canvas: Rid; pos: Vector2; line: int32; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextParagraph, "draw_line", 1242169894)
  var `?param` = [getPtr canvas, getPtr pos, getPtr line, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawLineOutline*(self: TextParagraph; canvas: Rid; pos: Vector2; line: int32; outlineSize: int32 = 1; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextParagraph, "draw_line_outline", 2664926980)
  var `?param` = [getPtr canvas, getPtr pos, getPtr line, getPtr outlineSize, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawDropcap*(self: TextParagraph; canvas: Rid; pos: Vector2; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextParagraph, "draw_dropcap", 856975658)
  var `?param` = [getPtr canvas, getPtr pos, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawDropcapOutline*(self: TextParagraph; canvas: Rid; pos: Vector2; outlineSize: int32 = 1; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextParagraph, "draw_dropcap_outline", 1343401456)
  var `?param` = [getPtr canvas, getPtr pos, getPtr outlineSize, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc hitTest*(self: TextParagraph; coords: Vector2): int32 =
  expandMethodBind(className TextParagraph, "hit_test", 3820158470)
  var `?param` = [getPtr coords]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

template direction*(self: TextParagraph): untyped = self.getDirection()
template `direction=`*(self: TextParagraph; value) = self.setDirection(value)

template customPunctuation*(self: TextParagraph): untyped = self.getCustomPunctuation()
template `customPunctuation=`*(self: TextParagraph; value) = self.setCustomPunctuation(value)

template orientation*(self: TextParagraph): untyped = self.getOrientation()
template `orientation=`*(self: TextParagraph; value) = self.setOrientation(value)

template preserveInvalid*(self: TextParagraph): untyped = self.getPreserveInvalid()
template `preserveInvalid=`*(self: TextParagraph; value) = self.setPreserveInvalid(value)

template preserveControl*(self: TextParagraph): untyped = self.getPreserveControl()
template `preserveControl=`*(self: TextParagraph; value) = self.setPreserveControl(value)

template alignment*(self: TextParagraph): untyped = self.getAlignment()
template `alignment=`*(self: TextParagraph; value) = self.setAlignment(value)

template breakFlags*(self: TextParagraph): untyped = self.getBreakFlags()
template `breakFlags=`*(self: TextParagraph; value) = self.setBreakFlags(value)

template justificationFlags*(self: TextParagraph): untyped = self.getJustificationFlags()
template `justificationFlags=`*(self: TextParagraph; value) = self.setJustificationFlags(value)

template textOverrunBehavior*(self: TextParagraph): untyped = self.getTextOverrunBehavior()
template `textOverrunBehavior=`*(self: TextParagraph; value) = self.setTextOverrunBehavior(value)

template ellipsisChar*(self: TextParagraph): untyped = self.getEllipsisChar()
template `ellipsisChar=`*(self: TextParagraph; value) = self.setEllipsisChar(value)

template width*(self: TextParagraph): untyped = self.getWidth()
template `width=`*(self: TextParagraph; value) = self.setWidth(value)

template maxLinesVisible*(self: TextParagraph): untyped = self.getMaxLinesVisible()
template `maxLinesVisible=`*(self: TextParagraph; value) = self.setMaxLinesVisible(value)

const TextParagraph_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextParagraph]): Table[string, string] = TextParagraph_vmap
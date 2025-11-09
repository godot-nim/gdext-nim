{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(TextParagraph, RefCounted)

proc clear*(self: TextParagraph): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setDirection*(self: TextParagraph; direction: TextServer_Direction): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_direction", 1418190634)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getDirection*(self: TextParagraph): TextServer_Direction =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_direction", 2516697328)
  methodbind.ptrcall(self, [], TextServer_Direction)

proc getInferredDirection*(self: TextParagraph): TextServer_Direction =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_inferred_direction", 2516697328)
  methodbind.ptrcall(self, [], TextServer_Direction)

proc setCustomPunctuation*(self: TextParagraph; customPunctuation: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_custom_punctuation", 83702148)
  methodbind.ptrcall(self, [getPtr customPunctuation], void)

proc getCustomPunctuation*(self: TextParagraph): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_custom_punctuation", 201670096)
  methodbind.ptrcall(self, [], String)

proc setOrientation*(self: TextParagraph; orientation: TextServer_Orientation): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_orientation", 42823726)
  methodbind.ptrcall(self, [getPtr orientation], void)

proc getOrientation*(self: TextParagraph): TextServer_Orientation =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_orientation", 175768116)
  methodbind.ptrcall(self, [], TextServer_Orientation)

proc setPreserveInvalid*(self: TextParagraph; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_preserve_invalid", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getPreserveInvalid*(self: TextParagraph): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_preserve_invalid", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPreserveControl*(self: TextParagraph; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_preserve_control", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getPreserveControl*(self: TextParagraph): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_preserve_control", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setBidiOverride*(self: TextParagraph; override: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_bidi_override", 381264803)
  methodbind.ptrcall(self, [getPtr override], void)

proc setDropcap*(self: TextParagraph; text: String; font: gdref Font; fontSize: int32; dropcapMargins: Rect2 = rect2(0, 0, 0, 0); language: String = newGdString()): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_dropcap", 2498990330)
  methodbind.ptrcall(self, [getPtr text, getPtr font, getPtr fontSize, getPtr dropcapMargins, getPtr language], bool)

proc clearDropcap*(self: TextParagraph): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "clear_dropcap", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addString*(self: TextParagraph; text: String; font: gdref Font; fontSize: int32; language: String = newGdString(); meta: Variant = default(Variant)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "add_string", 621426851)
  methodbind.ptrcall(self, [getPtr text, getPtr font, getPtr fontSize, getPtr language, getPtr meta], bool)

proc addObject*(self: TextParagraph; key: Variant; size: Vector2; inlineAlign: InlineAlignment = inlineAlignmentCenter; length: int32 = 1; baseline: Float = 0.0): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "add_object", 1316529304)
  methodbind.ptrcall(self, [getPtr key, getPtr size, getPtr inlineAlign, getPtr length, getPtr baseline], bool)

proc resizeObject*(self: TextParagraph; key: Variant; size: Vector2; inlineAlign: InlineAlignment = inlineAlignmentCenter; baseline: Float = 0.0): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "resize_object", 2095776372)
  methodbind.ptrcall(self, [getPtr key, getPtr size, getPtr inlineAlign, getPtr baseline], bool)

proc setAlignment*(self: TextParagraph; alignment: HorizontalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getAlignment*(self: TextParagraph): HorizontalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_alignment", 341400642)
  methodbind.ptrcall(self, [], HorizontalAlignment)

proc tabAlign*(self: TextParagraph; tabStops: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "tab_align", 2899603908)
  methodbind.ptrcall(self, [getPtr tabStops], void)

proc setBreakFlags*(self: TextParagraph; flags: set[TextServer_LineBreakFlag]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_break_flags", 2809697122)
  methodbind.ptrcall(self, [getPtr flags], void)

proc getBreakFlags*(self: TextParagraph): set[TextServer_LineBreakFlag] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_break_flags", 2340632602)
  methodbind.ptrcall(self, [], set[TextServer_LineBreakFlag])

proc setJustificationFlags*(self: TextParagraph; flags: set[TextServer_JustificationFlag]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_justification_flags", 2877345813)
  methodbind.ptrcall(self, [getPtr flags], void)

proc getJustificationFlags*(self: TextParagraph): set[TextServer_JustificationFlag] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_justification_flags", 1583363614)
  methodbind.ptrcall(self, [], set[TextServer_JustificationFlag])

proc setTextOverrunBehavior*(self: TextParagraph; overrunBehavior: TextServer_OverrunBehavior): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_text_overrun_behavior", 1008890932)
  methodbind.ptrcall(self, [getPtr overrunBehavior], void)

proc getTextOverrunBehavior*(self: TextParagraph): TextServer_OverrunBehavior =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_text_overrun_behavior", 3779142101)
  methodbind.ptrcall(self, [], TextServer_OverrunBehavior)

proc setEllipsisChar*(self: TextParagraph; char: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_ellipsis_char", 83702148)
  methodbind.ptrcall(self, [getPtr char], void)

proc getEllipsisChar*(self: TextParagraph): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_ellipsis_char", 201670096)
  methodbind.ptrcall(self, [], String)

proc setWidth*(self: TextParagraph; width: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_width", 373806689)
  methodbind.ptrcall(self, [getPtr width], void)

proc getWidth*(self: TextParagraph): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_width", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getNonWrappedSize*(self: TextParagraph): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_non_wrapped_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getSize*(self: TextParagraph): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getRid*(self: TextParagraph): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getLineRid*(self: TextParagraph; line: int32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_line_rid", 495598643)
  methodbind.ptrcall(self, [getPtr line], RID)

proc getDropcapRid*(self: TextParagraph): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_dropcap_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getRange*(self: TextParagraph): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_range", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc getLineCount*(self: TextParagraph): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_line_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMaxLinesVisible*(self: TextParagraph; maxLinesVisible: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_max_lines_visible", 1286410249)
  methodbind.ptrcall(self, [getPtr maxLinesVisible], void)

proc getMaxLinesVisible*(self: TextParagraph): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_max_lines_visible", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setLineSpacing*(self: TextParagraph; lineSpacing: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "set_line_spacing", 373806689)
  methodbind.ptrcall(self, [getPtr lineSpacing], void)

proc getLineSpacing*(self: TextParagraph): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_line_spacing", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getLineObjects*(self: TextParagraph; line: int32): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_line_objects", 663333327)
  methodbind.ptrcall(self, [getPtr line], Array)

proc getLineObjectRect*(self: TextParagraph; line: int32; key: Variant): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_line_object_rect", 204315017)
  methodbind.ptrcall(self, [getPtr line, getPtr key], Rect2)

proc getLineSize*(self: TextParagraph; line: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_line_size", 2299179447)
  methodbind.ptrcall(self, [getPtr line], Vector2)

proc getLineRange*(self: TextParagraph; line: int32): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_line_range", 880721226)
  methodbind.ptrcall(self, [getPtr line], Vector2i)

proc getLineAscent*(self: TextParagraph; line: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_line_ascent", 2339986948)
  methodbind.ptrcall(self, [getPtr line], Float)

proc getLineDescent*(self: TextParagraph; line: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_line_descent", 2339986948)
  methodbind.ptrcall(self, [getPtr line], Float)

proc getLineWidth*(self: TextParagraph; line: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_line_width", 2339986948)
  methodbind.ptrcall(self, [getPtr line], Float)

proc getLineUnderlinePosition*(self: TextParagraph; line: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_line_underline_position", 2339986948)
  methodbind.ptrcall(self, [getPtr line], Float)

proc getLineUnderlineThickness*(self: TextParagraph; line: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_line_underline_thickness", 2339986948)
  methodbind.ptrcall(self, [getPtr line], Float)

proc getDropcapSize*(self: TextParagraph): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_dropcap_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getDropcapLines*(self: TextParagraph): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "get_dropcap_lines", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc draw*(self: TextParagraph; canvas: RID; pos: Vector2; color: Color = color(1, 1, 1, 1); dcColor: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "draw", 1492808103)
  methodbind.ptrcall(self, [getPtr canvas, getPtr pos, getPtr color, getPtr dcColor, getPtr oversampling], void)

proc drawOutline*(self: TextParagraph; canvas: RID; pos: Vector2; outlineSize: int32 = 1; color: Color = color(1, 1, 1, 1); dcColor: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "draw_outline", 3820500590)
  methodbind.ptrcall(self, [getPtr canvas, getPtr pos, getPtr outlineSize, getPtr color, getPtr dcColor, getPtr oversampling], void)

proc drawLine*(self: TextParagraph; canvas: RID; pos: Vector2; line: int32; color: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "draw_line", 828033758)
  methodbind.ptrcall(self, [getPtr canvas, getPtr pos, getPtr line, getPtr color, getPtr oversampling], void)

proc drawLineOutline*(self: TextParagraph; canvas: RID; pos: Vector2; line: int32; outlineSize: int32 = 1; color: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "draw_line_outline", 2822696703)
  methodbind.ptrcall(self, [getPtr canvas, getPtr pos, getPtr line, getPtr outlineSize, getPtr color, getPtr oversampling], void)

proc drawDropcap*(self: TextParagraph; canvas: RID; pos: Vector2; color: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "draw_dropcap", 3625105422)
  methodbind.ptrcall(self, [getPtr canvas, getPtr pos, getPtr color, getPtr oversampling], void)

proc drawDropcapOutline*(self: TextParagraph; canvas: RID; pos: Vector2; outlineSize: int32 = 1; color: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "draw_dropcap_outline", 2592177763)
  methodbind.ptrcall(self, [getPtr canvas, getPtr pos, getPtr outlineSize, getPtr color, getPtr oversampling], void)

proc hitTest*(self: TextParagraph; coords: Vector2): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextParagraph, "hit_test", 3820158470)
  methodbind.ptrcall(self, [getPtr coords], int32)

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

template lineSpacing*(self: TextParagraph): untyped = self.getLineSpacing()
template `lineSpacing=`*(self: TextParagraph; value) = self.setLineSpacing(value)

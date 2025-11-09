{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(TextLine, RefCounted)

proc clear*(self: TextLine): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setDirection*(self: TextLine; direction: TextServer_Direction): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "set_direction", 1418190634)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getDirection*(self: TextLine): TextServer_Direction =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_direction", 2516697328)
  methodbind.ptrcall(self, [], TextServer_Direction)

proc getInferredDirection*(self: TextLine): TextServer_Direction =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_inferred_direction", 2516697328)
  methodbind.ptrcall(self, [], TextServer_Direction)

proc setOrientation*(self: TextLine; orientation: TextServer_Orientation): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "set_orientation", 42823726)
  methodbind.ptrcall(self, [getPtr orientation], void)

proc getOrientation*(self: TextLine): TextServer_Orientation =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_orientation", 175768116)
  methodbind.ptrcall(self, [], TextServer_Orientation)

proc setPreserveInvalid*(self: TextLine; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "set_preserve_invalid", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getPreserveInvalid*(self: TextLine): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_preserve_invalid", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPreserveControl*(self: TextLine; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "set_preserve_control", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getPreserveControl*(self: TextLine): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_preserve_control", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setBidiOverride*(self: TextLine; override: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "set_bidi_override", 381264803)
  methodbind.ptrcall(self, [getPtr override], void)

proc addString*(self: TextLine; text: String; font: gdref Font; fontSize: int32; language: String = newGdString(); meta: Variant = default(Variant)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "add_string", 621426851)
  methodbind.ptrcall(self, [getPtr text, getPtr font, getPtr fontSize, getPtr language, getPtr meta], bool)

proc addObject*(self: TextLine; key: Variant; size: Vector2; inlineAlign: InlineAlignment = inlineAlignmentCenter; length: int32 = 1; baseline: Float = 0.0): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "add_object", 1316529304)
  methodbind.ptrcall(self, [getPtr key, getPtr size, getPtr inlineAlign, getPtr length, getPtr baseline], bool)

proc resizeObject*(self: TextLine; key: Variant; size: Vector2; inlineAlign: InlineAlignment = inlineAlignmentCenter; baseline: Float = 0.0): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "resize_object", 2095776372)
  methodbind.ptrcall(self, [getPtr key, getPtr size, getPtr inlineAlign, getPtr baseline], bool)

proc setWidth*(self: TextLine; width: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "set_width", 373806689)
  methodbind.ptrcall(self, [getPtr width], void)

proc getWidth*(self: TextLine): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_width", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHorizontalAlignment*(self: TextLine; alignment: HorizontalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "set_horizontal_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getHorizontalAlignment*(self: TextLine): HorizontalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_horizontal_alignment", 341400642)
  methodbind.ptrcall(self, [], HorizontalAlignment)

proc tabAlign*(self: TextLine; tabStops: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "tab_align", 2899603908)
  methodbind.ptrcall(self, [getPtr tabStops], void)

proc setFlags*(self: TextLine; flags: set[TextServer_JustificationFlag]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "set_flags", 2877345813)
  methodbind.ptrcall(self, [getPtr flags], void)

proc getFlags*(self: TextLine): set[TextServer_JustificationFlag] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_flags", 1583363614)
  methodbind.ptrcall(self, [], set[TextServer_JustificationFlag])

proc setTextOverrunBehavior*(self: TextLine; overrunBehavior: TextServer_OverrunBehavior): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "set_text_overrun_behavior", 1008890932)
  methodbind.ptrcall(self, [getPtr overrunBehavior], void)

proc getTextOverrunBehavior*(self: TextLine): TextServer_OverrunBehavior =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_text_overrun_behavior", 3779142101)
  methodbind.ptrcall(self, [], TextServer_OverrunBehavior)

proc setEllipsisChar*(self: TextLine; char: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "set_ellipsis_char", 83702148)
  methodbind.ptrcall(self, [getPtr char], void)

proc getEllipsisChar*(self: TextLine): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_ellipsis_char", 201670096)
  methodbind.ptrcall(self, [], String)

proc getObjects*(self: TextLine): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_objects", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc getObjectRect*(self: TextLine; key: Variant): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_object_rect", 1742700391)
  methodbind.ptrcall(self, [getPtr key], Rect2)

proc getSize*(self: TextLine): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getRid*(self: TextLine): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getLineAscent*(self: TextLine): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_line_ascent", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getLineDescent*(self: TextLine): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_line_descent", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getLineWidth*(self: TextLine): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_line_width", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getLineUnderlinePosition*(self: TextLine): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_line_underline_position", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getLineUnderlineThickness*(self: TextLine): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "get_line_underline_thickness", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc draw*(self: TextLine; canvas: RID; pos: Vector2; color: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "draw", 3625105422)
  methodbind.ptrcall(self, [getPtr canvas, getPtr pos, getPtr color, getPtr oversampling], void)

proc drawOutline*(self: TextLine; canvas: RID; pos: Vector2; outlineSize: int32 = 1; color: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "draw_outline", 2592177763)
  methodbind.ptrcall(self, [getPtr canvas, getPtr pos, getPtr outlineSize, getPtr color, getPtr oversampling], void)

proc hitTest*(self: TextLine; coords: Float): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextLine, "hit_test", 2401831903)
  methodbind.ptrcall(self, [getPtr coords], int32)

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

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

expandOnClassImported(TextMesh, PrimitiveMesh)

proc setHorizontalAlignment*(self: TextMesh; alignment: HorizontalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_horizontal_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getHorizontalAlignment*(self: TextMesh): HorizontalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_horizontal_alignment", 341400642)
  methodbind.ptrcall(self, [], HorizontalAlignment)

proc setVerticalAlignment*(self: TextMesh; alignment: VerticalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_vertical_alignment", 1796458609)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getVerticalAlignment*(self: TextMesh): VerticalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_vertical_alignment", 3274884059)
  methodbind.ptrcall(self, [], VerticalAlignment)

proc setText*(self: TextMesh; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_text", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getText*(self: TextMesh): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc setFont*(self: TextMesh; font: gdref Font): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_font", 1262170328)
  methodbind.ptrcall(self, [getPtr font], void)

proc getFont*(self: TextMesh): gdref Font =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_font", 3229501585)
  methodbind.ptrcall(self, [], gdref Font)

proc setFontSize*(self: TextMesh; fontSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_font_size", 1286410249)
  methodbind.ptrcall(self, [getPtr fontSize], void)

proc getFontSize*(self: TextMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_font_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setLineSpacing*(self: TextMesh; lineSpacing: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_line_spacing", 373806689)
  methodbind.ptrcall(self, [getPtr lineSpacing], void)

proc getLineSpacing*(self: TextMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_line_spacing", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAutowrapMode*(self: TextMesh; autowrapMode: TextServer_AutowrapMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_autowrap_mode", 3289138044)
  methodbind.ptrcall(self, [getPtr autowrapMode], void)

proc getAutowrapMode*(self: TextMesh): TextServer_AutowrapMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_autowrap_mode", 1549071663)
  methodbind.ptrcall(self, [], TextServer_AutowrapMode)

proc setJustificationFlags*(self: TextMesh; justificationFlags: set[TextServer_JustificationFlag]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_justification_flags", 2877345813)
  methodbind.ptrcall(self, [getPtr justificationFlags], void)

proc getJustificationFlags*(self: TextMesh): set[TextServer_JustificationFlag] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_justification_flags", 1583363614)
  methodbind.ptrcall(self, [], set[TextServer_JustificationFlag])

proc setDepth*(self: TextMesh; depth: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_depth", 373806689)
  methodbind.ptrcall(self, [getPtr depth], void)

proc getDepth*(self: TextMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_depth", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setWidth*(self: TextMesh; width: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_width", 373806689)
  methodbind.ptrcall(self, [getPtr width], void)

proc getWidth*(self: TextMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_width", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPixelSize*(self: TextMesh; pixelSize: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_pixel_size", 373806689)
  methodbind.ptrcall(self, [getPtr pixelSize], void)

proc getPixelSize*(self: TextMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_pixel_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setOffset*(self: TextMesh; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getOffset*(self: TextMesh): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setCurveStep*(self: TextMesh; curveStep: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_curve_step", 373806689)
  methodbind.ptrcall(self, [getPtr curveStep], void)

proc getCurveStep*(self: TextMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_curve_step", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTextDirection*(self: TextMesh; direction: TextServer_Direction): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_text_direction", 1418190634)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getTextDirection*(self: TextMesh): TextServer_Direction =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_text_direction", 2516697328)
  methodbind.ptrcall(self, [], TextServer_Direction)

proc setLanguage*(self: TextMesh; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language], void)

proc getLanguage*(self: TextMesh): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_language", 201670096)
  methodbind.ptrcall(self, [], String)

proc setStructuredTextBidiOverride*(self: TextMesh; parser: TextServer_StructuredTextParser): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_structured_text_bidi_override", 55961453)
  methodbind.ptrcall(self, [getPtr parser], void)

proc getStructuredTextBidiOverride*(self: TextMesh): TextServer_StructuredTextParser =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_structured_text_bidi_override", 3385126229)
  methodbind.ptrcall(self, [], TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: TextMesh; args: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_structured_text_bidi_override_options", 381264803)
  methodbind.ptrcall(self, [getPtr args], void)

proc getStructuredTextBidiOverrideOptions*(self: TextMesh): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "get_structured_text_bidi_override_options", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc setUppercase*(self: TextMesh; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "set_uppercase", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUppercase*(self: TextMesh): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextMesh, "is_uppercase", 36873697)
  methodbind.ptrcall(self, [], bool)

template text*(self: TextMesh): untyped = self.getText()
template `text=`*(self: TextMesh; value) = self.setText(value)

template font*(self: TextMesh): untyped = self.getFont()
template `font=`*(self: TextMesh; value) = self.setFont(value)

template fontSize*(self: TextMesh): untyped = self.getFontSize()
template `fontSize=`*(self: TextMesh; value) = self.setFontSize(value)

template horizontalAlignment*(self: TextMesh): untyped = self.getHorizontalAlignment()
template `horizontalAlignment=`*(self: TextMesh; value) = self.setHorizontalAlignment(value)

template verticalAlignment*(self: TextMesh): untyped = self.getVerticalAlignment()
template `verticalAlignment=`*(self: TextMesh; value) = self.setVerticalAlignment(value)

template uppercase*(self: TextMesh): untyped = self.isUppercase()
template `uppercase=`*(self: TextMesh; value) = self.setUppercase(value)

template lineSpacing*(self: TextMesh): untyped = self.getLineSpacing()
template `lineSpacing=`*(self: TextMesh; value) = self.setLineSpacing(value)

template autowrapMode*(self: TextMesh): untyped = self.getAutowrapMode()
template `autowrapMode=`*(self: TextMesh; value) = self.setAutowrapMode(value)

template justificationFlags*(self: TextMesh): untyped = self.getJustificationFlags()
template `justificationFlags=`*(self: TextMesh; value) = self.setJustificationFlags(value)

template pixelSize*(self: TextMesh): untyped = self.getPixelSize()
template `pixelSize=`*(self: TextMesh; value) = self.setPixelSize(value)

template curveStep*(self: TextMesh): untyped = self.getCurveStep()
template `curveStep=`*(self: TextMesh; value) = self.setCurveStep(value)

template depth*(self: TextMesh): untyped = self.getDepth()
template `depth=`*(self: TextMesh; value) = self.setDepth(value)

template width*(self: TextMesh): untyped = self.getWidth()
template `width=`*(self: TextMesh; value) = self.setWidth(value)

template offset*(self: TextMesh): untyped = self.getOffset()
template `offset=`*(self: TextMesh; value) = self.setOffset(value)

template textDirection*(self: TextMesh): untyped = self.getTextDirection()
template `textDirection=`*(self: TextMesh; value) = self.setTextDirection(value)

template language*(self: TextMesh): untyped = self.getLanguage()
template `language=`*(self: TextMesh; value) = self.setLanguage(value)

template structuredTextBidiOverride*(self: TextMesh): untyped = self.getStructuredTextBidiOverride()
template `structuredTextBidiOverride=`*(self: TextMesh; value) = self.setStructuredTextBidiOverride(value)

template structuredTextBidiOverrideOptions*(self: TextMesh): untyped = self.getStructuredTextBidiOverrideOptions()
template `structuredTextBidiOverrideOptions=`*(self: TextMesh; value) = self.setStructuredTextBidiOverrideOptions(value)

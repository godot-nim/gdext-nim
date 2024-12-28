{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

proc setHorizontalAlignment*(self: TextMesh; alignment: HorizontalAlignment): void =
  expandMethodBind(className TextMesh, "set_horizontal_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment])

proc getHorizontalAlignment*(self: TextMesh): HorizontalAlignment =
  expandMethodBind(className TextMesh, "get_horizontal_alignment", 341400642)
  var ret: encoded HorizontalAlignment
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(HorizontalAlignment)

proc setVerticalAlignment*(self: TextMesh; alignment: VerticalAlignment): void =
  expandMethodBind(className TextMesh, "set_vertical_alignment", 1796458609)
  methodbind.ptrcall(self, [getPtr alignment])

proc getVerticalAlignment*(self: TextMesh): VerticalAlignment =
  expandMethodBind(className TextMesh, "get_vertical_alignment", 3274884059)
  var ret: encoded VerticalAlignment
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VerticalAlignment)

proc setText*(self: TextMesh; text: String): void =
  expandMethodBind(className TextMesh, "set_text", 83702148)
  methodbind.ptrcall(self, [getPtr text])

proc getText*(self: TextMesh): String =
  expandMethodBind(className TextMesh, "get_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setFont*(self: TextMesh; font: gdref Font): void =
  expandMethodBind(className TextMesh, "set_font", 1262170328)
  methodbind.ptrcall(self, [getPtr font])

proc getFont*(self: TextMesh): gdref Font =
  expandMethodBind(className TextMesh, "get_font", 3229501585)
  var ret: encoded gdref Font
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Font)

proc setFontSize*(self: TextMesh; fontSize: int32): void =
  expandMethodBind(className TextMesh, "set_font_size", 1286410249)
  methodbind.ptrcall(self, [getPtr fontSize])

proc getFontSize*(self: TextMesh): int32 =
  expandMethodBind(className TextMesh, "get_font_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setLineSpacing*(self: TextMesh; lineSpacing: Float): void =
  expandMethodBind(className TextMesh, "set_line_spacing", 373806689)
  methodbind.ptrcall(self, [getPtr lineSpacing])

proc getLineSpacing*(self: TextMesh): Float =
  expandMethodBind(className TextMesh, "get_line_spacing", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setAutowrapMode*(self: TextMesh; autowrapMode: TextServer_AutowrapMode): void =
  expandMethodBind(className TextMesh, "set_autowrap_mode", 3289138044)
  methodbind.ptrcall(self, [getPtr autowrapMode])

proc getAutowrapMode*(self: TextMesh): TextServer_AutowrapMode =
  expandMethodBind(className TextMesh, "get_autowrap_mode", 1549071663)
  var ret: encoded TextServer_AutowrapMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_AutowrapMode)

proc setJustificationFlags*(self: TextMesh; justificationFlags: set[TextServer_JustificationFlag]): void =
  expandMethodBind(className TextMesh, "set_justification_flags", 2877345813)
  methodbind.ptrcall(self, [getPtr justificationFlags])

proc getJustificationFlags*(self: TextMesh): set[TextServer_JustificationFlag] =
  expandMethodBind(className TextMesh, "get_justification_flags", 1583363614)
  var ret: encoded set[TextServer_JustificationFlag]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(set[TextServer_JustificationFlag])

proc setDepth*(self: TextMesh; depth: Float): void =
  expandMethodBind(className TextMesh, "set_depth", 373806689)
  methodbind.ptrcall(self, [getPtr depth])

proc getDepth*(self: TextMesh): Float =
  expandMethodBind(className TextMesh, "get_depth", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setWidth*(self: TextMesh; width: Float): void =
  expandMethodBind(className TextMesh, "set_width", 373806689)
  methodbind.ptrcall(self, [getPtr width])

proc getWidth*(self: TextMesh): Float =
  expandMethodBind(className TextMesh, "get_width", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPixelSize*(self: TextMesh; pixelSize: Float): void =
  expandMethodBind(className TextMesh, "set_pixel_size", 373806689)
  methodbind.ptrcall(self, [getPtr pixelSize])

proc getPixelSize*(self: TextMesh): Float =
  expandMethodBind(className TextMesh, "get_pixel_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setOffset*(self: TextMesh; offset: Vector2): void =
  expandMethodBind(className TextMesh, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset])

proc getOffset*(self: TextMesh): Vector2 =
  expandMethodBind(className TextMesh, "get_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setCurveStep*(self: TextMesh; curveStep: Float): void =
  expandMethodBind(className TextMesh, "set_curve_step", 373806689)
  methodbind.ptrcall(self, [getPtr curveStep])

proc getCurveStep*(self: TextMesh): Float =
  expandMethodBind(className TextMesh, "get_curve_step", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setTextDirection*(self: TextMesh; direction: TextServer_Direction): void =
  expandMethodBind(className TextMesh, "set_text_direction", 1418190634)
  methodbind.ptrcall(self, [getPtr direction])

proc getTextDirection*(self: TextMesh): TextServer_Direction =
  expandMethodBind(className TextMesh, "get_text_direction", 2516697328)
  var ret: encoded TextServer_Direction
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_Direction)

proc setLanguage*(self: TextMesh; language: String): void =
  expandMethodBind(className TextMesh, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language])

proc getLanguage*(self: TextMesh): String =
  expandMethodBind(className TextMesh, "get_language", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setStructuredTextBidiOverride*(self: TextMesh; parser: TextServer_StructuredTextParser): void =
  expandMethodBind(className TextMesh, "set_structured_text_bidi_override", 55961453)
  methodbind.ptrcall(self, [getPtr parser])

proc getStructuredTextBidiOverride*(self: TextMesh): TextServer_StructuredTextParser =
  expandMethodBind(className TextMesh, "get_structured_text_bidi_override", 3385126229)
  var ret: encoded TextServer_StructuredTextParser
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: TextMesh; args: Array): void =
  expandMethodBind(className TextMesh, "set_structured_text_bidi_override_options", 381264803)
  methodbind.ptrcall(self, [getPtr args])

proc getStructuredTextBidiOverrideOptions*(self: TextMesh): Array =
  expandMethodBind(className TextMesh, "get_structured_text_bidi_override_options", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

proc setUppercase*(self: TextMesh; enable: bool): void =
  expandMethodBind(className TextMesh, "set_uppercase", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isUppercase*(self: TextMesh): bool =
  expandMethodBind(className TextMesh, "is_uppercase", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

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

const TextMesh_vmap =
  PrimitiveMesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextMesh]): Table[string, string] = TextMesh_vmap
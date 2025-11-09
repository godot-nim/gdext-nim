{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(Label, Control)

proc setHorizontalAlignment*(self: Label; alignment: HorizontalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_horizontal_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getHorizontalAlignment*(self: Label): HorizontalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_horizontal_alignment", 341400642)
  methodbind.ptrcall(self, [], HorizontalAlignment)

proc setVerticalAlignment*(self: Label; alignment: VerticalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_vertical_alignment", 1796458609)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getVerticalAlignment*(self: Label): VerticalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_vertical_alignment", 3274884059)
  methodbind.ptrcall(self, [], VerticalAlignment)

proc setText*(self: Label; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_text", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getText*(self: Label): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc setLabelSettings*(self: Label; settings: gdref LabelSettings): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_label_settings", 1030653839)
  methodbind.ptrcall(self, [getPtr settings], void)

proc getLabelSettings*(self: Label): gdref LabelSettings =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_label_settings", 826676056)
  methodbind.ptrcall(self, [], gdref LabelSettings)

proc setTextDirection*(self: Label; direction: Control_TextDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_text_direction", 119160795)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getTextDirection*(self: Label): Control_TextDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_text_direction", 797257663)
  methodbind.ptrcall(self, [], Control_TextDirection)

proc setLanguage*(self: Label; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language], void)

proc getLanguage*(self: Label): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_language", 201670096)
  methodbind.ptrcall(self, [], String)

proc setParagraphSeparator*(self: Label; paragraphSeparator: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_paragraph_separator", 83702148)
  methodbind.ptrcall(self, [getPtr paragraphSeparator], void)

proc getParagraphSeparator*(self: Label): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_paragraph_separator", 201670096)
  methodbind.ptrcall(self, [], String)

proc setAutowrapMode*(self: Label; autowrapMode: TextServer_AutowrapMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_autowrap_mode", 3289138044)
  methodbind.ptrcall(self, [getPtr autowrapMode], void)

proc getAutowrapMode*(self: Label): TextServer_AutowrapMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_autowrap_mode", 1549071663)
  methodbind.ptrcall(self, [], TextServer_AutowrapMode)

proc setAutowrapTrimFlags*(self: Label; autowrapTrimFlags: set[TextServer_LineBreakFlag]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_autowrap_trim_flags", 2809697122)
  methodbind.ptrcall(self, [getPtr autowrapTrimFlags], void)

proc getAutowrapTrimFlags*(self: Label): set[TextServer_LineBreakFlag] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_autowrap_trim_flags", 2340632602)
  methodbind.ptrcall(self, [], set[TextServer_LineBreakFlag])

proc setJustificationFlags*(self: Label; justificationFlags: set[TextServer_JustificationFlag]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_justification_flags", 2877345813)
  methodbind.ptrcall(self, [getPtr justificationFlags], void)

proc getJustificationFlags*(self: Label): set[TextServer_JustificationFlag] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_justification_flags", 1583363614)
  methodbind.ptrcall(self, [], set[TextServer_JustificationFlag])

proc setClipText*(self: Label; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_clip_text", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isClippingText*(self: Label): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "is_clipping_text", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTabStops*(self: Label; tabStops: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_tab_stops", 2899603908)
  methodbind.ptrcall(self, [getPtr tabStops], void)

proc getTabStops*(self: Label): PackedFloat32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_tab_stops", 675695659)
  methodbind.ptrcall(self, [], PackedFloat32Array)

proc setTextOverrunBehavior*(self: Label; overrunBehavior: TextServer_OverrunBehavior): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_text_overrun_behavior", 1008890932)
  methodbind.ptrcall(self, [getPtr overrunBehavior], void)

proc getTextOverrunBehavior*(self: Label): TextServer_OverrunBehavior =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_text_overrun_behavior", 3779142101)
  methodbind.ptrcall(self, [], TextServer_OverrunBehavior)

proc setEllipsisChar*(self: Label; char: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_ellipsis_char", 83702148)
  methodbind.ptrcall(self, [getPtr char], void)

proc getEllipsisChar*(self: Label): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_ellipsis_char", 201670096)
  methodbind.ptrcall(self, [], String)

proc setUppercase*(self: Label; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_uppercase", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUppercase*(self: Label): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "is_uppercase", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getLineHeight*(self: Label; line: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_line_height", 181039630)
  methodbind.ptrcall(self, [getPtr line], int32)

proc getLineCount*(self: Label): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_line_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getVisibleLineCount*(self: Label): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_visible_line_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getTotalCharacterCount*(self: Label): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_total_character_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setVisibleCharacters*(self: Label; amount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_visible_characters", 1286410249)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getVisibleCharacters*(self: Label): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_visible_characters", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getVisibleCharactersBehavior*(self: Label): TextServer_VisibleCharactersBehavior =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_visible_characters_behavior", 258789322)
  methodbind.ptrcall(self, [], TextServer_VisibleCharactersBehavior)

proc setVisibleCharactersBehavior*(self: Label; behavior: TextServer_VisibleCharactersBehavior): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_visible_characters_behavior", 3383839701)
  methodbind.ptrcall(self, [getPtr behavior], void)

proc setVisibleRatio*(self: Label; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_visible_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc getVisibleRatio*(self: Label): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_visible_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setLinesSkipped*(self: Label; linesSkipped: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_lines_skipped", 1286410249)
  methodbind.ptrcall(self, [getPtr linesSkipped], void)

proc getLinesSkipped*(self: Label): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_lines_skipped", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMaxLinesVisible*(self: Label; linesVisible: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_max_lines_visible", 1286410249)
  methodbind.ptrcall(self, [getPtr linesVisible], void)

proc getMaxLinesVisible*(self: Label): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_max_lines_visible", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setStructuredTextBidiOverride*(self: Label; parser: TextServer_StructuredTextParser): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_structured_text_bidi_override", 55961453)
  methodbind.ptrcall(self, [getPtr parser], void)

proc getStructuredTextBidiOverride*(self: Label): TextServer_StructuredTextParser =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_structured_text_bidi_override", 3385126229)
  methodbind.ptrcall(self, [], TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: Label; args: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "set_structured_text_bidi_override_options", 381264803)
  methodbind.ptrcall(self, [getPtr args], void)

proc getStructuredTextBidiOverrideOptions*(self: Label): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_structured_text_bidi_override_options", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc getCharacterBounds*(self: Label; pos: int32): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Label, "get_character_bounds", 3327874267)
  methodbind.ptrcall(self, [getPtr pos], Rect2)

template text*(self: Label): untyped = self.getText()
template `text=`*(self: Label; value) = self.setText(value)

template labelSettings*(self: Label): untyped = self.getLabelSettings()
template `labelSettings=`*(self: Label; value) = self.setLabelSettings(value)

template horizontalAlignment*(self: Label): untyped = self.getHorizontalAlignment()
template `horizontalAlignment=`*(self: Label; value) = self.setHorizontalAlignment(value)

template verticalAlignment*(self: Label): untyped = self.getVerticalAlignment()
template `verticalAlignment=`*(self: Label; value) = self.setVerticalAlignment(value)

template autowrapMode*(self: Label): untyped = self.getAutowrapMode()
template `autowrapMode=`*(self: Label; value) = self.setAutowrapMode(value)

template autowrapTrimFlags*(self: Label): untyped = self.getAutowrapTrimFlags()
template `autowrapTrimFlags=`*(self: Label; value) = self.setAutowrapTrimFlags(value)

template justificationFlags*(self: Label): untyped = self.getJustificationFlags()
template `justificationFlags=`*(self: Label; value) = self.setJustificationFlags(value)

template paragraphSeparator*(self: Label): untyped = self.getParagraphSeparator()
template `paragraphSeparator=`*(self: Label; value) = self.setParagraphSeparator(value)

template clipText*(self: Label): untyped = self.isClippingText()
template `clipText=`*(self: Label; value) = self.setClipText(value)

template textOverrunBehavior*(self: Label): untyped = self.getTextOverrunBehavior()
template `textOverrunBehavior=`*(self: Label; value) = self.setTextOverrunBehavior(value)

template ellipsisChar*(self: Label): untyped = self.getEllipsisChar()
template `ellipsisChar=`*(self: Label; value) = self.setEllipsisChar(value)

template uppercase*(self: Label): untyped = self.isUppercase()
template `uppercase=`*(self: Label; value) = self.setUppercase(value)

template tabStops*(self: Label): untyped = self.getTabStops()
template `tabStops=`*(self: Label; value) = self.setTabStops(value)

template linesSkipped*(self: Label): untyped = self.getLinesSkipped()
template `linesSkipped=`*(self: Label; value) = self.setLinesSkipped(value)

template maxLinesVisible*(self: Label): untyped = self.getMaxLinesVisible()
template `maxLinesVisible=`*(self: Label; value) = self.setMaxLinesVisible(value)

template visibleCharacters*(self: Label): untyped = self.getVisibleCharacters()
template `visibleCharacters=`*(self: Label; value) = self.setVisibleCharacters(value)

template visibleCharactersBehavior*(self: Label): untyped = self.getVisibleCharactersBehavior()
template `visibleCharactersBehavior=`*(self: Label; value) = self.setVisibleCharactersBehavior(value)

template visibleRatio*(self: Label): untyped = self.getVisibleRatio()
template `visibleRatio=`*(self: Label; value) = self.setVisibleRatio(value)

template textDirection*(self: Label): untyped = self.getTextDirection()
template `textDirection=`*(self: Label; value) = self.setTextDirection(value)

template language*(self: Label): untyped = self.getLanguage()
template `language=`*(self: Label; value) = self.setLanguage(value)

template structuredTextBidiOverride*(self: Label): untyped = self.getStructuredTextBidiOverride()
template `structuredTextBidiOverride=`*(self: Label; value) = self.setStructuredTextBidiOverride(value)

template structuredTextBidiOverrideOptions*(self: Label): untyped = self.getStructuredTextBidiOverrideOptions()
template `structuredTextBidiOverrideOptions=`*(self: Label; value) = self.setStructuredTextBidiOverrideOptions(value)

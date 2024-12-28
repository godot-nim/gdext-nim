{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

proc setHorizontalAlignment*(self: Label; alignment: HorizontalAlignment): void =
  expandMethodBind(className Label, "set_horizontal_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment])

proc getHorizontalAlignment*(self: Label): HorizontalAlignment =
  expandMethodBind(className Label, "get_horizontal_alignment", 341400642)
  var ret: encoded HorizontalAlignment
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(HorizontalAlignment)

proc setVerticalAlignment*(self: Label; alignment: VerticalAlignment): void =
  expandMethodBind(className Label, "set_vertical_alignment", 1796458609)
  methodbind.ptrcall(self, [getPtr alignment])

proc getVerticalAlignment*(self: Label): VerticalAlignment =
  expandMethodBind(className Label, "get_vertical_alignment", 3274884059)
  var ret: encoded VerticalAlignment
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VerticalAlignment)

proc setText*(self: Label; text: String): void =
  expandMethodBind(className Label, "set_text", 83702148)
  methodbind.ptrcall(self, [getPtr text])

proc getText*(self: Label): String =
  expandMethodBind(className Label, "get_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setLabelSettings*(self: Label; settings: gdref LabelSettings): void =
  expandMethodBind(className Label, "set_label_settings", 1030653839)
  methodbind.ptrcall(self, [getPtr settings])

proc getLabelSettings*(self: Label): gdref LabelSettings =
  expandMethodBind(className Label, "get_label_settings", 826676056)
  var ret: encoded gdref LabelSettings
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref LabelSettings)

proc setTextDirection*(self: Label; direction: Control_TextDirection): void =
  expandMethodBind(className Label, "set_text_direction", 119160795)
  methodbind.ptrcall(self, [getPtr direction])

proc getTextDirection*(self: Label): Control_TextDirection =
  expandMethodBind(className Label, "get_text_direction", 797257663)
  var ret: encoded Control_TextDirection
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Control_TextDirection)

proc setLanguage*(self: Label; language: String): void =
  expandMethodBind(className Label, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language])

proc getLanguage*(self: Label): String =
  expandMethodBind(className Label, "get_language", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setAutowrapMode*(self: Label; autowrapMode: TextServer_AutowrapMode): void =
  expandMethodBind(className Label, "set_autowrap_mode", 3289138044)
  methodbind.ptrcall(self, [getPtr autowrapMode])

proc getAutowrapMode*(self: Label): TextServer_AutowrapMode =
  expandMethodBind(className Label, "get_autowrap_mode", 1549071663)
  var ret: encoded TextServer_AutowrapMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_AutowrapMode)

proc setJustificationFlags*(self: Label; justificationFlags: set[TextServer_JustificationFlag]): void =
  expandMethodBind(className Label, "set_justification_flags", 2877345813)
  methodbind.ptrcall(self, [getPtr justificationFlags])

proc getJustificationFlags*(self: Label): set[TextServer_JustificationFlag] =
  expandMethodBind(className Label, "get_justification_flags", 1583363614)
  var ret: encoded set[TextServer_JustificationFlag]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(set[TextServer_JustificationFlag])

proc setClipText*(self: Label; enable: bool): void =
  expandMethodBind(className Label, "set_clip_text", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isClippingText*(self: Label): bool =
  expandMethodBind(className Label, "is_clipping_text", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTabStops*(self: Label; tabStops: PackedFloat32Array): void =
  expandMethodBind(className Label, "set_tab_stops", 2899603908)
  methodbind.ptrcall(self, [getPtr tabStops])

proc getTabStops*(self: Label): PackedFloat32Array =
  expandMethodBind(className Label, "get_tab_stops", 675695659)
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc setTextOverrunBehavior*(self: Label; overrunBehavior: TextServer_OverrunBehavior): void =
  expandMethodBind(className Label, "set_text_overrun_behavior", 1008890932)
  methodbind.ptrcall(self, [getPtr overrunBehavior])

proc getTextOverrunBehavior*(self: Label): TextServer_OverrunBehavior =
  expandMethodBind(className Label, "get_text_overrun_behavior", 3779142101)
  var ret: encoded TextServer_OverrunBehavior
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_OverrunBehavior)

proc setEllipsisChar*(self: Label; char: String): void =
  expandMethodBind(className Label, "set_ellipsis_char", 83702148)
  methodbind.ptrcall(self, [getPtr char])

proc getEllipsisChar*(self: Label): String =
  expandMethodBind(className Label, "get_ellipsis_char", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setUppercase*(self: Label; enable: bool): void =
  expandMethodBind(className Label, "set_uppercase", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isUppercase*(self: Label): bool =
  expandMethodBind(className Label, "is_uppercase", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getLineHeight*(self: Label; line: int32 = -1): int32 =
  expandMethodBind(className Label, "get_line_height", 181039630)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr line], addr ret)
  (addr ret).decode_result(int32)

proc getLineCount*(self: Label): int32 =
  expandMethodBind(className Label, "get_line_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getVisibleLineCount*(self: Label): int32 =
  expandMethodBind(className Label, "get_visible_line_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getTotalCharacterCount*(self: Label): int32 =
  expandMethodBind(className Label, "get_total_character_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setVisibleCharacters*(self: Label; amount: int32): void =
  expandMethodBind(className Label, "set_visible_characters", 1286410249)
  methodbind.ptrcall(self, [getPtr amount])

proc getVisibleCharacters*(self: Label): int32 =
  expandMethodBind(className Label, "get_visible_characters", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getVisibleCharactersBehavior*(self: Label): TextServer_VisibleCharactersBehavior =
  expandMethodBind(className Label, "get_visible_characters_behavior", 258789322)
  var ret: encoded TextServer_VisibleCharactersBehavior
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_VisibleCharactersBehavior)

proc setVisibleCharactersBehavior*(self: Label; behavior: TextServer_VisibleCharactersBehavior): void =
  expandMethodBind(className Label, "set_visible_characters_behavior", 3383839701)
  methodbind.ptrcall(self, [getPtr behavior])

proc setVisibleRatio*(self: Label; ratio: Float): void =
  expandMethodBind(className Label, "set_visible_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio])

proc getVisibleRatio*(self: Label): Float =
  expandMethodBind(className Label, "get_visible_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setLinesSkipped*(self: Label; linesSkipped: int32): void =
  expandMethodBind(className Label, "set_lines_skipped", 1286410249)
  methodbind.ptrcall(self, [getPtr linesSkipped])

proc getLinesSkipped*(self: Label): int32 =
  expandMethodBind(className Label, "get_lines_skipped", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setMaxLinesVisible*(self: Label; linesVisible: int32): void =
  expandMethodBind(className Label, "set_max_lines_visible", 1286410249)
  methodbind.ptrcall(self, [getPtr linesVisible])

proc getMaxLinesVisible*(self: Label): int32 =
  expandMethodBind(className Label, "get_max_lines_visible", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setStructuredTextBidiOverride*(self: Label; parser: TextServer_StructuredTextParser): void =
  expandMethodBind(className Label, "set_structured_text_bidi_override", 55961453)
  methodbind.ptrcall(self, [getPtr parser])

proc getStructuredTextBidiOverride*(self: Label): TextServer_StructuredTextParser =
  expandMethodBind(className Label, "get_structured_text_bidi_override", 3385126229)
  var ret: encoded TextServer_StructuredTextParser
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: Label; args: Array): void =
  expandMethodBind(className Label, "set_structured_text_bidi_override_options", 381264803)
  methodbind.ptrcall(self, [getPtr args])

proc getStructuredTextBidiOverrideOptions*(self: Label): Array =
  expandMethodBind(className Label, "get_structured_text_bidi_override_options", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

proc getCharacterBounds*(self: Label; pos: int32): Rect2 =
  expandMethodBind(className Label, "get_character_bounds", 3327874267)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [getPtr pos], addr ret)
  (addr ret).decode_result(Rect2)

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

template justificationFlags*(self: Label): untyped = self.getJustificationFlags()
template `justificationFlags=`*(self: Label; value) = self.setJustificationFlags(value)

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

const Label_vmap =
  Control.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Label]): Table[string, string] = Label_vmap
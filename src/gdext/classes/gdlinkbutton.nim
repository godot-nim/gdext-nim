{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbasebutton; export gdbasebutton

proc setText*(self: LinkButton; text: String): void =
  expandMethodBind(className LinkButton, "set_text", 83702148)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc getText*(self: LinkButton): String =
  expandMethodBind(className LinkButton, "get_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setTextDirection*(self: LinkButton; direction: Control_TextDirection): void =
  expandMethodBind(className LinkButton, "set_text_direction", 119160795)
  var `?param` = [getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextDirection*(self: LinkButton): Control_TextDirection =
  expandMethodBind(className LinkButton, "get_text_direction", 797257663)
  var ret: encoded Control_TextDirection
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control_TextDirection)

proc setLanguage*(self: LinkButton; language: String): void =
  expandMethodBind(className LinkButton, "set_language", 83702148)
  var `?param` = [getPtr language]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLanguage*(self: LinkButton): String =
  expandMethodBind(className LinkButton, "get_language", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setUri*(self: LinkButton; uri: String): void =
  expandMethodBind(className LinkButton, "set_uri", 83702148)
  var `?param` = [getPtr uri]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUri*(self: LinkButton): String =
  expandMethodBind(className LinkButton, "get_uri", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setUnderlineMode*(self: LinkButton; underlineMode: LinkButton_UnderlineMode): void =
  expandMethodBind(className LinkButton, "set_underline_mode", 4032947085)
  var `?param` = [getPtr underlineMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUnderlineMode*(self: LinkButton): LinkButton_UnderlineMode =
  expandMethodBind(className LinkButton, "get_underline_mode", 568343738)
  var ret: encoded LinkButton_UnderlineMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(LinkButton_UnderlineMode)

proc setStructuredTextBidiOverride*(self: LinkButton; parser: TextServer_StructuredTextParser): void =
  expandMethodBind(className LinkButton, "set_structured_text_bidi_override", 55961453)
  var `?param` = [getPtr parser]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStructuredTextBidiOverride*(self: LinkButton): TextServer_StructuredTextParser =
  expandMethodBind(className LinkButton, "get_structured_text_bidi_override", 3385126229)
  var ret: encoded TextServer_StructuredTextParser
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: LinkButton; args: Array): void =
  expandMethodBind(className LinkButton, "set_structured_text_bidi_override_options", 381264803)
  var `?param` = [getPtr args]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStructuredTextBidiOverrideOptions*(self: LinkButton): Array =
  expandMethodBind(className LinkButton, "get_structured_text_bidi_override_options", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

template text*(self: LinkButton): untyped = self.getText()
template `text=`*(self: LinkButton; value) = self.setText(value)

template underline*(self: LinkButton): untyped = self.getUnderlineMode()
template `underline=`*(self: LinkButton; value) = self.setUnderlineMode(value)

template uri*(self: LinkButton): untyped = self.getUri()
template `uri=`*(self: LinkButton; value) = self.setUri(value)

template textDirection*(self: LinkButton): untyped = self.getTextDirection()
template `textDirection=`*(self: LinkButton; value) = self.setTextDirection(value)

template language*(self: LinkButton): untyped = self.getLanguage()
template `language=`*(self: LinkButton; value) = self.setLanguage(value)

template structuredTextBidiOverride*(self: LinkButton): untyped = self.getStructuredTextBidiOverride()
template `structuredTextBidiOverride=`*(self: LinkButton; value) = self.setStructuredTextBidiOverride(value)

template structuredTextBidiOverrideOptions*(self: LinkButton): untyped = self.getStructuredTextBidiOverrideOptions()
template `structuredTextBidiOverrideOptions=`*(self: LinkButton; value) = self.setStructuredTextBidiOverrideOptions(value)

const LinkButton_vmap =
  BaseButton.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[LinkButton]): Table[string, string] = LinkButton_vmap
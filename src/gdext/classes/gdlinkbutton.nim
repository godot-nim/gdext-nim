{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbasebutton; export gdbasebutton

expandOnClassImported(LinkButton, BaseButton)

proc setText*(self: LinkButton; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LinkButton, "set_text", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getText*(self: LinkButton): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LinkButton, "get_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc setTextDirection*(self: LinkButton; direction: Control_TextDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LinkButton, "set_text_direction", 119160795)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getTextDirection*(self: LinkButton): Control_TextDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LinkButton, "get_text_direction", 797257663)
  methodbind.ptrcall(self, [], Control_TextDirection)

proc setLanguage*(self: LinkButton; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LinkButton, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language], void)

proc getLanguage*(self: LinkButton): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LinkButton, "get_language", 201670096)
  methodbind.ptrcall(self, [], String)

proc setUri*(self: LinkButton; uri: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LinkButton, "set_uri", 83702148)
  methodbind.ptrcall(self, [getPtr uri], void)

proc getUri*(self: LinkButton): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LinkButton, "get_uri", 201670096)
  methodbind.ptrcall(self, [], String)

proc setUnderlineMode*(self: LinkButton; underlineMode: LinkButton_UnderlineMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LinkButton, "set_underline_mode", 4032947085)
  methodbind.ptrcall(self, [getPtr underlineMode], void)

proc getUnderlineMode*(self: LinkButton): LinkButton_UnderlineMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LinkButton, "get_underline_mode", 568343738)
  methodbind.ptrcall(self, [], LinkButton_UnderlineMode)

proc setStructuredTextBidiOverride*(self: LinkButton; parser: TextServer_StructuredTextParser): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LinkButton, "set_structured_text_bidi_override", 55961453)
  methodbind.ptrcall(self, [getPtr parser], void)

proc getStructuredTextBidiOverride*(self: LinkButton): TextServer_StructuredTextParser =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LinkButton, "get_structured_text_bidi_override", 3385126229)
  methodbind.ptrcall(self, [], TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: LinkButton; args: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LinkButton, "set_structured_text_bidi_override_options", 381264803)
  methodbind.ptrcall(self, [getPtr args], void)

proc getStructuredTextBidiOverrideOptions*(self: LinkButton): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LinkButton, "get_structured_text_bidi_override_options", 3995934104)
  methodbind.ptrcall(self, [], Array)

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

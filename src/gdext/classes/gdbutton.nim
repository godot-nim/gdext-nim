{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbasebutton; export gdbasebutton

proc setText*(self: Button; text: String): void =
  expandMethodBind(className Button, "set_text", 83702148)
  methodbind.ptrcall(self, [getPtr text])

proc getText*(self: Button): String =
  expandMethodBind(className Button, "get_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setTextOverrunBehavior*(self: Button; overrunBehavior: TextServer_OverrunBehavior): void =
  expandMethodBind(className Button, "set_text_overrun_behavior", 1008890932)
  methodbind.ptrcall(self, [getPtr overrunBehavior])

proc getTextOverrunBehavior*(self: Button): TextServer_OverrunBehavior =
  expandMethodBind(className Button, "get_text_overrun_behavior", 3779142101)
  var ret: encoded TextServer_OverrunBehavior
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_OverrunBehavior)

proc setAutowrapMode*(self: Button; autowrapMode: TextServer_AutowrapMode): void =
  expandMethodBind(className Button, "set_autowrap_mode", 3289138044)
  methodbind.ptrcall(self, [getPtr autowrapMode])

proc getAutowrapMode*(self: Button): TextServer_AutowrapMode =
  expandMethodBind(className Button, "get_autowrap_mode", 1549071663)
  var ret: encoded TextServer_AutowrapMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_AutowrapMode)

proc setTextDirection*(self: Button; direction: Control_TextDirection): void =
  expandMethodBind(className Button, "set_text_direction", 119160795)
  methodbind.ptrcall(self, [getPtr direction])

proc getTextDirection*(self: Button): Control_TextDirection =
  expandMethodBind(className Button, "get_text_direction", 797257663)
  var ret: encoded Control_TextDirection
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Control_TextDirection)

proc setLanguage*(self: Button; language: String): void =
  expandMethodBind(className Button, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language])

proc getLanguage*(self: Button): String =
  expandMethodBind(className Button, "get_language", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setButtonIcon*(self: Button; texture: gdref Texture2D): void =
  expandMethodBind(className Button, "set_button_icon", 4051416890)
  methodbind.ptrcall(self, [getPtr texture])

proc getButtonIcon*(self: Button): gdref Texture2D =
  expandMethodBind(className Button, "get_button_icon", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setFlat*(self: Button; enabled: bool): void =
  expandMethodBind(className Button, "set_flat", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isFlat*(self: Button): bool =
  expandMethodBind(className Button, "is_flat", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setClipText*(self: Button; enabled: bool): void =
  expandMethodBind(className Button, "set_clip_text", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getClipText*(self: Button): bool =
  expandMethodBind(className Button, "get_clip_text", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTextAlignment*(self: Button; alignment: HorizontalAlignment): void =
  expandMethodBind(className Button, "set_text_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment])

proc getTextAlignment*(self: Button): HorizontalAlignment =
  expandMethodBind(className Button, "get_text_alignment", 341400642)
  var ret: encoded HorizontalAlignment
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(HorizontalAlignment)

proc setIconAlignment*(self: Button; iconAlignment: HorizontalAlignment): void =
  expandMethodBind(className Button, "set_icon_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr iconAlignment])

proc getIconAlignment*(self: Button): HorizontalAlignment =
  expandMethodBind(className Button, "get_icon_alignment", 341400642)
  var ret: encoded HorizontalAlignment
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(HorizontalAlignment)

proc setVerticalIconAlignment*(self: Button; verticalIconAlignment: VerticalAlignment): void =
  expandMethodBind(className Button, "set_vertical_icon_alignment", 1796458609)
  methodbind.ptrcall(self, [getPtr verticalIconAlignment])

proc getVerticalIconAlignment*(self: Button): VerticalAlignment =
  expandMethodBind(className Button, "get_vertical_icon_alignment", 3274884059)
  var ret: encoded VerticalAlignment
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VerticalAlignment)

proc setExpandIcon*(self: Button; enabled: bool): void =
  expandMethodBind(className Button, "set_expand_icon", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isExpandIcon*(self: Button): bool =
  expandMethodBind(className Button, "is_expand_icon", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template text*(self: Button): untyped = self.getText()
template `text=`*(self: Button; value) = self.setText(value)

template icon*(self: Button): untyped = self.getButtonIcon()
template `icon=`*(self: Button; value) = self.setButtonIcon(value)

template flat*(self: Button): untyped = self.isFlat()
template `flat=`*(self: Button; value) = self.setFlat(value)

template alignment*(self: Button): untyped = self.getTextAlignment()
template `alignment=`*(self: Button; value) = self.setTextAlignment(value)

template textOverrunBehavior*(self: Button): untyped = self.getTextOverrunBehavior()
template `textOverrunBehavior=`*(self: Button; value) = self.setTextOverrunBehavior(value)

template autowrapMode*(self: Button): untyped = self.getAutowrapMode()
template `autowrapMode=`*(self: Button; value) = self.setAutowrapMode(value)

template clipText*(self: Button): untyped = self.getClipText()
template `clipText=`*(self: Button; value) = self.setClipText(value)

template iconAlignment*(self: Button): untyped = self.getIconAlignment()
template `iconAlignment=`*(self: Button; value) = self.setIconAlignment(value)

template verticalIconAlignment*(self: Button): untyped = self.getVerticalIconAlignment()
template `verticalIconAlignment=`*(self: Button; value) = self.setVerticalIconAlignment(value)

template expandIcon*(self: Button): untyped = self.isExpandIcon()
template `expandIcon=`*(self: Button; value) = self.setExpandIcon(value)

template textDirection*(self: Button): untyped = self.getTextDirection()
template `textDirection=`*(self: Button; value) = self.setTextDirection(value)

template language*(self: Button): untyped = self.getLanguage()
template `language=`*(self: Button; value) = self.setLanguage(value)

const Button_vmap =
  BaseButton.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Button]): Table[string, string] = Button_vmap
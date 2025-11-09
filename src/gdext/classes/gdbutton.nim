{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbasebutton; export gdbasebutton

expandOnClassImported(Button, BaseButton)

proc setText*(self: Button; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "set_text", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getText*(self: Button): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "get_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc setTextOverrunBehavior*(self: Button; overrunBehavior: TextServer_OverrunBehavior): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "set_text_overrun_behavior", 1008890932)
  methodbind.ptrcall(self, [getPtr overrunBehavior], void)

proc getTextOverrunBehavior*(self: Button): TextServer_OverrunBehavior =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "get_text_overrun_behavior", 3779142101)
  methodbind.ptrcall(self, [], TextServer_OverrunBehavior)

proc setAutowrapMode*(self: Button; autowrapMode: TextServer_AutowrapMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "set_autowrap_mode", 3289138044)
  methodbind.ptrcall(self, [getPtr autowrapMode], void)

proc getAutowrapMode*(self: Button): TextServer_AutowrapMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "get_autowrap_mode", 1549071663)
  methodbind.ptrcall(self, [], TextServer_AutowrapMode)

proc setAutowrapTrimFlags*(self: Button; autowrapTrimFlags: set[TextServer_LineBreakFlag]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "set_autowrap_trim_flags", 2809697122)
  methodbind.ptrcall(self, [getPtr autowrapTrimFlags], void)

proc getAutowrapTrimFlags*(self: Button): set[TextServer_LineBreakFlag] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "get_autowrap_trim_flags", 2340632602)
  methodbind.ptrcall(self, [], set[TextServer_LineBreakFlag])

proc setTextDirection*(self: Button; direction: Control_TextDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "set_text_direction", 119160795)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getTextDirection*(self: Button): Control_TextDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "get_text_direction", 797257663)
  methodbind.ptrcall(self, [], Control_TextDirection)

proc setLanguage*(self: Button; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language], void)

proc getLanguage*(self: Button): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "get_language", 201670096)
  methodbind.ptrcall(self, [], String)

proc setButtonIcon*(self: Button; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "set_button_icon", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getButtonIcon*(self: Button): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "get_button_icon", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setFlat*(self: Button; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "set_flat", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isFlat*(self: Button): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "is_flat", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setClipText*(self: Button; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "set_clip_text", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getClipText*(self: Button): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "get_clip_text", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTextAlignment*(self: Button; alignment: HorizontalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "set_text_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getTextAlignment*(self: Button): HorizontalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "get_text_alignment", 341400642)
  methodbind.ptrcall(self, [], HorizontalAlignment)

proc setIconAlignment*(self: Button; iconAlignment: HorizontalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "set_icon_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr iconAlignment], void)

proc getIconAlignment*(self: Button): HorizontalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "get_icon_alignment", 341400642)
  methodbind.ptrcall(self, [], HorizontalAlignment)

proc setVerticalIconAlignment*(self: Button; verticalIconAlignment: VerticalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "set_vertical_icon_alignment", 1796458609)
  methodbind.ptrcall(self, [getPtr verticalIconAlignment], void)

proc getVerticalIconAlignment*(self: Button): VerticalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "get_vertical_icon_alignment", 3274884059)
  methodbind.ptrcall(self, [], VerticalAlignment)

proc setExpandIcon*(self: Button; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "set_expand_icon", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isExpandIcon*(self: Button): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Button, "is_expand_icon", 36873697)
  methodbind.ptrcall(self, [], bool)

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

template autowrapTrimFlags*(self: Button): untyped = self.getAutowrapTrimFlags()
template `autowrapTrimFlags=`*(self: Button; value) = self.setAutowrapTrimFlags(value)

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

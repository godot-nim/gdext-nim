{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

expandOnClassImported(FoldableContainer, Container)

proc fold*(self: FoldableContainer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "fold", 3218959716)
  methodbind.ptrcall(self, [], void)

proc expand*(self: FoldableContainer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "expand", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setFolded*(self: FoldableContainer; folded: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "set_folded", 2586408642)
  methodbind.ptrcall(self, [getPtr folded], void)

proc isFolded*(self: FoldableContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "is_folded", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFoldableGroup*(self: FoldableContainer; buttonGroup: gdref FoldableGroup): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "set_foldable_group", 3001390597)
  methodbind.ptrcall(self, [getPtr buttonGroup], void)

proc getFoldableGroup*(self: FoldableContainer): gdref FoldableGroup =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "get_foldable_group", 66499518)
  methodbind.ptrcall(self, [], gdref FoldableGroup)

proc setTitle*(self: FoldableContainer; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "set_title", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getTitle*(self: FoldableContainer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "get_title", 201670096)
  methodbind.ptrcall(self, [], String)

proc setTitleAlignment*(self: FoldableContainer; alignment: HorizontalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "set_title_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getTitleAlignment*(self: FoldableContainer): HorizontalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "get_title_alignment", 341400642)
  methodbind.ptrcall(self, [], HorizontalAlignment)

proc setLanguage*(self: FoldableContainer; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language], void)

proc getLanguage*(self: FoldableContainer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "get_language", 201670096)
  methodbind.ptrcall(self, [], String)

proc setTitleTextDirection*(self: FoldableContainer; textDirection: Control_TextDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "set_title_text_direction", 119160795)
  methodbind.ptrcall(self, [getPtr textDirection], void)

proc getTitleTextDirection*(self: FoldableContainer): Control_TextDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "get_title_text_direction", 797257663)
  methodbind.ptrcall(self, [], Control_TextDirection)

proc setTitleTextOverrunBehavior*(self: FoldableContainer; overrunBehavior: TextServer_OverrunBehavior): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "set_title_text_overrun_behavior", 1008890932)
  methodbind.ptrcall(self, [getPtr overrunBehavior], void)

proc getTitleTextOverrunBehavior*(self: FoldableContainer): TextServer_OverrunBehavior =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "get_title_text_overrun_behavior", 3779142101)
  methodbind.ptrcall(self, [], TextServer_OverrunBehavior)

proc setTitlePosition*(self: FoldableContainer; titlePosition: FoldableContainer_TitlePosition): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "set_title_position", 2276829442)
  methodbind.ptrcall(self, [getPtr titlePosition], void)

proc getTitlePosition*(self: FoldableContainer): FoldableContainer_TitlePosition =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "get_title_position", 3028840207)
  methodbind.ptrcall(self, [], FoldableContainer_TitlePosition)

proc addTitleBarControl*(self: FoldableContainer; control: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "add_title_bar_control", 1496901182)
  methodbind.ptrcall(self, [getPtr control], void)

proc removeTitleBarControl*(self: FoldableContainer; control: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FoldableContainer, "remove_title_bar_control", 1496901182)
  methodbind.ptrcall(self, [getPtr control], void)

template folded*(self: FoldableContainer): untyped = self.isFolded()
template `folded=`*(self: FoldableContainer; value) = self.setFolded(value)

template title*(self: FoldableContainer): untyped = self.getTitle()
template `title=`*(self: FoldableContainer; value) = self.setTitle(value)

template titleAlignment*(self: FoldableContainer): untyped = self.getTitleAlignment()
template `titleAlignment=`*(self: FoldableContainer; value) = self.setTitleAlignment(value)

template titlePosition*(self: FoldableContainer): untyped = self.getTitlePosition()
template `titlePosition=`*(self: FoldableContainer; value) = self.setTitlePosition(value)

template titleTextOverrunBehavior*(self: FoldableContainer): untyped = self.getTitleTextOverrunBehavior()
template `titleTextOverrunBehavior=`*(self: FoldableContainer; value) = self.setTitleTextOverrunBehavior(value)

template foldableGroup*(self: FoldableContainer): untyped = self.getFoldableGroup()
template `foldableGroup=`*(self: FoldableContainer; value) = self.setFoldableGroup(value)

template titleTextDirection*(self: FoldableContainer): untyped = self.getTitleTextDirection()
template `titleTextDirection=`*(self: FoldableContainer; value) = self.setTitleTextDirection(value)

template language*(self: FoldableContainer): untyped = self.getLanguage()
template `language=`*(self: FoldableContainer; value) = self.setLanguage(value)

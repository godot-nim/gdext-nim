{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

expandOnClassImported(FoldableContainer, Container)

proc fold*(self: FoldableContainer): void =
  expandMethodBind(className FoldableContainer, "fold", 3218959716)
  methodbind.ptrcall(self, [])

proc expand*(self: FoldableContainer): void =
  expandMethodBind(className FoldableContainer, "expand", 3218959716)
  methodbind.ptrcall(self, [])

proc setFolded*(self: FoldableContainer; folded: bool): void =
  expandMethodBind(className FoldableContainer, "set_folded", 2586408642)
  methodbind.ptrcall(self, [getPtr folded])

proc isFolded*(self: FoldableContainer): bool =
  expandMethodBind(className FoldableContainer, "is_folded", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFoldableGroup*(self: FoldableContainer; buttonGroup: gdref FoldableGroup): void =
  expandMethodBind(className FoldableContainer, "set_foldable_group", 3001390597)
  methodbind.ptrcall(self, [getPtr buttonGroup])

proc getFoldableGroup*(self: FoldableContainer): gdref FoldableGroup =
  expandMethodBind(className FoldableContainer, "get_foldable_group", 66499518)
  var ret: encoded gdref FoldableGroup
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref FoldableGroup)

proc setTitle*(self: FoldableContainer; text: String): void =
  expandMethodBind(className FoldableContainer, "set_title", 83702148)
  methodbind.ptrcall(self, [getPtr text])

proc getTitle*(self: FoldableContainer): String =
  expandMethodBind(className FoldableContainer, "get_title", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setTitleAlignment*(self: FoldableContainer; alignment: HorizontalAlignment): void =
  expandMethodBind(className FoldableContainer, "set_title_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment])

proc getTitleAlignment*(self: FoldableContainer): HorizontalAlignment =
  expandMethodBind(className FoldableContainer, "get_title_alignment", 341400642)
  var ret: encoded HorizontalAlignment
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(HorizontalAlignment)

proc setLanguage*(self: FoldableContainer; language: String): void =
  expandMethodBind(className FoldableContainer, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language])

proc getLanguage*(self: FoldableContainer): String =
  expandMethodBind(className FoldableContainer, "get_language", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setTitleTextDirection*(self: FoldableContainer; textDirection: Control_TextDirection): void =
  expandMethodBind(className FoldableContainer, "set_title_text_direction", 119160795)
  methodbind.ptrcall(self, [getPtr textDirection])

proc getTitleTextDirection*(self: FoldableContainer): Control_TextDirection =
  expandMethodBind(className FoldableContainer, "get_title_text_direction", 797257663)
  var ret: encoded Control_TextDirection
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Control_TextDirection)

proc setTitleTextOverrunBehavior*(self: FoldableContainer; overrunBehavior: TextServer_OverrunBehavior): void =
  expandMethodBind(className FoldableContainer, "set_title_text_overrun_behavior", 1008890932)
  methodbind.ptrcall(self, [getPtr overrunBehavior])

proc getTitleTextOverrunBehavior*(self: FoldableContainer): TextServer_OverrunBehavior =
  expandMethodBind(className FoldableContainer, "get_title_text_overrun_behavior", 3779142101)
  var ret: encoded TextServer_OverrunBehavior
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_OverrunBehavior)

proc setTitlePosition*(self: FoldableContainer; titlePosition: FoldableContainer_TitlePosition): void =
  expandMethodBind(className FoldableContainer, "set_title_position", 2276829442)
  methodbind.ptrcall(self, [getPtr titlePosition])

proc getTitlePosition*(self: FoldableContainer): FoldableContainer_TitlePosition =
  expandMethodBind(className FoldableContainer, "get_title_position", 3028840207)
  var ret: encoded FoldableContainer_TitlePosition
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(FoldableContainer_TitlePosition)

proc addTitleBarControl*(self: FoldableContainer; control: Control): void =
  expandMethodBind(className FoldableContainer, "add_title_bar_control", 1496901182)
  methodbind.ptrcall(self, [getPtr control])

proc removeTitleBarControl*(self: FoldableContainer; control: Control): void =
  expandMethodBind(className FoldableContainer, "remove_title_bar_control", 1496901182)
  methodbind.ptrcall(self, [getPtr control])

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

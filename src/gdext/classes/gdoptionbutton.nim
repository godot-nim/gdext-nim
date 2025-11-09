{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbutton; export gdbutton

expandOnClassImported(OptionButton, Button)

proc addItem*(self: OptionButton; label: String; id: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "add_item", 2697778442)
  methodbind.ptrcall(self, [getPtr label, getPtr id], void)

proc addIconItem*(self: OptionButton; texture: gdref Texture2D; label: String; id: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "add_icon_item", 3781678508)
  methodbind.ptrcall(self, [getPtr texture, getPtr label, getPtr id], void)

proc setItemText*(self: OptionButton; idx: int32; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "set_item_text", 501894301)
  methodbind.ptrcall(self, [getPtr idx, getPtr text], void)

proc setItemIcon*(self: OptionButton; idx: int32; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "set_item_icon", 666127730)
  methodbind.ptrcall(self, [getPtr idx, getPtr texture], void)

proc setItemDisabled*(self: OptionButton; idx: int32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "set_item_disabled", 300928843)
  methodbind.ptrcall(self, [getPtr idx, getPtr disabled], void)

proc setItemId*(self: OptionButton; idx: int32; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "set_item_id", 3937882851)
  methodbind.ptrcall(self, [getPtr idx, getPtr id], void)

proc setItemMetadata*(self: OptionButton; idx: int32; metadata: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "set_item_metadata", 2152698145)
  methodbind.ptrcall(self, [getPtr idx, getPtr metadata], void)

proc setItemTooltip*(self: OptionButton; idx: int32; tooltip: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "set_item_tooltip", 501894301)
  methodbind.ptrcall(self, [getPtr idx, getPtr tooltip], void)

proc setItemAutoTranslateMode*(self: OptionButton; idx: int32; mode: Node_AutoTranslateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "set_item_auto_translate_mode", 287402019)
  methodbind.ptrcall(self, [getPtr idx, getPtr mode], void)

proc getItemText*(self: OptionButton; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "get_item_text", 844755477)
  methodbind.ptrcall(self, [getPtr idx], String)

proc getItemIcon*(self: OptionButton; idx: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "get_item_icon", 3536238170)
  methodbind.ptrcall(self, [getPtr idx], gdref Texture2D)

proc getItemId*(self: OptionButton; idx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "get_item_id", 923996154)
  methodbind.ptrcall(self, [getPtr idx], int32)

proc getItemIndex*(self: OptionButton; id: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "get_item_index", 923996154)
  methodbind.ptrcall(self, [getPtr id], int32)

proc getItemMetadata*(self: OptionButton; idx: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "get_item_metadata", 4227898402)
  methodbind.ptrcall(self, [getPtr idx], Variant)

proc getItemTooltip*(self: OptionButton; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "get_item_tooltip", 844755477)
  methodbind.ptrcall(self, [getPtr idx], String)

proc getItemAutoTranslateMode*(self: OptionButton; idx: int32): Node_AutoTranslateMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "get_item_auto_translate_mode", 906302372)
  methodbind.ptrcall(self, [getPtr idx], Node_AutoTranslateMode)

proc isItemDisabled*(self: OptionButton; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "is_item_disabled", 1116898809)
  methodbind.ptrcall(self, [getPtr idx], bool)

proc isItemSeparator*(self: OptionButton; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "is_item_separator", 1116898809)
  methodbind.ptrcall(self, [getPtr idx], bool)

proc addSeparator*(self: OptionButton; text: String = newGdString()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "add_separator", 3005725572)
  methodbind.ptrcall(self, [getPtr text], void)

proc clear*(self: OptionButton): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc select*(self: OptionButton; idx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "select", 1286410249)
  methodbind.ptrcall(self, [getPtr idx], void)

proc getSelected*(self: OptionButton): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "get_selected", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSelectedId*(self: OptionButton): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "get_selected_id", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSelectedMetadata*(self: OptionButton): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "get_selected_metadata", 1214101251)
  methodbind.ptrcall(self, [], Variant)

proc removeItem*(self: OptionButton; idx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "remove_item", 1286410249)
  methodbind.ptrcall(self, [getPtr idx], void)

proc getPopup*(self: OptionButton): PopupMenu =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "get_popup", 229722558)
  methodbind.ptrcall(self, [], PopupMenu)

proc showPopup*(self: OptionButton): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "show_popup", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setItemCount*(self: OptionButton; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "set_item_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getItemCount*(self: OptionButton): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "get_item_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc hasSelectableItems*(self: OptionButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "has_selectable_items", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getSelectableItem*(self: OptionButton; fromLast: bool = false): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "get_selectable_item", 894402480)
  methodbind.ptrcall(self, [getPtr fromLast], int32)

proc setFitToLongestItem*(self: OptionButton; fit: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "set_fit_to_longest_item", 2586408642)
  methodbind.ptrcall(self, [getPtr fit], void)

proc isFitToLongestItem*(self: OptionButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "is_fit_to_longest_item", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAllowReselect*(self: OptionButton; allow: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "set_allow_reselect", 2586408642)
  methodbind.ptrcall(self, [getPtr allow], void)

proc getAllowReselect*(self: OptionButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "get_allow_reselect", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDisableShortcuts*(self: OptionButton; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OptionButton, "set_disable_shortcuts", 2586408642)
  methodbind.ptrcall(self, [getPtr disabled], void)

template selected*(self: OptionButton): untyped = self.getSelected()
template `selected=`*(self: OptionButton; value) = self.selectInt(value)

template fitToLongestItem*(self: OptionButton): untyped = self.isFitToLongestItem()
template `fitToLongestItem=`*(self: OptionButton; value) = self.setFitToLongestItem(value)

template allowReselect*(self: OptionButton): untyped = self.getAllowReselect()
template `allowReselect=`*(self: OptionButton; value) = self.setAllowReselect(value)

template itemCount*(self: OptionButton): untyped = self.getItemCount()
template `itemCount=`*(self: OptionButton; value) = self.setItemCount(value)

{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdbutton; export gdbutton

proc addItem*(self: OptionButton; label: String; id: int32 = -1): void =
  expandMethodBind(className OptionButton, "add_item", 2697778442)
  var `?param` = [getPtr label, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc addIconItem*(self: OptionButton; texture: gdref Texture2D; label: String; id: int32 = -1): void =
  expandMethodBind(className OptionButton, "add_icon_item", 3781678508)
  var `?param` = [getPtr texture, getPtr label, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemText*(self: OptionButton; idx: int32; text: String): void =
  expandMethodBind(className OptionButton, "set_item_text", 501894301)
  var `?param` = [getPtr idx, getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemIcon*(self: OptionButton; idx: int32; texture: gdref Texture2D): void =
  expandMethodBind(className OptionButton, "set_item_icon", 666127730)
  var `?param` = [getPtr idx, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemDisabled*(self: OptionButton; idx: int32; disabled: bool): void =
  expandMethodBind(className OptionButton, "set_item_disabled", 300928843)
  var `?param` = [getPtr idx, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemId*(self: OptionButton; idx: int32; id: int32): void =
  expandMethodBind(className OptionButton, "set_item_id", 3937882851)
  var `?param` = [getPtr idx, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemMetadata*(self: OptionButton; idx: int32; metadata: Variant): void =
  expandMethodBind(className OptionButton, "set_item_metadata", 2152698145)
  var `?param` = [getPtr idx, getPtr metadata]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemTooltip*(self: OptionButton; idx: int32; tooltip: String): void =
  expandMethodBind(className OptionButton, "set_item_tooltip", 501894301)
  var `?param` = [getPtr idx, getPtr tooltip]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemText*(self: OptionButton; idx: int32): String =
  expandMethodBind(className OptionButton, "get_item_text", 844755477)
  var `?param` = [getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getItemIcon*(self: OptionButton; idx: int32): gdref Texture2D =
  expandMethodBind(className OptionButton, "get_item_icon", 3536238170)
  var `?param` = [getPtr idx]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getItemId*(self: OptionButton; idx: int32): int32 =
  expandMethodBind(className OptionButton, "get_item_id", 923996154)
  var `?param` = [getPtr idx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getItemIndex*(self: OptionButton; id: int32): int32 =
  expandMethodBind(className OptionButton, "get_item_index", 923996154)
  var `?param` = [getPtr id]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getItemMetadata*(self: OptionButton; idx: int32): Variant =
  expandMethodBind(className OptionButton, "get_item_metadata", 4227898402)
  var `?param` = [getPtr idx]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc getItemTooltip*(self: OptionButton; idx: int32): String =
  expandMethodBind(className OptionButton, "get_item_tooltip", 844755477)
  var `?param` = [getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc isItemDisabled*(self: OptionButton; idx: int32): bool =
  expandMethodBind(className OptionButton, "is_item_disabled", 1116898809)
  var `?param` = [getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isItemSeparator*(self: OptionButton; idx: int32): bool =
  expandMethodBind(className OptionButton, "is_item_separator", 1116898809)
  var `?param` = [getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc addSeparator*(self: OptionButton; text: String = gdstring""): void =
  expandMethodBind(className OptionButton, "add_separator", 3005725572)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc clear*(self: OptionButton): void =
  expandMethodBind(className OptionButton, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

proc select*(self: OptionButton; idx: int32): void =
  expandMethodBind(className OptionButton, "select", 1286410249)
  var `?param` = [getPtr idx]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSelected*(self: OptionButton): int32 =
  expandMethodBind(className OptionButton, "get_selected", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getSelectedId*(self: OptionButton): int32 =
  expandMethodBind(className OptionButton, "get_selected_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getSelectedMetadata*(self: OptionButton): Variant =
  expandMethodBind(className OptionButton, "get_selected_metadata", 1214101251)
  var ret: encoded Variant
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Variant)

proc removeItem*(self: OptionButton; idx: int32): void =
  expandMethodBind(className OptionButton, "remove_item", 1286410249)
  var `?param` = [getPtr idx]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPopup*(self: OptionButton): PopupMenu =
  expandMethodBind(className OptionButton, "get_popup", 229722558)
  var ret: encoded PopupMenu
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PopupMenu)

proc showPopup*(self: OptionButton): void =
  expandMethodBind(className OptionButton, "show_popup", 3218959716)
  methodbind.ptrcall(self, nil)

proc setItemCount*(self: OptionButton; count: int32): void =
  expandMethodBind(className OptionButton, "set_item_count", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemCount*(self: OptionButton): int32 =
  expandMethodBind(className OptionButton, "get_item_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc hasSelectableItems*(self: OptionButton): bool =
  expandMethodBind(className OptionButton, "has_selectable_items", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getSelectableItem*(self: OptionButton; fromLast: bool = false): int32 =
  expandMethodBind(className OptionButton, "get_selectable_item", 894402480)
  var `?param` = [getPtr fromLast]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setFitToLongestItem*(self: OptionButton; fit: bool): void =
  expandMethodBind(className OptionButton, "set_fit_to_longest_item", 2586408642)
  var `?param` = [getPtr fit]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFitToLongestItem*(self: OptionButton): bool =
  expandMethodBind(className OptionButton, "is_fit_to_longest_item", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAllowReselect*(self: OptionButton; allow: bool): void =
  expandMethodBind(className OptionButton, "set_allow_reselect", 2586408642)
  var `?param` = [getPtr allow]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAllowReselect*(self: OptionButton): bool =
  expandMethodBind(className OptionButton, "get_allow_reselect", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDisableShortcuts*(self: OptionButton; disabled: bool): void =
  expandMethodBind(className OptionButton, "set_disable_shortcuts", 2586408642)
  var `?param` = [getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

template selected*(self: OptionButton): untyped = self.getSelected()
template `selected=`*(self: OptionButton; value) = self.selectInt(value)

template fitToLongestItem*(self: OptionButton): untyped = self.isFitToLongestItem()
template `fitToLongestItem=`*(self: OptionButton; value) = self.setFitToLongestItem(value)

template allowReselect*(self: OptionButton): untyped = self.getAllowReselect()
template `allowReselect=`*(self: OptionButton; value) = self.setAllowReselect(value)

template itemCount*(self: OptionButton): untyped = self.getItemCount()
template `itemCount=`*(self: OptionButton; value) = self.setItemCount(value)

const OptionButton_vmap =
  Button.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OptionButton]): Table[string, string] = OptionButton_vmap

proc itemSelected*(self: OptionButton; index: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("item_selected")
  let args = [index]
  self.emitSignal(signalname, args)

proc itemFocused*(self: OptionButton; index: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("item_focused")
  let args = [index]
  self.emitSignal(signalname, args)
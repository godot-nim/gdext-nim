{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc hasFeature*(self: NativeMenu; feature: NativeMenu_Feature): bool =
  expandMethodBind(className NativeMenu, "has_feature", 1708975490)
  var `?param` = [getPtr feature]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasSystemMenu*(self: NativeMenu; menuId: NativeMenu_SystemMenus): bool =
  expandMethodBind(className NativeMenu, "has_system_menu", 718213027)
  var `?param` = [getPtr menuId]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getSystemMenu*(self: NativeMenu; menuId: NativeMenu_SystemMenus): Rid =
  expandMethodBind(className NativeMenu, "get_system_menu", 469707506)
  var `?param` = [getPtr menuId]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getSystemMenuName*(self: NativeMenu; menuId: NativeMenu_SystemMenus): String =
  expandMethodBind(className NativeMenu, "get_system_menu_name", 1281499290)
  var `?param` = [getPtr menuId]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc createMenu*(self: NativeMenu): Rid =
  expandMethodBind(className NativeMenu, "create_menu", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc hasMenu*(self: NativeMenu; rid: Rid): bool =
  expandMethodBind(className NativeMenu, "has_menu", 4155700596)
  var `?param` = [getPtr rid]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc freeMenu*(self: NativeMenu; rid: Rid): void =
  expandMethodBind(className NativeMenu, "free_menu", 2722037293)
  var `?param` = [getPtr rid]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: NativeMenu; rid: Rid): Vector2 =
  expandMethodBind(className NativeMenu, "get_size", 2440833711)
  var `?param` = [getPtr rid]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc popup*(self: NativeMenu; rid: Rid; position: Vector2i): void =
  expandMethodBind(className NativeMenu, "popup", 2450610377)
  var `?param` = [getPtr rid, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc setInterfaceDirection*(self: NativeMenu; rid: Rid; isRtl: bool): void =
  expandMethodBind(className NativeMenu, "set_interface_direction", 1265174801)
  var `?param` = [getPtr rid, getPtr isRtl]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPopupOpenCallback*(self: NativeMenu; rid: Rid; callback: Callable): void =
  expandMethodBind(className NativeMenu, "set_popup_open_callback", 3379118538)
  var `?param` = [getPtr rid, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPopupOpenCallback*(self: NativeMenu; rid: Rid): Callable =
  expandMethodBind(className NativeMenu, "get_popup_open_callback", 3170603026)
  var `?param` = [getPtr rid]
  var ret: encoded Callable
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Callable)

proc setPopupCloseCallback*(self: NativeMenu; rid: Rid; callback: Callable): void =
  expandMethodBind(className NativeMenu, "set_popup_close_callback", 3379118538)
  var `?param` = [getPtr rid, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPopupCloseCallback*(self: NativeMenu; rid: Rid): Callable =
  expandMethodBind(className NativeMenu, "get_popup_close_callback", 3170603026)
  var `?param` = [getPtr rid]
  var ret: encoded Callable
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Callable)

proc setMinimumWidth*(self: NativeMenu; rid: Rid; width: Float): void =
  expandMethodBind(className NativeMenu, "set_minimum_width", 1794382983)
  var `?param` = [getPtr rid, getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMinimumWidth*(self: NativeMenu; rid: Rid): Float =
  expandMethodBind(className NativeMenu, "get_minimum_width", 866169185)
  var `?param` = [getPtr rid]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc isOpened*(self: NativeMenu; rid: Rid): bool =
  expandMethodBind(className NativeMenu, "is_opened", 4155700596)
  var `?param` = [getPtr rid]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc addSubmenuItem*(self: NativeMenu; rid: Rid; label: String; submenuRid: Rid; tag: Variant = default(Variant); index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_submenu_item", 1002030223)
  var `?param` = [getPtr rid, getPtr label, getPtr submenuRid, getPtr tag, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc addItem*(self: NativeMenu; rid: Rid; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_item", 2553375659)
  var `?param` = [getPtr rid, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc addCheckItem*(self: NativeMenu; rid: Rid; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_check_item", 2553375659)
  var `?param` = [getPtr rid, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc addIconItem*(self: NativeMenu; rid: Rid; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_icon_item", 2987595282)
  var `?param` = [getPtr rid, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc addIconCheckItem*(self: NativeMenu; rid: Rid; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_icon_check_item", 2987595282)
  var `?param` = [getPtr rid, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc addRadioCheckItem*(self: NativeMenu; rid: Rid; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_radio_check_item", 2553375659)
  var `?param` = [getPtr rid, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc addIconRadioCheckItem*(self: NativeMenu; rid: Rid; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_icon_radio_check_item", 2987595282)
  var `?param` = [getPtr rid, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc addMultistateItem*(self: NativeMenu; rid: Rid; label: String; maxStates: int32; defaultState: int32; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_multistate_item", 1558592568)
  var `?param` = [getPtr rid, getPtr label, getPtr maxStates, getPtr defaultState, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc addSeparator*(self: NativeMenu; rid: Rid; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_separator", 448810126)
  var `?param` = [getPtr rid, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc findItemIndexWithText*(self: NativeMenu; rid: Rid; text: String): int32 =
  expandMethodBind(className NativeMenu, "find_item_index_with_text", 1362438794)
  var `?param` = [getPtr rid, getPtr text]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc findItemIndexWithTag*(self: NativeMenu; rid: Rid; tag: Variant): int32 =
  expandMethodBind(className NativeMenu, "find_item_index_with_tag", 1260085030)
  var `?param` = [getPtr rid, getPtr tag]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc findItemIndexWithSubmenu*(self: NativeMenu; rid: Rid; submenuRid: Rid): int32 =
  expandMethodBind(className NativeMenu, "find_item_index_with_submenu", 893635918)
  var `?param` = [getPtr rid, getPtr submenuRid]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc isItemChecked*(self: NativeMenu; rid: Rid; idx: int32): bool =
  expandMethodBind(className NativeMenu, "is_item_checked", 3120086654)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isItemCheckable*(self: NativeMenu; rid: Rid; idx: int32): bool =
  expandMethodBind(className NativeMenu, "is_item_checkable", 3120086654)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isItemRadioCheckable*(self: NativeMenu; rid: Rid; idx: int32): bool =
  expandMethodBind(className NativeMenu, "is_item_radio_checkable", 3120086654)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getItemCallback*(self: NativeMenu; rid: Rid; idx: int32): Callable =
  expandMethodBind(className NativeMenu, "get_item_callback", 1639989698)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded Callable
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Callable)

proc getItemKeyCallback*(self: NativeMenu; rid: Rid; idx: int32): Callable =
  expandMethodBind(className NativeMenu, "get_item_key_callback", 1639989698)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded Callable
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Callable)

proc getItemTag*(self: NativeMenu; rid: Rid; idx: int32): Variant =
  expandMethodBind(className NativeMenu, "get_item_tag", 4069510997)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc getItemText*(self: NativeMenu; rid: Rid; idx: int32): String =
  expandMethodBind(className NativeMenu, "get_item_text", 1464764419)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getItemSubmenu*(self: NativeMenu; rid: Rid; idx: int32): Rid =
  expandMethodBind(className NativeMenu, "get_item_submenu", 1066463050)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getItemAccelerator*(self: NativeMenu; rid: Rid; idx: int32): Key =
  expandMethodBind(className NativeMenu, "get_item_accelerator", 316800700)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded Key
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Key)

proc isItemDisabled*(self: NativeMenu; rid: Rid; idx: int32): bool =
  expandMethodBind(className NativeMenu, "is_item_disabled", 3120086654)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isItemHidden*(self: NativeMenu; rid: Rid; idx: int32): bool =
  expandMethodBind(className NativeMenu, "is_item_hidden", 3120086654)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getItemTooltip*(self: NativeMenu; rid: Rid; idx: int32): String =
  expandMethodBind(className NativeMenu, "get_item_tooltip", 1464764419)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getItemState*(self: NativeMenu; rid: Rid; idx: int32): int32 =
  expandMethodBind(className NativeMenu, "get_item_state", 1120910005)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getItemMaxStates*(self: NativeMenu; rid: Rid; idx: int32): int32 =
  expandMethodBind(className NativeMenu, "get_item_max_states", 1120910005)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getItemIcon*(self: NativeMenu; rid: Rid; idx: int32): gdref Texture2D =
  expandMethodBind(className NativeMenu, "get_item_icon", 3391850701)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getItemIndentationLevel*(self: NativeMenu; rid: Rid; idx: int32): int32 =
  expandMethodBind(className NativeMenu, "get_item_indentation_level", 1120910005)
  var `?param` = [getPtr rid, getPtr idx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setItemChecked*(self: NativeMenu; rid: Rid; idx: int32; checked: bool): void =
  expandMethodBind(className NativeMenu, "set_item_checked", 2658558584)
  var `?param` = [getPtr rid, getPtr idx, getPtr checked]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemCheckable*(self: NativeMenu; rid: Rid; idx: int32; checkable: bool): void =
  expandMethodBind(className NativeMenu, "set_item_checkable", 2658558584)
  var `?param` = [getPtr rid, getPtr idx, getPtr checkable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemRadioCheckable*(self: NativeMenu; rid: Rid; idx: int32; checkable: bool): void =
  expandMethodBind(className NativeMenu, "set_item_radio_checkable", 2658558584)
  var `?param` = [getPtr rid, getPtr idx, getPtr checkable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemCallback*(self: NativeMenu; rid: Rid; idx: int32; callback: Callable): void =
  expandMethodBind(className NativeMenu, "set_item_callback", 2779810226)
  var `?param` = [getPtr rid, getPtr idx, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemHoverCallbacks*(self: NativeMenu; rid: Rid; idx: int32; callback: Callable): void =
  expandMethodBind(className NativeMenu, "set_item_hover_callbacks", 2779810226)
  var `?param` = [getPtr rid, getPtr idx, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemKeyCallback*(self: NativeMenu; rid: Rid; idx: int32; keyCallback: Callable): void =
  expandMethodBind(className NativeMenu, "set_item_key_callback", 2779810226)
  var `?param` = [getPtr rid, getPtr idx, getPtr keyCallback]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemTag*(self: NativeMenu; rid: Rid; idx: int32; tag: Variant): void =
  expandMethodBind(className NativeMenu, "set_item_tag", 2706844827)
  var `?param` = [getPtr rid, getPtr idx, getPtr tag]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemText*(self: NativeMenu; rid: Rid; idx: int32; text: String): void =
  expandMethodBind(className NativeMenu, "set_item_text", 4153150897)
  var `?param` = [getPtr rid, getPtr idx, getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemSubmenu*(self: NativeMenu; rid: Rid; idx: int32; submenuRid: Rid): void =
  expandMethodBind(className NativeMenu, "set_item_submenu", 2310537182)
  var `?param` = [getPtr rid, getPtr idx, getPtr submenuRid]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemAccelerator*(self: NativeMenu; rid: Rid; idx: int32; keycode: Key): void =
  expandMethodBind(className NativeMenu, "set_item_accelerator", 786300043)
  var `?param` = [getPtr rid, getPtr idx, getPtr keycode]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemDisabled*(self: NativeMenu; rid: Rid; idx: int32; disabled: bool): void =
  expandMethodBind(className NativeMenu, "set_item_disabled", 2658558584)
  var `?param` = [getPtr rid, getPtr idx, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemHidden*(self: NativeMenu; rid: Rid; idx: int32; hidden: bool): void =
  expandMethodBind(className NativeMenu, "set_item_hidden", 2658558584)
  var `?param` = [getPtr rid, getPtr idx, getPtr hidden]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemTooltip*(self: NativeMenu; rid: Rid; idx: int32; tooltip: String): void =
  expandMethodBind(className NativeMenu, "set_item_tooltip", 4153150897)
  var `?param` = [getPtr rid, getPtr idx, getPtr tooltip]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemState*(self: NativeMenu; rid: Rid; idx: int32; state: int32): void =
  expandMethodBind(className NativeMenu, "set_item_state", 4288446313)
  var `?param` = [getPtr rid, getPtr idx, getPtr state]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemMaxStates*(self: NativeMenu; rid: Rid; idx: int32; maxStates: int32): void =
  expandMethodBind(className NativeMenu, "set_item_max_states", 4288446313)
  var `?param` = [getPtr rid, getPtr idx, getPtr maxStates]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemIcon*(self: NativeMenu; rid: Rid; idx: int32; icon: gdref Texture2D): void =
  expandMethodBind(className NativeMenu, "set_item_icon", 1388763257)
  var `?param` = [getPtr rid, getPtr idx, getPtr icon]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemIndentationLevel*(self: NativeMenu; rid: Rid; idx: int32; level: int32): void =
  expandMethodBind(className NativeMenu, "set_item_indentation_level", 4288446313)
  var `?param` = [getPtr rid, getPtr idx, getPtr level]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemCount*(self: NativeMenu; rid: Rid): int32 =
  expandMethodBind(className NativeMenu, "get_item_count", 2198884583)
  var `?param` = [getPtr rid]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc isSystemMenu*(self: NativeMenu; rid: Rid): bool =
  expandMethodBind(className NativeMenu, "is_system_menu", 4155700596)
  var `?param` = [getPtr rid]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc removeItem*(self: NativeMenu; rid: Rid; idx: int32): void =
  expandMethodBind(className NativeMenu, "remove_item", 3411492887)
  var `?param` = [getPtr rid, getPtr idx]
  methodbind.ptrcall(self, addr `?param`[0])

proc clear*(self: NativeMenu; rid: Rid): void =
  expandMethodBind(className NativeMenu, "clear", 2722037293)
  var `?param` = [getPtr rid]
  methodbind.ptrcall(self, addr `?param`[0])

const NativeMenu_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NativeMenu]): Table[string, string] = NativeMenu_vmap
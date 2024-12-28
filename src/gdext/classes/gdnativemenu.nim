{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc hasFeature*(self: NativeMenu; feature: NativeMenu_Feature): bool =
  expandMethodBind(className NativeMenu, "has_feature", 1708975490)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr feature], addr ret)
  (addr ret).decode_result(bool)

proc hasSystemMenu*(self: NativeMenu; menuId: NativeMenu_SystemMenus): bool =
  expandMethodBind(className NativeMenu, "has_system_menu", 718213027)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr menuId], addr ret)
  (addr ret).decode_result(bool)

proc getSystemMenu*(self: NativeMenu; menuId: NativeMenu_SystemMenus): RID =
  expandMethodBind(className NativeMenu, "get_system_menu", 469707506)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr menuId], addr ret)
  (addr ret).decode_result(RID)

proc getSystemMenuName*(self: NativeMenu; menuId: NativeMenu_SystemMenus): String =
  expandMethodBind(className NativeMenu, "get_system_menu_name", 1281499290)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr menuId], addr ret)
  (addr ret).decode_result(String)

proc createMenu*(self: NativeMenu): RID =
  expandMethodBind(className NativeMenu, "create_menu", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc hasMenu*(self: NativeMenu; rid: RID): bool =
  expandMethodBind(className NativeMenu, "has_menu", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr rid], addr ret)
  (addr ret).decode_result(bool)

proc freeMenu*(self: NativeMenu; rid: RID): void =
  expandMethodBind(className NativeMenu, "free_menu", 2722037293)
  methodbind.ptrcall(self, [getPtr rid])

proc getSize*(self: NativeMenu; rid: RID): Vector2 =
  expandMethodBind(className NativeMenu, "get_size", 2440833711)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr rid], addr ret)
  (addr ret).decode_result(Vector2)

proc popup*(self: NativeMenu; rid: RID; position: Vector2i): void =
  expandMethodBind(className NativeMenu, "popup", 2450610377)
  methodbind.ptrcall(self, [getPtr rid, getPtr position])

proc setInterfaceDirection*(self: NativeMenu; rid: RID; isRtl: bool): void =
  expandMethodBind(className NativeMenu, "set_interface_direction", 1265174801)
  methodbind.ptrcall(self, [getPtr rid, getPtr isRtl])

proc setPopupOpenCallback*(self: NativeMenu; rid: RID; callback: Callable): void =
  expandMethodBind(className NativeMenu, "set_popup_open_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr rid, getPtr callback])

proc getPopupOpenCallback*(self: NativeMenu; rid: RID): Callable =
  expandMethodBind(className NativeMenu, "get_popup_open_callback", 3170603026)
  var ret: encoded Callable
  methodbind.ptrcall(self, [getPtr rid], addr ret)
  (addr ret).decode_result(Callable)

proc setPopupCloseCallback*(self: NativeMenu; rid: RID; callback: Callable): void =
  expandMethodBind(className NativeMenu, "set_popup_close_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr rid, getPtr callback])

proc getPopupCloseCallback*(self: NativeMenu; rid: RID): Callable =
  expandMethodBind(className NativeMenu, "get_popup_close_callback", 3170603026)
  var ret: encoded Callable
  methodbind.ptrcall(self, [getPtr rid], addr ret)
  (addr ret).decode_result(Callable)

proc setMinimumWidth*(self: NativeMenu; rid: RID; width: Float): void =
  expandMethodBind(className NativeMenu, "set_minimum_width", 1794382983)
  methodbind.ptrcall(self, [getPtr rid, getPtr width])

proc getMinimumWidth*(self: NativeMenu; rid: RID): Float =
  expandMethodBind(className NativeMenu, "get_minimum_width", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr rid], addr ret)
  (addr ret).decode_result(Float)

proc isOpened*(self: NativeMenu; rid: RID): bool =
  expandMethodBind(className NativeMenu, "is_opened", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr rid], addr ret)
  (addr ret).decode_result(bool)

proc addSubmenuItem*(self: NativeMenu; rid: RID; label: String; submenuRid: RID; tag: Variant = default(Variant); index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_submenu_item", 1002030223)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr label, getPtr submenuRid, getPtr tag, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc addItem*(self: NativeMenu; rid: RID; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_item", 2553375659)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc addCheckItem*(self: NativeMenu; rid: RID; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_check_item", 2553375659)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc addIconItem*(self: NativeMenu; rid: RID; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_icon_item", 2987595282)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc addIconCheckItem*(self: NativeMenu; rid: RID; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_icon_check_item", 2987595282)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc addRadioCheckItem*(self: NativeMenu; rid: RID; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_radio_check_item", 2553375659)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc addIconRadioCheckItem*(self: NativeMenu; rid: RID; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_icon_radio_check_item", 2987595282)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc addMultistateItem*(self: NativeMenu; rid: RID; label: String; maxStates: int32; defaultState: int32; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_multistate_item", 1558592568)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr label, getPtr maxStates, getPtr defaultState, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc addSeparator*(self: NativeMenu; rid: RID; index: int32 = -1): int32 =
  expandMethodBind(className NativeMenu, "add_separator", 448810126)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc findItemIndexWithText*(self: NativeMenu; rid: RID; text: String): int32 =
  expandMethodBind(className NativeMenu, "find_item_index_with_text", 1362438794)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr text], addr ret)
  (addr ret).decode_result(int32)

proc findItemIndexWithTag*(self: NativeMenu; rid: RID; tag: Variant): int32 =
  expandMethodBind(className NativeMenu, "find_item_index_with_tag", 1260085030)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr tag], addr ret)
  (addr ret).decode_result(int32)

proc findItemIndexWithSubmenu*(self: NativeMenu; rid: RID; submenuRid: RID): int32 =
  expandMethodBind(className NativeMenu, "find_item_index_with_submenu", 893635918)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr submenuRid], addr ret)
  (addr ret).decode_result(int32)

proc isItemChecked*(self: NativeMenu; rid: RID; idx: int32): bool =
  expandMethodBind(className NativeMenu, "is_item_checked", 3120086654)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(bool)

proc isItemCheckable*(self: NativeMenu; rid: RID; idx: int32): bool =
  expandMethodBind(className NativeMenu, "is_item_checkable", 3120086654)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(bool)

proc isItemRadioCheckable*(self: NativeMenu; rid: RID; idx: int32): bool =
  expandMethodBind(className NativeMenu, "is_item_radio_checkable", 3120086654)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(bool)

proc getItemCallback*(self: NativeMenu; rid: RID; idx: int32): Callable =
  expandMethodBind(className NativeMenu, "get_item_callback", 1639989698)
  var ret: encoded Callable
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(Callable)

proc getItemKeyCallback*(self: NativeMenu; rid: RID; idx: int32): Callable =
  expandMethodBind(className NativeMenu, "get_item_key_callback", 1639989698)
  var ret: encoded Callable
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(Callable)

proc getItemTag*(self: NativeMenu; rid: RID; idx: int32): Variant =
  expandMethodBind(className NativeMenu, "get_item_tag", 4069510997)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(Variant)

proc getItemText*(self: NativeMenu; rid: RID; idx: int32): String =
  expandMethodBind(className NativeMenu, "get_item_text", 1464764419)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(String)

proc getItemSubmenu*(self: NativeMenu; rid: RID; idx: int32): RID =
  expandMethodBind(className NativeMenu, "get_item_submenu", 1066463050)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(RID)

proc getItemAccelerator*(self: NativeMenu; rid: RID; idx: int32): Key =
  expandMethodBind(className NativeMenu, "get_item_accelerator", 316800700)
  var ret: encoded Key
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(Key)

proc isItemDisabled*(self: NativeMenu; rid: RID; idx: int32): bool =
  expandMethodBind(className NativeMenu, "is_item_disabled", 3120086654)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(bool)

proc isItemHidden*(self: NativeMenu; rid: RID; idx: int32): bool =
  expandMethodBind(className NativeMenu, "is_item_hidden", 3120086654)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(bool)

proc getItemTooltip*(self: NativeMenu; rid: RID; idx: int32): String =
  expandMethodBind(className NativeMenu, "get_item_tooltip", 1464764419)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(String)

proc getItemState*(self: NativeMenu; rid: RID; idx: int32): int32 =
  expandMethodBind(className NativeMenu, "get_item_state", 1120910005)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(int32)

proc getItemMaxStates*(self: NativeMenu; rid: RID; idx: int32): int32 =
  expandMethodBind(className NativeMenu, "get_item_max_states", 1120910005)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(int32)

proc getItemIcon*(self: NativeMenu; rid: RID; idx: int32): gdref Texture2D =
  expandMethodBind(className NativeMenu, "get_item_icon", 3391850701)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getItemIndentationLevel*(self: NativeMenu; rid: RID; idx: int32): int32 =
  expandMethodBind(className NativeMenu, "get_item_indentation_level", 1120910005)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], addr ret)
  (addr ret).decode_result(int32)

proc setItemChecked*(self: NativeMenu; rid: RID; idx: int32; checked: bool): void =
  expandMethodBind(className NativeMenu, "set_item_checked", 2658558584)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr checked])

proc setItemCheckable*(self: NativeMenu; rid: RID; idx: int32; checkable: bool): void =
  expandMethodBind(className NativeMenu, "set_item_checkable", 2658558584)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr checkable])

proc setItemRadioCheckable*(self: NativeMenu; rid: RID; idx: int32; checkable: bool): void =
  expandMethodBind(className NativeMenu, "set_item_radio_checkable", 2658558584)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr checkable])

proc setItemCallback*(self: NativeMenu; rid: RID; idx: int32; callback: Callable): void =
  expandMethodBind(className NativeMenu, "set_item_callback", 2779810226)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr callback])

proc setItemHoverCallbacks*(self: NativeMenu; rid: RID; idx: int32; callback: Callable): void =
  expandMethodBind(className NativeMenu, "set_item_hover_callbacks", 2779810226)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr callback])

proc setItemKeyCallback*(self: NativeMenu; rid: RID; idx: int32; keyCallback: Callable): void =
  expandMethodBind(className NativeMenu, "set_item_key_callback", 2779810226)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr keyCallback])

proc setItemTag*(self: NativeMenu; rid: RID; idx: int32; tag: Variant): void =
  expandMethodBind(className NativeMenu, "set_item_tag", 2706844827)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr tag])

proc setItemText*(self: NativeMenu; rid: RID; idx: int32; text: String): void =
  expandMethodBind(className NativeMenu, "set_item_text", 4153150897)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr text])

proc setItemSubmenu*(self: NativeMenu; rid: RID; idx: int32; submenuRid: RID): void =
  expandMethodBind(className NativeMenu, "set_item_submenu", 2310537182)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr submenuRid])

proc setItemAccelerator*(self: NativeMenu; rid: RID; idx: int32; keycode: Key): void =
  expandMethodBind(className NativeMenu, "set_item_accelerator", 786300043)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr keycode])

proc setItemDisabled*(self: NativeMenu; rid: RID; idx: int32; disabled: bool): void =
  expandMethodBind(className NativeMenu, "set_item_disabled", 2658558584)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr disabled])

proc setItemHidden*(self: NativeMenu; rid: RID; idx: int32; hidden: bool): void =
  expandMethodBind(className NativeMenu, "set_item_hidden", 2658558584)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr hidden])

proc setItemTooltip*(self: NativeMenu; rid: RID; idx: int32; tooltip: String): void =
  expandMethodBind(className NativeMenu, "set_item_tooltip", 4153150897)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr tooltip])

proc setItemState*(self: NativeMenu; rid: RID; idx: int32; state: int32): void =
  expandMethodBind(className NativeMenu, "set_item_state", 4288446313)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr state])

proc setItemMaxStates*(self: NativeMenu; rid: RID; idx: int32; maxStates: int32): void =
  expandMethodBind(className NativeMenu, "set_item_max_states", 4288446313)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr maxStates])

proc setItemIcon*(self: NativeMenu; rid: RID; idx: int32; icon: gdref Texture2D): void =
  expandMethodBind(className NativeMenu, "set_item_icon", 1388763257)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr icon])

proc setItemIndentationLevel*(self: NativeMenu; rid: RID; idx: int32; level: int32): void =
  expandMethodBind(className NativeMenu, "set_item_indentation_level", 4288446313)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr level])

proc getItemCount*(self: NativeMenu; rid: RID): int32 =
  expandMethodBind(className NativeMenu, "get_item_count", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rid], addr ret)
  (addr ret).decode_result(int32)

proc isSystemMenu*(self: NativeMenu; rid: RID): bool =
  expandMethodBind(className NativeMenu, "is_system_menu", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr rid], addr ret)
  (addr ret).decode_result(bool)

proc removeItem*(self: NativeMenu; rid: RID; idx: int32): void =
  expandMethodBind(className NativeMenu, "remove_item", 3411492887)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx])

proc clear*(self: NativeMenu; rid: RID): void =
  expandMethodBind(className NativeMenu, "clear", 2722037293)
  methodbind.ptrcall(self, [getPtr rid])

const NativeMenu_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NativeMenu]): Table[string, string] = NativeMenu_vmap
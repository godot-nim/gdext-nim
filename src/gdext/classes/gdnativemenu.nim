{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(NativeMenu, Object)

proc hasFeature*(self: NativeMenu; feature: NativeMenu_Feature): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "has_feature", 1708975490)
  methodbind.ptrcall(self, [getPtr feature], bool)

proc hasSystemMenu*(self: NativeMenu; menuId: NativeMenu_SystemMenus): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "has_system_menu", 718213027)
  methodbind.ptrcall(self, [getPtr menuId], bool)

proc getSystemMenu*(self: NativeMenu; menuId: NativeMenu_SystemMenus): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_system_menu", 469707506)
  methodbind.ptrcall(self, [getPtr menuId], RID)

proc getSystemMenuName*(self: NativeMenu; menuId: NativeMenu_SystemMenus): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_system_menu_name", 1281499290)
  methodbind.ptrcall(self, [getPtr menuId], String)

proc createMenu*(self: NativeMenu): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "create_menu", 529393457)
  methodbind.ptrcall(self, [], RID)

proc hasMenu*(self: NativeMenu; rid: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "has_menu", 4155700596)
  methodbind.ptrcall(self, [getPtr rid], bool)

proc freeMenu*(self: NativeMenu; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "free_menu", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc getSize*(self: NativeMenu; rid: RID): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_size", 2440833711)
  methodbind.ptrcall(self, [getPtr rid], Vector2)

proc popup*(self: NativeMenu; rid: RID; position: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "popup", 2450610377)
  methodbind.ptrcall(self, [getPtr rid, getPtr position], void)

proc setInterfaceDirection*(self: NativeMenu; rid: RID; isRtl: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_interface_direction", 1265174801)
  methodbind.ptrcall(self, [getPtr rid, getPtr isRtl], void)

proc setPopupOpenCallback*(self: NativeMenu; rid: RID; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_popup_open_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr rid, getPtr callback], void)

proc getPopupOpenCallback*(self: NativeMenu; rid: RID): Callable =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_popup_open_callback", 3170603026)
  methodbind.ptrcall(self, [getPtr rid], Callable)

proc setPopupCloseCallback*(self: NativeMenu; rid: RID; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_popup_close_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr rid, getPtr callback], void)

proc getPopupCloseCallback*(self: NativeMenu; rid: RID): Callable =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_popup_close_callback", 3170603026)
  methodbind.ptrcall(self, [getPtr rid], Callable)

proc setMinimumWidth*(self: NativeMenu; rid: RID; width: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_minimum_width", 1794382983)
  methodbind.ptrcall(self, [getPtr rid, getPtr width], void)

proc getMinimumWidth*(self: NativeMenu; rid: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_minimum_width", 866169185)
  methodbind.ptrcall(self, [getPtr rid], Float)

proc isOpened*(self: NativeMenu; rid: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "is_opened", 4155700596)
  methodbind.ptrcall(self, [getPtr rid], bool)

proc addSubmenuItem*(self: NativeMenu; rid: RID; label: String; submenuRid: RID; tag: Variant = default(Variant); index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "add_submenu_item", 1002030223)
  methodbind.ptrcall(self, [getPtr rid, getPtr label, getPtr submenuRid, getPtr tag, getPtr index], int32)

proc addItem*(self: NativeMenu; rid: RID; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "add_item", 980552939)
  methodbind.ptrcall(self, [getPtr rid, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], int32)

proc addCheckItem*(self: NativeMenu; rid: RID; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "add_check_item", 980552939)
  methodbind.ptrcall(self, [getPtr rid, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], int32)

proc addIconItem*(self: NativeMenu; rid: RID; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "add_icon_item", 1372188274)
  methodbind.ptrcall(self, [getPtr rid, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], int32)

proc addIconCheckItem*(self: NativeMenu; rid: RID; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "add_icon_check_item", 1372188274)
  methodbind.ptrcall(self, [getPtr rid, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], int32)

proc addRadioCheckItem*(self: NativeMenu; rid: RID; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "add_radio_check_item", 980552939)
  methodbind.ptrcall(self, [getPtr rid, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], int32)

proc addIconRadioCheckItem*(self: NativeMenu; rid: RID; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "add_icon_radio_check_item", 1372188274)
  methodbind.ptrcall(self, [getPtr rid, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], int32)

proc addMultistateItem*(self: NativeMenu; rid: RID; label: String; maxStates: int32; defaultState: int32; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "add_multistate_item", 2674635658)
  methodbind.ptrcall(self, [getPtr rid, getPtr label, getPtr maxStates, getPtr defaultState, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], int32)

proc addSeparator*(self: NativeMenu; rid: RID; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "add_separator", 448810126)
  methodbind.ptrcall(self, [getPtr rid, getPtr index], int32)

proc findItemIndexWithText*(self: NativeMenu; rid: RID; text: String): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "find_item_index_with_text", 1362438794)
  methodbind.ptrcall(self, [getPtr rid, getPtr text], int32)

proc findItemIndexWithTag*(self: NativeMenu; rid: RID; tag: Variant): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "find_item_index_with_tag", 1260085030)
  methodbind.ptrcall(self, [getPtr rid, getPtr tag], int32)

proc findItemIndexWithSubmenu*(self: NativeMenu; rid: RID; submenuRid: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "find_item_index_with_submenu", 893635918)
  methodbind.ptrcall(self, [getPtr rid, getPtr submenuRid], int32)

proc isItemChecked*(self: NativeMenu; rid: RID; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "is_item_checked", 3120086654)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], bool)

proc isItemCheckable*(self: NativeMenu; rid: RID; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "is_item_checkable", 3120086654)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], bool)

proc isItemRadioCheckable*(self: NativeMenu; rid: RID; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "is_item_radio_checkable", 3120086654)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], bool)

proc getItemCallback*(self: NativeMenu; rid: RID; idx: int32): Callable =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_item_callback", 1639989698)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], Callable)

proc getItemKeyCallback*(self: NativeMenu; rid: RID; idx: int32): Callable =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_item_key_callback", 1639989698)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], Callable)

proc getItemTag*(self: NativeMenu; rid: RID; idx: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_item_tag", 4069510997)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], Variant)

proc getItemText*(self: NativeMenu; rid: RID; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_item_text", 1464764419)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], String)

proc getItemSubmenu*(self: NativeMenu; rid: RID; idx: int32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_item_submenu", 1066463050)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], RID)

proc getItemAccelerator*(self: NativeMenu; rid: RID; idx: int32): Key =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_item_accelerator", 316800700)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], Key)

proc isItemDisabled*(self: NativeMenu; rid: RID; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "is_item_disabled", 3120086654)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], bool)

proc isItemHidden*(self: NativeMenu; rid: RID; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "is_item_hidden", 3120086654)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], bool)

proc getItemTooltip*(self: NativeMenu; rid: RID; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_item_tooltip", 1464764419)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], String)

proc getItemState*(self: NativeMenu; rid: RID; idx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_item_state", 1120910005)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], int32)

proc getItemMaxStates*(self: NativeMenu; rid: RID; idx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_item_max_states", 1120910005)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], int32)

proc getItemIcon*(self: NativeMenu; rid: RID; idx: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_item_icon", 3391850701)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], gdref Texture2D)

proc getItemIndentationLevel*(self: NativeMenu; rid: RID; idx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_item_indentation_level", 1120910005)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], int32)

proc setItemChecked*(self: NativeMenu; rid: RID; idx: int32; checked: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_checked", 2658558584)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr checked], void)

proc setItemCheckable*(self: NativeMenu; rid: RID; idx: int32; checkable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_checkable", 2658558584)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr checkable], void)

proc setItemRadioCheckable*(self: NativeMenu; rid: RID; idx: int32; checkable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_radio_checkable", 2658558584)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr checkable], void)

proc setItemCallback*(self: NativeMenu; rid: RID; idx: int32; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_callback", 2779810226)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr callback], void)

proc setItemHoverCallbacks*(self: NativeMenu; rid: RID; idx: int32; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_hover_callbacks", 2779810226)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr callback], void)

proc setItemKeyCallback*(self: NativeMenu; rid: RID; idx: int32; keyCallback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_key_callback", 2779810226)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr keyCallback], void)

proc setItemTag*(self: NativeMenu; rid: RID; idx: int32; tag: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_tag", 2706844827)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr tag], void)

proc setItemText*(self: NativeMenu; rid: RID; idx: int32; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_text", 4153150897)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr text], void)

proc setItemSubmenu*(self: NativeMenu; rid: RID; idx: int32; submenuRid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_submenu", 2310537182)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr submenuRid], void)

proc setItemAccelerator*(self: NativeMenu; rid: RID; idx: int32; keycode: Key): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_accelerator", 786300043)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr keycode], void)

proc setItemDisabled*(self: NativeMenu; rid: RID; idx: int32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_disabled", 2658558584)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr disabled], void)

proc setItemHidden*(self: NativeMenu; rid: RID; idx: int32; hidden: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_hidden", 2658558584)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr hidden], void)

proc setItemTooltip*(self: NativeMenu; rid: RID; idx: int32; tooltip: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_tooltip", 4153150897)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr tooltip], void)

proc setItemState*(self: NativeMenu; rid: RID; idx: int32; state: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_state", 4288446313)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr state], void)

proc setItemMaxStates*(self: NativeMenu; rid: RID; idx: int32; maxStates: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_max_states", 4288446313)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr maxStates], void)

proc setItemIcon*(self: NativeMenu; rid: RID; idx: int32; icon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_icon", 1388763257)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr icon], void)

proc setItemIndentationLevel*(self: NativeMenu; rid: RID; idx: int32; level: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "set_item_indentation_level", 4288446313)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx, getPtr level], void)

proc getItemCount*(self: NativeMenu; rid: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "get_item_count", 2198884583)
  methodbind.ptrcall(self, [getPtr rid], int32)

proc isSystemMenu*(self: NativeMenu; rid: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "is_system_menu", 4155700596)
  methodbind.ptrcall(self, [getPtr rid], bool)

proc removeItem*(self: NativeMenu; rid: RID; idx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "remove_item", 3411492887)
  methodbind.ptrcall(self, [getPtr rid, getPtr idx], void)

proc clear*(self: NativeMenu; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NativeMenu, "clear", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

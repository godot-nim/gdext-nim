{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method popupMenu*(self: EditorContextMenuPlugin; paths: PackedStringArray): void {.base.} = (discard)
proc popupMenu(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorContextMenuPlugin](p_instance).popupMenu(p_args[0].decode(PackedStringArray))
template popupMenu_bind*(_: typedesc[EditorContextMenuPlugin]): ClassCallVirtual = popupMenu

proc addMenuShortcut*(self: EditorContextMenuPlugin; shortcut: gdref Shortcut; callback: Callable): void =
  expandMethodBind(className EditorContextMenuPlugin, "add_menu_shortcut", 851596305)
  methodbind.ptrcall(self, [getPtr shortcut, getPtr callback])

proc addContextMenuItem*(self: EditorContextMenuPlugin; name: String; callback: Callable; icon: gdref Texture2D = default gdref Texture2D): void =
  expandMethodBind(className EditorContextMenuPlugin, "add_context_menu_item", 2748336951)
  methodbind.ptrcall(self, [getPtr name, getPtr callback, getPtr icon])

proc addContextMenuItemFromShortcut*(self: EditorContextMenuPlugin; name: String; shortcut: gdref Shortcut; icon: gdref Texture2D = default gdref Texture2D): void =
  expandMethodBind(className EditorContextMenuPlugin, "add_context_menu_item_from_shortcut", 3799546916)
  methodbind.ptrcall(self, [getPtr name, getPtr shortcut, getPtr icon])

proc addContextSubmenuItem*(self: EditorContextMenuPlugin; name: String; menu: PopupMenu; icon: gdref Texture2D = default gdref Texture2D): void =
  expandMethodBind(className EditorContextMenuPlugin, "add_context_submenu_item", 1994674995)
  methodbind.ptrcall(self, [getPtr name, getPtr menu, getPtr icon])

const EditorContextMenuPlugin_vmap =
  RefCounted.vmap.concat toTable {
    "popupmenu" : "_popup_menu",
    }
template vmap*(_: typedesc[EditorContextMenuPlugin]): Table[string, string] = EditorContextMenuPlugin_vmap
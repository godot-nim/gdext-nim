{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorContextMenuPlugin, RefCounted)

method popupMenu*(self: EditorContextMenuPlugin; paths: PackedStringArray): void {.base.} = (discard)
proc registerVirtual_popupMenu*[T: EditorContextMenuPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_popup_menu"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorContextMenuPlugin](p_instance).popupMenu(p_args[0].decode(PackedStringArray))

proc addMenuShortcut*(self: EditorContextMenuPlugin; shortcut: gdref Shortcut; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorContextMenuPlugin, "add_menu_shortcut", 851596305)
  methodbind.ptrcall(self, [getPtr shortcut, getPtr callback], void)

proc addContextMenuItem*(self: EditorContextMenuPlugin; name: String; callback: Callable; icon: gdref Texture2D = default gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorContextMenuPlugin, "add_context_menu_item", 2748336951)
  methodbind.ptrcall(self, [getPtr name, getPtr callback, getPtr icon], void)

proc addContextMenuItemFromShortcut*(self: EditorContextMenuPlugin; name: String; shortcut: gdref Shortcut; icon: gdref Texture2D = default gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorContextMenuPlugin, "add_context_menu_item_from_shortcut", 3799546916)
  methodbind.ptrcall(self, [getPtr name, getPtr shortcut, getPtr icon], void)

proc addContextSubmenuItem*(self: EditorContextMenuPlugin; name: String; menu: PopupMenu; icon: gdref Texture2D = default gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorContextMenuPlugin, "add_context_submenu_item", 1994674995)
  methodbind.ptrcall(self, [getPtr name, getPtr menu, getPtr icon], void)

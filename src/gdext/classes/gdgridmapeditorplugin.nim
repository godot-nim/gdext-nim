{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorplugin; export gdeditorplugin

expandOnClassImported(GridMapEditorPlugin, EditorPlugin)

proc getCurrentGridMap*(self: GridMapEditorPlugin): GridMap =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMapEditorPlugin, "get_current_grid_map", 1184264483)
  methodbind.ptrcall(self, [], GridMap)

proc setSelection*(self: GridMapEditorPlugin; begin: Vector3i; `end`: Vector3i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMapEditorPlugin, "set_selection", 3659408297)
  methodbind.ptrcall(self, [getPtr begin, getPtr `end`], void)

proc clearSelection*(self: GridMapEditorPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMapEditorPlugin, "clear_selection", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getSelection*(self: GridMapEditorPlugin): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMapEditorPlugin, "get_selection", 1068685055)
  methodbind.ptrcall(self, [], AABB)

proc hasSelection*(self: GridMapEditorPlugin): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMapEditorPlugin, "has_selection", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getSelectedCells*(self: GridMapEditorPlugin): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMapEditorPlugin, "get_selected_cells", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc setSelectedPaletteItem*(self: GridMapEditorPlugin; item: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMapEditorPlugin, "set_selected_palette_item", 998575451)
  methodbind.ptrcall(self, [getPtr item], void)

proc getSelectedPaletteItem*(self: GridMapEditorPlugin): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMapEditorPlugin, "get_selected_palette_item", 3905245786)
  methodbind.ptrcall(self, [], int32)

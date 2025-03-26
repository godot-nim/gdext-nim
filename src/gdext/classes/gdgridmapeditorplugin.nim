{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditorplugin; export gdeditorplugin

proc getCurrentGridMap*(self: GridMapEditorPlugin): GridMap =
  expandMethodBind(className GridMapEditorPlugin, "get_current_grid_map", 1184264483)
  var ret: encoded GridMap
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GridMap)

proc setSelection*(self: GridMapEditorPlugin; begin: Vector3i; `end`: Vector3i): void =
  expandMethodBind(className GridMapEditorPlugin, "set_selection", 3659408297)
  methodbind.ptrcall(self, [getPtr begin, getPtr `end`])

proc clearSelection*(self: GridMapEditorPlugin): void =
  expandMethodBind(className GridMapEditorPlugin, "clear_selection", 3218959716)
  methodbind.ptrcall(self, [])

proc getSelection*(self: GridMapEditorPlugin): AABB =
  expandMethodBind(className GridMapEditorPlugin, "get_selection", 1068685055)
  var ret: encoded AABB
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AABB)

proc hasSelection*(self: GridMapEditorPlugin): bool =
  expandMethodBind(className GridMapEditorPlugin, "has_selection", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getSelectedCells*(self: GridMapEditorPlugin): Array =
  expandMethodBind(className GridMapEditorPlugin, "get_selected_cells", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

proc setSelectedPaletteItem*(self: GridMapEditorPlugin; item: int32): void =
  expandMethodBind(className GridMapEditorPlugin, "set_selected_palette_item", 998575451)
  methodbind.ptrcall(self, [getPtr item])

proc getSelectedPaletteItem*(self: GridMapEditorPlugin): int32 =
  expandMethodBind(className GridMapEditorPlugin, "get_selected_palette_item", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

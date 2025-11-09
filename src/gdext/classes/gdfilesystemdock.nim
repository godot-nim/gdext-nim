{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvboxcontainer; export gdvboxcontainer

expandOnClassImported(FileSystemDock, VBoxContainer)

proc navigateToPath*(self: FileSystemDock; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileSystemDock, "navigate_to_path", 83702148)
  methodbind.ptrcall(self, [getPtr path], void)

proc addResourceTooltipPlugin*(self: FileSystemDock; plugin: gdref EditorResourceTooltipPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileSystemDock, "add_resource_tooltip_plugin", 2258356838)
  methodbind.ptrcall(self, [getPtr plugin], void)

proc removeResourceTooltipPlugin*(self: FileSystemDock; plugin: gdref EditorResourceTooltipPlugin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileSystemDock, "remove_resource_tooltip_plugin", 2258356838)
  methodbind.ptrcall(self, [getPtr plugin], void)

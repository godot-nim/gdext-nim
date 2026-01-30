{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdeditordock; export gdeditordock

expandOnClassImported(FileSystemDock, EditorDock)

proc navigateToPath*(self: FileSystemDock; path: String): void =
  expandMethodBind(className FileSystemDock, "navigate_to_path", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc addResourceTooltipPlugin*(self: FileSystemDock; plugin: gdref EditorResourceTooltipPlugin): void =
  expandMethodBind(className FileSystemDock, "add_resource_tooltip_plugin", 2258356838)
  methodbind.ptrcall(self, [getPtr plugin])

proc removeResourceTooltipPlugin*(self: FileSystemDock; plugin: gdref EditorResourceTooltipPlugin): void =
  expandMethodBind(className FileSystemDock, "remove_resource_tooltip_plugin", 2258356838)
  methodbind.ptrcall(self, [getPtr plugin])

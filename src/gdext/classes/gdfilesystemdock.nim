{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvboxcontainer; export gdvboxcontainer

proc navigateToPath*(self: FileSystemDock; path: String): void =
  expandMethodBind(className FileSystemDock, "navigate_to_path", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc addResourceTooltipPlugin*(self: FileSystemDock; plugin: gdref EditorResourceTooltipPlugin): void =
  expandMethodBind(className FileSystemDock, "add_resource_tooltip_plugin", 2258356838)
  methodbind.ptrcall(self, [getPtr plugin])

proc removeResourceTooltipPlugin*(self: FileSystemDock; plugin: gdref EditorResourceTooltipPlugin): void =
  expandMethodBind(className FileSystemDock, "remove_resource_tooltip_plugin", 2258356838)
  methodbind.ptrcall(self, [getPtr plugin])

proc call_inherit*(self: FileSystemDock; file: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("inherit")
  let args = [file]
  self.emitSignal(signalname, args)

proc call_instantiate*(self: FileSystemDock; files: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("instantiate")
  let args = [files]
  self.emitSignal(signalname, args)

proc call_resourceRemoved*(self: FileSystemDock; resource: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resource_removed")
  let args = [resource]
  self.emitSignal(signalname, args)

proc call_fileRemoved*(self: FileSystemDock; file: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("file_removed")
  let args = [file]
  self.emitSignal(signalname, args)

proc call_folderRemoved*(self: FileSystemDock; folder: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("folder_removed")
  let args = [folder]
  self.emitSignal(signalname, args)

proc call_filesMoved*(self: FileSystemDock; oldFile: Variant; newFile: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("files_moved")
  let args = [oldFile, newFile]
  self.emitSignal(signalname, args)

proc call_folderMoved*(self: FileSystemDock; oldFolder: Variant; newFolder: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("folder_moved")
  let args = [oldFolder, newFolder]
  self.emitSignal(signalname, args)

proc call_folderColorChanged*(self: FileSystemDock): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("folder_color_changed")
  self.emitSignal(signalname)

proc call_displayModeChanged*(self: FileSystemDock): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("display_mode_changed")
  self.emitSignal(signalname)
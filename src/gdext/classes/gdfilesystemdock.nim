{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvboxcontainer; export gdvboxcontainer

proc navigateToPath*(self: FileSystemDock; path: String): void =
  expandMethodBind(className FileSystemDock, "navigate_to_path", 83702148)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc addResourceTooltipPlugin*(self: FileSystemDock; plugin: gdref EditorResourceTooltipPlugin): void =
  expandMethodBind(className FileSystemDock, "add_resource_tooltip_plugin", 2258356838)
  var `?param` = [getPtr plugin]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeResourceTooltipPlugin*(self: FileSystemDock; plugin: gdref EditorResourceTooltipPlugin): void =
  expandMethodBind(className FileSystemDock, "remove_resource_tooltip_plugin", 2258356838)
  var `?param` = [getPtr plugin]
  methodbind.ptrcall(self, addr `?param`[0])

const FileSystemDock_vmap =
  VBoxContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FileSystemDock]): Table[string, string] = FileSystemDock_vmap

proc inherit*(self: FileSystemDock; file: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("inherit")
  let args = [file]
  self.emitSignal(signalname, args)

proc instantiate*(self: FileSystemDock; files: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("instantiate")
  let args = [files]
  self.emitSignal(signalname, args)

proc resourceRemoved*(self: FileSystemDock; resource: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resource_removed")
  let args = [resource]
  self.emitSignal(signalname, args)

proc fileRemoved*(self: FileSystemDock; file: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("file_removed")
  let args = [file]
  self.emitSignal(signalname, args)

proc folderRemoved*(self: FileSystemDock; folder: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("folder_removed")
  let args = [folder]
  self.emitSignal(signalname, args)

proc filesMoved*(self: FileSystemDock; oldFile: Variant; newFile: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("files_moved")
  let args = [oldFile, newFile]
  self.emitSignal(signalname, args)

proc folderMoved*(self: FileSystemDock; oldFolder: Variant; newFolder: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("folder_moved")
  let args = [oldFolder, newFolder]
  self.emitSignal(signalname, args)

proc folderColorChanged*(self: FileSystemDock): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("folder_color_changed")
  self.emitSignal(signalname)

proc displayModeChanged*(self: FileSystemDock): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("display_mode_changed")
  self.emitSignal(signalname)
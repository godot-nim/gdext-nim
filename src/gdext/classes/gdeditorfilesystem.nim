{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode; export gdnode

proc getFilesystem*(self: EditorFileSystem): EditorFileSystemDirectory =
  expandMethodBind(className EditorFileSystem, "get_filesystem", 842323275)
  var ret: encoded EditorFileSystemDirectory
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EditorFileSystemDirectory)

proc isScanning*(self: EditorFileSystem): bool =
  expandMethodBind(className EditorFileSystem, "is_scanning", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getScanningProgress*(self: EditorFileSystem): Float =
  expandMethodBind(className EditorFileSystem, "get_scanning_progress", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc scan*(self: EditorFileSystem): void =
  expandMethodBind(className EditorFileSystem, "scan", 3218959716)
  methodbind.ptrcall(self, nil)

proc scanSources*(self: EditorFileSystem): void =
  expandMethodBind(className EditorFileSystem, "scan_sources", 3218959716)
  methodbind.ptrcall(self, nil)

proc updateFile*(self: EditorFileSystem; path: String): void =
  expandMethodBind(className EditorFileSystem, "update_file", 83702148)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFilesystemPath*(self: EditorFileSystem; path: String): EditorFileSystemDirectory =
  expandMethodBind(className EditorFileSystem, "get_filesystem_path", 3188521125)
  var `?param` = [getPtr path]
  var ret: encoded EditorFileSystemDirectory
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(EditorFileSystemDirectory)

proc getFileType*(self: EditorFileSystem; path: String): String =
  expandMethodBind(className EditorFileSystem, "get_file_type", 3135753539)
  var `?param` = [getPtr path]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc reimportFiles*(self: EditorFileSystem; files: PackedStringArray): void =
  expandMethodBind(className EditorFileSystem, "reimport_files", 4015028928)
  var `?param` = [getPtr files]
  methodbind.ptrcall(self, addr `?param`[0])

const EditorFileSystem_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorFileSystem]): Table[string, string] = EditorFileSystem_vmap

proc filesystemChanged*(self: EditorFileSystem): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("filesystem_changed")
  self.emitSignal(signalname)

proc scriptClassesUpdated*(self: EditorFileSystem): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("script_classes_updated")
  self.emitSignal(signalname)

proc sourcesChanged*(self: EditorFileSystem; exist: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("sources_changed")
  let args = [exist]
  self.emitSignal(signalname, args)

proc resourcesReimporting*(self: EditorFileSystem; resources: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resources_reimporting")
  let args = [resources]
  self.emitSignal(signalname, args)

proc resourcesReimported*(self: EditorFileSystem; resources: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resources_reimported")
  let args = [resources]
  self.emitSignal(signalname, args)

proc resourcesReload*(self: EditorFileSystem; resources: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resources_reload")
  let args = [resources]
  self.emitSignal(signalname, args)
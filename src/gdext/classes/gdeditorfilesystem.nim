{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode
export EditorFileSystem

proc getFilesystem*(self: EditorFileSystem): EditorFileSystemDirectory =
  expandMethodBind(className EditorFileSystem, "get_filesystem", 842323275)
  var ret: encoded EditorFileSystemDirectory
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(EditorFileSystemDirectory)

proc isScanning*(self: EditorFileSystem): bool =
  expandMethodBind(className EditorFileSystem, "is_scanning", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getScanningProgress*(self: EditorFileSystem): Float =
  expandMethodBind(className EditorFileSystem, "get_scanning_progress", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc scan*(self: EditorFileSystem): void =
  expandMethodBind(className EditorFileSystem, "scan", 3218959716)
  methodbind.ptrcall(self, [])

proc scanSources*(self: EditorFileSystem): void =
  expandMethodBind(className EditorFileSystem, "scan_sources", 3218959716)
  methodbind.ptrcall(self, [])

proc updateFile*(self: EditorFileSystem; path: String): void =
  expandMethodBind(className EditorFileSystem, "update_file", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc getFilesystemPath*(self: EditorFileSystem; path: String): EditorFileSystemDirectory =
  expandMethodBind(className EditorFileSystem, "get_filesystem_path", 3188521125)
  var ret: encoded EditorFileSystemDirectory
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(EditorFileSystemDirectory)

proc getFileType*(self: EditorFileSystem; path: String): String =
  expandMethodBind(className EditorFileSystem, "get_file_type", 3135753539)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(String)

proc reimportFiles*(self: EditorFileSystem; files: PackedStringArray): void =
  expandMethodBind(className EditorFileSystem, "reimport_files", 4015028928)
  methodbind.ptrcall(self, [getPtr files])

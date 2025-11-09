{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(EditorFileSystem, Node)

proc getFilesystem*(self: EditorFileSystem): EditorFileSystemDirectory =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystem, "get_filesystem", 842323275)
  methodbind.ptrcall(self, [], EditorFileSystemDirectory)

proc isScanning*(self: EditorFileSystem): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystem, "is_scanning", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getScanningProgress*(self: EditorFileSystem): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystem, "get_scanning_progress", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc scan*(self: EditorFileSystem): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystem, "scan", 3218959716)
  methodbind.ptrcall(self, [], void)

proc scanSources*(self: EditorFileSystem): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystem, "scan_sources", 3218959716)
  methodbind.ptrcall(self, [], void)

proc updateFile*(self: EditorFileSystem; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystem, "update_file", 83702148)
  methodbind.ptrcall(self, [getPtr path], void)

proc getFilesystemPath*(self: EditorFileSystem; path: String): EditorFileSystemDirectory =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystem, "get_filesystem_path", 3188521125)
  methodbind.ptrcall(self, [getPtr path], EditorFileSystemDirectory)

proc getFileType*(self: EditorFileSystem; path: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystem, "get_file_type", 3135753539)
  methodbind.ptrcall(self, [getPtr path], String)

proc reimportFiles*(self: EditorFileSystem; files: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystem, "reimport_files", 4015028928)
  methodbind.ptrcall(self, [getPtr files], void)

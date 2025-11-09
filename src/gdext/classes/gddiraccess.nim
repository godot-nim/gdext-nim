{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(DirAccess, RefCounted)

proc open*(_: typedesc[DirAccess]; path: String): gdref DirAccess =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "open", 1923528528)
  methodbind.ptrcall([getPtr path], gdref DirAccess)

proc getOpenError*(_: typedesc[DirAccess]): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "get_open_error", 166280745)
  methodbind.ptrcall([], Error)

proc createTemp*(_: typedesc[DirAccess]; prefix: String = newGdString(); keep: bool = false): gdref DirAccess =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "create_temp", 812913566)
  methodbind.ptrcall([getPtr prefix, getPtr keep], gdref DirAccess)

proc listDirBegin*(self: DirAccess): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "list_dir_begin", 166280745)
  methodbind.ptrcall(self, [], Error)

proc getNext*(self: DirAccess): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "get_next", 2841200299)
  methodbind.ptrcall(self, [], String)

proc currentIsDir*(self: DirAccess): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "current_is_dir", 36873697)
  methodbind.ptrcall(self, [], bool)

proc listDirEnd*(self: DirAccess): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "list_dir_end", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getFiles*(self: DirAccess): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "get_files", 2981934095)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getFilesAt*(_: typedesc[DirAccess]; path: String): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "get_files_at", 3538744774)
  methodbind.ptrcall([getPtr path], PackedStringArray)

proc getDirectories*(self: DirAccess): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "get_directories", 2981934095)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getDirectoriesAt*(_: typedesc[DirAccess]; path: String): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "get_directories_at", 3538744774)
  methodbind.ptrcall([getPtr path], PackedStringArray)

proc getDriveCount*(_: typedesc[DirAccess]): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "get_drive_count", 2455072627)
  methodbind.ptrcall([], int32)

proc getDriveName*(_: typedesc[DirAccess]; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "get_drive_name", 990163283)
  methodbind.ptrcall([getPtr idx], String)

proc getCurrentDrive*(self: DirAccess): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "get_current_drive", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc changeDir*(self: DirAccess; toDir: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "change_dir", 166001499)
  methodbind.ptrcall(self, [getPtr toDir], Error)

proc getCurrentDir*(self: DirAccess; includeDrive: bool = true): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "get_current_dir", 1287308131)
  methodbind.ptrcall(self, [getPtr includeDrive], String)

proc makeDir*(self: DirAccess; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "make_dir", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc makeDirAbsolute*(_: typedesc[DirAccess]; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "make_dir_absolute", 166001499)
  methodbind.ptrcall([getPtr path], Error)

proc makeDirRecursive*(self: DirAccess; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "make_dir_recursive", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc makeDirRecursiveAbsolute*(_: typedesc[DirAccess]; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "make_dir_recursive_absolute", 166001499)
  methodbind.ptrcall([getPtr path], Error)

proc fileExists*(self: DirAccess; path: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "file_exists", 2323990056)
  methodbind.ptrcall(self, [getPtr path], bool)

proc dirExists*(self: DirAccess; path: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "dir_exists", 2323990056)
  methodbind.ptrcall(self, [getPtr path], bool)

proc dirExistsAbsolute*(_: typedesc[DirAccess]; path: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "dir_exists_absolute", 2323990056)
  methodbind.ptrcall([getPtr path], bool)

proc getSpaceLeft*(self: DirAccess): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "get_space_left", 2455072627)
  methodbind.ptrcall(self, [], uint64)

proc copy*(self: DirAccess; `from`: String; to: String; chmodFlags: int32 = -1): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "copy", 1063198817)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to, getPtr chmodFlags], Error)

proc copyAbsolute*(_: typedesc[DirAccess]; `from`: String; to: String; chmodFlags: int32 = -1): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "copy_absolute", 1063198817)
  methodbind.ptrcall([getPtr `from`, getPtr to, getPtr chmodFlags], Error)

proc rename*(self: DirAccess; `from`: String; to: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "rename", 852856452)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to], Error)

proc renameAbsolute*(_: typedesc[DirAccess]; `from`: String; to: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "rename_absolute", 852856452)
  methodbind.ptrcall([getPtr `from`, getPtr to], Error)

proc remove*(self: DirAccess; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "remove", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc removeAbsolute*(_: typedesc[DirAccess]; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "remove_absolute", 166001499)
  methodbind.ptrcall([getPtr path], Error)

proc isLink*(self: DirAccess; path: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "is_link", 2323990056)
  methodbind.ptrcall(self, [getPtr path], bool)

proc readLink*(self: DirAccess; path: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "read_link", 1703090593)
  methodbind.ptrcall(self, [getPtr path], String)

proc createLink*(self: DirAccess; source: String; target: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "create_link", 852856452)
  methodbind.ptrcall(self, [getPtr source, getPtr target], Error)

proc isBundle*(self: DirAccess; path: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "is_bundle", 3927539163)
  methodbind.ptrcall(self, [getPtr path], bool)

proc setIncludeNavigational*(self: DirAccess; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "set_include_navigational", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getIncludeNavigational*(self: DirAccess): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "get_include_navigational", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setIncludeHidden*(self: DirAccess; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "set_include_hidden", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getIncludeHidden*(self: DirAccess): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "get_include_hidden", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getFilesystemType*(self: DirAccess): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "get_filesystem_type", 201670096)
  methodbind.ptrcall(self, [], String)

proc isCaseSensitive*(self: DirAccess; path: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "is_case_sensitive", 3927539163)
  methodbind.ptrcall(self, [getPtr path], bool)

proc isEquivalent*(self: DirAccess; pathA: String; pathB: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirAccess, "is_equivalent", 820780508)
  methodbind.ptrcall(self, [getPtr pathA, getPtr pathB], bool)

template includeNavigational*(self: DirAccess): untyped = self.getIncludeNavigational()
template `includeNavigational=`*(self: DirAccess; value) = self.setIncludeNavigational(value)

template includeHidden*(self: DirAccess): untyped = self.getIncludeHidden()
template `includeHidden=`*(self: DirAccess; value) = self.setIncludeHidden(value)

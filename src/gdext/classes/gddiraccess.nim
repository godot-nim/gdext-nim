{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc open*(_: typedesc[DirAccess]; path: String): gdref DirAccess =
  expandMethodBind(className DirAccess, "open", 1923528528)
  var ret: encoded gdref DirAccess
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(gdref DirAccess)

proc getOpenError*(_: typedesc[DirAccess]): Error =
  expandMethodBind(className DirAccess, "get_open_error", 166280745)
  var ret: encoded Error
  methodbind.ptrcall([], addr ret)
  (addr ret).decode_result(Error)

proc listDirBegin*(self: DirAccess): Error =
  expandMethodBind(className DirAccess, "list_dir_begin", 2610976713)
  var ret: encoded Error
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Error)

proc getNext*(self: DirAccess): String =
  expandMethodBind(className DirAccess, "get_next", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc currentIsDir*(self: DirAccess): bool =
  expandMethodBind(className DirAccess, "current_is_dir", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc listDirEnd*(self: DirAccess): void =
  expandMethodBind(className DirAccess, "list_dir_end", 3218959716)
  methodbind.ptrcall(self, [])

proc getFiles*(self: DirAccess): PackedStringArray =
  expandMethodBind(className DirAccess, "get_files", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getFilesAt*(_: typedesc[DirAccess]; path: String): PackedStringArray =
  expandMethodBind(className DirAccess, "get_files_at", 3538744774)
  var ret: encoded PackedStringArray
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getDirectories*(self: DirAccess): PackedStringArray =
  expandMethodBind(className DirAccess, "get_directories", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getDirectoriesAt*(_: typedesc[DirAccess]; path: String): PackedStringArray =
  expandMethodBind(className DirAccess, "get_directories_at", 3538744774)
  var ret: encoded PackedStringArray
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getDriveCount*(_: typedesc[DirAccess]): int32 =
  expandMethodBind(className DirAccess, "get_drive_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall([], addr ret)
  (addr ret).decode_result(int32)

proc getDriveName*(_: typedesc[DirAccess]; idx: int32): String =
  expandMethodBind(className DirAccess, "get_drive_name", 990163283)
  var ret: encoded String
  methodbind.ptrcall([getPtr idx], addr ret)
  (addr ret).decode_result(String)

proc getCurrentDrive*(self: DirAccess): int32 =
  expandMethodBind(className DirAccess, "get_current_drive", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc changeDir*(self: DirAccess; toDir: String): Error =
  expandMethodBind(className DirAccess, "change_dir", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr toDir], addr ret)
  (addr ret).decode_result(Error)

proc getCurrentDir*(self: DirAccess; includeDrive: bool = true): String =
  expandMethodBind(className DirAccess, "get_current_dir", 1287308131)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr includeDrive], addr ret)
  (addr ret).decode_result(String)

proc makeDir*(self: DirAccess; path: String): Error =
  expandMethodBind(className DirAccess, "make_dir", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc makeDirAbsolute*(_: typedesc[DirAccess]; path: String): Error =
  expandMethodBind(className DirAccess, "make_dir_absolute", 166001499)
  var ret: encoded Error
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc makeDirRecursive*(self: DirAccess; path: String): Error =
  expandMethodBind(className DirAccess, "make_dir_recursive", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc makeDirRecursiveAbsolute*(_: typedesc[DirAccess]; path: String): Error =
  expandMethodBind(className DirAccess, "make_dir_recursive_absolute", 166001499)
  var ret: encoded Error
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc fileExists*(self: DirAccess; path: String): bool =
  expandMethodBind(className DirAccess, "file_exists", 2323990056)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc dirExists*(self: DirAccess; path: String): bool =
  expandMethodBind(className DirAccess, "dir_exists", 2323990056)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc dirExistsAbsolute*(_: typedesc[DirAccess]; path: String): bool =
  expandMethodBind(className DirAccess, "dir_exists_absolute", 2323990056)
  var ret: encoded bool
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc getSpaceLeft*(self: DirAccess): uint64 =
  expandMethodBind(className DirAccess, "get_space_left", 2455072627)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc copy*(self: DirAccess; `from`: String; to: String; chmodFlags: int32 = -1): Error =
  expandMethodBind(className DirAccess, "copy", 1063198817)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr `from`, getPtr to, getPtr chmodFlags], addr ret)
  (addr ret).decode_result(Error)

proc copyAbsolute*(_: typedesc[DirAccess]; `from`: String; to: String; chmodFlags: int32 = -1): Error =
  expandMethodBind(className DirAccess, "copy_absolute", 1063198817)
  var ret: encoded Error
  methodbind.ptrcall([getPtr `from`, getPtr to, getPtr chmodFlags], addr ret)
  (addr ret).decode_result(Error)

proc rename*(self: DirAccess; `from`: String; to: String): Error =
  expandMethodBind(className DirAccess, "rename", 852856452)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr `from`, getPtr to], addr ret)
  (addr ret).decode_result(Error)

proc renameAbsolute*(_: typedesc[DirAccess]; `from`: String; to: String): Error =
  expandMethodBind(className DirAccess, "rename_absolute", 852856452)
  var ret: encoded Error
  methodbind.ptrcall([getPtr `from`, getPtr to], addr ret)
  (addr ret).decode_result(Error)

proc remove*(self: DirAccess; path: String): Error =
  expandMethodBind(className DirAccess, "remove", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc removeAbsolute*(_: typedesc[DirAccess]; path: String): Error =
  expandMethodBind(className DirAccess, "remove_absolute", 166001499)
  var ret: encoded Error
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc isLink*(self: DirAccess; path: String): bool =
  expandMethodBind(className DirAccess, "is_link", 2323990056)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc readLink*(self: DirAccess; path: String): String =
  expandMethodBind(className DirAccess, "read_link", 1703090593)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(String)

proc createLink*(self: DirAccess; source: String; target: String): Error =
  expandMethodBind(className DirAccess, "create_link", 852856452)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr source, getPtr target], addr ret)
  (addr ret).decode_result(Error)

proc setIncludeNavigational*(self: DirAccess; enable: bool): void =
  expandMethodBind(className DirAccess, "set_include_navigational", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getIncludeNavigational*(self: DirAccess): bool =
  expandMethodBind(className DirAccess, "get_include_navigational", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setIncludeHidden*(self: DirAccess; enable: bool): void =
  expandMethodBind(className DirAccess, "set_include_hidden", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getIncludeHidden*(self: DirAccess): bool =
  expandMethodBind(className DirAccess, "get_include_hidden", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isCaseSensitive*(self: DirAccess; path: String): bool =
  expandMethodBind(className DirAccess, "is_case_sensitive", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(bool)

template includeNavigational*(self: DirAccess): untyped = self.getIncludeNavigational()
template `includeNavigational=`*(self: DirAccess; value) = self.setIncludeNavigational(value)

template includeHidden*(self: DirAccess): untyped = self.getIncludeHidden()
template `includeHidden=`*(self: DirAccess; value) = self.setIncludeHidden(value)

const DirAccess_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[DirAccess]): Table[string, string] = DirAccess_vmap
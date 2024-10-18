{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getSubdirCount*(self: EditorFileSystemDirectory): int32 =
  expandMethodBind(className EditorFileSystemDirectory, "get_subdir_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getSubdir*(self: EditorFileSystemDirectory; idx: int32): EditorFileSystemDirectory =
  expandMethodBind(className EditorFileSystemDirectory, "get_subdir", 2330964164)
  var `?param` = [getPtr idx]
  var ret: encoded EditorFileSystemDirectory
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(EditorFileSystemDirectory)

proc getFileCount*(self: EditorFileSystemDirectory): int32 =
  expandMethodBind(className EditorFileSystemDirectory, "get_file_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getFile*(self: EditorFileSystemDirectory; idx: int32): String =
  expandMethodBind(className EditorFileSystemDirectory, "get_file", 844755477)
  var `?param` = [getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getFilePath*(self: EditorFileSystemDirectory; idx: int32): String =
  expandMethodBind(className EditorFileSystemDirectory, "get_file_path", 844755477)
  var `?param` = [getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getFileType*(self: EditorFileSystemDirectory; idx: int32): StringName =
  expandMethodBind(className EditorFileSystemDirectory, "get_file_type", 659327637)
  var `?param` = [getPtr idx]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc getFileScriptClassName*(self: EditorFileSystemDirectory; idx: int32): String =
  expandMethodBind(className EditorFileSystemDirectory, "get_file_script_class_name", 844755477)
  var `?param` = [getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getFileScriptClassExtends*(self: EditorFileSystemDirectory; idx: int32): String =
  expandMethodBind(className EditorFileSystemDirectory, "get_file_script_class_extends", 844755477)
  var `?param` = [getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getFileImportIsValid*(self: EditorFileSystemDirectory; idx: int32): bool =
  expandMethodBind(className EditorFileSystemDirectory, "get_file_import_is_valid", 1116898809)
  var `?param` = [getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getName*(self: EditorFileSystemDirectory): String =
  expandMethodBind(className EditorFileSystemDirectory, "get_name", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getPath*(self: EditorFileSystemDirectory): String =
  expandMethodBind(className EditorFileSystemDirectory, "get_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getParent*(self: EditorFileSystemDirectory): EditorFileSystemDirectory =
  expandMethodBind(className EditorFileSystemDirectory, "get_parent", 842323275)
  var ret: encoded EditorFileSystemDirectory
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EditorFileSystemDirectory)

proc findFileIndex*(self: EditorFileSystemDirectory; name: String): int32 =
  expandMethodBind(className EditorFileSystemDirectory, "find_file_index", 1321353865)
  var `?param` = [getPtr name]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc findDirIndex*(self: EditorFileSystemDirectory; name: String): int32 =
  expandMethodBind(className EditorFileSystemDirectory, "find_dir_index", 1321353865)
  var `?param` = [getPtr name]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

const EditorFileSystemDirectory_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorFileSystemDirectory]): Table[string, string] = EditorFileSystemDirectory_vmap
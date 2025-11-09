{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(EditorFileSystemDirectory, Object)

proc getSubdirCount*(self: EditorFileSystemDirectory): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystemDirectory, "get_subdir_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSubdir*(self: EditorFileSystemDirectory; idx: int32): EditorFileSystemDirectory =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystemDirectory, "get_subdir", 2330964164)
  methodbind.ptrcall(self, [getPtr idx], EditorFileSystemDirectory)

proc getFileCount*(self: EditorFileSystemDirectory): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystemDirectory, "get_file_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getFile*(self: EditorFileSystemDirectory; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystemDirectory, "get_file", 844755477)
  methodbind.ptrcall(self, [getPtr idx], String)

proc getFilePath*(self: EditorFileSystemDirectory; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystemDirectory, "get_file_path", 844755477)
  methodbind.ptrcall(self, [getPtr idx], String)

proc getFileType*(self: EditorFileSystemDirectory; idx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystemDirectory, "get_file_type", 659327637)
  methodbind.ptrcall(self, [getPtr idx], StringName)

proc getFileScriptClassName*(self: EditorFileSystemDirectory; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystemDirectory, "get_file_script_class_name", 844755477)
  methodbind.ptrcall(self, [getPtr idx], String)

proc getFileScriptClassExtends*(self: EditorFileSystemDirectory; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystemDirectory, "get_file_script_class_extends", 844755477)
  methodbind.ptrcall(self, [getPtr idx], String)

proc getFileImportIsValid*(self: EditorFileSystemDirectory; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystemDirectory, "get_file_import_is_valid", 1116898809)
  methodbind.ptrcall(self, [getPtr idx], bool)

proc getName*(self: EditorFileSystemDirectory): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystemDirectory, "get_name", 2841200299)
  methodbind.ptrcall(self, [], String)

proc getPath*(self: EditorFileSystemDirectory): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystemDirectory, "get_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc getParent*(self: EditorFileSystemDirectory): EditorFileSystemDirectory =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystemDirectory, "get_parent", 842323275)
  methodbind.ptrcall(self, [], EditorFileSystemDirectory)

proc findFileIndex*(self: EditorFileSystemDirectory; name: String): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystemDirectory, "find_file_index", 1321353865)
  methodbind.ptrcall(self, [getPtr name], int32)

proc findDirIndex*(self: EditorFileSystemDirectory; name: String): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileSystemDirectory, "find_dir_index", 1321353865)
  methodbind.ptrcall(self, [getPtr name], int32)

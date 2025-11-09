{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(EditorPaths, Object)

proc getDataDir*(self: EditorPaths): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPaths, "get_data_dir", 201670096)
  methodbind.ptrcall(self, [], String)

proc getConfigDir*(self: EditorPaths): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPaths, "get_config_dir", 201670096)
  methodbind.ptrcall(self, [], String)

proc getCacheDir*(self: EditorPaths): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPaths, "get_cache_dir", 201670096)
  methodbind.ptrcall(self, [], String)

proc isSelfContained*(self: EditorPaths): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPaths, "is_self_contained", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getSelfContainedFile*(self: EditorPaths): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPaths, "get_self_contained_file", 201670096)
  methodbind.ptrcall(self, [], String)

proc getProjectSettingsDir*(self: EditorPaths): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorPaths, "get_project_settings_dir", 201670096)
  methodbind.ptrcall(self, [], String)

{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc getDataDir*(self: EditorPaths): String =
  expandMethodBind(className EditorPaths, "get_data_dir", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getConfigDir*(self: EditorPaths): String =
  expandMethodBind(className EditorPaths, "get_config_dir", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getCacheDir*(self: EditorPaths): String =
  expandMethodBind(className EditorPaths, "get_cache_dir", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc isSelfContained*(self: EditorPaths): bool =
  expandMethodBind(className EditorPaths, "is_self_contained", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getSelfContainedFile*(self: EditorPaths): String =
  expandMethodBind(className EditorPaths, "get_self_contained_file", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getProjectSettingsDir*(self: EditorPaths): String =
  expandMethodBind(className EditorPaths, "get_project_settings_dir", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

const EditorPaths_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorPaths]): Table[string, string] = EditorPaths_vmap
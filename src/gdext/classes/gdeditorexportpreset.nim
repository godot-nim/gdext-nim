{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted
export EditorExportPreset

proc has*(self: EditorExportPreset; property: StringName): bool =
  expandMethodBind(className EditorExportPreset, "has", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr property], addr ret)
  (addr ret).decode_result(bool)

proc getFilesToExport*(self: EditorExportPreset): PackedStringArray =
  expandMethodBind(className EditorExportPreset, "get_files_to_export", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getCustomizedFiles*(self: EditorExportPreset): Dictionary =
  expandMethodBind(className EditorExportPreset, "get_customized_files", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc getCustomizedFilesCount*(self: EditorExportPreset): int32 =
  expandMethodBind(className EditorExportPreset, "get_customized_files_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc hasExportFile*(self: EditorExportPreset; path: String): bool =
  expandMethodBind(className EditorExportPreset, "has_export_file", 2323990056)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc getFileExportMode*(self: EditorExportPreset; path: String; default: EditorExportPreset_FileExportMode = modeFileNotCustomized): EditorExportPreset_FileExportMode =
  expandMethodBind(className EditorExportPreset, "get_file_export_mode", 407825436)
  var ret: encoded EditorExportPreset_FileExportMode
  methodbind.ptrcall(self, [getPtr path, getPtr default], addr ret)
  (addr ret).decode_result(EditorExportPreset_FileExportMode)

proc getPresetName*(self: EditorExportPreset): String =
  expandMethodBind(className EditorExportPreset, "get_preset_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc isRunnable*(self: EditorExportPreset): bool =
  expandMethodBind(className EditorExportPreset, "is_runnable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc areAdvancedOptionsEnabled*(self: EditorExportPreset): bool =
  expandMethodBind(className EditorExportPreset, "are_advanced_options_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isDedicatedServer*(self: EditorExportPreset): bool =
  expandMethodBind(className EditorExportPreset, "is_dedicated_server", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getExportFilter*(self: EditorExportPreset): EditorExportPreset_ExportFilter =
  expandMethodBind(className EditorExportPreset, "get_export_filter", 4227045696)
  var ret: encoded EditorExportPreset_ExportFilter
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(EditorExportPreset_ExportFilter)

proc getIncludeFilter*(self: EditorExportPreset): String =
  expandMethodBind(className EditorExportPreset, "get_include_filter", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getExcludeFilter*(self: EditorExportPreset): String =
  expandMethodBind(className EditorExportPreset, "get_exclude_filter", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getCustomFeatures*(self: EditorExportPreset): String =
  expandMethodBind(className EditorExportPreset, "get_custom_features", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getPatches*(self: EditorExportPreset): PackedStringArray =
  expandMethodBind(className EditorExportPreset, "get_patches", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getExportPath*(self: EditorExportPreset): String =
  expandMethodBind(className EditorExportPreset, "get_export_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getEncryptionInFilter*(self: EditorExportPreset): String =
  expandMethodBind(className EditorExportPreset, "get_encryption_in_filter", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getEncryptionExFilter*(self: EditorExportPreset): String =
  expandMethodBind(className EditorExportPreset, "get_encryption_ex_filter", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getEncryptPck*(self: EditorExportPreset): bool =
  expandMethodBind(className EditorExportPreset, "get_encrypt_pck", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getEncryptDirectory*(self: EditorExportPreset): bool =
  expandMethodBind(className EditorExportPreset, "get_encrypt_directory", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getEncryptionKey*(self: EditorExportPreset): String =
  expandMethodBind(className EditorExportPreset, "get_encryption_key", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getScriptExportMode*(self: EditorExportPreset): int32 =
  expandMethodBind(className EditorExportPreset, "get_script_export_mode", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getOrEnv*(self: EditorExportPreset; name: StringName; envVar: String): Variant =
  expandMethodBind(className EditorExportPreset, "get_or_env", 389838787)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr name, getPtr envVar], addr ret)
  (addr ret).decode_result(Variant)

proc getVersion*(self: EditorExportPreset; name: StringName; windowsVersion: bool): String =
  expandMethodBind(className EditorExportPreset, "get_version", 1132184663)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr name, getPtr windowsVersion], addr ret)
  (addr ret).decode_result(String)

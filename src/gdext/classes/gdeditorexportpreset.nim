{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorExportPreset, RefCounted)

proc has*(self: EditorExportPreset; property: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "has", 2619796661)
  methodbind.ptrcall(self, [getPtr property], bool)

proc getFilesToExport*(self: EditorExportPreset): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_files_to_export", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getCustomizedFiles*(self: EditorExportPreset): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_customized_files", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getCustomizedFilesCount*(self: EditorExportPreset): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_customized_files_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc hasExportFile*(self: EditorExportPreset; path: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "has_export_file", 2323990056)
  methodbind.ptrcall(self, [getPtr path], bool)

proc getFileExportMode*(self: EditorExportPreset; path: String; default: EditorExportPreset_FileExportMode = modeFileNotCustomized): EditorExportPreset_FileExportMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_file_export_mode", 407825436)
  methodbind.ptrcall(self, [getPtr path, getPtr default], EditorExportPreset_FileExportMode)

proc getProjectSetting*(self: EditorExportPreset; name: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_project_setting", 2138907829)
  methodbind.ptrcall(self, [getPtr name], Variant)

proc getPresetName*(self: EditorExportPreset): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_preset_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc isRunnable*(self: EditorExportPreset): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "is_runnable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc areAdvancedOptionsEnabled*(self: EditorExportPreset): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "are_advanced_options_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isDedicatedServer*(self: EditorExportPreset): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "is_dedicated_server", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getExportFilter*(self: EditorExportPreset): EditorExportPreset_ExportFilter =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_export_filter", 4227045696)
  methodbind.ptrcall(self, [], EditorExportPreset_ExportFilter)

proc getIncludeFilter*(self: EditorExportPreset): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_include_filter", 201670096)
  methodbind.ptrcall(self, [], String)

proc getExcludeFilter*(self: EditorExportPreset): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_exclude_filter", 201670096)
  methodbind.ptrcall(self, [], String)

proc getCustomFeatures*(self: EditorExportPreset): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_custom_features", 201670096)
  methodbind.ptrcall(self, [], String)

proc getPatches*(self: EditorExportPreset): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_patches", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getExportPath*(self: EditorExportPreset): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_export_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc getEncryptionInFilter*(self: EditorExportPreset): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_encryption_in_filter", 201670096)
  methodbind.ptrcall(self, [], String)

proc getEncryptionExFilter*(self: EditorExportPreset): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_encryption_ex_filter", 201670096)
  methodbind.ptrcall(self, [], String)

proc getEncryptPck*(self: EditorExportPreset): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_encrypt_pck", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getEncryptDirectory*(self: EditorExportPreset): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_encrypt_directory", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getEncryptionKey*(self: EditorExportPreset): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_encryption_key", 201670096)
  methodbind.ptrcall(self, [], String)

proc getScriptExportMode*(self: EditorExportPreset): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_script_export_mode", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getOrEnv*(self: EditorExportPreset; name: StringName; envVar: String): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_or_env", 389838787)
  methodbind.ptrcall(self, [getPtr name, getPtr envVar], Variant)

proc getVersion*(self: EditorExportPreset; name: StringName; windowsVersion: bool): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPreset, "get_version", 1132184663)
  methodbind.ptrcall(self, [getPtr name, getPtr windowsVersion], String)

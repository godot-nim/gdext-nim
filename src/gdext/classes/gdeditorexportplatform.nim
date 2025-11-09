{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorExportPlatform, RefCounted)

proc getOsName*(self: EditorExportPlatform): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "get_os_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc createPreset*(self: EditorExportPlatform): gdref EditorExportPreset =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "create_preset", 2572397818)
  methodbind.ptrcall(self, [], gdref EditorExportPreset)

proc findExportTemplate*(self: EditorExportPlatform; templateFileName: String): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "find_export_template", 2248993622)
  methodbind.ptrcall(self, [getPtr templateFileName], Dictionary)

proc getCurrentPresets*(self: EditorExportPlatform): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "get_current_presets", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc savePack*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String; embed: bool = false): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "save_pack", 3420080977)
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path, getPtr embed], Dictionary)

proc saveZip*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "save_zip", 1485052307)
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path], Dictionary)

proc savePackPatch*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "save_pack_patch", 1485052307)
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path], Dictionary)

proc saveZipPatch*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "save_zip_patch", 1485052307)
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path], Dictionary)

proc genExportFlags*(self: EditorExportPlatform; flags: set[EditorExportPlatform_DebugFlags]): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "gen_export_flags", 2976483270)
  methodbind.ptrcall(self, [getPtr flags], PackedStringArray)

proc exportProjectFiles*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; saveCb: Callable; sharedCb: Callable = callable()): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "export_project_files", 1063735070)
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr saveCb, getPtr sharedCb], Error)

proc exportProject*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String; flags: set[EditorExportPlatform_DebugFlags] = {}): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "export_project", 3879521245)
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path, getPtr flags], Error)

proc exportPack*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String; flags: set[EditorExportPlatform_DebugFlags] = {}): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "export_pack", 3879521245)
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path, getPtr flags], Error)

proc exportZip*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String; flags: set[EditorExportPlatform_DebugFlags] = {}): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "export_zip", 3879521245)
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path, getPtr flags], Error)

proc exportPackPatch*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String; patches: PackedStringArray = PackedStringArray(); flags: set[EditorExportPlatform_DebugFlags] = {}): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "export_pack_patch", 608021658)
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path, getPtr patches, getPtr flags], Error)

proc exportZipPatch*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String; patches: PackedStringArray = PackedStringArray(); flags: set[EditorExportPlatform_DebugFlags] = {}): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "export_zip_patch", 608021658)
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path, getPtr patches, getPtr flags], Error)

proc clearMessages*(self: EditorExportPlatform): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "clear_messages", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addMessage*(self: EditorExportPlatform; `type`: EditorExportPlatform_ExportMessageType; category: String; message: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "add_message", 782767225)
  methodbind.ptrcall(self, [getPtr `type`, getPtr category, getPtr message], void)

proc getMessageCount*(self: EditorExportPlatform): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "get_message_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getMessageType*(self: EditorExportPlatform; index: int32): EditorExportPlatform_ExportMessageType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "get_message_type", 2667287293)
  methodbind.ptrcall(self, [getPtr index], EditorExportPlatform_ExportMessageType)

proc getMessageCategory*(self: EditorExportPlatform; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "get_message_category", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc getMessageText*(self: EditorExportPlatform; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "get_message_text", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc getWorstMessageType*(self: EditorExportPlatform): EditorExportPlatform_ExportMessageType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "get_worst_message_type", 2580557466)
  methodbind.ptrcall(self, [], EditorExportPlatform_ExportMessageType)

proc sshRunOnRemote*(self: EditorExportPlatform; host: String; port: String; sshArg: PackedStringArray; cmdArgs: String; output: Array = newArray(); portFwd: int32 = -1): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "ssh_run_on_remote", 3163734797)
  methodbind.ptrcall(self, [getPtr host, getPtr port, getPtr sshArg, getPtr cmdArgs, getPtr output, getPtr portFwd], Error)

proc sshRunOnRemoteNoWait*(self: EditorExportPlatform; host: String; port: String; sshArgs: PackedStringArray; cmdArgs: String; portFwd: int32 = -1): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "ssh_run_on_remote_no_wait", 3606362233)
  methodbind.ptrcall(self, [getPtr host, getPtr port, getPtr sshArgs, getPtr cmdArgs, getPtr portFwd], int64)

proc sshPushToRemote*(self: EditorExportPlatform; host: String; port: String; scpArgs: PackedStringArray; srcFile: String; dstFile: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "ssh_push_to_remote", 218756989)
  methodbind.ptrcall(self, [getPtr host, getPtr port, getPtr scpArgs, getPtr srcFile, getPtr dstFile], Error)

proc getInternalExportFiles*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "get_internal_export_files", 89550086)
  methodbind.ptrcall(self, [getPtr preset, getPtr debug], Dictionary)

proc getForcedExportFiles*(_: typedesc[EditorExportPlatform]; preset: gdref EditorExportPreset = default gdref EditorExportPreset): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorExportPlatform, "get_forced_export_files", 1939331020)
  methodbind.ptrcall([getPtr preset], PackedStringArray)

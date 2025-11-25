{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorExportPlatform, RefCounted)

proc getOsName*(self: EditorExportPlatform): String =
  expandMethodBind(className EditorExportPlatform, "get_os_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc createPreset*(self: EditorExportPlatform): gdref EditorExportPreset =
  expandMethodBind(className EditorExportPlatform, "create_preset", 2572397818)
  var ret: encoded gdref EditorExportPreset
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref EditorExportPreset)

proc findExportTemplate*(self: EditorExportPlatform; templateFileName: String): Dictionary[Variant, Variant] =
  expandMethodBind(className EditorExportPlatform, "find_export_template", 2248993622)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr templateFileName], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc getCurrentPresets*(self: EditorExportPlatform): Array[Variant] =
  expandMethodBind(className EditorExportPlatform, "get_current_presets", 3995934104)
  var ret: encoded Array[Variant]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[Variant])

proc savePack*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String; embed: bool = false): Dictionary[Variant, Variant] =
  expandMethodBind(className EditorExportPlatform, "save_pack", 3420080977)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path, getPtr embed], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc saveZip*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String): Dictionary[Variant, Variant] =
  expandMethodBind(className EditorExportPlatform, "save_zip", 1485052307)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc savePackPatch*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String): Dictionary[Variant, Variant] =
  expandMethodBind(className EditorExportPlatform, "save_pack_patch", 1485052307)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc saveZipPatch*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String): Dictionary[Variant, Variant] =
  expandMethodBind(className EditorExportPlatform, "save_zip_patch", 1485052307)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc genExportFlags*(self: EditorExportPlatform; flags: set[EditorExportPlatform_DebugFlags]): PackedStringArray =
  expandMethodBind(className EditorExportPlatform, "gen_export_flags", 2976483270)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr flags], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc exportProjectFiles*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; saveCb: Callable; sharedCb: Callable = callable()): Error =
  expandMethodBind(className EditorExportPlatform, "export_project_files", 1063735070)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr saveCb, getPtr sharedCb], addr ret)
  (addr ret).decode_result(Error)

proc exportProject*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String; flags: set[EditorExportPlatform_DebugFlags] = {}): Error =
  expandMethodBind(className EditorExportPlatform, "export_project", 3879521245)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path, getPtr flags], addr ret)
  (addr ret).decode_result(Error)

proc exportPack*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String; flags: set[EditorExportPlatform_DebugFlags] = {}): Error =
  expandMethodBind(className EditorExportPlatform, "export_pack", 3879521245)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path, getPtr flags], addr ret)
  (addr ret).decode_result(Error)

proc exportZip*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String; flags: set[EditorExportPlatform_DebugFlags] = {}): Error =
  expandMethodBind(className EditorExportPlatform, "export_zip", 3879521245)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path, getPtr flags], addr ret)
  (addr ret).decode_result(Error)

proc exportPackPatch*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String; patches: PackedStringArray = PackedStringArray(); flags: set[EditorExportPlatform_DebugFlags] = {}): Error =
  expandMethodBind(className EditorExportPlatform, "export_pack_patch", 608021658)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path, getPtr patches, getPtr flags], addr ret)
  (addr ret).decode_result(Error)

proc exportZipPatch*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool; path: String; patches: PackedStringArray = PackedStringArray(); flags: set[EditorExportPlatform_DebugFlags] = {}): Error =
  expandMethodBind(className EditorExportPlatform, "export_zip_patch", 608021658)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr preset, getPtr debug, getPtr path, getPtr patches, getPtr flags], addr ret)
  (addr ret).decode_result(Error)

proc clearMessages*(self: EditorExportPlatform): void =
  expandMethodBind(className EditorExportPlatform, "clear_messages", 3218959716)
  methodbind.ptrcall(self, [])

proc addMessage*(self: EditorExportPlatform; `type`: EditorExportPlatform_ExportMessageType; category: String; message: String): void =
  expandMethodBind(className EditorExportPlatform, "add_message", 782767225)
  methodbind.ptrcall(self, [getPtr `type`, getPtr category, getPtr message])

proc getMessageCount*(self: EditorExportPlatform): int32 =
  expandMethodBind(className EditorExportPlatform, "get_message_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getMessageType*(self: EditorExportPlatform; index: int32): EditorExportPlatform_ExportMessageType =
  expandMethodBind(className EditorExportPlatform, "get_message_type", 2667287293)
  var ret: encoded EditorExportPlatform_ExportMessageType
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(EditorExportPlatform_ExportMessageType)

proc getMessageCategory*(self: EditorExportPlatform; index: int32): String =
  expandMethodBind(className EditorExportPlatform, "get_message_category", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc getMessageText*(self: EditorExportPlatform; index: int32): String =
  expandMethodBind(className EditorExportPlatform, "get_message_text", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc getWorstMessageType*(self: EditorExportPlatform): EditorExportPlatform_ExportMessageType =
  expandMethodBind(className EditorExportPlatform, "get_worst_message_type", 2580557466)
  var ret: encoded EditorExportPlatform_ExportMessageType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(EditorExportPlatform_ExportMessageType)

proc sshRunOnRemote*(self: EditorExportPlatform; host: String; port: String; sshArg: PackedStringArray; cmdArgs: String; output: Array[Variant] = newArray[Variant](); portFwd: int32 = -1): Error =
  expandMethodBind(className EditorExportPlatform, "ssh_run_on_remote", 3163734797)
  nilCheck output
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr host, getPtr port, getPtr sshArg, getPtr cmdArgs, getPtr output, getPtr portFwd], addr ret)
  (addr ret).decode_result(Error)

proc sshRunOnRemoteNoWait*(self: EditorExportPlatform; host: String; port: String; sshArgs: PackedStringArray; cmdArgs: String; portFwd: int32 = -1): int64 =
  expandMethodBind(className EditorExportPlatform, "ssh_run_on_remote_no_wait", 3606362233)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr host, getPtr port, getPtr sshArgs, getPtr cmdArgs, getPtr portFwd], addr ret)
  (addr ret).decode_result(int64)

proc sshPushToRemote*(self: EditorExportPlatform; host: String; port: String; scpArgs: PackedStringArray; srcFile: String; dstFile: String): Error =
  expandMethodBind(className EditorExportPlatform, "ssh_push_to_remote", 218756989)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr host, getPtr port, getPtr scpArgs, getPtr srcFile, getPtr dstFile], addr ret)
  (addr ret).decode_result(Error)

proc getInternalExportFiles*(self: EditorExportPlatform; preset: gdref EditorExportPreset; debug: bool): Dictionary[Variant, Variant] =
  expandMethodBind(className EditorExportPlatform, "get_internal_export_files", 89550086)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr preset, getPtr debug], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc getForcedExportFiles*(_: typedesc[EditorExportPlatform]; preset: gdref EditorExportPreset = default gdref EditorExportPreset): PackedStringArray =
  expandMethodBind(className EditorExportPlatform, "get_forced_export_files", 1939331020)
  var ret: encoded PackedStringArray
  methodbind.ptrcall([getPtr preset], addr ret)
  (addr ret).decode_result(PackedStringArray)

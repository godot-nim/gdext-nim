{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(ScriptBacktrace, RefCounted)

proc getLanguageName*(self: ScriptBacktrace): String =
  expandMethodBind(className ScriptBacktrace, "get_language_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc isEmpty*(self: ScriptBacktrace): bool =
  expandMethodBind(className ScriptBacktrace, "is_empty", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getFrameCount*(self: ScriptBacktrace): int32 =
  expandMethodBind(className ScriptBacktrace, "get_frame_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getFrameFunction*(self: ScriptBacktrace; index: int32): String =
  expandMethodBind(className ScriptBacktrace, "get_frame_function", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc getFrameFile*(self: ScriptBacktrace; index: int32): String =
  expandMethodBind(className ScriptBacktrace, "get_frame_file", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc getFrameLine*(self: ScriptBacktrace; index: int32): int32 =
  expandMethodBind(className ScriptBacktrace, "get_frame_line", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc getGlobalVariableCount*(self: ScriptBacktrace): int32 =
  expandMethodBind(className ScriptBacktrace, "get_global_variable_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getGlobalVariableName*(self: ScriptBacktrace; variableIndex: int32): String =
  expandMethodBind(className ScriptBacktrace, "get_global_variable_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr variableIndex], addr ret)
  (addr ret).decode_result(String)

proc getGlobalVariableValue*(self: ScriptBacktrace; variableIndex: int32): Variant =
  expandMethodBind(className ScriptBacktrace, "get_global_variable_value", 4227898402)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr variableIndex], addr ret)
  (addr ret).decode_result(Variant)

proc getLocalVariableCount*(self: ScriptBacktrace; frameIndex: int32): int32 =
  expandMethodBind(className ScriptBacktrace, "get_local_variable_count", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr frameIndex], addr ret)
  (addr ret).decode_result(int32)

proc getLocalVariableName*(self: ScriptBacktrace; frameIndex: int32; variableIndex: int32): String =
  expandMethodBind(className ScriptBacktrace, "get_local_variable_name", 1391810591)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr frameIndex, getPtr variableIndex], addr ret)
  (addr ret).decode_result(String)

proc getLocalVariableValue*(self: ScriptBacktrace; frameIndex: int32; variableIndex: int32): Variant =
  expandMethodBind(className ScriptBacktrace, "get_local_variable_value", 678354945)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr frameIndex, getPtr variableIndex], addr ret)
  (addr ret).decode_result(Variant)

proc getMemberVariableCount*(self: ScriptBacktrace; frameIndex: int32): int32 =
  expandMethodBind(className ScriptBacktrace, "get_member_variable_count", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr frameIndex], addr ret)
  (addr ret).decode_result(int32)

proc getMemberVariableName*(self: ScriptBacktrace; frameIndex: int32; variableIndex: int32): String =
  expandMethodBind(className ScriptBacktrace, "get_member_variable_name", 1391810591)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr frameIndex, getPtr variableIndex], addr ret)
  (addr ret).decode_result(String)

proc getMemberVariableValue*(self: ScriptBacktrace; frameIndex: int32; variableIndex: int32): Variant =
  expandMethodBind(className ScriptBacktrace, "get_member_variable_value", 678354945)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr frameIndex, getPtr variableIndex], addr ret)
  (addr ret).decode_result(Variant)

proc format*(self: ScriptBacktrace; indentAll: int32 = 0; indentFrames: int32 = 4): String =
  expandMethodBind(className ScriptBacktrace, "format", 3464456933)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr indentAll, getPtr indentFrames], addr ret)
  (addr ret).decode_result(String)

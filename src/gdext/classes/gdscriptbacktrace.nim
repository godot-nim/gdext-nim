{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(ScriptBacktrace, RefCounted)

proc getLanguageName*(self: ScriptBacktrace): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "get_language_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc isEmpty*(self: ScriptBacktrace): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "is_empty", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getFrameCount*(self: ScriptBacktrace): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "get_frame_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getFrameFunction*(self: ScriptBacktrace; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "get_frame_function", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc getFrameFile*(self: ScriptBacktrace; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "get_frame_file", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc getFrameLine*(self: ScriptBacktrace; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "get_frame_line", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc getGlobalVariableCount*(self: ScriptBacktrace): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "get_global_variable_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getGlobalVariableName*(self: ScriptBacktrace; variableIndex: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "get_global_variable_name", 844755477)
  methodbind.ptrcall(self, [getPtr variableIndex], String)

proc getGlobalVariableValue*(self: ScriptBacktrace; variableIndex: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "get_global_variable_value", 4227898402)
  methodbind.ptrcall(self, [getPtr variableIndex], Variant)

proc getLocalVariableCount*(self: ScriptBacktrace; frameIndex: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "get_local_variable_count", 923996154)
  methodbind.ptrcall(self, [getPtr frameIndex], int32)

proc getLocalVariableName*(self: ScriptBacktrace; frameIndex: int32; variableIndex: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "get_local_variable_name", 1391810591)
  methodbind.ptrcall(self, [getPtr frameIndex, getPtr variableIndex], String)

proc getLocalVariableValue*(self: ScriptBacktrace; frameIndex: int32; variableIndex: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "get_local_variable_value", 678354945)
  methodbind.ptrcall(self, [getPtr frameIndex, getPtr variableIndex], Variant)

proc getMemberVariableCount*(self: ScriptBacktrace; frameIndex: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "get_member_variable_count", 923996154)
  methodbind.ptrcall(self, [getPtr frameIndex], int32)

proc getMemberVariableName*(self: ScriptBacktrace; frameIndex: int32; variableIndex: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "get_member_variable_name", 1391810591)
  methodbind.ptrcall(self, [getPtr frameIndex, getPtr variableIndex], String)

proc getMemberVariableValue*(self: ScriptBacktrace; frameIndex: int32; variableIndex: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "get_member_variable_value", 678354945)
  methodbind.ptrcall(self, [getPtr frameIndex, getPtr variableIndex], Variant)

proc format*(self: ScriptBacktrace; indentAll: int32 = 0; indentFrames: int32 = 4): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptBacktrace, "format", 3464456933)
  methodbind.ptrcall(self, [getPtr indentAll, getPtr indentFrames], String)

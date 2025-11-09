{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorDebuggerSession, RefCounted)

proc sendMessage*(self: EditorDebuggerSession; message: String; data: Array = newArray()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorDebuggerSession, "send_message", 85656714)
  methodbind.ptrcall(self, [getPtr message, getPtr data], void)

proc toggleProfiler*(self: EditorDebuggerSession; profiler: String; enable: bool; data: Array = newArray()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorDebuggerSession, "toggle_profiler", 1198443697)
  methodbind.ptrcall(self, [getPtr profiler, getPtr enable, getPtr data], void)

proc isBreaked*(self: EditorDebuggerSession): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorDebuggerSession, "is_breaked", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc isDebuggable*(self: EditorDebuggerSession): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorDebuggerSession, "is_debuggable", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc isActive*(self: EditorDebuggerSession): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorDebuggerSession, "is_active", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc addSessionTab*(self: EditorDebuggerSession; control: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorDebuggerSession, "add_session_tab", 1496901182)
  methodbind.ptrcall(self, [getPtr control], void)

proc removeSessionTab*(self: EditorDebuggerSession; control: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorDebuggerSession, "remove_session_tab", 1496901182)
  methodbind.ptrcall(self, [getPtr control], void)

proc setBreakpoint*(self: EditorDebuggerSession; path: String; line: int32; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorDebuggerSession, "set_breakpoint", 4108344793)
  methodbind.ptrcall(self, [getPtr path, getPtr line, getPtr enabled], void)

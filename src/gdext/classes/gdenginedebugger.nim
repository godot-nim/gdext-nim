{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(EngineDebugger, Object)

proc isActive*(self: EngineDebugger): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "is_active", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc registerProfiler*(self: EngineDebugger; name: StringName; profiler: gdref EngineProfiler): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "register_profiler", 3651669560)
  methodbind.ptrcall(self, [getPtr name, getPtr profiler], void)

proc unregisterProfiler*(self: EngineDebugger; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "unregister_profiler", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc isProfiling*(self: EngineDebugger; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "is_profiling", 2041966384)
  methodbind.ptrcall(self, [getPtr name], bool)

proc hasProfiler*(self: EngineDebugger; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "has_profiler", 2041966384)
  methodbind.ptrcall(self, [getPtr name], bool)

proc profilerAddFrameData*(self: EngineDebugger; name: StringName; data: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "profiler_add_frame_data", 1895267858)
  methodbind.ptrcall(self, [getPtr name, getPtr data], void)

proc profilerEnable*(self: EngineDebugger; name: StringName; enable: bool; arguments: Array = newArray()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "profiler_enable", 3192561009)
  methodbind.ptrcall(self, [getPtr name, getPtr enable, getPtr arguments], void)

proc registerMessageCapture*(self: EngineDebugger; name: StringName; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "register_message_capture", 1874754934)
  methodbind.ptrcall(self, [getPtr name, getPtr callable], void)

proc unregisterMessageCapture*(self: EngineDebugger; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "unregister_message_capture", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc hasCapture*(self: EngineDebugger; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "has_capture", 2041966384)
  methodbind.ptrcall(self, [getPtr name], bool)

proc linePoll*(self: EngineDebugger): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "line_poll", 3218959716)
  methodbind.ptrcall(self, [], void)

proc sendMessage*(self: EngineDebugger; message: String; data: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "send_message", 1209351045)
  methodbind.ptrcall(self, [getPtr message, getPtr data], void)

proc debug*(self: EngineDebugger; canContinue: bool = true; isErrorBreakpoint: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "debug", 2751962654)
  methodbind.ptrcall(self, [getPtr canContinue, getPtr isErrorBreakpoint], void)

proc scriptDebug*(self: EngineDebugger; language: ScriptLanguage; canContinue: bool = true; isErrorBreakpoint: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "script_debug", 2442343672)
  methodbind.ptrcall(self, [getPtr language, getPtr canContinue, getPtr isErrorBreakpoint], void)

proc setLinesLeft*(self: EngineDebugger; lines: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "set_lines_left", 1286410249)
  methodbind.ptrcall(self, [getPtr lines], void)

proc getLinesLeft*(self: EngineDebugger): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "get_lines_left", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setDepth*(self: EngineDebugger; depth: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "set_depth", 1286410249)
  methodbind.ptrcall(self, [getPtr depth], void)

proc getDepth*(self: EngineDebugger): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "get_depth", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc isBreakpoint*(self: EngineDebugger; line: int32; source: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "is_breakpoint", 921227809)
  methodbind.ptrcall(self, [getPtr line, getPtr source], bool)

proc isSkippingBreakpoints*(self: EngineDebugger): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "is_skipping_breakpoints", 36873697)
  methodbind.ptrcall(self, [], bool)

proc insertBreakpoint*(self: EngineDebugger; line: int32; source: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "insert_breakpoint", 3780747571)
  methodbind.ptrcall(self, [getPtr line, getPtr source], void)

proc removeBreakpoint*(self: EngineDebugger; line: int32; source: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "remove_breakpoint", 3780747571)
  methodbind.ptrcall(self, [getPtr line, getPtr source], void)

proc clearBreakpoints*(self: EngineDebugger): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EngineDebugger, "clear_breakpoints", 3218959716)
  methodbind.ptrcall(self, [], void)

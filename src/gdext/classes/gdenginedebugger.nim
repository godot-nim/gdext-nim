{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc isActive*(self: EngineDebugger): bool =
  expandMethodBind(className EngineDebugger, "is_active", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc registerProfiler*(self: EngineDebugger; name: StringName; profiler: gdref EngineProfiler): void =
  expandMethodBind(className EngineDebugger, "register_profiler", 3651669560)
  methodbind.ptrcall(self, [getPtr name, getPtr profiler])

proc unregisterProfiler*(self: EngineDebugger; name: StringName): void =
  expandMethodBind(className EngineDebugger, "unregister_profiler", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc isProfiling*(self: EngineDebugger; name: StringName): bool =
  expandMethodBind(className EngineDebugger, "is_profiling", 2041966384)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc hasProfiler*(self: EngineDebugger; name: StringName): bool =
  expandMethodBind(className EngineDebugger, "has_profiler", 2041966384)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc profilerAddFrameData*(self: EngineDebugger; name: StringName; data: Array): void =
  expandMethodBind(className EngineDebugger, "profiler_add_frame_data", 1895267858)
  methodbind.ptrcall(self, [getPtr name, getPtr data])

proc profilerEnable*(self: EngineDebugger; name: StringName; enable: bool; arguments: Array = gdarray()): void =
  expandMethodBind(className EngineDebugger, "profiler_enable", 3192561009)
  methodbind.ptrcall(self, [getPtr name, getPtr enable, getPtr arguments])

proc registerMessageCapture*(self: EngineDebugger; name: StringName; callable: Callable): void =
  expandMethodBind(className EngineDebugger, "register_message_capture", 1874754934)
  methodbind.ptrcall(self, [getPtr name, getPtr callable])

proc unregisterMessageCapture*(self: EngineDebugger; name: StringName): void =
  expandMethodBind(className EngineDebugger, "unregister_message_capture", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc hasCapture*(self: EngineDebugger; name: StringName): bool =
  expandMethodBind(className EngineDebugger, "has_capture", 2041966384)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc linePoll*(self: EngineDebugger): void =
  expandMethodBind(className EngineDebugger, "line_poll", 3218959716)
  methodbind.ptrcall(self, [])

proc sendMessage*(self: EngineDebugger; message: String; data: Array): void =
  expandMethodBind(className EngineDebugger, "send_message", 1209351045)
  methodbind.ptrcall(self, [getPtr message, getPtr data])

proc debug*(self: EngineDebugger; canContinue: bool = true; isErrorBreakpoint: bool = false): void =
  expandMethodBind(className EngineDebugger, "debug", 2751962654)
  methodbind.ptrcall(self, [getPtr canContinue, getPtr isErrorBreakpoint])

proc scriptDebug*(self: EngineDebugger; language: ScriptLanguage; canContinue: bool = true; isErrorBreakpoint: bool = false): void =
  expandMethodBind(className EngineDebugger, "script_debug", 2442343672)
  methodbind.ptrcall(self, [getPtr language, getPtr canContinue, getPtr isErrorBreakpoint])

proc setLinesLeft*(self: EngineDebugger; lines: int32): void =
  expandMethodBind(className EngineDebugger, "set_lines_left", 1286410249)
  methodbind.ptrcall(self, [getPtr lines])

proc getLinesLeft*(self: EngineDebugger): int32 =
  expandMethodBind(className EngineDebugger, "get_lines_left", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setDepth*(self: EngineDebugger; depth: int32): void =
  expandMethodBind(className EngineDebugger, "set_depth", 1286410249)
  methodbind.ptrcall(self, [getPtr depth])

proc getDepth*(self: EngineDebugger): int32 =
  expandMethodBind(className EngineDebugger, "get_depth", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc isBreakpoint*(self: EngineDebugger; line: int32; source: StringName): bool =
  expandMethodBind(className EngineDebugger, "is_breakpoint", 921227809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr line, getPtr source], addr ret)
  (addr ret).decode_result(bool)

proc isSkippingBreakpoints*(self: EngineDebugger): bool =
  expandMethodBind(className EngineDebugger, "is_skipping_breakpoints", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc insertBreakpoint*(self: EngineDebugger; line: int32; source: StringName): void =
  expandMethodBind(className EngineDebugger, "insert_breakpoint", 3780747571)
  methodbind.ptrcall(self, [getPtr line, getPtr source])

proc removeBreakpoint*(self: EngineDebugger; line: int32; source: StringName): void =
  expandMethodBind(className EngineDebugger, "remove_breakpoint", 3780747571)
  methodbind.ptrcall(self, [getPtr line, getPtr source])

proc clearBreakpoints*(self: EngineDebugger): void =
  expandMethodBind(className EngineDebugger, "clear_breakpoints", 3218959716)
  methodbind.ptrcall(self, [])

const EngineDebugger_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EngineDebugger]): Table[string, string] = EngineDebugger_vmap
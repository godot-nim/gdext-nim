{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc isActive*(self: EngineDebugger): bool =
  expandMethodBind(className EngineDebugger, "is_active", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc registerProfiler*(self: EngineDebugger; name: StringName; profiler: gdref EngineProfiler): void =
  expandMethodBind(className EngineDebugger, "register_profiler", 3651669560)
  var `?param` = [getPtr name, getPtr profiler]
  methodbind.ptrcall(self, addr `?param`[0])

proc unregisterProfiler*(self: EngineDebugger; name: StringName): void =
  expandMethodBind(className EngineDebugger, "unregister_profiler", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc isProfiling*(self: EngineDebugger; name: StringName): bool =
  expandMethodBind(className EngineDebugger, "is_profiling", 2041966384)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasProfiler*(self: EngineDebugger; name: StringName): bool =
  expandMethodBind(className EngineDebugger, "has_profiler", 2041966384)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc profilerAddFrameData*(self: EngineDebugger; name: StringName; data: Array): void =
  expandMethodBind(className EngineDebugger, "profiler_add_frame_data", 1895267858)
  var `?param` = [getPtr name, getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc profilerEnable*(self: EngineDebugger; name: StringName; enable: bool; arguments: Array = gdarray()): void =
  expandMethodBind(className EngineDebugger, "profiler_enable", 3192561009)
  var `?param` = [getPtr name, getPtr enable, getPtr arguments]
  methodbind.ptrcall(self, addr `?param`[0])

proc registerMessageCapture*(self: EngineDebugger; name: StringName; callable: Callable): void =
  expandMethodBind(className EngineDebugger, "register_message_capture", 1874754934)
  var `?param` = [getPtr name, getPtr callable]
  methodbind.ptrcall(self, addr `?param`[0])

proc unregisterMessageCapture*(self: EngineDebugger; name: StringName): void =
  expandMethodBind(className EngineDebugger, "unregister_message_capture", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasCapture*(self: EngineDebugger; name: StringName): bool =
  expandMethodBind(className EngineDebugger, "has_capture", 2041966384)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc linePoll*(self: EngineDebugger): void =
  expandMethodBind(className EngineDebugger, "line_poll", 3218959716)
  methodbind.ptrcall(self, nil)

proc sendMessage*(self: EngineDebugger; message: String; data: Array): void =
  expandMethodBind(className EngineDebugger, "send_message", 1209351045)
  var `?param` = [getPtr message, getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc debug*(self: EngineDebugger; canContinue: bool = true; isErrorBreakpoint: bool = false): void =
  expandMethodBind(className EngineDebugger, "debug", 2751962654)
  var `?param` = [getPtr canContinue, getPtr isErrorBreakpoint]
  methodbind.ptrcall(self, addr `?param`[0])

proc scriptDebug*(self: EngineDebugger; language: ScriptLanguage; canContinue: bool = true; isErrorBreakpoint: bool = false): void =
  expandMethodBind(className EngineDebugger, "script_debug", 2442343672)
  var `?param` = [getPtr language, getPtr canContinue, getPtr isErrorBreakpoint]
  methodbind.ptrcall(self, addr `?param`[0])

proc setLinesLeft*(self: EngineDebugger; lines: int32): void =
  expandMethodBind(className EngineDebugger, "set_lines_left", 1286410249)
  var `?param` = [getPtr lines]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLinesLeft*(self: EngineDebugger): int32 =
  expandMethodBind(className EngineDebugger, "get_lines_left", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setDepth*(self: EngineDebugger; depth: int32): void =
  expandMethodBind(className EngineDebugger, "set_depth", 1286410249)
  var `?param` = [getPtr depth]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepth*(self: EngineDebugger): int32 =
  expandMethodBind(className EngineDebugger, "get_depth", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc isBreakpoint*(self: EngineDebugger; line: int32; source: StringName): bool =
  expandMethodBind(className EngineDebugger, "is_breakpoint", 921227809)
  var `?param` = [getPtr line, getPtr source]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isSkippingBreakpoints*(self: EngineDebugger): bool =
  expandMethodBind(className EngineDebugger, "is_skipping_breakpoints", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc insertBreakpoint*(self: EngineDebugger; line: int32; source: StringName): void =
  expandMethodBind(className EngineDebugger, "insert_breakpoint", 3780747571)
  var `?param` = [getPtr line, getPtr source]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeBreakpoint*(self: EngineDebugger; line: int32; source: StringName): void =
  expandMethodBind(className EngineDebugger, "remove_breakpoint", 3780747571)
  var `?param` = [getPtr line, getPtr source]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearBreakpoints*(self: EngineDebugger): void =
  expandMethodBind(className EngineDebugger, "clear_breakpoints", 3218959716)
  methodbind.ptrcall(self, nil)

const EngineDebugger_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EngineDebugger]): Table[string, string] = EngineDebugger_vmap
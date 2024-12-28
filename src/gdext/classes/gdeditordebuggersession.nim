{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc sendMessage*(self: EditorDebuggerSession; message: String; data: Array = gdarray()): void =
  expandMethodBind(className EditorDebuggerSession, "send_message", 85656714)
  methodbind.ptrcall(self, [getPtr message, getPtr data])

proc toggleProfiler*(self: EditorDebuggerSession; profiler: String; enable: bool; data: Array = gdarray()): void =
  expandMethodBind(className EditorDebuggerSession, "toggle_profiler", 1198443697)
  methodbind.ptrcall(self, [getPtr profiler, getPtr enable, getPtr data])

proc isBreaked*(self: EditorDebuggerSession): bool =
  expandMethodBind(className EditorDebuggerSession, "is_breaked", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isDebuggable*(self: EditorDebuggerSession): bool =
  expandMethodBind(className EditorDebuggerSession, "is_debuggable", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isActive*(self: EditorDebuggerSession): bool =
  expandMethodBind(className EditorDebuggerSession, "is_active", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc addSessionTab*(self: EditorDebuggerSession; control: Control): void =
  expandMethodBind(className EditorDebuggerSession, "add_session_tab", 1496901182)
  methodbind.ptrcall(self, [getPtr control])

proc removeSessionTab*(self: EditorDebuggerSession; control: Control): void =
  expandMethodBind(className EditorDebuggerSession, "remove_session_tab", 1496901182)
  methodbind.ptrcall(self, [getPtr control])

proc setBreakpoint*(self: EditorDebuggerSession; path: String; line: int32; enabled: bool): void =
  expandMethodBind(className EditorDebuggerSession, "set_breakpoint", 4108344793)
  methodbind.ptrcall(self, [getPtr path, getPtr line, getPtr enabled])

const EditorDebuggerSession_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorDebuggerSession]): Table[string, string] = EditorDebuggerSession_vmap

proc started*(self: EditorDebuggerSession): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("started")
  self.emitSignal(signalname)

proc stopped*(self: EditorDebuggerSession): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("stopped")
  self.emitSignal(signalname)

proc breaked*(self: EditorDebuggerSession; canDebug: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("breaked")
  let args = [canDebug]
  self.emitSignal(signalname, args)

proc continued*(self: EditorDebuggerSession): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("continued")
  self.emitSignal(signalname)
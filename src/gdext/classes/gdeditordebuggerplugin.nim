{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method setupSession*(self: EditorDebuggerPlugin; sessionId: int32): void {.base.} = (discard)
proc setupSession(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorDebuggerPlugin](p_instance).setupSession(p_args[0].decode(int32))
template setupSession_bind*(_: typedesc[EditorDebuggerPlugin]): ClassCallVirtual = setupSession

method hasCapture*(self: EditorDebuggerPlugin; capture: String): bool {.base.} = (discard)
proc hasCapture(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorDebuggerPlugin](p_instance).hasCapture(p_args[0].decode(String)).encode(r_ret)
template hasCapture_bind*(_: typedesc[EditorDebuggerPlugin]): ClassCallVirtual = hasCapture

method capture*(self: EditorDebuggerPlugin; message: String; data: Array; sessionId: int32): bool {.base.} = (discard)
proc capture(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorDebuggerPlugin](p_instance).capture(p_args[0].decode(String), p_args[1].decode(Array), p_args[2].decode(int32)).encode(r_ret)
template capture_bind*(_: typedesc[EditorDebuggerPlugin]): ClassCallVirtual = capture

method gotoScriptLine*(self: EditorDebuggerPlugin; script: gdref Script; line: int32): void {.base.} = (discard)
proc gotoScriptLine(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorDebuggerPlugin](p_instance).gotoScriptLine(p_args[0].decode(gdref Script), p_args[1].decode(int32))
template gotoScriptLine_bind*(_: typedesc[EditorDebuggerPlugin]): ClassCallVirtual = gotoScriptLine

method breakpointsClearedInTree*(self: EditorDebuggerPlugin): void {.base.} = (discard)
proc breakpointsClearedInTree(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorDebuggerPlugin](p_instance).breakpointsClearedInTree()
template breakpointsClearedInTree_bind*(_: typedesc[EditorDebuggerPlugin]): ClassCallVirtual = breakpointsClearedInTree

method breakpointSetInTree*(self: EditorDebuggerPlugin; script: gdref Script; line: int32; enabled: bool): void {.base.} = (discard)
proc breakpointSetInTree(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorDebuggerPlugin](p_instance).breakpointSetInTree(p_args[0].decode(gdref Script), p_args[1].decode(int32), p_args[2].decode(bool))
template breakpointSetInTree_bind*(_: typedesc[EditorDebuggerPlugin]): ClassCallVirtual = breakpointSetInTree

proc getSession*(self: EditorDebuggerPlugin; id: int32): gdref EditorDebuggerSession =
  expandMethodBind(className EditorDebuggerPlugin, "get_session", 3061968499)
  var ret: encoded gdref EditorDebuggerSession
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(gdref EditorDebuggerSession)

proc getSessions*(self: EditorDebuggerPlugin): Array =
  expandMethodBind(className EditorDebuggerPlugin, "get_sessions", 2915620761)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

const EditorDebuggerPlugin_vmap =
  RefCounted.vmap.concat toTable {
    "setupsession" : "_setup_session",
    "hascapture" : "_has_capture",
    "capture" : "_capture",
    "gotoscriptline" : "_goto_script_line",
    "breakpointsclearedintree" : "_breakpoints_cleared_in_tree",
    "breakpointsetintree" : "_breakpoint_set_in_tree",
    }
template vmap*(_: typedesc[EditorDebuggerPlugin]): Table[string, string] = EditorDebuggerPlugin_vmap
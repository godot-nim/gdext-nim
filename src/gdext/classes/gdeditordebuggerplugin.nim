{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorDebuggerPlugin, RefCounted)

method setupSession*(self: EditorDebuggerPlugin; sessionId: int32): void {.base.} = (discard)
proc registerVirtual_setupSession*[T: EditorDebuggerPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_setup_session"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorDebuggerPlugin](p_instance).setupSession(p_args[0].decode(int32))

method hasCapture*(self: EditorDebuggerPlugin; capture: String): bool {.base.} = (discard)
proc registerVirtual_hasCapture*[T: EditorDebuggerPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has_capture"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorDebuggerPlugin](p_instance).hasCapture(p_args[0].decode(String)).encode(r_ret)

method capture*(self: EditorDebuggerPlugin; message: String; data: Array[Variant]; sessionId: int32): bool {.base.} = (discard)
proc registerVirtual_capture*[T: EditorDebuggerPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_capture"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorDebuggerPlugin](p_instance).capture(p_args[0].decode(String), p_args[1].decode(Array[Variant]), p_args[2].decode(int32)).encode(r_ret)

method gotoScriptLine*(self: EditorDebuggerPlugin; script: gdref Script; line: int32): void {.base.} = (discard)
proc registerVirtual_gotoScriptLine*[T: EditorDebuggerPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_goto_script_line"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorDebuggerPlugin](p_instance).gotoScriptLine(p_args[0].decode(gdref Script), p_args[1].decode(int32))

method breakpointsClearedInTree*(self: EditorDebuggerPlugin): void {.base.} = (discard)
proc registerVirtual_breakpointsClearedInTree*[T: EditorDebuggerPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_breakpoints_cleared_in_tree"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorDebuggerPlugin](p_instance).breakpointsClearedInTree()

method breakpointSetInTree*(self: EditorDebuggerPlugin; script: gdref Script; line: int32; enabled: bool): void {.base.} = (discard)
proc registerVirtual_breakpointSetInTree*[T: EditorDebuggerPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_breakpoint_set_in_tree"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorDebuggerPlugin](p_instance).breakpointSetInTree(p_args[0].decode(gdref Script), p_args[1].decode(int32), p_args[2].decode(bool))

proc getSession*(self: EditorDebuggerPlugin; id: int32): gdref EditorDebuggerSession =
  expandMethodBind(className EditorDebuggerPlugin, "get_session", 3061968499)
  var ret: encoded gdref EditorDebuggerSession
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(gdref EditorDebuggerSession)

proc getSessions*(self: EditorDebuggerPlugin): Array[Variant] =
  expandMethodBind(className EditorDebuggerPlugin, "get_sessions", 2915620761)
  var ret: encoded Array[Variant]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[Variant])

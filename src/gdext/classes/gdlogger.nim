{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(Logger, RefCounted)

method logError*(self: Logger; function: String; file: String; line: int32; code: String; rationale: String; editorNotify: bool; errorType: int32; scriptBacktraces: TypedArray[gdref ScriptBacktrace]): void {.base.} = (discard)
proc registerVirtual_logError*[T: Logger](Self: typedesc[T]) =
  Self.vmethods[newStringName"_log_error"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Logger](p_instance).logError(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(int32), p_args[3].decode(String), p_args[4].decode(String), p_args[5].decode(bool), p_args[6].decode(int32), p_args[7].decode(TypedArray[gdref ScriptBacktrace]))

method logMessage*(self: Logger; message: String; error: bool): void {.base.} = (discard)
proc registerVirtual_logMessage*[T: Logger](Self: typedesc[T]) =
  Self.vmethods[newStringName"_log_message"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Logger](p_instance).logMessage(p_args[0].decode(String), p_args[1].decode(bool))

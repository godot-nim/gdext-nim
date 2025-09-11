{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EngineProfiler, RefCounted)

method toggle*(self: EngineProfiler; enable: bool; options: Array): void {.base.} = (discard)
proc registerVirtual_toggle*[T: EngineProfiler](Self: typedesc[T]) =
  Self.vmethods[newStringName"_toggle"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EngineProfiler](p_instance).toggle(p_args[0].decode(bool), p_args[1].decode(Array))

method addFrame*(self: EngineProfiler; data: Array): void {.base.} = (discard)
proc registerVirtual_addFrame*[T: EngineProfiler](Self: typedesc[T]) =
  Self.vmethods[newStringName"_add_frame"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EngineProfiler](p_instance).addFrame(p_args[0].decode(Array))

method tick*(self: EngineProfiler; frameTime: float64; processTime: float64; physicsTime: float64; physicsFrameTime: float64): void {.base.} = (discard)
proc registerVirtual_tick*[T: EngineProfiler](Self: typedesc[T]) =
  Self.vmethods[newStringName"_tick"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EngineProfiler](p_instance).tick(p_args[0].decode(float64), p_args[1].decode(float64), p_args[2].decode(float64), p_args[3].decode(float64))

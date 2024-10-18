{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method toggle*(self: EngineProfiler; enable: bool; options: Array): void {.base.} = (discard)
proc toggle(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EngineProfiler](p_instance).toggle(p_args[0].decode(bool), p_args[1].decode(Array))
template toggle_bind*(_: typedesc[EngineProfiler]): ClassCallVirtual = toggle

method addFrame*(self: EngineProfiler; data: Array): void {.base.} = (discard)
proc addFrame(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EngineProfiler](p_instance).addFrame(p_args[0].decode(Array))
template addFrame_bind*(_: typedesc[EngineProfiler]): ClassCallVirtual = addFrame

method tick*(self: EngineProfiler; frameTime: float64; processTime: float64; physicsTime: float64; physicsFrameTime: float64): void {.base.} = (discard)
proc tick(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EngineProfiler](p_instance).tick(p_args[0].decode(float64), p_args[1].decode(float64), p_args[2].decode(float64), p_args[3].decode(float64))
template tick_bind*(_: typedesc[EngineProfiler]): ClassCallVirtual = tick

const EngineProfiler_vmap =
  RefCounted.vmap.concat toTable {
    "toggle" : "_toggle",
    "addframe" : "_add_frame",
    "tick" : "_tick",
    }
template vmap*(_: typedesc[EngineProfiler]): Table[string, string] = EngineProfiler_vmap
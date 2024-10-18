{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method process*(self: AudioEffectInstance; srcBuffer: pointer; dstBuffer: ptr AudioFrame; frameCount: int32): void {.base.} = (discard)
proc process(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioEffectInstance](p_instance).process(p_args[0].decode(pointer), p_args[1].decode(ptr AudioFrame), p_args[2].decode(int32))
template process_bind*(_: typedesc[AudioEffectInstance]): ClassCallVirtual = process

method processSilence*(self: AudioEffectInstance): bool {.base.} = (discard)
proc processSilence(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioEffectInstance](p_instance).processSilence().encode(r_ret)
template processSilence_bind*(_: typedesc[AudioEffectInstance]): ClassCallVirtual = processSilence

const AudioEffectInstance_vmap =
  RefCounted.vmap.concat toTable {
    "process" : "_process",
    "processsilence" : "_process_silence",
    }
template vmap*(_: typedesc[AudioEffectInstance]): Table[string, string] = AudioEffectInstance_vmap
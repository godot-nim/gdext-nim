{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(AudioEffectInstance, RefCounted)

method process*(self: AudioEffectInstance; srcBuffer: pointer; dstBuffer: ptr AudioFrame; frameCount: int32): void {.base.} = (discard)
proc registerVirtual_process*[T: AudioEffectInstance](Self: typedesc[T]) =
  Self.vmethods[newStringName"_process"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioEffectInstance](p_instance).process(p_args[0].decode(pointer), p_args[1].decode(ptr AudioFrame), p_args[2].decode(int32))

method processSilence*(self: AudioEffectInstance): bool {.base.} = (discard)
proc registerVirtual_processSilence*[T: AudioEffectInstance](Self: typedesc[T]) =
  Self.vmethods[newStringName"_process_silence"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioEffectInstance](p_instance).processSilence().encode(r_ret)

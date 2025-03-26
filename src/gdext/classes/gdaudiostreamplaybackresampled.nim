{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostreamplayback; export gdaudiostreamplayback

method mixResampled*(self: AudioStreamPlaybackResampled; dstBuffer: ptr AudioFrame; frameCount: int32): int32 {.base.} = (discard)
proc registerVirtual_mixResampled*[T: AudioStreamPlaybackResampled](Self: typedesc[T]) =
  Self.vmethods[newStringName"_mix_resampled"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStreamPlaybackResampled](p_instance).mixResampled(p_args[0].decode(ptr AudioFrame), p_args[1].decode(int32)).encode(r_ret)

method getStreamSamplingRate*(self: AudioStreamPlaybackResampled): Float {.base.} = (discard)
proc registerVirtual_getStreamSamplingRate*[T: AudioStreamPlaybackResampled](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_stream_sampling_rate"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStreamPlaybackResampled](p_instance).getStreamSamplingRate().encode(r_ret)

proc beginResample*(self: AudioStreamPlaybackResampled): void =
  expandMethodBind(className AudioStreamPlaybackResampled, "begin_resample", 3218959716)
  methodbind.ptrcall(self, [])

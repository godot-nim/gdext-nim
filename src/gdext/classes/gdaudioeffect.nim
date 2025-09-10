{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource
export AudioEffect

method instantiate*(self: AudioEffect): gdref AudioEffectInstance {.base.} = (discard)
proc registerVirtual_instantiate*[T: AudioEffect](Self: typedesc[T]) =
  Self.vmethods[newStringName"_instantiate"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioEffect](p_instance).instantiate().encode(r_ret)

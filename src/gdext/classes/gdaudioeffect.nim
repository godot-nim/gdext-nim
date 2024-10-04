{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

method instantiate*(self: AudioEffect): gdref AudioEffectInstance {.base.} = (discard)
proc instantiate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioEffect](p_instance).instantiate().encode(r_ret)
template instantiate_bind*(_: typedesc[AudioEffect]): ClassCallVirtual = instantiate

const AudioEffect_vmap =
  Resource.vmap.concat toTable {
    "instantiate" : "_instantiate",
    }
template vmap*(_: typedesc[AudioEffect]): Table[string, string] = AudioEffect_vmap
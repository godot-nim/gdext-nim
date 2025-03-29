{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method getDescription*(self: OpenXRBindingModifier): String {.base.} = (discard)
proc registerVirtual_getDescription*[T: OpenXRBindingModifier](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_description"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRBindingModifier](p_instance).getDescription().encode(r_ret)

method getIpModification*(self: OpenXRBindingModifier): PackedByteArray {.base.} = (discard)
proc registerVirtual_getIpModification*[T: OpenXRBindingModifier](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_ip_modification"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRBindingModifier](p_instance).getIpModification().encode(r_ret)

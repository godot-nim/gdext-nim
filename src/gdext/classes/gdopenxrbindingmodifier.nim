{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method getDescription*(self: OpenXRBindingModifier): String {.base.} = (discard)
proc getDescription(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRBindingModifier](p_instance).getDescription().encode(r_ret)
template getDescription_bind*(_: typedesc[OpenXRBindingModifier]): ClassCallVirtual = getDescription

method getIpModification*(self: OpenXRBindingModifier): PackedByteArray {.base.} = (discard)
proc getIpModification(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[OpenXRBindingModifier](p_instance).getIpModification().encode(r_ret)
template getIpModification_bind*(_: typedesc[OpenXRBindingModifier]): ClassCallVirtual = getIpModification

const OpenXRBindingModifier_vmap =
  Resource.vmap.concat toTable {
    "getdescription" : "_get_description",
    "getipmodification" : "_get_ip_modification",
    }
template vmap*(_: typedesc[OpenXRBindingModifier]): Table[string, string] = OpenXRBindingModifier_vmap
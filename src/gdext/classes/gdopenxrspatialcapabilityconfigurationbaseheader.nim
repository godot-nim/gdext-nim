{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(OpenXRSpatialCapabilityConfigurationBaseHeader, RefCounted)

method hasValidConfiguration*(self: OpenXRSpatialCapabilityConfigurationBaseHeader): bool {.base.} =
  expandMethodBind(className OpenXRSpatialCapabilityConfigurationBaseHeader, "has_valid_configuration", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)
proc registerVirtual_hasValidConfiguration*[T: OpenXRSpatialCapabilityConfigurationBaseHeader](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has_valid_configuration"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRSpatialCapabilityConfigurationBaseHeader](p_instance).hasValidConfiguration().encode(r_ret)

method getConfiguration*(self: OpenXRSpatialCapabilityConfigurationBaseHeader): uint64 {.base.} = (discard)
proc registerVirtual_getConfiguration*[T: OpenXRSpatialCapabilityConfigurationBaseHeader](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_configuration"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRSpatialCapabilityConfigurationBaseHeader](p_instance).getConfiguration().encode(r_ret)

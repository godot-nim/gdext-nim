{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(OpenXRSpatialComponentData, RefCounted)

method setCapacity*(self: OpenXRSpatialComponentData; capacity: uint32): void {.base.} =
  expandMethodBind(className OpenXRSpatialComponentData, "set_capacity", 1286410249)
  methodbind.ptrcall(self, [getPtr capacity])
proc registerVirtual_setCapacity*[T: OpenXRSpatialComponentData](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_capacity"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRSpatialComponentData](p_instance).setCapacity(p_args[0].decode(uint32))

method getComponentType*(self: OpenXRSpatialComponentData): uint64 {.base.} = (discard)
proc registerVirtual_getComponentType*[T: OpenXRSpatialComponentData](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_component_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRSpatialComponentData](p_instance).getComponentType().encode(r_ret)

method getStructureData*(self: OpenXRSpatialComponentData; next: uint64): uint64 {.base.} = (discard)
proc registerVirtual_getStructureData*[T: OpenXRSpatialComponentData](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_structure_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[OpenXRSpatialComponentData](p_instance).getStructureData(p_args[0].decode(uint64)).encode(r_ret)

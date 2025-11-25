var PackedFloat32Array_constr: array[3, PtrConstructor]
proc load_PackedFloat32Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in 0..2:
    PackedFloat32Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedFloat32Array, int32 i)

# proc newPackedFloat32Array*(): PackedFloat32Array =
proc newPackedFloat32Array*(`from`: PackedFloat32Array): PackedFloat32Array =
  let argArr = [getPtr `from`]
  PackedFloat32Array_constr[1](addr result, addr argArr[0])
proc newPackedFloat32Array*(`from`: Array[Variant]): PackedFloat32Array =
  let argArr = [getPtr `from`]
  PackedFloat32Array_constr[2](addr result, addr argArr[0])

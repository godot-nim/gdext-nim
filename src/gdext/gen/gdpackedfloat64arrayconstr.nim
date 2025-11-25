var PackedFloat64Array_constr: array[3, PtrConstructor]
proc load_PackedFloat64Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in 0..2:
    PackedFloat64Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedFloat64Array, int32 i)

# proc newPackedFloat64Array*(): PackedFloat64Array =
proc newPackedFloat64Array*(`from`: PackedFloat64Array): PackedFloat64Array =
  let argArr = [getPtr `from`]
  PackedFloat64Array_constr[1](addr result, addr argArr[0])
proc newPackedFloat64Array*(`from`: Array[Variant]): PackedFloat64Array =
  let argArr = [getPtr `from`]
  PackedFloat64Array_constr[2](addr result, addr argArr[0])

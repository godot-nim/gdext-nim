var PackedInt64Array_constr: array[3, PtrConstructor]
proc load_PackedInt64Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in 0..2:
    PackedInt64Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedInt64Array, int32 i)

# proc newPackedInt64Array*(): PackedInt64Array =
proc newPackedInt64Array*(`from`: PackedInt64Array): PackedInt64Array =
  let argArr = [getPtr `from`]
  PackedInt64Array_constr[1](addr result, addr argArr[0])
proc newPackedInt64Array*(`from`: Array[Variant]): PackedInt64Array =
  let argArr = [getPtr `from`]
  PackedInt64Array_constr[2](addr result, addr argArr[0])

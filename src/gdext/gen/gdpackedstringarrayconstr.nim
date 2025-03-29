var PackedStringArray_constr: array[3, PtrConstructor]
proc load_PackedStringArray_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {1, 2}:
    PackedStringArray_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedStringArray, int32 i)

# proc newPackedStringArray*(): PackedStringArray =
proc newPackedStringArray*(`from`: PackedStringArray): PackedStringArray =
  let argArr = [getPtr `from`]
  PackedStringArray_constr[1](addr result, addr argArr[0])
proc newPackedStringArray*(`from`: Array): PackedStringArray =
  let argArr = [getPtr `from`]
  PackedStringArray_constr[2](addr result, addr argArr[0])

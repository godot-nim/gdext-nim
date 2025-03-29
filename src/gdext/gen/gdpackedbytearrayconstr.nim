var PackedByteArray_constr: array[3, PtrConstructor]
proc load_PackedByteArray_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {1, 2}:
    PackedByteArray_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedByteArray, int32 i)

# proc newPackedByteArray*(): PackedByteArray =
proc newPackedByteArray*(`from`: PackedByteArray): PackedByteArray =
  let argArr = [getPtr `from`]
  PackedByteArray_constr[1](addr result, addr argArr[0])
proc newPackedByteArray*(`from`: Array): PackedByteArray =
  let argArr = [getPtr `from`]
  PackedByteArray_constr[2](addr result, addr argArr[0])

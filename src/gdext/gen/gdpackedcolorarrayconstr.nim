var PackedColorArray_constr: array[3, PtrConstructor]
proc load_PackedColorArray_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in 0..2:
    PackedColorArray_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedColorArray, int32 i)

# proc newPackedColorArray*(): PackedColorArray =
proc newPackedColorArray*(`from`: PackedColorArray): PackedColorArray =
  let argArr = [getPtr `from`]
  PackedColorArray_constr[1](addr result, addr argArr[0])
proc newPackedColorArray*(`from`: Array[Variant]): PackedColorArray =
  let argArr = [getPtr `from`]
  PackedColorArray_constr[2](addr result, addr argArr[0])

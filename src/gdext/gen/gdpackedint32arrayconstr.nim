var PackedInt32Array_constr: array[3, PtrConstructor]
proc load_PackedInt32Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {1, 2}:
    PackedInt32Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedInt32Array, int32 i)

# proc newPackedInt32Array*(): PackedInt32Array =
proc newPackedInt32Array*(`from`: PackedInt32Array): PackedInt32Array =
  let argArr = [getPtr `from`]
  PackedInt32Array_constr[1](addr result, addr argArr[0])
proc newPackedInt32Array*(`from`: Array): PackedInt32Array =
  let argArr = [getPtr `from`]
  PackedInt32Array_constr[2](addr result, addr argArr[0])

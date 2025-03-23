var PackedVector2Array_constr: array[3, PtrConstructor]
proc load_PackedVector2Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {1, 2}:
    PackedVector2Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedVector2Array, int32 i)

# proc packedVector2Array*(): PackedVector2Array =
proc packedVector2Array*(`from`: PackedVector2Array): PackedVector2Array =
  let argArr = [getPtr `from`]
  PackedVector2Array_constr[1](addr result, addr argArr[0])
proc packedVector2Array*(`from`: Array): PackedVector2Array =
  let argArr = [getPtr `from`]
  PackedVector2Array_constr[2](addr result, addr argArr[0])
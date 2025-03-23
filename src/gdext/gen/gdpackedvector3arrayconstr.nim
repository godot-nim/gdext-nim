var PackedVector3Array_constr: array[3, PtrConstructor]
proc load_PackedVector3Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {1, 2}:
    PackedVector3Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedVector3Array, int32 i)

# proc packedVector3Array*(): PackedVector3Array =
proc packedVector3Array*(`from`: PackedVector3Array): PackedVector3Array =
  let argArr = [getPtr `from`]
  PackedVector3Array_constr[1](addr result, addr argArr[0])
proc packedVector3Array*(`from`: Array): PackedVector3Array =
  let argArr = [getPtr `from`]
  PackedVector3Array_constr[2](addr result, addr argArr[0])
var PackedVector4Array_constr: array[3, PtrConstructor]
proc load_PackedVector4Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {1, 2}:
    PackedVector4Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_PackedVector4Array, int32 i)

# proc packedVector4Array*(): PackedVector4Array =
proc packedVector4Array*(`from`: PackedVector4Array): PackedVector4Array =
  let argArr = [getPtr `from`]
  PackedVector4Array_constr[1](addr result, addr argArr[0])
proc packedVector4Array*(`from`: Array): PackedVector4Array =
  let argArr = [getPtr `from`]
  PackedVector4Array_constr[2](addr result, addr argArr[0])
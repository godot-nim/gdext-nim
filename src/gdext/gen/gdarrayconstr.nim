var Array_constr: array[13, PtrConstructor]
proc load_Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in 0..12:
    Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_Array, int32 i)

# proc newArray*(): Array[Variant] =
# proc newArray*(`from`: Array[Variant]): Array[Variant] =
proc newArray*(base: Array[Variant]; `type`: Int; className: StringName; script: Variant): Array[Variant] =
  let argArr = [getPtr base, getPtr `type`, getPtr className, getPtr script]
  Array_constr[2](addr result, addr argArr[0])
proc newArray*(`from`: PackedByteArray): Array[Variant] =
  let argArr = [getPtr `from`]
  Array_constr[3](addr result, addr argArr[0])
proc newArray*(`from`: PackedInt32Array): Array[Variant] =
  let argArr = [getPtr `from`]
  Array_constr[4](addr result, addr argArr[0])
proc newArray*(`from`: PackedInt64Array): Array[Variant] =
  let argArr = [getPtr `from`]
  Array_constr[5](addr result, addr argArr[0])
proc newArray*(`from`: PackedFloat32Array): Array[Variant] =
  let argArr = [getPtr `from`]
  Array_constr[6](addr result, addr argArr[0])
proc newArray*(`from`: PackedFloat64Array): Array[Variant] =
  let argArr = [getPtr `from`]
  Array_constr[7](addr result, addr argArr[0])
proc newArray*(`from`: PackedStringArray): Array[Variant] =
  let argArr = [getPtr `from`]
  Array_constr[8](addr result, addr argArr[0])
proc newArray*(`from`: PackedVector2Array): Array[Variant] =
  let argArr = [getPtr `from`]
  Array_constr[9](addr result, addr argArr[0])
proc newArray*(`from`: PackedVector3Array): Array[Variant] =
  let argArr = [getPtr `from`]
  Array_constr[10](addr result, addr argArr[0])
proc newArray*(`from`: PackedColorArray): Array[Variant] =
  let argArr = [getPtr `from`]
  Array_constr[11](addr result, addr argArr[0])
proc newArray*(`from`: PackedVector4Array): Array[Variant] =
  let argArr = [getPtr `from`]
  Array_constr[12](addr result, addr argArr[0])

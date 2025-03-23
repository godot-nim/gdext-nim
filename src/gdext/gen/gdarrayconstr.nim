var Array_constr: array[13, PtrConstructor]
proc load_Array_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}:
    Array_constr[i] = interface_Variant_getPtrConstructor(VariantType_Array, int32 i)

proc gdarray*(): Array =
  Array_constr[0](addr result, nil)
proc gdarray*(`from`: Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[1](addr result, addr argArr[0])
proc gdarray*(base: Array; `type`: Int; className: StringName; script: Variant): Array =
  let argArr = [getPtr base, getPtr `type`, getPtr className, getPtr script]
  Array_constr[2](addr result, addr argArr[0])
proc gdarray*(`from`: PackedByteArray): Array =
  let argArr = [getPtr `from`]
  Array_constr[3](addr result, addr argArr[0])
proc gdarray*(`from`: PackedInt32Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[4](addr result, addr argArr[0])
proc gdarray*(`from`: PackedInt64Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[5](addr result, addr argArr[0])
proc gdarray*(`from`: PackedFloat32Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[6](addr result, addr argArr[0])
proc gdarray*(`from`: PackedFloat64Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[7](addr result, addr argArr[0])
proc gdarray*(`from`: PackedStringArray): Array =
  let argArr = [getPtr `from`]
  Array_constr[8](addr result, addr argArr[0])
proc gdarray*(`from`: PackedVector2Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[9](addr result, addr argArr[0])
proc gdarray*(`from`: PackedVector3Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[10](addr result, addr argArr[0])
proc gdarray*(`from`: PackedColorArray): Array =
  let argArr = [getPtr `from`]
  Array_constr[11](addr result, addr argArr[0])
proc gdarray*(`from`: PackedVector4Array): Array =
  let argArr = [getPtr `from`]
  Array_constr[12](addr result, addr argArr[0])
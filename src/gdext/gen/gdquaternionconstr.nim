var Quaternion_constr: array[6, PtrConstructor]
proc load_Quaternion_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {2, 3, 4}:
    Quaternion_constr[i] = interface_Variant_getPtrConstructor(VariantType_Quaternion, int32 i)

# proc quaternion*(): Quaternion =
# proc quaternion*(`from`: Quaternion): Quaternion =
proc quaternion*(`from`: Basis): Quaternion =
  let argArr = [getPtr `from`]
  Quaternion_constr[2](addr result, addr argArr[0])
proc quaternion*(axis: Vector3; angle: Float): Quaternion =
  let argArr = [getPtr axis, getPtr angle]
  Quaternion_constr[3](addr result, addr argArr[0])
proc quaternion*(arcFrom: Vector3; arcTo: Vector3): Quaternion =
  let argArr = [getPtr arcFrom, getPtr arcTo]
  Quaternion_constr[4](addr result, addr argArr[0])
# proc quaternion*(x: Float; y: Float; z: Float; w: Float): Quaternion =

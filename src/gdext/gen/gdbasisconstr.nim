var Basis_constr: array[5, PtrConstructor]
proc load_Basis_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {2, 3}:
    Basis_constr[i] = interface_Variant_getPtrConstructor(VariantType_Basis, int32 i)

# proc basis*(): Basis =
# proc basis*(`from`: Basis): Basis =
proc basis*(`from`: Quaternion): Basis =
  let argArr = [getPtr `from`]
  Basis_constr[2](addr result, addr argArr[0])
proc basis*(axis: Vector3; angle: Float): Basis =
  let argArr = [getPtr axis, getPtr angle]
  Basis_constr[3](addr result, addr argArr[0])
# proc basis*(xAxis: Vector3; yAxis: Vector3; zAxis: Vector3): Basis =
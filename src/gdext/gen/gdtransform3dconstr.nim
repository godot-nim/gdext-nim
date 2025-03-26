var Transform3D_constr: array[5, PtrConstructor]
proc load_Transform3D_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {4}:
    Transform3D_constr[i] = interface_Variant_getPtrConstructor(VariantType_Transform3D, int32 i)

# proc transform3D*(): Transform3D =
# proc transform3D*(`from`: Transform3D): Transform3D =
# proc transform3D*(basis: Basis; origin: Vector3): Transform3D =
# proc transform3D*(xAxis: Vector3; yAxis: Vector3; zAxis: Vector3; origin: Vector3): Transform3D =
proc transform3D*(`from`: Projection): Transform3D =
  let argArr = [getPtr `from`]
  Transform3D_constr[4](addr result, addr argArr[0])

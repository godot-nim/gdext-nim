var Projection_constr: array[4, PtrConstructor]
proc load_Projection_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in 0..3:
    Projection_constr[i] = interface_Variant_getPtrConstructor(VariantType_Projection, int32 i)

# proc projection*(): Projection =
# proc projection*(`from`: Projection): Projection =
proc projection*(`from`: Transform3D): Projection =
  let argArr = [getPtr `from`]
  Projection_constr[2](addr result, addr argArr[0])
# proc projection*(xAxis: Vector4; yAxis: Vector4; zAxis: Vector4; wAxis: Vector4): Projection =

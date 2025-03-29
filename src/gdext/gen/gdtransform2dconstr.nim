var Transform2D_constr: array[5, PtrConstructor]
proc load_Transform2D_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {2, 3}:
    Transform2D_constr[i] = interface_Variant_getPtrConstructor(VariantType_Transform2D, int32 i)

# proc transform2D*(): Transform2D =
# proc transform2D*(`from`: Transform2D): Transform2D =
proc transform2D*(rotation: Float; position: Vector2): Transform2D =
  let argArr = [getPtr rotation, getPtr position]
  Transform2D_constr[2](addr result, addr argArr[0])
proc transform2D*(rotation: Float; scale: Vector2; skew: Float; position: Vector2): Transform2D =
  let argArr = [getPtr rotation, getPtr scale, getPtr skew, getPtr position]
  Transform2D_constr[3](addr result, addr argArr[0])
# proc transform2D*(xAxis: Vector2; yAxis: Vector2; origin: Vector2): Transform2D =

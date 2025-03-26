var Plane_constr: array[7, PtrConstructor]
proc load_Plane_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {2, 4, 5}:
    Plane_constr[i] = interface_Variant_getPtrConstructor(VariantType_Plane, int32 i)

# proc plane*(): Plane =
# proc plane*(`from`: Plane): Plane =
proc plane*(normal: Vector3): Plane =
  let argArr = [getPtr normal]
  Plane_constr[2](addr result, addr argArr[0])
# proc plane*(normal: Vector3; d: Float): Plane =
proc plane*(normal: Vector3; point: Vector3): Plane =
  let argArr = [getPtr normal, getPtr point]
  Plane_constr[4](addr result, addr argArr[0])
proc plane*(point1: Vector3; point2: Vector3; point3: Vector3): Plane =
  let argArr = [getPtr point1, getPtr point2, getPtr point3]
  Plane_constr[5](addr result, addr argArr[0])
# proc plane*(a: Float; b: Float; c: Float; d: Float): Plane =

var AABB_constr: array[3, PtrConstructor]
proc load_AABB_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {2}:
    AABB_constr[i] = interface_Variant_getPtrConstructor(VariantType_AABB, int32 i)

# proc aABB*(): AABB =
# proc aABB*(`from`: AABB): AABB =
proc aABB*(position: Vector3; size: Vector3): AABB =
  let argArr = [getPtr position, getPtr size]
  AABB_constr[2](addr result, addr argArr[0])
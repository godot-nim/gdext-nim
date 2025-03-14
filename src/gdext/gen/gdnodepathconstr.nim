var NodePath_constr: array[3, PtrConstructor]
proc load_NodePath_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {1, 2}:
    NodePath_constr[i] = interface_Variant_getPtrConstructor(VariantType_NodePath, int32 i)

# proc nodePath*(): NodePath =
proc nodePath*(`from`: NodePath): NodePath =
  let argArr = [getPtr `from`]
  NodePath_constr[1](addr result, addr argArr[0])
proc nodePath*(`from`: String): NodePath =
  let argArr = [getPtr `from`]
  NodePath_constr[2](addr result, addr argArr[0])
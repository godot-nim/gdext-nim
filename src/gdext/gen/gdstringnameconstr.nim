var StringName_constr: array[3, PtrConstructor]
proc load_StringName_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {1, 2}:
    StringName_constr[i] = interface_Variant_getPtrConstructor(VariantType_StringName, int32 i)

# proc stringName*(): StringName =
proc stringName*(`from`: StringName): StringName =
  let argArr = [getPtr `from`]
  StringName_constr[1](addr result, addr argArr[0])
proc stringName*(`from`: String): StringName =
  let argArr = [getPtr `from`]
  StringName_constr[2](addr result, addr argArr[0])
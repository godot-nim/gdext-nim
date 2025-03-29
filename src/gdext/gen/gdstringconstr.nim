var String_constr: array[4, PtrConstructor]
proc load_String_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {1, 2, 3}:
    String_constr[i] = interface_Variant_getPtrConstructor(VariantType_String, int32 i)

# proc newGdString*(): String =
proc newGdString*(`from`: String): String =
  let argArr = [getPtr `from`]
  String_constr[1](addr result, addr argArr[0])
proc newGdString*(`from`: StringName): String =
  let argArr = [getPtr `from`]
  String_constr[2](addr result, addr argArr[0])
proc newGdString*(`from`: NodePath): String =
  let argArr = [getPtr `from`]
  String_constr[3](addr result, addr argArr[0])

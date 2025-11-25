var Dictionary_constr: array[3, PtrConstructor]
proc load_Dictionary_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in 0..2:
    Dictionary_constr[i] = interface_Variant_getPtrConstructor(VariantType_Dictionary, int32 i)

proc newDictionary*(): Dictionary =
  Dictionary_constr[0](addr result, nil)
proc newDictionary*(`from`: Dictionary): Dictionary =
  let argArr = [getPtr `from`]
  Dictionary_constr[1](addr result, addr argArr[0])
proc newDictionary*(base: Dictionary; keyType: Int; keyClassName: StringName; keyScript: Variant; valueType: Int; valueClassName: StringName; valueScript: Variant): Dictionary =
  let argArr = [getPtr base, getPtr keyType, getPtr keyClassName, getPtr keyScript, getPtr valueType, getPtr valueClassName, getPtr valueScript]
  Dictionary_constr[2](addr result, addr argArr[0])

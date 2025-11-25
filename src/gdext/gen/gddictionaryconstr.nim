var Dictionary_constr: array[3, PtrConstructor]
proc load_Dictionary_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in 0..2:
    Dictionary_constr[i] = interface_Variant_getPtrConstructor(VariantType_Dictionary, int32 i)

# proc newDictionary*(): Dictionary[Variant, Variant] =
# proc newDictionary*(`from`: Dictionary[Variant, Variant]): Dictionary[Variant, Variant] =
proc newDictionary*(base: Dictionary[Variant, Variant]; keyType: Int; keyClassName: StringName; keyScript: Variant; valueType: Int; valueClassName: StringName; valueScript: Variant): Dictionary[Variant, Variant] =
  let argArr = [getPtr base, getPtr keyType, getPtr keyClassName, getPtr keyScript, getPtr valueType, getPtr valueClassName, getPtr valueScript]
  Dictionary_constr[2](addr result, addr argArr[0])

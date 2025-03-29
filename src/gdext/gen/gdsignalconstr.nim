var Signal_constr: array[3, PtrConstructor]
proc load_Signal_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {1, 2}:
    Signal_constr[i] = interface_Variant_getPtrConstructor(VariantType_Signal, int32 i)

# proc signal*(): Signal =
proc signal*(`from`: Signal): Signal =
  let argArr = [getPtr `from`]
  Signal_constr[1](addr result, addr argArr[0])
proc signal*(`object`: Object; signal: StringName): Signal =
  let argArr = [getPtr `object`, getPtr signal]
  Signal_constr[2](addr result, addr argArr[0])

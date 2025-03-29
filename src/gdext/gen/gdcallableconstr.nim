var Callable_constr: array[3, PtrConstructor]
proc load_Callable_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {1, 2}:
    Callable_constr[i] = interface_Variant_getPtrConstructor(VariantType_Callable, int32 i)

# proc callable*(): Callable =
proc callable*(`from`: Callable): Callable =
  let argArr = [getPtr `from`]
  Callable_constr[1](addr result, addr argArr[0])
proc callable*(`object`: Object; `method`: StringName): Callable =
  let argArr = [getPtr `object`, getPtr `method`]
  Callable_constr[2](addr result, addr argArr[0])

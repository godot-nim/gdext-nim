var Color_constr: array[7, PtrConstructor]
proc load_Color_constructor {.execon: staticevents.init_engine.on_load_builtinclassConstructor.} =
  for i in {5, 6}:
    Color_constr[i] = interface_Variant_getPtrConstructor(VariantType_Color, int32 i)

# proc color*(): Color =
# proc color*(`from`: Color): Color =
# proc color*(`from`: Color; alpha: Float): Color =
# proc color*(r: Float; g: Float; b: Float): Color =
# proc color*(r: Float; g: Float; b: Float; a: Float): Color =
proc color*(code: String): Color =
  let argArr = [getPtr code]
  Color_constr[5](addr result, addr argArr[0])
proc color*(code: String; alpha: Float): Color =
  let argArr = [getPtr code, getPtr alpha]
  Color_constr[6](addr result, addr argArr[0])
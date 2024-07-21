import godotcore/dirty/gdextension_interface
export InitializationLevel, gdcall

import godotcore/[ events, builtinindex, geometrics, Variant ]
export             events, builtinindex, geometrics, Variant

import godotgen/[ utilityfuncs, builtinclasses, classindex, globalenums, localenums, structs ]
export            utilityfuncs, builtinclasses, classindex, globalenums, localenums, structs

import godot/[ init, classautomate, classtraits, varianttraits, nodetraits, gdrefs, conversions ]
export         init, classautomate, classtraits, varianttraits, nodetraits, gdrefs, conversions

proc echo*(args: varargs[Variant, variant]) =
  if unlikely(args.len == 0): return
  print(args[0], args[1..^1])
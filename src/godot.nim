{.warning[UnusedImport]:off.}

include "godot/checkenv"

import godotcore/dirty/gdextension_interface
export InitializationLevel, gdcall

import godotcore/[ events, builtinindex, geometrics, Variant ]
export             events, builtinindex, geometrics, Variant

import godotgen/[ builtinclasses, classindex, globalenums, localenums, structs ]
export            builtinclasses, classindex, globalenums, localenums, structs

import godot/[ init, classautomate, classtraits, varianttraits, nodetraits, gdrefs, conversions ]
export         init, classautomate, classtraits, varianttraits, nodetraits, gdrefs, conversions

import godot/extensionmanager

import godotgen/utilityFuncs
export utilityFuncs except print

proc print*(args: varargs[Variant, variant]) =
  if unlikely(args.len == 0): return
  utilityFuncs.print(args[0], args[1..^1])
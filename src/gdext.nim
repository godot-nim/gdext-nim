import gdextcore/dirty/gdextensioninterface
export InitializationLevel, gdcall

import gdextcore/[ staticevents, builtinindex, geometrics, gdvariant, gdtypedarray ]
export             staticevents, builtinindex, geometrics, gdvariant, gdtypedarray

import gdextgen/[ builtinclasses, classindex, globalenums, localenums, structs ]
export            builtinclasses, classindex, globalenums, localenums, structs

import gdext/[ env, init, classautomate, classtraits, varianttraits, nodetraits, gdrefs, conversions ]
export         env, init, classautomate, classtraits, varianttraits, nodetraits, gdrefs, conversions

import gdext/gdextensionmain
export gdextensionmain.ExtensionMain, gdextensionmain.extmain

import gdextgen/utilityfuncs
export utilityfuncs except print

import gdextgen/classes/gdengine
export gdengine.isEditorHint

proc print*(args: varargs[Variant, variant]) =
  if unlikely(args.len == 0): return
  utilityfuncs.print(args[0], args[1..^1])
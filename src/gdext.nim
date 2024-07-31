import gdextcore/dirty/gdextensioninterface
export InitializationLevel, gdcall

import gdextcore/[ events, builtinindex, geometrics, gdvariant ]
export             events, builtinindex, geometrics, gdvariant

import gdextgen/[ builtinclasses, classindex, globalenums, localenums, structs ]
export            builtinclasses, classindex, globalenums, localenums, structs

import gdext/[ env, init, classautomate, classtraits, varianttraits, nodetraits, gdrefs, conversions ]
export         env, init, classautomate, classtraits, varianttraits, nodetraits, gdrefs, conversions

import gdext/extensionmanager
export extensionmanager.isRunningInEditor

import gdext/gdextensionmain
export gdextensionmain.ExtensionMain, gdextensionmain.extmain

import gdextgen/utilityfuncs
export utilityfuncs except print

proc print*(args: varargs[Variant, variant]) =
  if unlikely(args.len == 0): return
  utilityfuncs.print(args[0], args[1..^1])
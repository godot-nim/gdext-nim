{.warning[UnusedImport]: off.}
import gdextcore/dirty/gdextensioninterface
export InitializationLevel, VariantType, gdcall

import gdextcore/[ staticevents, builtinindex, geometrics, gdvariant, gdrefs, gdtypedarray ]
export             staticevents, builtinindex, geometrics, gdvariant, gdrefs, gdtypedarray

import gdextcore/typeshift
export typeshift.get, typeshift.variant

import gdextgen/[ builtinclasses, classindex, globalenums, localenums, structs ]
export            builtinclasses, classindex, globalenums, localenums, structs

import gdext/surface/[ init, userclass, properties, classutils, variantutils, nodeutils, arrayutils, refutils, conversions ]
export                 init, userclass, properties, classutils, variantutils, nodeutils, arrayutils, refutils, conversions

import gdext/buildconf

import gdext/gdextensionmain
export gdextensionmain.ExtensionMain, gdextensionmain.extmain

import gdextgen/utilityfuncs
export utilityfuncs except print

import gdextgen/classes/gdengine
export gdengine.isEditorHint

proc print*(args: varargs[Variant, variant]) =
  if unlikely(args.len == 0): return
  utilityfuncs.print(args[0], args[1..^1])
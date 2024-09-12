{.warning[UnusedImport]: off.}

import gdext/buildconf

import gdext/utils/staticevents
export staticevents.process, staticevents.expandEvent

import gdext/dirty/gdextensioninterface
export InitializationLevel, VariantType, gdcall, CallError, CallErrorType

import gdext/core/[ builtinindex, geometrics, gdrefs, gdtypedarray ]
export              builtinindex, geometrics, gdrefs, gdtypedarray

import gdext/core/typeshift
export typeshift.get, typeshift.variant

import gdextgen/[ builtinclasses, classindex, globalenums, localenums, structs ]
export            builtinclasses, classindex, globalenums, localenums, structs

import gdextgen/utilityfuncs
export utilityfuncs except print

import gdextgen/classes/gdengine
export gdengine.isEditorHint

import gdext/surface/[ init, userclass, properties, classutils, variantutils, nodeutils, arrayutils, refutils, conversions ]
export                 init, userclass, properties, classutils, variantutils, nodeutils, arrayutils, refutils, conversions

import gdext/gdextensionmain
export gdextensionmain.ExtensionMain, gdextensionmain.extmain

proc print*(args: varargs[Variant, variant]) =
  if unlikely(args.len == 0): return
  utilityfuncs.print(args[0], args[1..^1])
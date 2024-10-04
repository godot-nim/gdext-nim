{.warning[UnusedImport]: off.}

import gdext/buildconf

import gdext/utils/staticevents
export staticevents.execon, staticevents.expandEvent

import gdext/dirty/gdextensioninterface
export InitializationLevel, VariantType, gdcall, CallError, CallErrorType

import gdext/core/[ builtinindex, geometrics, gdrefs, gdtypedarray ]
export              builtinindex, geometrics, gdrefs, gdtypedarray

import gdext/core/[typeshift, gdclass]
export typeshift.get, typeshift.variant
export gdclass.Object, gdclass.RefCounted

import gdext/gen/[ builtinclasses, classindex, globalenums, localenums, structs ]
export             builtinclasses, classindex, globalenums, localenums, structs

import gdext/gen/utilityfuncs
export utilityfuncs except print

import gdext/surface/[ common, init, userclass, userenums, properties, pragmas, classutils, variantutils, nodeutils, arrayutils, conversions ]
export                 common, init, userclass, userenums, properties, pragmas, classutils, variantutils, nodeutils, arrayutils, conversions

import gdext/classes/[gdengine]
export gdengine.isEditorHint
import gdext/extclasses/[gdextensionmain]
export gdextensionmain.ExtensionMain, gdextensionmain.extmain

proc print*(args: varargs[Variant, variant]) =
  if unlikely(args.len == 0): return
  utilityfuncs.print(args[0], args[1..^1])
{.experimental: "callOperator".}

import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/builtinindex

import std/[hashes]

proc callable*(): Callable = discard
proc signal*(): Signal = discard

proc rid*(): RID = discard
proc rid*(`from`: RID): RID = `from`

include gdext/gen/gdcallableconstr
include gdext/gen/gdsignalconstr
include gdext/gen/gdridconstr
include gdext/gen/gdcallable
include gdext/gen/gdsignal
include gdext/gen/gdrid

include gdext/gen/gdint
include gdext/gen/gdfloat
include gdext/gen/gdbool

{.push, inline.}
proc `()`*(signal: Signal; args: varargs[Variant, variant]) =
  signal.emit(args)
{.pop.}

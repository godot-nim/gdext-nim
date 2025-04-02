import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/private/typeshift
import gdext/private/macros
import gdext/builtinindex

import std/[hashes]

proc `[]`*(self: Dictionary; key: Variant): Variant =
  cast[ptr Variant](interface_Dictionary_operatorIndexConst(addr self, addr key))[]
proc `[]`*(self: var Dictionary; key: Variant): var Variant =
  cast[ptr Variant](interface_Dictionary_operatorIndex(addr self, addr key))[]
proc `[]=`*(self: var Dictionary; key: Variant; value: sink Variant) =
  `[]`(self, key) = value

include gdext/gen/gddictionaryconstr
include gdext/gen/gddictionary

proc contains*[T: SomeProperty](dict: Dictionary; value: T): bool = dict.has(variant value)

template dictionary*(args: varargs[untyped]): untyped {.deprecated: "use newDictionary instead".} = unpackVarargs(newDictionary, args)

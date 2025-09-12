import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/private/typeshift
import gdext/private/macros
import gdext/builtinindex
import gdext/varianttools

import std/[hashes, tables]

template nilCheck*(self: Dictionary) =
  if unlikely(cast[pointer](self) == nil):
    raise newException(NilAccessDefect, $typeof(self) & " requires init; call `new" & $typeof(self) & "()`")
template nilCheck*(self: var Dictionary) =
  if unlikely(cast[pointer](self) == nil):
    self = newDictionary()

proc `[]`*(self: Dictionary; key: Variant): Variant =
  cast[ptr Variant](interface_Dictionary_operatorIndexConst(addr self, addr key))[]
proc `[]`*(self: var Dictionary; key: Variant): var Variant =
  cast[ptr Variant](interface_Dictionary_operatorIndex(addr self, addr key))[]
proc `[]=`*(self: var Dictionary; key: Variant; value: sink Variant) =
  `[]`(self, key) = value

include gdext/gen/gddictionaryconstr
include gdext/gen/gddictionary

proc newDictionary*(table: Table): Dictionary =
  result = newDictionary()
  for key, value in table:
    result[variant key] = variant value

proc newDictionary*(table: TableRef): Dictionary =
  result = newDictionary()
  for key, value in table:
    result[variant key] = variant value

proc newDictionary*[A, B](pairs: openArray[(A, B)]): Dictionary =
  result = newDictionary()
  for (key, value) in pairs:
    result[variant key] = variant value

iterator keys*(self: Dictionary): Variant =
  for key in self.variant.keys:
    yield key

iterator values*(self: Dictionary): Variant =
  for key in self.variant.keys:
    yield self[key]

iterator pairs*(self: Dictionary): tuple[key, item: Variant] =
  for key in self.variant.keys:
    yield (key, self[key])

iterator mvalues*(self: var Dictionary): var Variant =
  for key in self.variant.keys:
    yield self[key]

iterator mpairs*(self: var Dictionary): tuple[key: Variant; item: var Variant] =
  for key in self.variant.keys:
    yield (key, self[key])

proc contains*[T: SomeProperty](dict: Dictionary; value: T): bool = dict.has(variant value)

proc `[]`*(self: Dictionary; key: SomeProperty): Variant =
  self[variant key]
proc `[]`*(self: var Dictionary; key: SomeProperty): var Variant =
  self[variant key]
proc `[]=`*(self: var Dictionary; key: SomeProperty; value: sink Variant) =
  self[variant key] = value
proc `[]=`*[A, B: SomeProperty](self: var Dictionary; key: A; value: sink B) =
  self[variant key] = variant value

template dictionary*(args: varargs[untyped]): untyped {.deprecated: "use newDictionary instead".} = unpackVarargs(newDictionary, args)

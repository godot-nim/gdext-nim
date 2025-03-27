import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/private/typeshift
import gdext/private/macros
import gdext/builtinindex

include gdext/gen/gddictionaryconstr
include gdext/gen/gddictionary

proc contains*[T: SomeProperty](dict: Dictionary; value: T): bool = dict.has(variant value)

template dictionary*(args: varargs[untyped]): untyped {.deprecated: "use newDictionary instead".} = unpackVarargs(newDictionary, args)

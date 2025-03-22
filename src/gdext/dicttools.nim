import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/private/typeshift
import gdext/builtinindex

include gdext/gen/gddictionaryconstr
include gdext/gen/gddictionary

proc contains*[T: SomeVariant](dict: Dictionary; value: T): bool = dict.has(variant value)

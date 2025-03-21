import gdext/gdinterface/methodtools
import gdext/builtinindex
import gdext/private/native
import gdext/private/staticevents
import gdext/core/typeshift

include gdext/gen/gddictionaryconstr
include gdext/gen/gddictionary

proc contains*[T: SomeVariant](dict: Dictionary; value: T): bool = dict.has(variant value)

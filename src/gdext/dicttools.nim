import gdext/builtinindex
import gdext/core/typeshift
import gdext/gen/[builtinclasses]

proc contains*[T: SomeVariant](dict: Dictionary; value: T): bool = dict.has(variant value)

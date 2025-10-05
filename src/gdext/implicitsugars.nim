import gdext/private/typeshift
import gdext/builtinindex
import gdext/arraytools

proc add*(self: var Array; value: SomeProperty) =
  append(self, variant value)

proc set*(self: Object; property: StringName; value: SomeProperty) {.inline.} =
  set(self, property, variant value)
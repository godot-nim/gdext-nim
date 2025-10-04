import gdext/private/typeshift
import gdext/builtinindex
import gdext/arraytools
proc add*(self: var Array; value: SomeProperty) =
  append(self, variant value)
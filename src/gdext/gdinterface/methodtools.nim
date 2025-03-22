import std/importutils
import gdext/builtinindex {.all.}
import gdext/stringtools
import gdext/private/gdinterface

export gdcall

include gdext/private/includes/stringtoolsbase
export getPtr
export load

proc getPtr*[I](arr: array[I, Variant]): array[I, pointer] =
  for i in 0..<arr.len:
    result[i] = getPtr arr[i]
proc getPtr*(arr: array[0, Variant]): array[0, pointer] = discard

template getTypedPtr*(v: Variant): VariantPtr = addr v

proc head*[T](a: openArray[T]): ptr T =
  if a.len == 0: nil
  else: addr a[0]

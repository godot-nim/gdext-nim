import native
import extracommands
import gdext/core/builtinindex
import gdext/core/gdclass
import gdext/core/gdrefs

export gdcall

template CLASS_getOwner*(v: Object): ObjectPtr =
  owner v

template getPtr*[T](v: T): pointer = cast[pointer](addr v)
template getPtr*(v: Variant): pointer = cast[pointer](addr v.data)
template getPtr*[T: Object](v: T): pointer =
  cast[pointer](v.ownerPtr)
template getPtr*(v: GdRef): pointer =
  if v.handle != nil:
    discard hook_reference v.handle.owner
  getPtr v.handle

proc getPtr*[I](arr: array[I, Variant]): array[I, pointer] =
  for i in 0..<arr.len:
    result[i] = getPtr arr[i]
proc getPtr*(arr: array[0, Variant]): array[0, pointer] = discard

template getTypedPtr*(v: Variant): VariantPtr = addr v

proc head*[T](a: openArray[T]): ptr T =
  if a.len == 0: nil
  else: addr a[0]

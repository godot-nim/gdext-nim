import gdext/dirty/gdextensioninterface
import extracommands
import builtinindex
import gdclass
import gdrefs

export gdcall

template CLASS_getOwner*(v: Object): ObjectPtr =
  CLASS_getObjectPtr v

template getPtr*[T](v: T): pointer = cast[pointer](addr v)
template getPtr*(v: Variant): pointer = cast[pointer](addr v.data)
template getPtr*[T: Object](v: T): pointer =
  cast[pointer](CLASS_getObjectPtrPtr v)
template getPtr*(v: GdRef): pointer =
  if v.handle != nil:
    discard hook_reference CLASS_getObjectPtr v.handle
  getPtr v.handle

template getTypedPtr*(v: Variant): VariantPtr = addr v
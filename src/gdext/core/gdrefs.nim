import gdext/gdinterface/native
import gdext/gdinterface/extracommands
import gdext/core/gdclass

type
  GdRef*[RefCounted] = object
    handle*: RefCounted

proc `=destroy`*[T](self: GdRef[T]) =
  if self.handle.isNil: return
  let objectptr = CLASS_getObjectPtr self.handle
  if hook_unreference(objectptr):
    interfaceObjectDestroy objectptr
proc `=copy`*[T](dst: var GdRef[T]; src: GdRef[T]) =
  `=destroy` dst
  wasMoved dst
  dst.handle = src.handle
  discard hook_reference(CLASS_getObjectPtr dst.handle)
proc `=dup`*[T](src: GdRef[T]): GdRef[T] =
  result.handle = src.handle
  discard hook_reference(CLASS_getObjectPtr result.handle)


proc unwrapped*[T](self: GdRef[T]): T = self.handle

template gdref*[T](Type: typedesc[T]): typedesc = GdRef[Type]
proc referenced*[T](self: T): GdRef[T] =
  result.handle = self
  discard hook_reference(CLASS_getObjectPtr self)
proc asGdRef*[T](self: T): GdRef[T] =
  result.handle = self
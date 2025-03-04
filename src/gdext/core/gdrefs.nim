import gdext/gdinterface/native
import gdext/gdinterface/extracommands

type
  GdRef*[RefCounted] = object
    handle*: RefCounted

proc `=destroy`*[T](self: GdRef[T]) =
  if self.handle.isNil: return
  let objectptr = self.handle.owner
  if hook_unreference(objectptr):
    interfaceObjectDestroy objectptr
proc `=copy`*[T](dst: var GdRef[T]; src: GdRef[T]) =
  `=destroy` dst
  wasMoved dst
  dst.handle = src.handle
  discard hook_reference(dst.handle.owner)
proc `=dup`*[T](src: GdRef[T]): GdRef[T] =
  result.handle = src.handle
  discard hook_reference(result.handle.owner)


proc unwrapped*[T](self: GdRef[T]): T = self.handle

template gdref*[T](Type: typedesc[T]): typedesc = GdRef[Type]
proc referenced*[T](self: T): GdRef[T] =
  result.handle = self
  discard hook_reference(self.owner)
proc asGdRef*[T](self: T): GdRef[T] =
  result.handle = self
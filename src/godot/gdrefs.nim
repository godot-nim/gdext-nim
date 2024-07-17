import godotcore/dirty/gdextension_interface
import godotcore/extracommands
import godotcore/typeshift
import godotcore/GodotClass
import godotcore/Variant
import godotgen/classindex

type
  SomeRefCounted* = concept type t
    t is RefCounted

  GdRef*[RefCounted: SomeRefCounted] = object
    handle*: RefCounted

proc `=destroy`*[T: SomeRefCounted](self: GdRef[T]) =
  if self.handle.isNil: return
  let objectptr = CLASS_getObjectPtr self.handle
  if hook_unreference(objectptr):
    destroy(objectptr)
proc `=copy`*[T: SomeRefCounted](dst: var GdRef[T]; src: GdRef[T]) =
  `=destroy` dst
  wasMoved dst
  dst.handle = src.handle
  discard hook_reference(CLASS_getObjectPtr dst.handle)
proc `=dup`*[T: SomeRefCounted](src: GdRef[T]): GdRef[T] =
  result.handle = src.handle
  discard hook_reference(CLASS_getObjectPtr result.handle)

template variantType*(Type: typedesc[GdRef]): Variant_Type = VariantType_Object

proc unwrapped*[T: SomeRefCounted](self: GdRef[T]): T = self.handle

template gdref*[T: SomeRefCounted](Type: typedesc[T]): typedesc = GdRef[Type]
proc referenced*[T: SomeRefCounted](self: T): GdRef[T] =
  result.handle = self
  discard hook_reference(CLASS_getObjectPtr self)
proc asGdRef*[T: SomeRefCounted](self: T): GdRef[T] =
  result.handle = self

template encoded*[T: SomeRefCounted](_: typedesc[GdRef[T]]): typedesc[ObjectPtr] = ObjectPtr
template encode*[T: SomeRefCounted](v: GdRef[T]; p: pointer) =
  v.unwrapped.encode(p)
proc decode*[T: SomeRefCounted](p: pointer; Result: typedesc[GdRef[T]]): Result =
  p.decode(T).referenced
proc variant*[T: SomeRefCounted](v: GdRef[T]): Variant =
  v.unwrapped.variant
proc get*[T: SomeRefCounted](v: Variant; Result: typedesc[GdRef[T]]): Result =
  v.get(T).referenced

proc decode_result*[T: SomeRefCounted](p: pointer; Result: typedesc[GdRef[T]]): Result =
  p.decode_result(T).asGdRef

proc castTo*[T: SomeRefCounted](self: GodotClass; Result: typedesc[GdRef[T]]): Result =
  self.castTo(T).asGdRef

proc castTo*[T: SomeRefCounted; S: SomeClass](self: GdRef[T]; Result: typedesc[S]): Result =
  self.handle.castTo S
proc castTo*[T: SomeRefCounted; S: SomeRefCounted](self: GdRef[T]; Result: typedesc[GdRef[S]]): Result =
  self.castTo(S).asGdRef

proc `as`*[T: SomeRefCounted](self: GodotClass; Result: typedesc[GdRef[T]]): Result =
  self.castTo(Result)
proc `as`*[T: SomeRefCounted; S: SomeRefCounted](self: GdRef[T]; Result: typedesc[GdRef[S]]): Result =
  self.castTo(Result)
proc `as`*[T: SomeRefCounted; S: SomeClass](self: GdRef[T]; Result: typedesc[S]): Result =
  self.castTo(Result)

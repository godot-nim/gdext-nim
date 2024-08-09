import gdextcore/gdclass
import gdextcore/gdrefs

export GdRef, gdref, unwrapped

import gdext/classtraits

template castTo*[T: SomeRefCounted](self: GodotClass; Result: typedesc[GdRef[T]]): Result = self.castTo(T).asGdRef
template castTo*[T: SomeRefCounted](self: GDRef; Result: typedesc[GdRef[T]]): Result = self.unwrapped.castTo(Result)

template `as`*[T: SomeRefCounted](self: GodotClass; Result: typedesc[GdRef[T]]): Result = castTo(self, Result)
template `as`*[T: SomeRefCounted](self: GdRef; Result: typedesc[GdRef[T]]): Result = castTo(self, Result)

proc instantiate*[T: SomeRefCounted](Type: typedesc[T]): GdRef[T] =
  var res = instantiate_internal Type
  CLASS_sync_instantiate res
  res.asGdRef

template `[]`*[T: SomeRefCounted](x: GdRef[T]): T = x.unwrapped
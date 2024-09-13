import gdext/buildconf
import gdext/core/gdclass
import gdext/core/gdrefs

import gdext/surface/classutils

template castTo*[T: SomeRefCounted](self: GodotClass; Result: typedesc[GdRef[T]]): Result = self.castTo(typeof T).asGdRef
template castTo*[T: SomeRefCounted](self: GDRef; Result: typedesc[GdRef[T]]): Result = self.unwrapped.castTo(Result)

template `as`*[T: SomeRefCounted](self: GodotClass; Result: typedesc[GdRef[T]]): Result = castTo(self, Result)
template `as`*[T: SomeRefCounted](self: GdRef; Result: typedesc[GdRef[T]]): Result = castTo(self, Result)

proc instantiate*[T: SomeRefCounted](Type: typedesc[T]): GdRef[T] =
  result = instantiate_internal(Type).asGdRef
  when Dev.debugCallbacks:
    echo SYNC.INSTANTIATE, $typeof T

template `[]`*[T: SomeRefCounted](x: GdRef[T]): T = x.unwrapped
import godotcore/gdclass
import godotcore/gdrefs

export GdRef, gdref

template castTo*[T: SomeRefCounted](self: GodotClass; Result: typedesc[GdRef[T]]): Result = self.castTo(T).asGdRef
template castTo*[T: SomeRefCounted](self: SomeRefCounted; Result: typedesc[GdRef[T]]): Result = self.unwrapped.castTo(Result)

template `as`*[T: SomeRefCounted](self: GodotClass; Result: typedesc[GdRef[T]]): Result = castTo(self, Result)
template `as`*[T: SomeRefCounted](self: GdRef; Result: typedesc[GdRef[T]]): Result = castTo(self, Result)
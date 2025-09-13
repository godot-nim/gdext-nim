import gdext/builtinindex
import gdext/stringtools
import gdext/objecttools
import gdext/varianttools

{.push, inline.}

converter convertToString*(str: string): String = newGdString str
converter convertToStringName*(str: string): StringName = newStringName str
converter convertToNodePath*(str: string): NodePath = newNodePath newGdString str

converter convertToArray*(arr: TypedArray): Array = Array arr

converter convertToSingleton*[T: SomeClass](_: typedesc[T]): T = singleton(T)

converter convertToBool*(variant: Variant): bool = variant.booleanize

proc `as`*[T: SomeClass](self: SomeClass; _: typedesc[T]): T = castTo(self, typedesc[T])
proc `as`*[T: RefCounted](self: Object; Result: typedesc[GdRef[T]]): Result = castTo(self, Result)
proc `as`*[T: RefCounted](self: GdRef; Result: typedesc[GdRef[T]]): Result = castTo(self, Result)

template `as`*[T](v: Variant; Result: typedesc[T]): Result = v.get(T)

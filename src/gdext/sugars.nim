import gdext/builtinindex
import gdext/stringtools
import gdext/objecttools
import gdext/varianttools
import gdext/arraytools {.all.}
import gdext/dicttools {.all.}

{.push, inline.}

converter convertToString*(str: string): String = newGdString str
converter convertToStringName*(str: string): StringName = newStringName str
converter convertToNodePath*(str: string): NodePath = newNodePath newGdString str

converter convertToArray*[T: not Variant](arr: Array[T]): Array[Variant] = arr.wild
converter convertToArray*[T: not Variant](arr: var Array[T]): var Array[Variant] = arr.wild

converter convertToDictionary*[A, B](dict: Dictionary[A, B]): Dictionary[Variant, Variant] = dict.wild
converter convertToDictionary*[A, B](dict: var Dictionary[A, B]): var Dictionary[Variant, Variant] = dict.wild

converter convertToSingleton*[T: SomeClass](_: typedesc[T]): T = singleton(T)

converter convertToBool*(variant: Variant): bool = variant.booleanize

proc `as`*[T: SomeClass](self: SomeClass; _: typedesc[T]): T = castTo(self, typedesc[T])
proc `as`*[T: RefCounted](self: Object; Result: typedesc[GdRef[T]]): Result = castTo(self, Result)
proc `as`*[T: RefCounted](self: GdRef; Result: typedesc[GdRef[T]]): Result = castTo(self, Result)

template `as`*[T](v: Variant; Result: typedesc[T]): Result = v.get(T)

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

{.pop.}

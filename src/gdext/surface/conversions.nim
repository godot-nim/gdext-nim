import gdext/gdinterface/variants
import gdext/core/[builtinindex]
import gdext/gen/[builtinclasses]
import gdext/surface/[classutils]

{.push, inline.}

converter convertToString*(str: string): String = gdstring str
converter convertToStringName*(str: string): StringName = stringName str
converter convertToNodePath*(str: string): NodePath = nodePath gdstring str

converter convertToArray*(arr: TypedArray): Array = Array arr

converter convertToSingleton*[T: SomeClass](_: typedesc[T]): T = singleton(T)

converter convertToBool*(variant: Variant): bool = variant.booleanize

{.pop.}

import gdextcore/builtinindex
import gdextcore/gdclass
import gdextgen/builtinclasses/constructors
import gdext/classtraits
import gdext/arrayutils

{.push, inline.}

converter convertToString*(str: string): String = gdstring str
converter convertToStringName*(str: string): StringName = stringName str
converter convertToNodePath*(str: string): NodePath = nodePath gdstring str

converter convertToArray*(arr: TypedArray): Array = Array arr

converter toSingleton*[T: GodotClass](_: typedesc[T]): T = singleton(T)

{.pop.}

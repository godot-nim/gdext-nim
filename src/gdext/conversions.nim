import gdextcore/builtinindex
import gdextcore/gdclass
import gdextgen/builtinclasses/constructors
import gdext/classtraits

converter convertToString*(str: string): String = gdstring str
converter convertToStringName*(str: string): StringName = stringName str
converter convertToNodePath*(str: string): NodePath = nodePath gdstring str

converter toSingleton*[T: GodotClass](_: typedesc[T]): T = singleton(T)
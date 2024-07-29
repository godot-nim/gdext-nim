import gdextcore/builtinindex
import gdextgen/builtinclasses/constructors
import gdextcore/gdrefs


converter convertToString*(str: string): String = gdstring str
converter convertToStringName*(str: string): StringName = stringName str
converter convertToNodePath*(str: string): NodePath = nodePath gdstring str
converter convertToRefCounted*[T: SomeRefCounted](x: GdRef[T]): T = x.unwrapped
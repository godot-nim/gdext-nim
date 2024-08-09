import gdextcore/builtinindex
import gdextgen/builtinclasses/constructors


converter convertToString*(str: string): String = gdstring str
converter convertToStringName*(str: string): StringName = stringName str
converter convertToNodePath*(str: string): NodePath = nodePath gdstring str
import std/macros

import gdext/core/builtinindex
import gdext/gen/[builtinclasses, classindex]
import gdext/classes/gdNode

import classutils

template `/`*(self: Node; path: NodePath): Node = getNode(self, path)
template `/`*(self: Node; path: string): Node = self/nodepath(gdstring path)

template `/`*[T: Node](self: Node; sub: typedesc[T]): T = self/($sub) as sub

proc instantiate*[T_Node: Node](T: typedesc[T_Node]; name: string): T =
  result = classutils.instantiate(T)
  result.name = gdstring name
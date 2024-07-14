import std/macros

import godotcore/builtinindex
import godotgen/builtinclasses/constructors
import godotgen/classindex
import godotgen/classes/gdNode

import classtraits

template `/`*(self: Node; path: NodePath): Node = getNode(self, path)
template `/`*(self: Node; path: string): Node = self/nodepath(gdstring path)

template `/`*[T: Node](self: Node; sub: typedesc[T]): T = self/($sub) as sub

proc instantiate*[T_Node: Node](T: typedesc[T_Node]; name: string): T =
  result = classtraits.instantiate(T)
  result.name = gdstring name
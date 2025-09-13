import std/[tables, sets]

import gdext/builtinindex
import gdext/stringtools
import gdext/private/gdinterface
import gdext/private/macros
import gdext/private/propertyinfo
import gdext/private/internalbridge
import gdext/private/internalobjecttools
import gdext/private/debugging
import gdext/private/classindex
import gdext/classes/gdNode

export getClassName

proc destroy*(obj: Object) =
  interfaceObjectDestroy(obj.engineInstance)

proc instantiate*[T: Object and not RefCounted](_: typedesc[T]): T =
  result = instantiate_internal T
  debugInstantiate(result)
proc instantiate*[T: RefCounted](_: typedesc[T]): GdRef[T] =
  result = instantiate_internal(T).asGdRef
  debugInstantiate(result.handle)
proc instantiate*[T_Node: Node](T: typedesc[T_Node]; name: string): T =
  result = instantiate_internal T
  debugInstantiate(result)
  result.name = newGdString name

proc castTo*[T: Object](self: Object; _: typedesc[T]): T =
  if self.isNil: return
  if self of T: return T self
  result = self
    .castTo(ClassDB.getClassTag(className T))
    .getInstanceBinding(T)

{.push, inline.}
proc castTo*[T: RefCounted](self: Object; Result: typedesc[GdRef[T]]): Result = self.castTo(typeof T).referenced
proc castTo*[T: RefCounted](self: GDRef; Result: typedesc[GdRef[T]]): Result = self.handle.castTo(typeof T).referenced
{.pop.}

template unwrapped*[T: RefCounted](x: GdRef[T]): T = x.handle
template `[]`*[T: RefCounted](x: GdRef[T]): T = x.handle

proc singleton*[T: SomeClass](_: typedesc[T]): T =
  var cache {.global.} : pointer
  if cache.isNil:
    let getsingleton = interfaceGlobalGetSingleton
    result = (addr className T)
      .getsingleton()
      .getInstanceBinding(T)
    cache = cast[pointer](result)
  else:
    result = cast[T](cache)

proc `$`*[T: Object](self: T): string =
  if unlikely(self.isNil):
    "<Object#null>"
  else:
    $self.toString

proc `$`*(self: GdRef): string =
  $self.handle

template `/`*(self: Node; path: NodePath): Node = getNode(self, path)
template `/`*(self: Node; path: string): Node = self/newNodePath(newGdString path)

template `/`*[T: Node](self: Node; sub: typedesc[T]): T = self/($sub) as sub

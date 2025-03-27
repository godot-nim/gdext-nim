import std/[tables, sets, strutils]

import gdext/builtinindex
import gdext/stringtools
import gdext/private/gdinterface
import gdext/private/macros
import gdext/private/propertyinfo
import gdext/private/internalbridge
import gdext/private/debugging
import gdext/classes/gdNode

export gdinterface.getClassName

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

proc `as`*[T: SomeClass](self: SomeClass; _: typedesc[T]): T = castTo(self, typedesc[T])
proc `as`*[T: RefCounted](self: Object; Result: typedesc[GdRef[T]]): Result = castTo(self, Result)
proc `as`*[T: RefCounted](self: GdRef; Result: typedesc[GdRef[T]]): Result = castTo(self, Result)
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
  if self.isNil: return $self.getClassName & "(nil)"
  $self.getClassName & "(ID: 0x" & gdinterface.getInstanceID(self).toHex & ")"

proc `$`*(self: Node): string =
  $self.name() & " [" & $Object(self) & "]"

template `/`*(self: Node; path: NodePath): Node = getNode(self, path)
template `/`*(self: Node; path: string): Node = self/newNodePath(newGdString path)

template `/`*[T: Node](self: Node; sub: typedesc[T]): T = self/($sub) as sub

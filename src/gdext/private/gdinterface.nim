import std/[importutils]
import gdext/private/native
import gdext/builtinindex {.all.}
import gdext/stringtools

proc ownerPtr*(obj: Object): ptr ObjectPtr =
  privateAccess Object
  if unlikely(obj.isNil or obj.owner.isNil): nil
  else: addr obj.owner
proc owner*(obj: Object): ObjectPtr =
  privateAccess Object
  if unlikely(obj.isNil): nil
  else: obj.owner

proc className*(o: ObjectPtr): string =
  var sn: StringName
  discard interfaceObjectGetClassName(o, environment.library, addr sn)
  $sn

proc empty*(_: typedesc[String]): var String =
  var instance {.global.}: String
  instance
proc empty*(_: typedesc[StringName]): var StringName =
  var instance {.global.}: StringName
  instance

proc referenced*[T](self: T): GdRef[T] =
  result.handle = self
  discard hook_reference(self.owner)
proc asGdRef*[T](self: T): GdRef[T] =
  result.handle = self

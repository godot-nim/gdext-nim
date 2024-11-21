import std/[strutils, importutils]

import gdext/buildconf

import gdext/dirty/gdextensioninterface
import gdext/core/commandindex
import gdext/core/extracommands
import gdext/core/gdclass
import gdext/core/gdrefs

proc instantiate_internal*[T: SomeEngineClass](Type: typedesc[T]): T =
  let objectPtr = interface_classdb_construct_object(addr classname Type)
  result = createClass[T](objectPtr)
  interfaceObjectSetInstanceBinding(objectPtr, environment.library, cast[pointer](result), addr T.callbacks)

proc instantiate_internal*[T: SomeUserClass](Type: typedesc[T]): T =
  let objectPtr = interface_classdb_construct_object(addr classname Type.EngineClass)
  result = createClass[T](objectPtr)
  interfaceObjectSetInstance(objectPtr, addr classname T, cast[pointer](result))
  interfaceObjectSetInstanceBinding(objectPtr, environment.library, cast[pointer](result), addr T.callbacks)

proc instantiate*[T: Object and not RefCounted](_: typedesc[T]): T =
  when Dev.debugCallbacks:
    echo SYNC.INSTANTIATE, $T
  result = instantiate_internal T
proc instantiate*[T: RefCounted](_: typedesc[T]): GdRef[T] =
  when Dev.debugCallbacks:
    echo SYNC.INSTANTIATE, $T
  result = instantiate_internal(T).asGdRef

proc destroy*(x: SomeClass) =
  privateAccess Object
  interfaceObjectDestroy(x.control.owner)

proc instanceID*(self: SomeClass): GDObjectInstanceID =
  interface_Object_getInstanceId CLASS_getObjectPtr self

proc castTo*[T: Object](self: Object; _: typedesc[T]): T =
  if self.isNil: return
  if self of T: return T self
  let castpro = commandindex.interfaceObjectCastTo
  result = CLASS_getObjectPtr(self)
    .castpro(interface_ClassDB_getClassTag(addr className T))
    .getInstance(T)

template castTo*[T: RefCounted](self: Object; Result: typedesc[GdRef[T]]): Result = self.castTo(typeof T).asGdRef
template castTo*[T: RefCounted](self: GDRef; Result: typedesc[GdRef[T]]): Result = self.unwrapped.castTo(typeof T).referenced

{.push, inline.}

template `as`*[T: SomeClass](self: SomeClass; _: typedesc[T]): T = castTo(self, typedesc[T])

template `as`*[T: RefCounted](self: Object; Result: typedesc[GdRef[T]]): Result = castTo(self, Result)
template `as`*[T: RefCounted](self: GdRef; Result: typedesc[GdRef[T]]): Result = castTo(self, Result)

{.pop.}

template `[]`*[T: RefCounted](x: GdRef[T]): T = x.unwrapped

proc singleton*[T: SomeClass](_: typedesc[T]): T =
  var cache {.global.} : pointer
  if cache.isNil:
    let getsingleton = interfaceGlobalGetSingleton
    result = (addr className T)
      .getsingleton()
      .getInstance(T)
    cache = cast[pointer](result)
  else:
    result = cast[T](cache)

proc `$`*[T: SomeClass](self: T): string =
  if self.isNil: return $T & "(nil)"
  result = $T & "(ID: 0x" & self.instanceID.toHex & ")"
  when compiles self.name():
    return $self.name() & " [" & result & "]"

export onInit, onDestroy
method notification*(self: Object; p_what: int32) {.base.} = discard
method set*(self: Object; p_name: ConstStringNamePtr; p_value: ConstVariantPtr): Bool {.base.} = discard
method get*(self: Object; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.base.} = discard
method property_canRevert*(self: Object; p_name: ConstStringNamePtr): Bool {.base.} = discard
method property_getRevert*(self: Object; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.base.} = discard
method toString*(self: Object; r_is_valid: ptr Bool; p_out: StringPtr) {.base.} = discard
method get_propertyList*(self: Object; r_count: ptr uint32): ptr PropertyInfo {.base.} = r_count[] = 0
method free_propertyList*(self: Object; p_list: openArray[PropertyInfo]) {.base.} = discard


import std/[strutils]

import gdext/buildconf
import gdext/gdinterface/objects
import gdext/gdinterface/classDB

import gdext/core/gdrefs

export objects.destroy
export objects.getInstanceID
export objects.getClassName

proc instantiate_internal*[T: SomeEngineClass](Type: typedesc[T]): T =
  let objectPtr = classDB.constructObject(classname Type)
  result = createClass[T](objectPtr)
  objectPtr.setInstanceBinding(result, addr T.callbacks)

proc instantiate_internal*[T: SomeUserClass](Type: typedesc[T]): T =
  let objectPtr = classDB.constructObject(classname Type.EngineClass)
  result = createClass[T](objectPtr)
  objectPtr.setInstance(classname T, result)
  objectPtr.setInstanceBinding(result, addr T.callbacks)

proc instantiate*[T: Object and not RefCounted](_: typedesc[T]): T =
  when Dev.debugCallbacks:
    echo SYNC.INSTANTIATE, $T
  result = instantiate_internal T
proc instantiate*[T: RefCounted](_: typedesc[T]): GdRef[T] =
  when Dev.debugCallbacks:
    echo SYNC.INSTANTIATE, $T
  result = instantiate_internal(T).asGdRef

proc castTo*[T: Object](self: Object; _: typedesc[T]): T =
  if self.isNil: return
  if self of T: return T self
  result = self
    .castTo(classDB.getClassTag(className T))
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

proc `$`*[T: Object](self: T): string =
  if self.isNil: return $self.getClassName & "(nil)"
  $self.getClassName & "(ID: 0x" & self.getInstanceID.toHex & ")"

export onInit, onDestroy
method notification*(self: Object; p_what: int32) {.base.} = discard
method set*(self: Object; p_name: ConstStringNamePtr; p_value: ConstVariantPtr): Bool {.base.} = discard
method get*(self: Object; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.base.} = discard
method property_canRevert*(self: Object; p_name: ConstStringNamePtr): Bool {.base.} = discard
method property_getRevert*(self: Object; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.base.} = discard
method toString*(self: Object; r_is_valid: ptr Bool; p_out: StringPtr) {.base.} = discard
method get_propertyList*(self: Object; r_count: ptr uint32): ptr PropertyInfo {.base.} = r_count[] = 0
method free_propertyList*(self: Object; p_list: openArray[PropertyInfo]) {.base.} = discard


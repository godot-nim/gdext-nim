import std/strutils

import gdext/buildconf

import gdext/dirty/gdextensioninterface
import gdext/core/commandindex
import gdext/core/extracommands
import gdext/core/gdclass

type SomeNotRefCounted = concept type t
  t is GodotClass
  t.isRefCounted == false

proc instantiate_internal*[T: SomeEngineClass](Type: typedesc[T]): T =
  let objectPtr = interface_classdb_construct_object(addr classname Type)
  result = createClass(Type, objectPtr)
  interfaceObjectSetInstanceBinding(objectPtr, environment.library, cast[pointer](result), addr T.callbacks)

proc instantiate_internal*[T: SomeUserClass](Type: typedesc[T]): T =
  let objectPtr = interface_classdb_construct_object(addr classname Type.EngineClass)
  result = createClass(Type, objectPtr)
  interfaceObjectSetInstance(objectPtr, addr classname T, cast[pointer](result))
  interfaceObjectSetInstanceBinding(objectPtr, environment.library, cast[pointer](result), addr T.callbacks)

proc instantiate*[T: SomeNotRefCounted](_: typedesc[T]): T =
  result = instantiate_internal T
  when Dev.debugCallbacks:
    echo SYNC.INSTANTIATE, $typeof T


proc instanceID*(self: GodotClass): GDObjectInstanceID =
  interface_Object_getInstanceId CLASS_getObjectPtr self

proc castTo*[T: GodotClass](self: GodotClass; _: typedesc[T]): T =
  let castpro = commandindex.interfaceObjectCastTo
  if self.isNil: return
  result = CLASS_getObjectPtr(self)
    .castpro(interface_ClassDB_getClassTag(addr className T))
    .getInstance(T)

{.push, inline.}

template `as`*[T: GodotClass](self: GodotClass; _: typedesc[T]): T = castTo(self, typedesc[T])

proc passOwnershipToEngine*(self: GodotClass) =
  CLASS_passOwnerShipToGodot(self)

{.pop.}

proc singleton*[T: GodotClass](_: typedesc[T]): T =
  var cache {.global.} : pointer
  if cache.isNil:
    let getsingleton = interfaceGlobalGetSingleton
    result = (addr className T)
      .getsingleton()
      .getInstance(T)
    cache = cast[pointer](result)
  else:
    result = cast[T](cache)

template `/`*[T: GodotClass](_: typedesc[T]): T = T.singleton

proc `$`*[T: GodotClass](self: T): string =
  if self.isNil: return $T & "(nil)"
  result = $T & "(ID: 0x" & self.instanceID.toHex & ")"
  when compiles self.name():
    return $self.name() & " [" & result & "]"

export init
method notification*(self: GodotClass; p_what: int32) {.base.} = discard
method set*(self: GodotClass; p_name: ConstStringNamePtr; p_value: ConstVariantPtr): Bool {.base.} = discard
method get*(self: GodotClass; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.base.} = discard
method property_canRevert*(self: GodotClass; p_name: ConstStringNamePtr): Bool {.base.} = discard
method property_getRevert*(self: GodotClass; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.base.} = discard
method toString*(self: GodotClass; r_is_valid: ptr Bool; p_out: StringPtr) {.base.} = discard
method get_propertyList*(self: GodotClass; r_count: ptr uint32): ptr PropertyInfo {.base.} = r_count[] = 0
method free_propertyList*(self: GodotClass; p_list: ptr PropertyInfo) {.base.} = discard


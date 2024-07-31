import std/strutils

import gdextcore/dirty/gdextensioninterface
import gdextcore/commandindex
import gdextcore/extracommands
import gdextcore/gdclass

proc instantiate_internal*[T: SomeClass](Type: typedesc[T]): T =
  let objectPtr = interface_classdb_construct_object(addr classname Type.EngineClass)
  result = CLASS_create(Type, objectPtr)
  when T is SomeUserClass:
    interfaceObjectSetInstance(objectPtr, addr classname T, cast[pointer](result))
  interfaceObjectSetInstanceBinding(objectPtr, environment.library, cast[pointer](result), addr T.callbacks)
proc instantiate*[T: SomeClass](_: typedesc[T]): T =
  result = instantiate_internal T
  CLASS_sync_instantiate result


export getInstance

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
  let getsingleton = interfaceGlobalGetSingleton
  (addr className T)
    .getsingleton()
    .getInstance(T)

template `/`*[T: GodotClass](_: typedesc[T]): T = T.singleton

proc `$`*[T: GodotClass](self: T): string =
  if self.isNil: return $T & "(nil)"
  result = $T & "(ID: 0x" & self.instanceID.toHex & ")"
  when compiles self.name():
    return $self.name() & " [" & result & "]"


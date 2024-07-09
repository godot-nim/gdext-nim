import std/strutils

import godotcore/dirty/gdextension_interface
import godotcore/commandindex
import godotcore/extracommands
import godotcore/GodotClass
import godotcore/GodotClassMeta

proc instantiate_internal*[T: SomeClass](_: typedesc[T]): T =
  let objectPtr = interface_classdb_construct_object(addr classname T.EngineClass)
  result = CLASS_create[T](objectPtr)
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
  if self.isNil: return
  result = CLASS_getObjectPtr(self)
    .interface_Object_castTo(interface_ClassDB_getClassTag(addr className T))
    .getInstance(T)

{.push, inline.}

proc `as`*[T: GodotClass](self: GodotClass; _: typedesc[T]): T = castTo(self, T)

{.pop.}

proc singleton*[T: GodotClass](_: typedesc[T]): T =
  (addr className T)
    .interface_Global_getSingleton()
    .getInstance(T)

template `/`*[T: GodotClass](_: typedesc[T]): T = T.singleton

proc `$`*[T: GodotClass](self: T): string =
  if self.isNil: return $T & "(nil)"
  result = $T & "(ID: 0x" & self.instanceID.toHex & ")"
  when compiles self.name():
    return $self.name() & " [" & result & "]"


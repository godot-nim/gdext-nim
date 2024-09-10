import std/macros
import std/sets
import std/tables

import gdextcore/dirty/gdextensioninterface
import gdextcore/commandindex
import gdextcore/builtinindex
import gdextcore/extracommands
import gdextcore/gdclass

import gdext/core/userclass/contracts
import gdext/core/userclass/procs
import gdext/core/userclass/signals
import gdext/surface/classutils

proc set_func(p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; p_value: ConstVariantPtr): Bool {.gdcall.} =
  cast[GodotClass](p_instance).set(p_name, p_value)

proc get_func(p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.} =
  cast[GodotClass](p_instance).get(p_name, r_ret)

proc get_property_list_func(p_instance: ClassInstancePtr; r_count: ptr uint32): ptr PropertyInfo {.gdcall.} =
  cast[GodotClass](p_instance).get_propertyList(r_count)

proc free_property_list_func(p_instance: ClassInstancePtr; p_list: ptr PropertyInfo) {.gdcall.} =
  cast[GodotClass](p_instance).free_propertyList(p_list)

proc property_can_revert_func(p_instance: ClassInstancePtr; p_name: ConstStringNamePtr): Bool {.gdcall.} =
  cast[GodotClass](p_instance).property_canRevert(p_name)

proc property_get_revert_func(p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.} =
  cast[GodotClass](p_instance).property_getRevert(p_name, r_ret)

when TargetVersion == (4, 1):
  proc notification_func(p_instance: ClassInstancePtr; p_what: int32) {.gdcall.} =
    cast[GodotClass](p_instance).notification(p_what)
else:
  proc notification_func(p_instance: ClassInstancePtr; p_what: int32, p_reversed: bool) {.gdcall.} =
    cast[GodotClass](p_instance).notification(p_what)

proc to_string_func(p_instance: ClassInstancePtr; r_is_valid: ptr Bool; p_out: StringPtr) {.gdcall.} =
  cast[GodotClass](p_instance).toString(r_is_valid, p_out)

proc create_instance_func[T: SomeUserClass](p_userdata: pointer): ObjectPtr {.gdcall.} =
  let class = instantiate_internal T
  CLASS_sync_create_bind class
  return CLASS_getObjectPtr class

proc free_instance_func[T: SomeUserClass](p_userdata: pointer; p_instance: pointer) {.gdcall.} =
  CLASS_sync_free_bind cast[T](p_instance)

when TargetVersion >= (4, 2):
  proc recreate_instance_func[T: SomeUserClass](p_class_userdata: pointer; p_object: ObjectPtr): ClassInstancePtr {.gdcall.} =
    let class = CLASS_create(T, p_object)
    CLASS_sync_create_bind class
    cast[pointer](class)

proc reference_func[T: SomeUserClass](p_instance: pointer) {.gdcall.} =
  CLASS_sync_reference_bind(cast[T](p_instance))

proc unreference_func[T: SomeUserClass](p_instance: pointer) {.gdcall.} =
  CLASS_sync_unreference_bind(cast[T](p_instance))

proc get_virtual_func(p_userdata: pointer; p_name: ConstStringNamePtr): ClassCallVirtual {.gdcall.} =
  cast[GodotClassMeta](p_userdata).virtualMethods.getOrDefault(cast[ptr StringName](p_name)[], nil)

when TargetVersion == (4, 1):
  proc creationInfo(T: typedesc[SomeUserClass]; is_virtual, is_abstract: bool): ClassCreationInfo =
    ClassCreationInfo(
      is_virtual: is_virtual,
      is_abstract: is_abstract,
      set_func: set_func,
      get_func: get_func,
      get_property_list_func: get_property_list_func,
      free_property_list_func: free_property_list_func,
      property_can_revert_func: property_can_revert_func,
      property_get_revert_func: property_get_revert_func,
      notification_func: notification_func,
      to_string_func: to_string_func,
      create_instance_func: create_instance_func[T],
      free_instance_func: free_instance_func[T],
      reference_func: reference_func[T],
      unreference_func: unreference_func[T],
      get_virtual_func: get_virtual_func,
      class_userdata: cast[pointer](Meta(T)),
    )
else:
  proc creationInfo(T: typedesc[SomeUserClass]; is_virtual, is_abstract: bool): ClassCreationInfo2 =
    ClassCreationInfo2(
      is_virtual: is_virtual,
      is_abstract: is_abstract,
      is_exposed: true,
      set_func: set_func,
      get_func: get_func,
      get_property_list_func: get_property_list_func,
      free_property_list_func: free_property_list_func,
      property_can_revert_func: property_can_revert_func,
      property_get_revert_func: property_get_revert_func,
      validate_property_func: nil,
      notification_func: notification_func,
      to_string_func: to_string_func,
      reference_func: reference_func[T],
      unreference_func: unreference_func[T],
      create_instance_func: create_instance_func[T],
      free_instance_func: free_instance_func[T],
      recreate_instance_func: recreate_instance_func[T],
      get_virtual_func: get_virtual_func,
      get_virtual_call_data_func: nil,
      call_virtual_with_data_func: nil,
      get_rid_func: nil,
      class_userdata: cast[pointer](Meta(T)),
    )

template name*(newname: string) {.pragma.}
template signal* {.pragma.}

macro gdsync*(body): untyped =
  case body.kind
  of nnkMethodDef:
    sync_methodDef(body)
  of nnkProcDef, nnkConverterDef, nnkFuncDef:
    if body.isSignal:
      sync_signal(body)
    else:
      sync_procDef(body)
  else:
    hint $body.kind
    body

var registered: HashSet[StringName]
proc register*(T: typedesc) =
  let info = T.creationInfo(false, false)
  when TargetVersion == (4, 1):
    interface_ClassDB_registerExtensionClass(environment.library, addr className(T), addr className(T.Super), addr info)
  else:
    interface_ClassDB_registerExtensionClass2(environment.library, addr className(T), addr className(T.Super), addr info)
  invoke contract(T)
  registered.incl className(T)

proc unregisterAll* =
  for name in registered:
    interface_ClassDB_unregister_extension_class(environment.library, addr name)

import std/macros
import std/sets
import std/tables

import gdext/buildconf

import gdext/dirty/gdextensioninterface
import gdext/core/commandindex
import gdext/core/builtinindex
import gdext/core/extracommands
import gdext/core/gdclass

import gdext/core/userclass/contracts
import gdext/core/userclass/procs
import gdext/core/userclass/signals
import gdext/surface/classutils

when Dev.debugCallbacks:
  import std/importutils
  privateAccess GodotClass

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

when Extension.version == (4, 1):
  proc notification_func(p_instance: ClassInstancePtr; p_what: int32) {.gdcall.} =
    cast[GodotClass](p_instance).notification(p_what)
else:
  proc notification_func(p_instance: ClassInstancePtr; p_what: int32, p_reversed: bool) {.gdcall.} =
    cast[GodotClass](p_instance).notification(p_what)

proc to_string_func(p_instance: ClassInstancePtr; r_is_valid: ptr Bool; p_out: StringPtr) {.gdcall.} =
  cast[GodotClass](p_instance).toString(r_is_valid, p_out)

proc create_instance_func[T: SomeUserClass](p_userdata: pointer): ObjectPtr {.gdcall.} =
  let class = instantiate_internal T
  result =  CLASS_getObjectPtr class
  when Dev.debugCallbacks:
    privateAccess GodotClass
    echo SYNC.CREATE_BIND, class.control.name

proc free_instance_func(p_userdata: pointer; p_instance: pointer) {.gdcall.} =
  let class = cast[GodotClass](p_instance)
  onDestroy class
  when Dev.debugCallbacks:
    echo SYNC.FREE_BIND, class.control.name

when Extension.version >= (4, 2):
  proc recreate_instance_func[T: SomeUserClass](p_class_userdata: pointer; p_object: ObjectPtr): ClassInstancePtr {.gdcall.} =
    let class = createClass[T](p_object)
    result = cast[pointer](class)
    when Dev.debugCallbacks:
      privateAccess GodotClass
      echo SYNC.RECREATE_BIND, class.control.name

proc reference_func(p_instance: pointer) {.gdcall.} =
  when Dev.debugCallbacks:
    let class = cast[GodotClass](p_instance)
    let count = hook_getReferenceCount CLASS_getObjectPtr class
    echo SYNC.REFERENCE_BIND, class.control.name, "(", $count.pred & " +1)"

proc unreference_func(p_instance: pointer) {.gdcall.} =
  when Dev.debugCallbacks:
    let class = cast[GodotClass](p_instance)
    let count = hook_getReferenceCount CLASS_getObjectPtr class
    echo SYNC.UNREFERENCE_BIND, class.control.name, "(", $count.succ & " -1)"

proc get_virtual_func(p_userdata: pointer; p_name: ConstStringNamePtr): ClassCallVirtual {.gdcall.} =
  cast[ptr GodotClassMeta](p_userdata).virtualMethods.getOrDefault(cast[ptr StringName](p_name)[], nil)

when Extension.version == (4, 1):
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
      free_instance_func: free_instance_func,
      reference_func: reference_func,
      unreference_func: unreference_func,
      get_virtual_func: get_virtual_func,
      class_userdata: addr Meta(T),
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
      reference_func: reference_func,
      unreference_func: unreference_func,
      create_instance_func: create_instance_func[T],
      free_instance_func: free_instance_func,
      recreate_instance_func: recreate_instance_func[T],
      get_virtual_func: get_virtual_func,
      get_virtual_call_data_func: nil,
      call_virtual_with_data_func: nil,
      get_rid_func: nil,
      class_userdata: addr Meta(T),
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
  when Extension.version == (4, 1):
    interface_ClassDB_registerExtensionClass(environment.library, addr className(T), addr className(T.Super), addr info)
  else:
    interface_ClassDB_registerExtensionClass2(environment.library, addr className(T), addr className(T.Super), addr info)
  invokeContract T
  registered.incl className(T)

proc unregisterAll* =
  for name in registered:
    interface_ClassDB_unregister_extension_class(environment.library, addr name)

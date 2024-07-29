import std/macros

import classautomate/contracts
import classautomate/virtuals
import classautomate/procs
import classautomate/signals
import classautomate/properties

import gdextcore/dirty/gdextensioninterface
import gdextcore/commandindex
import gdextcore/builtinindex
import gdextcore/extracommands
import gdextcore/gdclass
import gdext/classtraits

proc create_bind(T: typedesc[SomeUserClass]): ObjectPtr =
  let class = instantiate_internal T
  CLASS_sync_create_bind class
  return CLASS_getObjectPtr class

proc free_bind[T: SomeUserClass](class: T) =
  CLASS_sync_free_bind class

when TargetVersion == (4, 1):
  proc notification_bind(p_instance: ClassInstancePtr; p_what: int32) {.gdcall.} =
    cast[GodotClass](p_instance).notification(p_what)
else:
  proc notification_bind(p_instance: ClassInstancePtr; p_what: int32, p_reversed: bool) {.gdcall.} =
    cast[GodotClass](p_instance).notification(p_what)

proc set_bind(p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; p_value: ConstVariantPtr): Bool {.gdcall.} =
  cast[GodotClass](p_instance).set(p_name, p_value)
proc get_bind(p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.} =
  cast[GodotClass](p_instance).get(p_name, r_ret)
proc property_canRevert_bind(p_instance: ClassInstancePtr; p_name: ConstStringNamePtr): Bool {.gdcall.} =
  cast[GodotClass](p_instance).property_canRevert(p_name)
proc property_getRevert_bind(p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.} =
  cast[GodotClass](p_instance).property_getRevert(p_name, r_ret)
proc toString_bind(p_instance: ClassInstancePtr; r_is_valid: ptr Bool; p_out: StringPtr) {.gdcall.} =
  cast[GodotClass](p_instance).toString(r_is_valid, p_out)
proc get_propertyList_bind(p_instance: ClassInstancePtr; r_count: ptr uint32): ptr PropertyInfo {.gdcall.} =
  cast[GodotClass](p_instance).get_propertyList(r_count)
proc free_propertyList_bind(p_instance: ClassInstancePtr; p_list: ptr PropertyInfo) {.gdcall.} =
  cast[GodotClass](p_instance).free_propertyList(p_list)

when TargetVersion == (4, 1):
  proc creationInfo(T: typedesc[SomeUserClass]; is_virtual, is_abstract: bool): ClassCreationInfo =
    ClassCreationInfo(
      is_virtual: is_virtual,
      is_abstract: is_abstract,
      set_func: set_bind,
      get_func: get_bind,
      get_property_list_func: get_property_list_bind,
      free_property_list_func: free_property_list_bind,
      property_can_revert_func: property_can_revert_bind,
      property_get_revert_func: property_get_revert_bind,
      notification_func: notification_bind,
      to_string_func: to_string_bind,
      create_instance_func: proc(p_userdata: pointer): ObjectPtr {.gdcall.} = T.create_bind(),
      free_instance_func: proc(p_userdata: pointer; p_instance: pointer) {.gdcall.} = cast[T](p_instance).free_bind(),
      reference_func: (proc(p_instance: pointer) {.gdcall.} = CLASS_sync_reference_bind(cast[T](p_instance))),
      unreference_func: (proc(p_instance: pointer) {.gdcall.} = CLASS_sync_unreference_bind(cast[T](p_instance))),
      get_virtual_func: get_virtual_bind,
      class_userdata: cast[pointer](Meta(T)),
    )
else:
  proc creationInfo(T: typedesc[SomeUserClass]; is_virtual, is_abstract: bool): ClassCreationInfo2 =
    ClassCreationInfo2(
      is_virtual: is_virtual,
      is_abstract: is_abstract,
      is_exposed: true,
      set_func: set_bind,
      get_func: get_bind,
      get_property_list_func: get_property_list_bind,
      free_property_list_func: free_property_list_bind,
      property_can_revert_func: property_can_revert_bind,
      property_get_revert_func: property_get_revert_bind,
      validate_property_func: nil,
      notification_func: notification_bind,
      to_string_func: to_string_bind,
      reference_func: (proc(p_instance: pointer) {.gdcall.} = CLASS_sync_reference_bind(cast[T](p_instance))),
      unreference_func: (proc(p_instance: pointer) {.gdcall.} = CLASS_sync_unreference_bind(cast[T](p_instance))),
      create_instance_func: proc(p_userdata: pointer): ObjectPtr {.gdcall.} = T.create_bind(),
      free_instance_func: proc(p_userdata: pointer; p_instance: pointer) {.gdcall.} = cast[T](p_instance).free_bind(),
      recreate_instance_func: nil,
      get_virtual_func: get_virtual_bind,
      get_virtual_call_data_func: nil,
      call_virtual_with_data_func: nil,
      get_rid_func: nil,
      class_userdata: cast[pointer](Meta(T)),
    )

template name*(newname: string) {.pragma.}
template getter*(newname: string) {.pragma.}
template setter*(newname: string) {.pragma.}
export signals.signal

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


proc register*(T: typedesc) =
  let info = T.creationInfo(false, false)
  when TargetVersion == (4, 1):
    interface_ClassDB_registerExtensionClass(environment.library, addr className(T), addr className(T.Super), addr info)
  else:
    interface_ClassDB_registerExtensionClass2(environment.library, addr className(T), addr className(T.Super), addr info)
  sync_property(T)
  invoke contract(T)
import std/macros
import std/sets

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
import gdextgen/globalenums
import gdext/classtraits

export globalenums.PropertyUsageFlags

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

  proc recreate_instance_func[T: SomeUserClass](p_class_userdata: pointer; p_object: ObjectPtr): ClassInstancePtr {.gdcall.} =
    let class = CLASS_create(T, p_object)
    CLASS_sync_create_bind class
    cast[pointer](class)

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
      recreate_instance_func: recreate_instance_func[T],
      get_virtual_func: get_virtual_bind,
      get_virtual_call_data_func: nil,
      call_virtual_with_data_func: nil,
      get_rid_func: nil,
      class_userdata: cast[pointer](Meta(T)),
    )

template name*(newname: string) {.pragma.}
export signals.signal
export properties.register_property
export properties.ExpEasingArgument
export properties.RangeArgument
export properties.`@export`
export properties.`@export_category`
export properties.`@export_group`
export properties.`@export_subgroup`
export properties.`@export_color_no_alpha`
export properties.`@export_custom`
export properties.`@export_dir`
export properties.`@export_global_dir`
export properties.`@export_file`
export properties.`@export_global_file`
export properties.`@export_enum`
export properties.`@export_flags`
export properties.`@export_flags_2d_navigation`
export properties.`@export_flags_2d_physics`
export properties.`@export_flags_2d_render`
export properties.`@export_flags_3d_navigation`
export properties.`@export_flags_3d_physics`
export properties.`@export_flags_3d_render`
export properties.`@export_flags_avoidance`
export properties.`@export_exp_easing`
export properties.`@export_multiline`
export properties.`@export_node_path`
export properties.`@export_placeholder`
export properties.`@export_range`
export properties.`@export_storage`

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

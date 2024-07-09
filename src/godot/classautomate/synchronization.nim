import std/macros

import contracts
import virtuals
import procs

import godotcore/dirty/gdextension_interface
import godotcore/commandindex
import godotcore/builtinindex
import godotcore/extracommands
import godotcore/eventindex
import godotcore/GodotClass
import godotcore/GodotClassMeta
import godotcore/classtraits

proc create_bind(T: typedesc[SomeUserClass]): ObjectPtr =
  let class = instantiate_internal T
  CLASS_sync_create_bind class
  return CLASS_getObjectPtr class

proc free_bind[T: SomeUserClass](class: T) =
  CLASS_sync_free_bind class

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
    reference_func: (proc(p_instance: pointer) {.gdcall.} = echo SYNC.REFERENCE_BIND, $typeof T),
    unreference_func: (proc(p_instance: pointer) {.gdcall.} = echo SYNC.UNREFERENCE_BIND, $typeof T),
    get_virtual_func: get_virtual_bind,
    class_userdata: cast[pointer](Meta(T)),
  )

template name*(newname: string) {.pragma.}
template getter*(newname: string) {.pragma.}
template setter*(newname: string) {.pragma.}

macro gdsync*(body): untyped =
  case body.kind
  of nnkMethodDef:
    sync_methodDef(body)
  of nnkProcDef:
    sync_procDef(body)
  else:
    hint $body.kind
    body


proc register*(T: typedesc) =
  let info = T.creationInfo(false, false)
  interface_ClassDB_registerExtensionClass(environment.library, addr className(T), addr className(T.Super), addr info)
  invoke contract(T)
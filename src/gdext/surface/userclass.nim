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
import gdext/gen/classindex
import gdext/surface/classutils
import gdext/surface/properties

when Dev.debugCallbacks:
  import std/importutils
  privateAccess Object

proc set_func(p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; p_value: ConstVariantPtr): Bool {.gdcall.} =
  cast[Object](p_instance).set(p_name, p_value)

proc get_func(p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.} =
  cast[Object](p_instance).get(p_name, r_ret)

proc get_property_list_func(p_instance: ClassInstancePtr; r_count: ptr uint32): ptr PropertyInfo {.gdcall.} =
  cast[Object](p_instance).get_propertyList(r_count)

proc free_property_list_func(p_instance: ClassInstancePtr; p_list: ptr UncheckedArray[PropertyInfo]; p_count: uint32_t) {.gdcall.} =
  cast[Object](p_instance).free_propertyList(p_list.toOpenArray(0, int p_count))

proc property_can_revert_func(p_instance: ClassInstancePtr; p_name: ConstStringNamePtr): Bool {.gdcall.} =
  cast[Object](p_instance).property_canRevert(p_name)

proc property_get_revert_func(p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.} =
  cast[Object](p_instance).property_getRevert(p_name, r_ret)

proc notification_func(p_instance: ClassInstancePtr; p_what: int32, p_reversed: bool) {.gdcall.} =
  cast[Object](p_instance).notification(p_what)

proc to_string_func(p_instance: ClassInstancePtr; r_is_valid: ptr Bool; p_out: StringPtr) {.gdcall.} =
  cast[Object](p_instance).toString(r_is_valid, p_out)

proc create_instance_func[T: SomeUserClass](p_userdata: pointer): ObjectPtr {.gdcall.} =
  let class = instantiate_internal T
  result =  CLASS_getObjectPtr class
  when Dev.debugCallbacks:
    privateAccess Object
    echo SYNC.CREATE_BIND, class.control.name

proc free_instance_func[T: SomeUserClass](p_userdata: pointer; p_instance: pointer) {.gdcall.} =
  let class = cast[T](p_instance)
  onDestroy class
  `=destroy` class[]
  dealloc class
  when Dev.debugCallbacks:
    privateAccess Object
    echo SYNC.FREE_BIND, class.control.name

proc recreate_instance_func[T: SomeUserClass](p_class_userdata: pointer; p_object: ObjectPtr): ClassInstancePtr {.gdcall.} =
  let class = createClass[T](p_object)
  result = cast[pointer](class)
  when Dev.debugCallbacks:
    privateAccess Object
    echo SYNC.RECREATE_BIND, class.control.name

proc reference_func(p_instance: pointer) {.gdcall.} =
  when Dev.debugCallbacks:
    let class = cast[RefCounted](p_instance)
    let count = hook_getReferenceCount CLASS_getObjectPtr class
    echo SYNC.REFERENCE_BIND, class.control.name, "(", $count & " UP)"

proc unreference_func(p_instance: pointer) {.gdcall.} =
  when Dev.debugCallbacks:
    let class = cast[RefCounted](p_instance)
    let count = hook_getReferenceCount CLASS_getObjectPtr class
    echo SYNC.UNREFERENCE_BIND, class.control.name, "(", $count & " DOWN)"

proc get_virtual_func(p_userdata: pointer; p_name: ConstStringNamePtr): ClassCallVirtual {.gdcall.} =
  cast[ptr GodotClassMeta](p_userdata).virtualMethods.getOrDefault(cast[ptr StringName](p_name)[])

proc creationInfo(T: typedesc[SomeUserClass]; is_virtual, is_abstract: bool): ClassCreationInfo3 =
  ClassCreationInfo3(
    is_virtual: is_virtual,
    is_abstract: is_abstract,
    is_exposed: true,
    is_runtime: false,
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
    free_instance_func: free_instance_func[T],
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
var plugins: HashSet[StringName]
proc register*(T: typedesc) =
  let info = T.creationInfo(false, false)
  interface_ClassDB_registerExtensionClass3(environment.library, addr className(T), addr className(T.Super), addr info)
  processExports T
  invoke Contract[T]
  when T is EditorPlugin:
    interface_Editor_addPlugin addr className(T)
    plugins.incl className(T)
  registered.incl className(T)

proc unregisterAll* =
  for name in plugins:
    interface_Editor_removePlugin addr name
  for name in registered:
    interface_ClassDB_unregister_extension_class(environment.library, addr name)

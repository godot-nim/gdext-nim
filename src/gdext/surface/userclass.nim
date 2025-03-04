import std/tables

import gdext/buildconf
import gdext/gdinterface/[native, extracommands, objects, classDB]

import gdext/utils/[macros, debugging]
import gdext/core/builtinindex
import gdext/core/gdclass
import gdext/core/userclass/contracts
import gdext/core/userclass/procs
import gdext/core/userclass/signals
import gdext/core/userclass/virtuals
import gdext/gen/classindex
import gdext/surface/classutils
import gdext/surface/properties

when Assistance.genEditorHelp:
  import gdext/doctools

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
  result =  class.owner
  debugCreate(class)

proc free_instance_func[T: SomeUserClass](p_userdata: pointer; p_instance: pointer) {.gdcall.} =
  let class = cast[T](p_instance)
  debugFree(class)
  onDestroy class
  `=destroy` class[]
  dealloc class

proc recreate_instance_func[T: SomeUserClass](p_class_userdata: pointer; p_object: ObjectPtr): ClassInstancePtr {.gdcall.} =
  let class = createClass[T](p_object)
  p_object.setInstance(classname T, class)
  p_object.setInstanceBinding(class, addr T.callbacks)
  result = cast[pointer](class)
  debugRecreate(class)

proc reference_func(p_instance: pointer) {.gdcall.} =
  debugReference(cast[Object](p_instance), true)

proc unreference_func(p_instance: pointer) {.gdcall.} =
  debugReference(cast[Object](p_instance), false)

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

template name*(newname: static string) {.pragma.}
template signal* {.pragma.}
template initLevel*(level: InitializationLevel) {.pragma.}
template description*(desc: string) {.pragma.}

var implicitRegistrations {.compileTime.}: array[InitializationLevel, seq[NimNode]]

var Initialization_Default* {.compileTime.} = Initialization_Scene

proc toLevel(node: NimNode): InitializationLevel =
  if node.isNil:
    Initialization_Default
  elif node.eqIdent "Initialization_Core":
    Initialization_Core
  elif node.eqIdent "Initialization_Servers":
    Initialization_Servers
  elif node.eqIdent "Initialization_Scene":
    Initialization_Scene
  elif node.eqIdent "Initialization_Editor":
    Initialization_Editor
  else:
    Initialization_Default

macro gdsync*(body): untyped =
  case body.kind
  of nnkMethodDef:
    if body.body.kind == nnkEmpty: # forward declaration
      hint "{.gdsync.} is not required for forward declarations.", body
      body
    elif body.name.eqIdent "onInit": # forward declaration
      hint "{.gdsync.} is not required for onInit.", body
      body
    elif body.hasPragma("base"):
      sync_virtualDef(body)
    else:
      sync_methodDef(body)
  of nnkProcDef, nnkConverterDef, nnkFuncDef:
    if body.isSignal:
      sync_signal(body)
    elif body.body.kind == nnkEmpty: # forward declaration
      hint "{.gdsync.} is not required for forward declarations.", body
      body
    else:
      sync_procDef(body)
  of nnkTypeDef:
    let level = body.getPragmaVal("initLevel").toLevel
    implicitRegistrations[level].add body.typesym
    body
  else:
    hint "gdsync for " & ($body.kind)[3..^1] & " is not defined; gdsync will do nothing."
    body

var registered: seq[StringName]
var plugins: seq[StringName]
proc register*(T: typedesc) =
  let cn = className(T)
  if cn in registered: return

  let info = T.creationInfo(false, false)
  classDB.register(cn, className(T.Super), addr info)
  processExports T
  invoke Contract[T]
  when T is EditorPlugin:
    interface_Editor_addPlugin addr cn
    plugins.add cn
  registered.add cn

  when Assistance.genEditorHelp and T.hasCustomPragma(description):
    docClassDB[T].description = T.getCustomPragmaVal(description).descToEditorHelp

proc unregisterAll* =
  for i in countdown(plugins.high, 0):
    interface_Editor_removePlugin addr plugins[i]
  for i in countdown(registered.high, 0):
    classDB.unregister registered[i]

macro register_implicitly*(level: static InitializationLevel) =
  let register = bindSym "register"
  result = newStmtList()
  for registration in implicitRegistrations[level]:
    result.add register.newCall registration

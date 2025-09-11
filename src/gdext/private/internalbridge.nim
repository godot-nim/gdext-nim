import std/tables

import gdext/private/buildsettings
import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/private/macros
import gdext/private/propertyinfo
import gdext/private/typeshift
import gdext/private/debugging
import gdext/private/classindex
import gdext/private/userclass/procs
import gdext/builtinindex
import gdext/objectcallbacks
import gdext/appearances
import gdext/stringtools
import gdext/nameformats

from gdext/classes/gdNode import NotificationReady, rpc_config

when Assistance.genEditorHelp:
  import gdext/private/doctools

proc instantiate_internal*[T: SomeEngineClass](Type: typedesc[T]): T =
  let objectPtr = ClassDB.constructObject(classname Type)
  result = createClass[T](objectPtr)
  objectPtr.setInstanceBinding(result, addr T.callbacks)

proc instantiate_internal*[T: SomeUserClass](Type: typedesc[T]): T =
  let objectPtr = ClassDB.constructObject(classname Type.EngineClass)
  result = createClass[T](objectPtr)
  objectPtr.setInstance(classname T, result)
  objectPtr.setInstanceBinding(result, addr T.callbacks)

proc set_func[T](p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; p_value: ConstVariantPtr): Bool {.gdcall.} =
  objectcallbacks.set(cast[T](p_instance), p_name, p_value)

proc get_func[T](p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.} =
  get(cast[T](p_instance), p_name, r_ret)

proc get_property_list_func[T](p_instance: ClassInstancePtr; r_count: ptr uint32): ptr PropertyInfo {.gdcall.} =
  getPropertyList(cast[T](p_instance), r_count)

proc free_property_list_func[T](p_instance: ClassInstancePtr; p_list: ptr UncheckedArray[PropertyInfo]; p_count: uint32_t) {.gdcall.} =
  freePropertyList(cast[T](p_instance), p_list.toOpenArray(0, int p_count))

proc property_can_revert_func[T](p_instance: ClassInstancePtr; p_name: ConstStringNamePtr): Bool {.gdcall.} =
  propertyCanRevert(cast[T](p_instance), p_name)

proc property_get_revert_func[T](p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.gdcall.} =
  propertyGetRevert(cast[T](p_instance), p_name, r_ret)

proc registerRpcConfigsRecursive[T: Object](instance: T)
proc notification_func[T](p_instance: ClassInstancePtr; p_what: int32, p_reversed: bool) {.gdcall.} =
  case p_what
  of NotificationReady:
    cast[T](p_instance).registerRpcConfigsRecursive()
  else:
    discard
  notification(cast[T](p_instance), p_what)

proc to_string_func[T](p_instance: ClassInstancePtr; r_is_valid: ptr Bool; p_out: StringPtr) {.gdcall.} =
  toString(cast[T](p_instance), r_is_valid, p_out)

proc create_instance_func[T: SomeUserClass](p_userdata: pointer; p_notify_postinitialize: bool): ObjectPtr {.gdcall.} =
  let class = instantiate_internal T
  result =  class.engineInstance
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

when true:
  proc get_virtual_func(p_userdata: pointer; p_name: ConstStringNamePtr; p_hash: uint32): ClassCallVirtual {.gdcall.} =
    # echo cast[ptr GodotClassMeta](p_userdata)[].className, ".", cast[ptr StringName](p_name)[], ".hash = ", p_hash
    cast[ptr GodotClassMeta](p_userdata).virtualMethods.getOrDefault(cast[ptr StringName](p_name)[])

  const get_virtual_call_data_func = nil
  const call_virtual_with_data_func = nil

else:
  proc get_virtual_call_data_func(p_class_userdata: pointer; p_name: ConstStringNamePtr; p_hash: uint32_t): pointer {.gdcall.} =
    # echo cast[ptr GodotClassMeta](p_class_userdata)[].className, ".", cast[ptr StringName](p_name)[], ".hash = ", p_hash
    cast[ptr GodotClassMeta](p_class_userdata)[].virtualMethods.getOrDefault(cast[ptr StringName](p_name)[], nil)

  proc call_virtual_with_data_func(p_instance: ClassInstancePtr; p_name: ConstStringNamePtr; p_virtual_call_userdata: pointer; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    cast[ClassCallVirtual](p_virtual_call_userdata)(p_instance, p_args, r_ret)
  const get_virtual_func = nil

proc icon_path[T](_: typedesc[T]): String =
  when T.hasCustomPragma(icon):
    newGdString T.getCustomPragmaVal(icon)

proc creationInfo(T: typedesc[SomeUserClass]; is_virtual, is_abstract, is_exposed: bool; icon_path: String): ClassCreationInfo4 =
  ClassCreationInfo4(
    is_virtual: is_virtual,
    is_abstract: is_abstract,
    is_exposed: is_exposed,
    is_runtime: not T.hasCustomPragma(tool),
    icon_path: addr icon_path,
    set_func:
      when compiles(setT[T](set)): nil
      else: set_func[T],
    get_func:
      when compiles(getT[T](get)): nil
      else: get_func[T],
    get_property_list_func:
      when compiles(getPropertyListT[T](getPropertyList)): nil
      else: get_property_list_func[T],
    free_property_list_func:
      when compiles(freePropertyListT[T](freePropertyList)): nil
      else: free_property_list_func[T],
    property_can_revert_func:
      when compiles(propertyCanRevertT[T](propertyCanRevert)): nil
      else: property_can_revert_func[T],
    property_get_revert_func:
      when compiles(propertyGetRevertT[T](propertyGetRevert)): nil
      else: property_get_revert_func[T],
    validate_property_func: nil,
    notification_func:
      if Meta(T).rpcConfigs.len != 0:
        notification_func[T]
      else:
        when compiles(notificationT[T](notification)): nil
        else: notification_func[T],
    to_string_func:
      when compiles(toStringT[T](toString)): nil
      else: to_string_func[T],
    reference_func: reference_func,
    unreference_func: unreference_func,
    create_instance_func: create_instance_func[T],
    free_instance_func: free_instance_func[T],
    recreate_instance_func: recreate_instance_func[T],
    get_virtual_func: get_virtual_func,
    get_virtual_call_data_func: get_virtual_call_data_func,
    call_virtual_with_data_func: call_virtual_with_data_func,
    class_userdata: addr Meta(T),
  )

proc propertyinfo*(
      name: StringName;
      proptyp: typedesc[SomeProperty];
      appearance: Appearance;
    ): HeapPropertyInfo =
  var hint = appearance.hint
  var hintstring = appearance.hintstring
  var usage = appearance.usage
  if appearance.hint == propertyHintNone:
    let ap = proptyp.appearance
    hint = ap.hint
    hintstring = ap.hintstring
    usage = appearance.usage + ap.usage
  propertyInfo(proptyp, name,
    hint, hintstring, usage)

proc propertyinfo*(
      name: StringName;
      appearance: Appearance;
    ): HeapPropertyInfo =
  propertyInfo(VariantType_Nil, name, StringName(),
    appearance.hint, appearance.hintstring, appearance.usage)

import gdext/classes/gdEngine

proc gdexport_internal*(
    info: HeapPropertyInfo;
    typ: StringName;
    getter= StringName();
    setter= StringName()) =
  ClassDB.registerExtensionClassProperty(typ, cast[ptr PropertyInfo](addr info), setter, getter)

proc gdexport_internal*(
    name: string;
    typ: typedesc[SomeUserClass];
    proptyp: typedesc[SomeProperty];
    getter, setter: StringName;
    appearance: Appearance;
    description: string) =
  gdexport_internal(
    propertyInfo(newStringName name, proptyp, appearance),
    className typ, getter, setter)
  when Assistance.genEditorHelp:
    docClassDB[typ].members.add DocMember(
      name: name,
      description: description,
      typ: $APIType proptyp
      )

macro processExports(T: typed): untyped =
  let classIdent = T.getTypeInst[1].identifier
  let fields = T.recList
  let eventname = ident $classIdent & "_properties"

  result = newStmtList()
  for field in fields:
    if field.hasPragma("gdexport"):
      let
        fieldIdent = field.identifier
        name = field.gdname
        desc = field.getPragmaVal("description") or newLit ""
        editorhint = field.getPragmaVal("gdexport") or (quote do: Appearance())
        gettersym = genSym(nskProc, "get_" & $fieldIdent)
        settersym = genSym(nskProc, "set_" & $fieldIdent)
        gettername  = bindSym"defaultFunctionFormatter".newCall "&".newCall(newLit"get_", name)
        settername  = bindSym"defaultFunctionFormatter".newCall "&".newCall(newLit"set_", name)
        getterdef = quote do:
          proc `gettersym`(self: `classIdent`): `classIdent`.`fieldIdent` {.rename: proc(s: string): string = `gettername`.} =
            when compiles(nilCheck self.`fieldIdent`):
              nilCheck self.`fieldIdent`
            self.`fieldIdent`
        setterdef = quote do:
          proc `settersym`(self: `classIdent`; value: `classIdent`.`fieldIdent`) {.rename: proc(s: string): string = `settername`.} =
            self.`fieldIdent` = value

      result.add quote do:
        `getterdef`
        `setterdef`
        registerProc `getterdef`
        registerProc `setterdef`
        gdexport_internal(`name`, typedesc `classIdent`, typedesc `classIdent`.`fieldIdent`,
          newStringName `gettername`, newStringName `settername`, `editorhint`, `desc`)

  if result.len != 0:
    result = quote do:
      proc `eventname` {.execon: Contract[`classIdent`].pre_property.} =
        `result`

var implicitRegistrations* {.compileTime.}: array[InitializationLevel, seq[NimNode]]
var implicitRegistrationSingletons* {.compileTime.}: seq[NimNode]

var registered: seq[StringName]
var plugins: seq[StringName]
proc register*(T: typedesc) =
  when T is SomeUserClass:
    once:
      register T.Super
      let cn = className(T)
      let info = T.creationInfo(false, false, true, T.icon_path)
      ClassDB.registerExtensionClass(cn, className(T.Super), addr info)
      processExports T
      invoke Contract[T]
      for name, vmethod in T.Super.vmethods.pairs:
        discard T.vmethods.hasKeyOrPut(name, vmethod)
      callbackTable[cn] = addr T.callbacks
      when T is EditorPlugin:
        interface_Editor_addPlugin addr cn
        plugins.add cn
      registered.add cn

      when Assistance.genEditorHelp and T.hasCustomPragma(description):
        docClassDB[T].description = T.getCustomPragmaVal(description).descToEditorHelp

macro unregister_singletons =
  result = newStmtList()
  for singleton in implicitRegistrationSingletons:
    result.add quote do:
      destroy `singleton`.singleton
      Engine.unregisterSingleton(className `singleton`)

template unregisterAll* =
  unregister_singletons
  for i in countdown(plugins.high, 0):
    interface_Editor_removePlugin addr plugins[i]
  for i in countdown(registered.high, 0):
    ClassDB.unregisterExtensionClass registered[i]

macro register_implicitly*(level: static InitializationLevel) =
  let register = bindSym "register"
  result = newStmtList()
  for registration in implicitRegistrations[level]:
    result.add register.newCall registration
    if registration in implicitRegistrationSingletons:
      result.add quote do:
        Engine.singleton.registerSingleton(className `registration`, instantiate `registration`)

proc registerRpcConfigsRecursive[T: Object](instance: T) =
  when T is SomeUserClass and T is Node:
    for key, value in Meta(T).rpcConfigs.pairs:
      instance.rpc_config(key, value)
    ((T.Super) instance).registerRpcConfigsRecursive()

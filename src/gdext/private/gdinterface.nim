import std/[tables, typetraits, importutils]
import gdext/private/native
import gdext/private/macros
import gdext/utils/debugging
import gdext/buildconf
import gdext/builtinindex {.all.}
import gdext/stringtools
import gdext/objectcallbacks

privateAccess Object

export native

include gdext/private/includes/stringtoolsbase
export getPtr
export load

proc engineInstance*(obj: Object): ObjectPtr =
  privateAccess Object
  if unlikely(obj.isNil): nil
  else: obj.unsafeEngineInstance

proc getPtr*[I](arr: array[I, Variant]): array[I, pointer] =
  for i in 0..<arr.len:
    result[i] = getPtr arr[i]
proc getPtr*(arr: array[0, Variant]): array[0, pointer] = discard

template getTypedPtr*(v: Variant): VariantPtr = addr v

proc head*[T](a: openArray[T]): ptr T =
  if a.len == 0: nil
  else: addr a[0]

type
  GodotClassMeta* = object
    virtualMethods*: Table[StringName, ClassCallVirtual]
    className*: StringName
    callbacks*: InstanceBindingCallbacks

const ErrorName: array[CallErrorType, string] = [
  "ok",
  "invalid method",
  "invalid argument",
  "too many argument",
  "too few argument",
  "instance is nil",
  "method not const",
]

proc newException*(ce: CallError): ref GodotCallDefect =
  newException( GodotCallDefect,
    "CallError; " & ErrorName[ce.error] & " at " & $ce.argument & ", expected " & $ce.expected
  )

template check*(ce: CallError): untyped =
  if ce.error != Call_OK:
    raise newException(ce)


proc `$`*(exception: ref Exception): string =
  const stacktracePrefix = "stacktrace:\n"
  result = newStringOfCap(
    exception.name.len + exception.msg.len +
    stacktracePrefix.len + 4)

  result.add exception.msg
  result.add " ["
  result.add exception.name
  result.add "]\n"
  result.add stacktracePrefix
  result.add exception.getStackTrace()

proc reporterr(exception: ref Exception; trace: StackTraceEntry) =
  interfacePrintErrorWithMessage(
    p_description = exception.name,
    p_message = cstring $exception,
    p_function = trace.procname,
    p_file = trace.filename,
    p_line = int32 trace.line,
    p_editor_notify = true,
  )

proc reporterr*(exception: ref Exception) =
  reporterr(exception, exception.trace[^1])

template errproof*(body): untyped =
  try:
    body
  except:
    reporterr getCurrentException()

proc createClass*[T: Object](o: ObjectPtr): T =
  privateAccess Object
  result = cast[T](alloc sizeof pointerBase T)
  zeroMem result, sizeof pointerBase T
  result[] = (pointerBase T)(unsafeEngineInstance: o)
  when Dev.debugCallbacks:
    result.debugName = $T
  onInit result

proc create_callback[T](p_token: pointer; p_instance: pointer): pointer {.gdcall.} =
  let class = createClass[T](cast[ObjectPtr](p_instance))
  result = cast[pointer](class)
  debugCreate(class)

proc free_callback[T](p_token: pointer; p_instance: pointer; p_binding: pointer) {.gdcall.} =
  let class = cast[T](p_binding)
  debugFree(class)
  onDestroy class
  `=destroy` class[]
  dealloc class

proc reference_callback(p_token: pointer; p_binding: pointer; p_reference: Bool): Bool {.gdcall.} =
  result = true
  debugReference(cast[Object](p_binding), p_reference)

proc Meta*(T: typedesc[SomeClass]): var GodotClassMeta =
  var instance {.global.} : GodotClassMeta
  once:
    instance = GodotClassMeta(
      className: stringName $T,
    )
    when T is SomeEngineClass:
      instance.callbacks = InstanceBindingCallbacks(
        create_callback: create_callback[T],
        free_callback: free_callback[T],
        reference_callback:
          when T is RefCounted: reference_callback
          else: nil
      )
  instance

template className*(T: typedesc[SomeClass]): var StringName = Meta(T).className
template callbacks*(T: typedesc[SomeClass]): var InstanceBindingCallbacks = Meta(T).callbacks
template vmethods*(T: typedesc[SomeClass]): var Table[StringName, ClassCallVirtual] = Meta(T).virtualMethods

macro Super*(Type: typedesc): typedesc = Type.super

proc getInstanceBinding*(p_engine_object: ObjectPtr; callbacks: var InstanceBindingCallbacks): pointer =
  if p_engine_object.isNil: return
  result = interfaceObjectGetInstanceBinding(p_engine_object, environment.library, nil)
  if result.isNil:
    result = interfaceObjectGetInstanceBinding(p_engine_object, environment.library, addr callbacks)

proc getInstanceBinding*[T: Object](p_engine_object: ObjectPtr; _: typedesc[T]): T =
  cast[T](p_engine_object.getInstanceBinding(T.callbacks))

proc setInstanceBinding*(p_o: ObjectPtr; p_binding: Object; p_callbacks: ptr InstanceBindingCallbacks) =
  interfaceObjectSetInstanceBinding(p_o, environment.library, cast[pointer](p_binding), p_callbacks)

proc setInstance*(p_o: ObjectPtr; p_classname: StringName; p_instance: Object) =
  interfaceObjectSetInstance(p_o, addr p_classname, cast[pointer](p_instance))

proc callScriptMethod*(obj: Object; p_method: StringName): Variant =
  var ce: CallError
  interfaceObjectCallScriptMethod(obj.engineInstance, addr p_method, nil, 0, addr result, addr ce)
  check ce
proc callScriptMethod*(obj: Object; p_method: StringName; args: array[0, Variant]): Variant =
  var ce: CallError
  interfaceObjectCallScriptMethod(obj.engineInstance, addr p_method, nil, 0, addr result, addr ce)
  check ce
proc callScriptMethod*[I](obj: Object; p_method: StringName; args: array[I, Variant]): Variant =
  var ce: CallError
  let args = getPtr args
  interfaceObjectCallScriptMethod(obj.engineInstance, addr p_method, addr args[0], args.len, addr result, addr ce)
  check ce

proc hasScriptMethod*(obj: Object; p_method: StringName): bool =
  interfaceObjectHasScriptMethod(obj.engineInstance, addr p_method)

proc castTo*(obj: Object; p_class_tag: pointer): ObjectPtr =
  interfaceObjectCastTo(obj.engineInstance, p_class_tag)

proc getInstanceID*(self: Object): GDObjectInstanceID =
  interfaceObjectGetInstanceId self.engineInstance

proc getClassName*(o: ObjectPtr): StringName =
  if unlikely(o.isNil): return
  discard interfaceObjectGetClassName(o, environment.library, addr result)
proc getClassName*(self: Object): StringName =
  self.engineInstance.getClassName

proc constructObject*(_: typedesc[ClassDB]; p_classname: StringName): ObjectPtr =
  interfaceClassdbConstructObject2(addr p_classname)

proc getMethodBind*(_: typedesc[ClassDB]; p_classname: StringName; p_methodname: StringName; p_hash: Int): MethodBindPtr =
  interfaceClassdbGetMethodBind(addr p_classname, addr p_methodname, p_hash)
proc getMethodBind*(_: typedesc[ClassDB]; p_classname: StringName; p_methodname: string; p_hash: Int): MethodBindPtr =
  ClassDB.getMethodBind(p_classname, stringName p_methodname, p_hash)

proc getClassTag*(_: typedesc[ClassDB]; p_classname: StringName): pointer =
  interfaceClassdbGetClassTag(addr p_classname)

proc registerExtensionClass*(_: typedesc[ClassDB]; p_class_name, p_parent_class_name: StringName; p_extension_funcs: ptr ClassCreationInfo3) =
  interfaceClassdbRegisterExtensionClass3(
    environment.library, addr p_class_name, addr p_parent_class_name, p_extension_funcs)

proc registerExtensionClassMethod*(_: typedesc[ClassDB]; p_class_name: StringName; p_method_info: ptr ClassMethodInfo) =
  interfaceClassdbRegisterExtensionClassMethod(
    environment.library, addr p_class_name, p_method_info)

proc registerExtensionClassIntegerConstant*(_: typedesc[ClassDB]; p_class_name, p_enum_name, p_constant_name: StringName; p_constant_value: Int; p_is_bitfield: Bool) =
  interfaceClassdbRegisterExtensionClassIntegerConstant(
    environment.library, addr p_class_name, addr p_enum_name, addr p_constant_name, p_constant_value, p_is_bitfield)

proc registerExtensionClassProperty*(_: typedesc[ClassDB]; p_class_name: StringName; p_info: ptr PropertyInfo; p_setter, p_getter: StringName) =
  interfaceClassdbRegisterExtensionClassProperty(
    environment.library, addr p_class_name, p_info, addr p_setter, addr p_getter)

proc registerExtensionClassPropertyGroup*(_: typedesc[ClassDB]; p_class_name: StringName; p_group_name, p_prefix: String) =
  interfaceClassdbRegisterExtensionClassPropertyGroup(
    environment.library, addr p_class_name, addr p_group_name, addr p_prefix)

proc registerExtensionClassPropertySubgroup*(_: typedesc[ClassDB]; p_class_name: StringName; p_subgroup_name, p_prefix: String) =
  interfaceClassdbRegisterExtensionClassPropertySubgroup(
    environment.library, addr p_class_name, addr p_subgroup_name, addr p_prefix)

proc registerExtensionClassSignal*(_: typedesc[ClassDB]; p_class_name: StringName; p_signal_name: StringName; args: varargs[PropertyInfo]) =
  if args.len == 0:
    interfaceClassdbRegisterExtensionClassSignal(
      environment.library, addr p_class_name, addr p_signal_name, nil, 0)
  else:
    interfaceClassdbRegisterExtensionClassSignal(
      environment.library, addr p_class_name, addr p_signal_name, addr args[0], args.len)

proc registerExtensionClassVirtualMethod*(_: typedesc[ClassDB]; p_class_name: StringName; p_method_info {.byref.}: ClassVirtualMethodInfo) =
  interfaceClassdbRegisterExtensionClassVirtualMethod(
    environment.library, addr p_class_name, addr p_method_info)

proc unregisterExtensionClass*(_: typedesc[ClassDB]; p_class_name: StringName) =
  interfaceClassdbUnregisterExtensionClass(
    environment.library, addr p_class_name)

proc empty*(_: typedesc[String]): var String =
  var instance {.global.}: String
  instance
proc empty*(_: typedesc[StringName]): var StringName =
  var instance {.global.}: StringName
  instance

proc referenced*[T](self: T): GdRef[T] =
  result.handle = self
  discard hook_reference(self.engineInstance)
proc asGdRef*[T](self: T): GdRef[T] =
  result.handle = self

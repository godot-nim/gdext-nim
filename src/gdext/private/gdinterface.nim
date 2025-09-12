import std/[tables, typetraits, importutils]
import gdext/private/buildsettings
import gdext/private/native
import gdext/private/macros
import gdext/private/debugging
import gdext/private/classindex
import gdext/builtinindex {.all.}
import gdext/stringtools
import gdext/objectcallbacks
import gdext/nameformats

privateAccess Object

export native

include gdext/private/includes/stringtoolsbase
export getPtr
export load

var callbackTable*: Table[StringName, ptr InstanceBindingCallbacks]
var getParentClass*: proc(class: StringName): StringName

proc engineInstance*(obj: Object): ObjectPtr =
  privateAccess Object
  if unlikely(obj.isNil): nil
  else: obj.unsafeEngineInstance

proc getPtr*[I](arr: array[I, Variant]): array[I, pointer] =
  for i in 0..<arr.len:
    result[i] = getPtr arr[i]
proc getPtr*(arr: varargs[Variant] | seq[Variant]): seq[pointer] =
  result = newSeqOfCap[pointer](arr.len)
  for i in 0..<arr.len:
    result.add getPtr arr[i]
proc getPtr*(arr: array[0, Variant]): array[0, pointer] = discard

template getTypedPtr*(v: Variant): VariantPtr = addr v

proc head*[T](a: openArray[T]): ptr T =
  if a.len == 0: nil
  else: addr a[0]

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

macro gdname*(T: typedesc[SomeClass]): string =
  result = T.typeDef.getPragmaVal("name")
  if result.isNil:
    result = T.typeDef.getPragmaVal("rename")
    if not result.isNil:
      result = result.newCall newLit($T.typeSym)
  if result.isNil:
    result = bindSym"defaultClassFormatter".newCall newLit($T.typeSym)

proc gdname*(node: NimNode): NimNode =
  result = node.getPragmaVal("name")
  if result.isNil:
    result = node.getPragmaVal("rename")
    if not result.isNil:
      result = result.newCall newLit($node.identifier)
  if result.isNil:
    case node.kind
    of nnkMethodDef:
      result = bindsym"defaultVirtualMethodFormatter".newCall newLit($node.identifier)
    of (RoutineNodes - {nnkMethodDef}):
      result = bindSym"defaultFunctionFormatter".newCall newLit($node.identifier)
    of nnkIdentDefs:
      result = bindSym"defaultPropertyFormatter".newCall newLit($node.identifier)
    of nnkTypeDef:
      result = bindSym"defaultClassFormatter".newCall newLit($node.typeSym)
    else:
      discard

macro gdname*(P: proc): string =
  P.getImpl.gdname()

macro Super*(Type: typedesc): typedesc = Type.super

proc registerExtensionClass*(_: typedesc[ClassDB]; p_class_name, p_parent_class_name: StringName; p_extension_funcs: ptr ClassCreationInfo4) =
  interfaceClassdbRegisterExtensionClass4(
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

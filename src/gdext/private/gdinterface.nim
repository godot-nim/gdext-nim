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

proc engineInstance*(obj: Object): ObjectPtr =
  privateAccess Object
  if unlikely(obj.isNil): nil
  else: obj.unsafeEngineInstance

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

proc getInstance*(p_engine_object: ObjectPtr; callbacks: var InstanceBindingCallbacks): pointer =
  if p_engine_object.isNil: return
  let getInstanceBinding = interface_objectGetInstanceBinding
  result = p_engine_object.getInstanceBinding(environment.library, nil)
  if result.isNil:
    result = p_engine_object.getInstanceBinding(environment.library, addr callbacks)

proc getInstance*[T: Object](p_engine_object: ObjectPtr; _: typedesc[T]): T =
  cast[T](p_engine_object.getInstance(T.callbacks))

proc className*(o: ObjectPtr): string =
  var sn: StringName
  discard interfaceObjectGetClassName(o, environment.library, addr sn)
  $sn

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

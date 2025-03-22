import std/[typetraits, importutils]
import gdext/private/native
import gdext/builtinindex {.all.}
import gdext/stringtools

privateAccess Object

export native

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

proc ownerPtr*(obj: Object): ptr ObjectPtr =
  privateAccess Object
  if unlikely(obj.isNil or obj.owner.isNil): nil
  else: addr obj.owner
proc owner*(obj: Object): ObjectPtr =
  privateAccess Object
  if unlikely(obj.isNil): nil
  else: obj.owner

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
  discard hook_reference(self.owner)
proc asGdRef*[T](self: T): GdRef[T] =
  result.handle = self

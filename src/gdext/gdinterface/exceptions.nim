import native

type GodotDefect* = object of CatchableError
type GodotCallDefect* = object of GodotDefect
type GodotVariantTypeDefect* = object of GodotDefect

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
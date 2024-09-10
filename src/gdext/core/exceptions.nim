import commandindex

proc reporterr(exception: ref Exception; trace: StackTraceEntry) =
  const stacktracePrefix = "stacktrace:\n"
  var msg = newStringOfCap(
    exception.name.len + exception.msg.len +
    stacktracePrefix.len + 4)

  msg.add exception.msg
  msg.add " ["
  msg.add exception.name
  msg.add "]\n"
  msg.add stacktracePrefix
  msg.add exception.getStackTrace()
  interfacePrintErrorWithMessage(
    p_description = exception.name,
    p_message = cstring msg,
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
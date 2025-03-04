import gdext/buildconf
import gdext/core/builtinindex

const DebugEnabled = Dev.debugCallbacks

when DebugEnabled or isMainModule:
  import std/[importutils, logging, compilesettings, os]
  import gdext/gdinterface/[native, extracommands]

  type GroupLogger = ref object of Logger
    handlers: seq[Logger]

  method log(logger: GroupLogger; level: Level; args: varargs[string, `$`]) =
    for handler in logger.handlers:
      handler.log(level, args)

  proc addHandler(logger: GroupLogger; handler: Logger) =
    logger.handlers.add handler

  const projectPath = querySetting(projectPath)
  const projectName = querySetting(projectName)

  let global = new GroupLogger
  let console = newConsoleLogger(fmtstr="[$time|$levelid] ")
  global.addHandler console

  proc debug(logger: Logger; args: varargs[string, `$`]) {.raises: [].} =
    try:
      logger.log(lvlDebug, args)
    except: discard
  proc error(logger: Logger; args: varargs[string, `$`]) {.raises: [].} =
    try:
      logger.log(lvlError, args)
    except: discard
  proc fatal(logger: Logger; args: varargs[string, `$`]) {.raises: [].} =
    try:
      logger.log(lvlFatal, args)
    except: discard
  proc info(logger: Logger; args: varargs[string, `$`]) {.raises: [].} =
    try:
      logger.log(lvlInfo, args)
    except: discard
  proc notice(logger: Logger; args: varargs[string, `$`]) {.raises: [].} =
    try:
      logger.log(lvlNotice, args)
    except: discard
  proc warn(logger: Logger; args: varargs[string, `$`]) {.raises: [].} =
    try:
      logger.log(lvlWarn, args)
    except: discard

  proc debug*(args: varargs[string, `$`]) {.raises: [].} =
    global.debug(args)
  proc error*(args: varargs[string, `$`]) {.raises: [].} =
    global.error(args)
  proc fatal*(args: varargs[string, `$`]) {.raises: [].} =
    global.fatal(args)
  proc info*(args: varargs[string, `$`]) {.raises: [].} =
    global.info(args)
  proc notice*(args: varargs[string, `$`]) {.raises: [].} =
    global.notice(args)
  proc warn*(args: varargs[string, `$`]) {.raises: [].} =
    global.warn(args)

  proc addDebugInfo*[T: Object](o: T) {.raises: [].} =
    privateAccess Object
    o.debugName = $T

  proc debugName(o: Object): string =
    privateAccess Object
    o.debugName


else:
  template debug*(args: varargs[string, `$`]) = (discard)
  template error*(args: varargs[string, `$`]) = (discard)
  template fatal*(args: varargs[string, `$`]) = (discard)
  template info*(args: varargs[string, `$`]) = (discard)
  template notice*(args: varargs[string, `$`]) = (discard)
  template warn*(args: varargs[string, `$`]) = (discard)

  template addDebugInfo*(o: Object) = (discard)


when Dev.debugCallbacks or isMainModule:
  type SYNC = enum
    INSTANTIATE = "Instantiate: "
    CREATE      = "     Create: "
    FREE        = "       Free: "
    RECREATE    = "   Recreate: "
    REFERENCE   = "  Reference: "
    DESTROY     = "    Destroy: "

  let callbacks = new GroupLogger
  let callbacksLogger = newFileLogger(projectPath/projectName & ".callbacks.log", fmtstr = "[$time|$levelid] ")
  global.addHandler callbacksLogger
  callbacks.addHandler callbacksLogger
  callbacks.addHandler console

  proc instanceInfo*(o: Object): string =
    result = o.debugName
    result.add "("
    result.add o.owner.classname
    result.add ":"
    result.add $interfaceObjectGetInstanceId(o.owner)
    result.add ")"

  proc debugInstantiate*(o: Object) {.raises: [].} =
    try:
      callbacks.notice SYNC.INSTANTIATE, o.instanceInfo
    except: discard

  proc debugCreate*(o: Object) {.raises: [].} =
    try:
      callbacks.notice SYNC.CREATE, o.instanceInfo
    except: discard

  proc debugRecreate*(o: Object) {.raises: [].} =
    try:
      callbacks.notice SYNC.RECREATE, o.instanceInfo
    except: discard

  proc debugFree*(o: Object) {.raises: [].} =
    try:
      callbacks.notice SYNC.FREE, o.instanceInfo
    except: discard

  proc debugReference*(o: Object; reference: bool) {.raises: [].} =
    try:
      let count = hook_getReferenceCount o.owner
      let status = if reference: "UP" else: "DOWN"
      callbacks.notice SYNC.REFERENCE, o.instanceInfo, "(", $count, " ", status, ")"
    except: discard

else:
  template debugInstantiate*(o: Object) = (discard)
  template debugCreate*(o: Object) = (discard)
  template debugRecreate*(o: Object) = (discard)
  template debugReference*(o: Object; reference: bool) = (discard)
  template debugFree*(o: Object) = discard
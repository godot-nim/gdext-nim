import std/logging except debug, info, notice, warn, error, fatal

import gdext/buildconf
import gdext/gdinterface/[native]

const LoggingEnabled* = Dev.logRefc

when LoggingEnabled:
  import gdext/gdinterface/[extracommands]
  export logging.log

  proc debug*(args: varargs[string, `$`]) {.raises: [].} =
    try:
      log(lvlDebug, args)
    except: discard
  proc info*(args: varargs[string, `$`]) {.raises: [].} =
    try:
      log(lvlInfo, args)
    except: discard
  proc notice*(args: varargs[string, `$`]) {.raises: [].} =
    try:
      log(lvlNotice, args)
    except: discard
  proc warn*(args: varargs[string, `$`]) {.raises: [].} =
    try:
      log(lvlWarn, args)
    except: discard
  proc error*(args: varargs[string, `$`]) {.raises: [].} =
    try:
      log(lvlError, args)
    except: discard
  proc fatal*(args: varargs[string, `$`]) {.raises: [].} =
    try:
      log(lvlFatal, args)
    except: discard

  proc logReferenceCount*(caller: string; id: string; currentCount: int) {.raises: [].} =
    debug "[", caller, "|", id, "] ", currentCount

  proc logReference*(caller: string; id: string; currentCount: int) {.raises: [].} =
    debug "[", caller, "|", id, "] ", currentCount, " +1"

  proc logUnreference*(caller: string; id: string; currentCount: int) {.raises: [].} =
    debug "[", caller, "|", id, "] ", currentCount, " -1"

  proc logReferenceCount*(caller: string; owner: ObjectPtr) {.raises: [].} =
    logReferenceCount(caller, className(owner) & "|" & $interfaceObjectGetInstanceId(owner), int hook_getReferenceCount(owner))
  proc logReference*(caller: string; owner: ObjectPtr) {.raises: [].} =
    logReference(caller, className(owner) & "|" & $interfaceObjectGetInstanceId(owner), int hook_getReferenceCount(owner))
  proc logUnreference*(caller: string; owner: ObjectPtr) {.raises: [].} =
    logUnreference(caller, className(owner) & "|" & $interfaceObjectGetInstanceId(owner), int hook_getReferenceCount(owner))

  template initializeLogger* =
    when Dev.logRefc:
      addHandler(newFileLogger(Dev.logRefcOut, fmtStr= "[REFC|$levelid|$time] "))
      addHandler(newConsoleLogger(fmtStr= "[$levelid|$time] "))

    logging.notice("=== New " & Extension.name & ".gdextension instance started ===")

  template deinitializeLogger* =
    logging.notice("====== " & Extension.name & ".gdextension instance ended ======")


else:
  template log*(lvl: logging.Level; args: varargs[string, `$`]) {.redefine.} = discard
  template debug*(args: varargs[string, `$`]) = discard
  template info*(args: varargs[string, `$`]) = discard
  template notice*(args: varargs[string, `$`]) = discard
  template warn*(args: varargs[string, `$`]) = discard
  template error*(args: varargs[string, `$`]) = discard
  template fatal*(args: varargs[string, `$`]) = discard
  template logReferenceCount*(caller: string; id: string; currentCount: int) = discard
  template logReference*(caller: string; id: string; currentCount: int) = discard
  template logUnreference*(caller: string; id: string; currentCount: int) = discard
  template logReference*(caller: string; owner: ObjectPtr) = discard
  template logUnreference*(caller: string; owner: ObjectPtr) = discard
  template logReferenceCount*(caller: string; owner: ObjectPtr) = discard
  template initializeLogger* = discard
  template deinitializeLogger* = discard
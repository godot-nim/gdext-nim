{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(Timer, Node)

proc setWaitTime*(self: Timer; timeSec: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "set_wait_time", 373806689)
  methodbind.ptrcall(self, [getPtr timeSec], void)

proc getWaitTime*(self: Timer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "get_wait_time", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setOneShot*(self: Timer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "set_one_shot", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isOneShot*(self: Timer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "is_one_shot", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutostart*(self: Timer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "set_autostart", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc hasAutostart*(self: Timer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "has_autostart", 36873697)
  methodbind.ptrcall(self, [], bool)

proc start*(self: Timer; timeSec: float64 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "start", 1392008558)
  methodbind.ptrcall(self, [getPtr timeSec], void)

proc stop*(self: Timer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "stop", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setPaused*(self: Timer; paused: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "set_paused", 2586408642)
  methodbind.ptrcall(self, [getPtr paused], void)

proc isPaused*(self: Timer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "is_paused", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setIgnoreTimeScale*(self: Timer; ignore: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "set_ignore_time_scale", 2586408642)
  methodbind.ptrcall(self, [getPtr ignore], void)

proc isIgnoringTimeScale*(self: Timer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "is_ignoring_time_scale", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc isStopped*(self: Timer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "is_stopped", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getTimeLeft*(self: Timer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "get_time_left", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setTimerProcessCallback*(self: Timer; callback: Timer_TimerProcessCallback): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "set_timer_process_callback", 3469495063)
  methodbind.ptrcall(self, [getPtr callback], void)

proc getTimerProcessCallback*(self: Timer): Timer_TimerProcessCallback =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Timer, "get_timer_process_callback", 2672570227)
  methodbind.ptrcall(self, [], Timer_TimerProcessCallback)

template processCallback*(self: Timer): untyped = self.getTimerProcessCallback()
template `processCallback=`*(self: Timer; value) = self.setTimerProcessCallback(value)

template waitTime*(self: Timer): untyped = self.getWaitTime()
template `waitTime=`*(self: Timer; value) = self.setWaitTime(value)

template oneShot*(self: Timer): untyped = self.isOneShot()
template `oneShot=`*(self: Timer; value) = self.setOneShot(value)

template autostart*(self: Timer): untyped = self.hasAutostart()
template `autostart=`*(self: Timer; value) = self.setAutostart(value)

template paused*(self: Timer): untyped = self.isPaused()
template `paused=`*(self: Timer; value) = self.setPaused(value)

template ignoreTimeScale*(self: Timer): untyped = self.isIgnoringTimeScale()
template `ignoreTimeScale=`*(self: Timer; value) = self.setIgnoreTimeScale(value)

template timeLeft*(self: Timer): untyped = self.getTimeLeft()

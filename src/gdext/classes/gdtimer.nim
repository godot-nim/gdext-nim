{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

proc setWaitTime*(self: Timer; timeSec: float64): void =
  expandMethodBind(className Timer, "set_wait_time", 373806689)
  methodbind.ptrcall(self, [getPtr timeSec])

proc getWaitTime*(self: Timer): float64 =
  expandMethodBind(className Timer, "get_wait_time", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setOneShot*(self: Timer; enable: bool): void =
  expandMethodBind(className Timer, "set_one_shot", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isOneShot*(self: Timer): bool =
  expandMethodBind(className Timer, "is_one_shot", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAutostart*(self: Timer; enable: bool): void =
  expandMethodBind(className Timer, "set_autostart", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc hasAutostart*(self: Timer): bool =
  expandMethodBind(className Timer, "has_autostart", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc start*(self: Timer; timeSec: float64 = -1): void =
  expandMethodBind(className Timer, "start", 1392008558)
  methodbind.ptrcall(self, [getPtr timeSec])

proc stop*(self: Timer): void =
  expandMethodBind(className Timer, "stop", 3218959716)
  methodbind.ptrcall(self, [])

proc setPaused*(self: Timer; paused: bool): void =
  expandMethodBind(className Timer, "set_paused", 2586408642)
  methodbind.ptrcall(self, [getPtr paused])

proc isPaused*(self: Timer): bool =
  expandMethodBind(className Timer, "is_paused", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isStopped*(self: Timer): bool =
  expandMethodBind(className Timer, "is_stopped", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getTimeLeft*(self: Timer): float64 =
  expandMethodBind(className Timer, "get_time_left", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setTimerProcessCallback*(self: Timer; callback: Timer_TimerProcessCallback): void =
  expandMethodBind(className Timer, "set_timer_process_callback", 3469495063)
  methodbind.ptrcall(self, [getPtr callback])

proc getTimerProcessCallback*(self: Timer): Timer_TimerProcessCallback =
  expandMethodBind(className Timer, "get_timer_process_callback", 2672570227)
  var ret: encoded Timer_TimerProcessCallback
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Timer_TimerProcessCallback)

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

template timeLeft*(self: Timer): untyped = self.getTimeLeft()

const Timer_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Timer]): Table[string, string] = Timer_vmap

proc timeout*(self: Timer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("timeout")
  self.emitSignal(signalname)
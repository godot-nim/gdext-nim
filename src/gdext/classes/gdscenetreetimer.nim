{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setTimeLeft*(self: SceneTreeTimer; time: float64): void =
  expandMethodBind(className SceneTreeTimer, "set_time_left", 373806689)
  var `?param` = [getPtr time]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTimeLeft*(self: SceneTreeTimer): float64 =
  expandMethodBind(className SceneTreeTimer, "get_time_left", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

template timeLeft*(self: SceneTreeTimer): untyped = self.getTimeLeft()
template `timeLeft=`*(self: SceneTreeTimer; value) = self.setTimeLeft(value)

const SceneTreeTimer_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SceneTreeTimer]): Table[string, string] = SceneTreeTimer_vmap

proc timeout*(self: SceneTreeTimer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("timeout")
  self.emitSignal(signalname)
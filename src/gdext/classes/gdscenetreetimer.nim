{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(SceneTreeTimer, RefCounted)

proc setTimeLeft*(self: SceneTreeTimer; time: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTreeTimer, "set_time_left", 373806689)
  methodbind.ptrcall(self, [getPtr time], void)

proc getTimeLeft*(self: SceneTreeTimer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTreeTimer, "get_time_left", 1740695150)
  methodbind.ptrcall(self, [], float64)

template timeLeft*(self: SceneTreeTimer): untyped = self.getTimeLeft()
template `timeLeft=`*(self: SceneTreeTimer; value) = self.setTimeLeft(value)

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(Performance, Object)

proc getMonitor*(self: Performance; monitor: Performance_Monitor): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Performance, "get_monitor", 1943275655)
  methodbind.ptrcall(self, [getPtr monitor], float64)

proc addCustomMonitor*(self: Performance; id: StringName; callable: Callable; arguments: Array = newArray()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Performance, "add_custom_monitor", 4099036814)
  methodbind.ptrcall(self, [getPtr id, getPtr callable, getPtr arguments], void)

proc removeCustomMonitor*(self: Performance; id: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Performance, "remove_custom_monitor", 3304788590)
  methodbind.ptrcall(self, [getPtr id], void)

proc hasCustomMonitor*(self: Performance; id: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Performance, "has_custom_monitor", 2041966384)
  methodbind.ptrcall(self, [getPtr id], bool)

proc getCustomMonitor*(self: Performance; id: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Performance, "get_custom_monitor", 2138907829)
  methodbind.ptrcall(self, [getPtr id], Variant)

proc getMonitorModificationTime*(self: Performance): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Performance, "get_monitor_modification_time", 2455072627)
  methodbind.ptrcall(self, [], uint64)

proc getCustomMonitorNames*(self: Performance): TypedArray[StringName] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Performance, "get_custom_monitor_names", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[StringName])

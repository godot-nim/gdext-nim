{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getMonitor*(self: Performance; monitor: Performance_Monitor): float64 =
  expandMethodBind(className Performance, "get_monitor", 1943275655)
  var `?param` = [getPtr monitor]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc addCustomMonitor*(self: Performance; id: StringName; callable: Callable; arguments: Array = gdarray()): void =
  expandMethodBind(className Performance, "add_custom_monitor", 4099036814)
  var `?param` = [getPtr id, getPtr callable, getPtr arguments]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeCustomMonitor*(self: Performance; id: StringName): void =
  expandMethodBind(className Performance, "remove_custom_monitor", 3304788590)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasCustomMonitor*(self: Performance; id: StringName): bool =
  expandMethodBind(className Performance, "has_custom_monitor", 2041966384)
  var `?param` = [getPtr id]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getCustomMonitor*(self: Performance; id: StringName): Variant =
  expandMethodBind(className Performance, "get_custom_monitor", 2138907829)
  var `?param` = [getPtr id]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc getMonitorModificationTime*(self: Performance): uint64 =
  expandMethodBind(className Performance, "get_monitor_modification_time", 2455072627)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc getCustomMonitorNames*(self: Performance): TypedArray[StringName] =
  expandMethodBind(className Performance, "get_custom_monitor_names", 2915620761)
  var ret: encoded TypedArray[StringName]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[StringName])

const Performance_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Performance]): Table[string, string] = Performance_vmap
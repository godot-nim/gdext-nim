{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc start*(self: Thread; callable: Callable; priority: Thread_Priority = priorityNormal): Error =
  expandMethodBind(className Thread, "start", 1327203254)
  var `?param` = [getPtr callable, getPtr priority]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getId*(self: Thread): String =
  expandMethodBind(className Thread, "get_id", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc isStarted*(self: Thread): bool =
  expandMethodBind(className Thread, "is_started", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isAlive*(self: Thread): bool =
  expandMethodBind(className Thread, "is_alive", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc waitToFinish*(self: Thread): Variant =
  expandMethodBind(className Thread, "wait_to_finish", 1460262497)
  var ret: encoded Variant
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Variant)

proc setThreadSafetyChecksEnabled*(_: typedesc[Thread]; enabled: bool): void =
  expandMethodBind(className Thread, "set_thread_safety_checks_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(addr `?param`[0])

const Thread_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Thread]): Table[string, string] = Thread_vmap
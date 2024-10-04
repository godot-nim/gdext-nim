{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc start*(self: GodotThread; callable: Callable; priority: Thread_Priority = 1): Error =
  expandMethodBind(className GodotThread, "start", 1327203254)
  var `?param` = [getPtr callable, getPtr priority]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getId*(self: GodotThread): String =
  expandMethodBind(className GodotThread, "get_id", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc isStarted*(self: GodotThread): bool =
  expandMethodBind(className GodotThread, "is_started", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isAlive*(self: GodotThread): bool =
  expandMethodBind(className GodotThread, "is_alive", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc waitToFinish*(self: GodotThread): Variant =
  expandMethodBind(className GodotThread, "wait_to_finish", 1460262497)
  var ret: encoded Variant
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Variant)

proc setThreadSafetyChecksEnabled*(_: GodotThread; enabled: bool): void =
  expandMethodBind(className GodotThread, "set_thread_safety_checks_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(addr `?param`[0])

const GodotThread_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GodotThread]): Table[string, string] = GodotThread_vmap
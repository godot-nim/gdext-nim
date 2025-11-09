{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(GodotThread, RefCounted)

proc start*(self: GodotThread; callable: Callable; priority: GodotThread_Priority = priorityNormal): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GodotThread, "start", 1327203254)
  methodbind.ptrcall(self, [getPtr callable, getPtr priority], Error)

proc getId*(self: GodotThread): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GodotThread, "get_id", 201670096)
  methodbind.ptrcall(self, [], String)

proc isStarted*(self: GodotThread): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GodotThread, "is_started", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isAlive*(self: GodotThread): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GodotThread, "is_alive", 36873697)
  methodbind.ptrcall(self, [], bool)

proc waitToFinish*(self: GodotThread): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GodotThread, "wait_to_finish", 1460262497)
  methodbind.ptrcall(self, [], Variant)

proc setThreadSafetyChecksEnabled*(_: typedesc[GodotThread]; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GodotThread, "set_thread_safety_checks_enabled", 2586408642)
  methodbind.ptrcall([getPtr enabled], void)

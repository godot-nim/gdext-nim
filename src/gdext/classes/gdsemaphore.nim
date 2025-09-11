{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(Semaphore, RefCounted)

proc wait*(self: Semaphore): void =
  expandMethodBind(className Semaphore, "wait", 3218959716)
  methodbind.ptrcall(self, [])

proc tryWait*(self: Semaphore): bool =
  expandMethodBind(className Semaphore, "try_wait", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc post*(self: Semaphore; count: int32 = 1): void =
  expandMethodBind(className Semaphore, "post", 1667783136)
  methodbind.ptrcall(self, [getPtr count])

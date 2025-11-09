{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(Semaphore, RefCounted)

proc wait*(self: Semaphore): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Semaphore, "wait", 3218959716)
  methodbind.ptrcall(self, [], void)

proc tryWait*(self: Semaphore): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Semaphore, "try_wait", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc post*(self: Semaphore; count: int32 = 1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Semaphore, "post", 1667783136)
  methodbind.ptrcall(self, [getPtr count], void)

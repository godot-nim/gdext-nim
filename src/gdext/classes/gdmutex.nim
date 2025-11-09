{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(Mutex, RefCounted)

proc lock*(self: Mutex): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mutex, "lock", 3218959716)
  methodbind.ptrcall(self, [], void)

proc tryLock*(self: Mutex): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mutex, "try_lock", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc unlock*(self: Mutex): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mutex, "unlock", 3218959716)
  methodbind.ptrcall(self, [], void)

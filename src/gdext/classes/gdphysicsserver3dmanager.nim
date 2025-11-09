{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(PhysicsServer3DManager, Object)

proc registerServer*(self: PhysicsServer3DManager; name: String; createCallback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3DManager, "register_server", 2137474292)
  methodbind.ptrcall(self, [getPtr name, getPtr createCallback], void)

proc setDefaultServer*(self: PhysicsServer3DManager; name: String; priority: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3DManager, "set_default_server", 2956805083)
  methodbind.ptrcall(self, [getPtr name, getPtr priority], void)

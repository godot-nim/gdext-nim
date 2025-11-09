{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(TextServerManager, Object)

proc addInterface*(self: TextServerManager; `interface`: gdref TextServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServerManager, "add_interface", 1799689403)
  methodbind.ptrcall(self, [getPtr `interface`], void)

proc getInterfaceCount*(self: TextServerManager): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServerManager, "get_interface_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc removeInterface*(self: TextServerManager; `interface`: gdref TextServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServerManager, "remove_interface", 1799689403)
  methodbind.ptrcall(self, [getPtr `interface`], void)

proc getInterface*(self: TextServerManager; idx: int32): gdref TextServer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServerManager, "get_interface", 1672475555)
  methodbind.ptrcall(self, [getPtr idx], gdref TextServer)

proc getInterfaces*(self: TextServerManager): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServerManager, "get_interfaces", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc findInterface*(self: TextServerManager; name: String): gdref TextServer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServerManager, "find_interface", 2240905781)
  methodbind.ptrcall(self, [getPtr name], gdref TextServer)

proc setPrimaryInterface*(self: TextServerManager; index: gdref TextServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServerManager, "set_primary_interface", 1799689403)
  methodbind.ptrcall(self, [getPtr index], void)

proc getPrimaryInterface*(self: TextServerManager): gdref TextServer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServerManager, "get_primary_interface", 905850878)
  methodbind.ptrcall(self, [], gdref TextServer)

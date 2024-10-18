{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc registerServer*(self: PhysicsServer2DManager; name: String; createCallback: Callable): void =
  expandMethodBind(className PhysicsServer2DManager, "register_server", 2137474292)
  var `?param` = [getPtr name, getPtr createCallback]
  methodbind.ptrcall(self, addr `?param`[0])

proc setDefaultServer*(self: PhysicsServer2DManager; name: String; priority: int32): void =
  expandMethodBind(className PhysicsServer2DManager, "set_default_server", 2956805083)
  var `?param` = [getPtr name, getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

const PhysicsServer2DManager_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsServer2DManager]): Table[string, string] = PhysicsServer2DManager_vmap
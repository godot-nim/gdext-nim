{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc registerServer*(self: PhysicsServer3DManager; name: String; createCallback: Callable): void =
  expandMethodBind(className PhysicsServer3DManager, "register_server", 2137474292)
  var `?param` = [getPtr name, getPtr createCallback]
  methodbind.ptrcall(self, addr `?param`[0])

proc setDefaultServer*(self: PhysicsServer3DManager; name: String; priority: int32): void =
  expandMethodBind(className PhysicsServer3DManager, "set_default_server", 2956805083)
  var `?param` = [getPtr name, getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

const PhysicsServer3DManager_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsServer3DManager]): Table[string, string] = PhysicsServer3DManager_vmap
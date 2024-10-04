{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc addInterface*(self: TextServerManager; `interface`: gdref TextServer): void =
  expandMethodBind(className TextServerManager, "add_interface", 1799689403)
  var `?param` = [getPtr `interface`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInterfaceCount*(self: TextServerManager): int32 =
  expandMethodBind(className TextServerManager, "get_interface_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc removeInterface*(self: TextServerManager; `interface`: gdref TextServer): void =
  expandMethodBind(className TextServerManager, "remove_interface", 1799689403)
  var `?param` = [getPtr `interface`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInterface*(self: TextServerManager; idx: int32): gdref TextServer =
  expandMethodBind(className TextServerManager, "get_interface", 1672475555)
  var `?param` = [getPtr idx]
  var ret: encoded gdref TextServer
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref TextServer)

proc getInterfaces*(self: TextServerManager): TypedArray[Dictionary] =
  expandMethodBind(className TextServerManager, "get_interfaces", 3995934104)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc findInterface*(self: TextServerManager; name: String): gdref TextServer =
  expandMethodBind(className TextServerManager, "find_interface", 2240905781)
  var `?param` = [getPtr name]
  var ret: encoded gdref TextServer
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref TextServer)

proc setPrimaryInterface*(self: TextServerManager; index: gdref TextServer): void =
  expandMethodBind(className TextServerManager, "set_primary_interface", 1799689403)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPrimaryInterface*(self: TextServerManager): gdref TextServer =
  expandMethodBind(className TextServerManager, "get_primary_interface", 905850878)
  var ret: encoded gdref TextServer
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref TextServer)

const TextServerManager_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextServerManager]): Table[string, string] = TextServerManager_vmap

proc interfaceAdded*(self: TextServerManager; interfaceName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("interface_added")
  let args = [interfaceName]
  self.emitSignal(signalname, args)

proc interfaceRemoved*(self: TextServerManager; interfaceName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("interface_removed")
  let args = [interfaceName]
  self.emitSignal(signalname, args)
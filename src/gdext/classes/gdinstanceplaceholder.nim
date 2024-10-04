{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode; export gdnode

proc getStoredValues*(self: InstancePlaceholder; withOrder: bool = false): Dictionary =
  expandMethodBind(className InstancePlaceholder, "get_stored_values", 2230153369)
  var `?param` = [getPtr withOrder]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc createInstance*(self: InstancePlaceholder; replace: bool = false; customScene: gdref PackedScene = default gdref PackedScene): Node =
  expandMethodBind(className InstancePlaceholder, "create_instance", 3794612210)
  var `?param` = [getPtr replace, getPtr customScene]
  var ret: encoded Node
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Node)

proc getInstancePath*(self: InstancePlaceholder): String =
  expandMethodBind(className InstancePlaceholder, "get_instance_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

const InstancePlaceholder_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InstancePlaceholder]): Table[string, string] = InstancePlaceholder_vmap
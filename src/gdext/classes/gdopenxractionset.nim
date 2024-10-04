{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc setLocalizedName*(self: OpenXrActionSet; localizedName: String): void =
  expandMethodBind(className OpenXrActionSet, "set_localized_name", 83702148)
  var `?param` = [getPtr localizedName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLocalizedName*(self: OpenXrActionSet): String =
  expandMethodBind(className OpenXrActionSet, "get_localized_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setPriority*(self: OpenXrActionSet; priority: int32): void =
  expandMethodBind(className OpenXrActionSet, "set_priority", 1286410249)
  var `?param` = [getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPriority*(self: OpenXrActionSet): int32 =
  expandMethodBind(className OpenXrActionSet, "get_priority", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getActionCount*(self: OpenXrActionSet): int32 =
  expandMethodBind(className OpenXrActionSet, "get_action_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setActions*(self: OpenXrActionSet; actions: Array): void =
  expandMethodBind(className OpenXrActionSet, "set_actions", 381264803)
  var `?param` = [getPtr actions]
  methodbind.ptrcall(self, addr `?param`[0])

proc getActions*(self: OpenXrActionSet): Array =
  expandMethodBind(className OpenXrActionSet, "get_actions", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

proc addAction*(self: OpenXrActionSet; action: gdref OpenXrAction): void =
  expandMethodBind(className OpenXrActionSet, "add_action", 349361333)
  var `?param` = [getPtr action]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeAction*(self: OpenXrActionSet; action: gdref OpenXrAction): void =
  expandMethodBind(className OpenXrActionSet, "remove_action", 349361333)
  var `?param` = [getPtr action]
  methodbind.ptrcall(self, addr `?param`[0])

template localizedName*(self: OpenXrActionSet): untyped = self.getLocalizedName()
template `localizedName=`*(self: OpenXrActionSet; value) = self.setLocalizedName(value)

template priority*(self: OpenXrActionSet): untyped = self.getPriority()
template `priority=`*(self: OpenXrActionSet; value) = self.setPriority(value)

template actions*(self: OpenXrActionSet): untyped = self.getActions()
template `actions=`*(self: OpenXrActionSet; value) = self.setActions(value)

const OpenXrActionSet_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXrActionSet]): Table[string, string] = OpenXrActionSet_vmap
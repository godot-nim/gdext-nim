{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setLocalizedName*(self: OpenXRActionSet; localizedName: String): void =
  expandMethodBind(className OpenXRActionSet, "set_localized_name", 83702148)
  var `?param` = [getPtr localizedName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLocalizedName*(self: OpenXRActionSet): String =
  expandMethodBind(className OpenXRActionSet, "get_localized_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setPriority*(self: OpenXRActionSet; priority: int32): void =
  expandMethodBind(className OpenXRActionSet, "set_priority", 1286410249)
  var `?param` = [getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPriority*(self: OpenXRActionSet): int32 =
  expandMethodBind(className OpenXRActionSet, "get_priority", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getActionCount*(self: OpenXRActionSet): int32 =
  expandMethodBind(className OpenXRActionSet, "get_action_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setActions*(self: OpenXRActionSet; actions: Array): void =
  expandMethodBind(className OpenXRActionSet, "set_actions", 381264803)
  var `?param` = [getPtr actions]
  methodbind.ptrcall(self, addr `?param`[0])

proc getActions*(self: OpenXRActionSet): Array =
  expandMethodBind(className OpenXRActionSet, "get_actions", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

proc addAction*(self: OpenXRActionSet; action: gdref OpenXRAction): void =
  expandMethodBind(className OpenXRActionSet, "add_action", 349361333)
  var `?param` = [getPtr action]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeAction*(self: OpenXRActionSet; action: gdref OpenXRAction): void =
  expandMethodBind(className OpenXRActionSet, "remove_action", 349361333)
  var `?param` = [getPtr action]
  methodbind.ptrcall(self, addr `?param`[0])

template localizedName*(self: OpenXRActionSet): untyped = self.getLocalizedName()
template `localizedName=`*(self: OpenXRActionSet; value) = self.setLocalizedName(value)

template priority*(self: OpenXRActionSet): untyped = self.getPriority()
template `priority=`*(self: OpenXRActionSet; value) = self.setPriority(value)

template actions*(self: OpenXRActionSet): untyped = self.getActions()
template `actions=`*(self: OpenXRActionSet; value) = self.setActions(value)

const OpenXRActionSet_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRActionSet]): Table[string, string] = OpenXRActionSet_vmap
{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setLocalizedName*(self: OpenXRAction; localizedName: String): void =
  expandMethodBind(className OpenXRAction, "set_localized_name", 83702148)
  methodbind.ptrcall(self, [getPtr localizedName])

proc getLocalizedName*(self: OpenXRAction): String =
  expandMethodBind(className OpenXRAction, "get_localized_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setActionType*(self: OpenXRAction; actionType: OpenXRAction_ActionType): void =
  expandMethodBind(className OpenXRAction, "set_action_type", 1675238366)
  methodbind.ptrcall(self, [getPtr actionType])

proc getActionType*(self: OpenXRAction): OpenXRAction_ActionType =
  expandMethodBind(className OpenXRAction, "get_action_type", 3536542431)
  var ret: encoded OpenXRAction_ActionType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRAction_ActionType)

proc setToplevelPaths*(self: OpenXRAction; toplevelPaths: PackedStringArray): void =
  expandMethodBind(className OpenXRAction, "set_toplevel_paths", 4015028928)
  methodbind.ptrcall(self, [getPtr toplevelPaths])

proc getToplevelPaths*(self: OpenXRAction): PackedStringArray =
  expandMethodBind(className OpenXRAction, "get_toplevel_paths", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

template localizedName*(self: OpenXRAction): untyped = self.getLocalizedName()
template `localizedName=`*(self: OpenXRAction; value) = self.setLocalizedName(value)

template actionType*(self: OpenXRAction): untyped = self.getActionType()
template `actionType=`*(self: OpenXRAction; value) = self.setActionType(value)

template toplevelPaths*(self: OpenXRAction): untyped = self.getToplevelPaths()
template `toplevelPaths=`*(self: OpenXRAction; value) = self.setToplevelPaths(value)

const OpenXRAction_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRAction]): Table[string, string] = OpenXRAction_vmap
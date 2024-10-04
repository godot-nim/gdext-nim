{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc setLocalizedName*(self: OpenXrAction; localizedName: String): void =
  expandMethodBind(className OpenXrAction, "set_localized_name", 83702148)
  var `?param` = [getPtr localizedName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLocalizedName*(self: OpenXrAction): String =
  expandMethodBind(className OpenXrAction, "get_localized_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setActionType*(self: OpenXrAction; actionType: OpenXrAction_ActionType): void =
  expandMethodBind(className OpenXrAction, "set_action_type", 1675238366)
  var `?param` = [getPtr actionType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getActionType*(self: OpenXrAction): OpenXrAction_ActionType =
  expandMethodBind(className OpenXrAction, "get_action_type", 3536542431)
  var ret: encoded OpenXrAction_ActionType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(OpenXrAction_ActionType)

proc setToplevelPaths*(self: OpenXrAction; toplevelPaths: PackedStringArray): void =
  expandMethodBind(className OpenXrAction, "set_toplevel_paths", 4015028928)
  var `?param` = [getPtr toplevelPaths]
  methodbind.ptrcall(self, addr `?param`[0])

proc getToplevelPaths*(self: OpenXrAction): PackedStringArray =
  expandMethodBind(className OpenXrAction, "get_toplevel_paths", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

template localizedName*(self: OpenXrAction): untyped = self.getLocalizedName()
template `localizedName=`*(self: OpenXrAction; value) = self.setLocalizedName(value)

template actionType*(self: OpenXrAction): untyped = self.getActionType()
template `actionType=`*(self: OpenXrAction; value) = self.setActionType(value)

template toplevelPaths*(self: OpenXrAction): untyped = self.getToplevelPaths()
template `toplevelPaths=`*(self: OpenXrAction; value) = self.setToplevelPaths(value)

const OpenXrAction_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXrAction]): Table[string, string] = OpenXrAction_vmap
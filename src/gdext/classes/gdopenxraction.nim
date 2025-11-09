{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(OpenXRAction, Resource)

proc setLocalizedName*(self: OpenXRAction; localizedName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAction, "set_localized_name", 83702148)
  methodbind.ptrcall(self, [getPtr localizedName], void)

proc getLocalizedName*(self: OpenXRAction): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAction, "get_localized_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc setActionType*(self: OpenXRAction; actionType: OpenXRAction_ActionType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAction, "set_action_type", 1675238366)
  methodbind.ptrcall(self, [getPtr actionType], void)

proc getActionType*(self: OpenXRAction): OpenXRAction_ActionType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAction, "get_action_type", 3536542431)
  methodbind.ptrcall(self, [], OpenXRAction_ActionType)

proc setToplevelPaths*(self: OpenXRAction; toplevelPaths: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAction, "set_toplevel_paths", 4015028928)
  methodbind.ptrcall(self, [getPtr toplevelPaths], void)

proc getToplevelPaths*(self: OpenXRAction): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAction, "get_toplevel_paths", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

template localizedName*(self: OpenXRAction): untyped = self.getLocalizedName()
template `localizedName=`*(self: OpenXRAction; value) = self.setLocalizedName(value)

template actionType*(self: OpenXRAction): untyped = self.getActionType()
template `actionType=`*(self: OpenXRAction; value) = self.setActionType(value)

template toplevelPaths*(self: OpenXRAction): untyped = self.getToplevelPaths()
template `toplevelPaths=`*(self: OpenXRAction; value) = self.setToplevelPaths(value)

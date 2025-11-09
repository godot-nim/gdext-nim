{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(OpenXRActionSet, Resource)

proc setLocalizedName*(self: OpenXRActionSet; localizedName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionSet, "set_localized_name", 83702148)
  methodbind.ptrcall(self, [getPtr localizedName], void)

proc getLocalizedName*(self: OpenXRActionSet): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionSet, "get_localized_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc setPriority*(self: OpenXRActionSet; priority: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionSet, "set_priority", 1286410249)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getPriority*(self: OpenXRActionSet): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionSet, "get_priority", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getActionCount*(self: OpenXRActionSet): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionSet, "get_action_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setActions*(self: OpenXRActionSet; actions: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionSet, "set_actions", 381264803)
  methodbind.ptrcall(self, [getPtr actions], void)

proc getActions*(self: OpenXRActionSet): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionSet, "get_actions", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc addAction*(self: OpenXRActionSet; action: gdref OpenXRAction): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionSet, "add_action", 349361333)
  methodbind.ptrcall(self, [getPtr action], void)

proc removeAction*(self: OpenXRActionSet; action: gdref OpenXRAction): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRActionSet, "remove_action", 349361333)
  methodbind.ptrcall(self, [getPtr action], void)

template localizedName*(self: OpenXRActionSet): untyped = self.getLocalizedName()
template `localizedName=`*(self: OpenXRActionSet; value) = self.setLocalizedName(value)

template priority*(self: OpenXRActionSet): untyped = self.getPriority()
template `priority=`*(self: OpenXRActionSet; value) = self.setPriority(value)

template actions*(self: OpenXRActionSet): untyped = self.getActions()
template `actions=`*(self: OpenXRActionSet; value) = self.setActions(value)

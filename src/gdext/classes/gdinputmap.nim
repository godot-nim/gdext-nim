{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(InputMap, Object)

proc hasAction*(self: InputMap; action: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputMap, "has_action", 2619796661)
  methodbind.ptrcall(self, [getPtr action], bool)

proc getActions*(self: InputMap): TypedArray[StringName] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputMap, "get_actions", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[StringName])

proc addAction*(self: InputMap; action: StringName; deadzone: Float = 0.2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputMap, "add_action", 1195233573)
  methodbind.ptrcall(self, [getPtr action, getPtr deadzone], void)

proc eraseAction*(self: InputMap; action: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputMap, "erase_action", 3304788590)
  methodbind.ptrcall(self, [getPtr action], void)

proc getActionDescription*(self: InputMap; action: StringName): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputMap, "get_action_description", 957595536)
  methodbind.ptrcall(self, [getPtr action], String)

proc actionSetDeadzone*(self: InputMap; action: StringName; deadzone: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputMap, "action_set_deadzone", 4135858297)
  methodbind.ptrcall(self, [getPtr action, getPtr deadzone], void)

proc actionGetDeadzone*(self: InputMap; action: StringName): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputMap, "action_get_deadzone", 1391627649)
  methodbind.ptrcall(self, [getPtr action], Float)

proc actionAddEvent*(self: InputMap; action: StringName; event: gdref InputEvent): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputMap, "action_add_event", 518302593)
  methodbind.ptrcall(self, [getPtr action, getPtr event], void)

proc actionHasEvent*(self: InputMap; action: StringName; event: gdref InputEvent): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputMap, "action_has_event", 1185871985)
  methodbind.ptrcall(self, [getPtr action, getPtr event], bool)

proc actionEraseEvent*(self: InputMap; action: StringName; event: gdref InputEvent): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputMap, "action_erase_event", 518302593)
  methodbind.ptrcall(self, [getPtr action, getPtr event], void)

proc actionEraseEvents*(self: InputMap; action: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputMap, "action_erase_events", 3304788590)
  methodbind.ptrcall(self, [getPtr action], void)

proc actionGetEvents*(self: InputMap; action: StringName): TypedArray[gdref InputEvent] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputMap, "action_get_events", 689397652)
  methodbind.ptrcall(self, [getPtr action], TypedArray[gdref InputEvent])

proc eventIsAction*(self: InputMap; event: gdref InputEvent; action: StringName; exactMatch: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputMap, "event_is_action", 3193353650)
  methodbind.ptrcall(self, [getPtr event, getPtr action, getPtr exactMatch], bool)

proc loadFromProjectSettings*(self: InputMap): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputMap, "load_from_project_settings", 3218959716)
  methodbind.ptrcall(self, [], void)

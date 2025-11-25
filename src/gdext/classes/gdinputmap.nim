{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(InputMap, Object)

proc hasAction*(self: InputMap; action: StringName): bool =
  expandMethodBind(className InputMap, "has_action", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr action], addr ret)
  (addr ret).decode_result(bool)

proc getActions*(self: InputMap): Array[StringName] =
  expandMethodBind(className InputMap, "get_actions", 2915620761)
  var ret: encoded Array[StringName]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[StringName])

proc addAction*(self: InputMap; action: StringName; deadzone: Float = 0.2): void =
  expandMethodBind(className InputMap, "add_action", 1195233573)
  methodbind.ptrcall(self, [getPtr action, getPtr deadzone])

proc eraseAction*(self: InputMap; action: StringName): void =
  expandMethodBind(className InputMap, "erase_action", 3304788590)
  methodbind.ptrcall(self, [getPtr action])

proc getActionDescription*(self: InputMap; action: StringName): String =
  expandMethodBind(className InputMap, "get_action_description", 957595536)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr action], addr ret)
  (addr ret).decode_result(String)

proc actionSetDeadzone*(self: InputMap; action: StringName; deadzone: Float): void =
  expandMethodBind(className InputMap, "action_set_deadzone", 4135858297)
  methodbind.ptrcall(self, [getPtr action, getPtr deadzone])

proc actionGetDeadzone*(self: InputMap; action: StringName): Float =
  expandMethodBind(className InputMap, "action_get_deadzone", 1391627649)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr action], addr ret)
  (addr ret).decode_result(Float)

proc actionAddEvent*(self: InputMap; action: StringName; event: gdref InputEvent): void =
  expandMethodBind(className InputMap, "action_add_event", 518302593)
  methodbind.ptrcall(self, [getPtr action, getPtr event])

proc actionHasEvent*(self: InputMap; action: StringName; event: gdref InputEvent): bool =
  expandMethodBind(className InputMap, "action_has_event", 1185871985)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr action, getPtr event], addr ret)
  (addr ret).decode_result(bool)

proc actionEraseEvent*(self: InputMap; action: StringName; event: gdref InputEvent): void =
  expandMethodBind(className InputMap, "action_erase_event", 518302593)
  methodbind.ptrcall(self, [getPtr action, getPtr event])

proc actionEraseEvents*(self: InputMap; action: StringName): void =
  expandMethodBind(className InputMap, "action_erase_events", 3304788590)
  methodbind.ptrcall(self, [getPtr action])

proc actionGetEvents*(self: InputMap; action: StringName): Array[gdref InputEvent] =
  expandMethodBind(className InputMap, "action_get_events", 689397652)
  var ret: encoded Array[gdref InputEvent]
  methodbind.ptrcall(self, [getPtr action], addr ret)
  (addr ret).decode_result(Array[gdref InputEvent])

proc eventIsAction*(self: InputMap; event: gdref InputEvent; action: StringName; exactMatch: bool = false): bool =
  expandMethodBind(className InputMap, "event_is_action", 3193353650)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr event, getPtr action, getPtr exactMatch], addr ret)
  (addr ret).decode_result(bool)

proc loadFromProjectSettings*(self: InputMap): void =
  expandMethodBind(className InputMap, "load_from_project_settings", 3218959716)
  methodbind.ptrcall(self, [])

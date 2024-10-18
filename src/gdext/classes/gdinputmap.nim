{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc hasAction*(self: InputMap; action: StringName): bool =
  expandMethodBind(className InputMap, "has_action", 2619796661)
  var `?param` = [getPtr action]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getActions*(self: InputMap): TypedArray[StringName] =
  expandMethodBind(className InputMap, "get_actions", 2915620761)
  var ret: encoded TypedArray[StringName]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[StringName])

proc addAction*(self: InputMap; action: StringName; deadzone: Float = 0.5): void =
  expandMethodBind(className InputMap, "add_action", 4100757082)
  var `?param` = [getPtr action, getPtr deadzone]
  methodbind.ptrcall(self, addr `?param`[0])

proc eraseAction*(self: InputMap; action: StringName): void =
  expandMethodBind(className InputMap, "erase_action", 3304788590)
  var `?param` = [getPtr action]
  methodbind.ptrcall(self, addr `?param`[0])

proc actionSetDeadzone*(self: InputMap; action: StringName; deadzone: Float): void =
  expandMethodBind(className InputMap, "action_set_deadzone", 4135858297)
  var `?param` = [getPtr action, getPtr deadzone]
  methodbind.ptrcall(self, addr `?param`[0])

proc actionGetDeadzone*(self: InputMap; action: StringName): Float =
  expandMethodBind(className InputMap, "action_get_deadzone", 1391627649)
  var `?param` = [getPtr action]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc actionAddEvent*(self: InputMap; action: StringName; event: gdref InputEvent): void =
  expandMethodBind(className InputMap, "action_add_event", 518302593)
  var `?param` = [getPtr action, getPtr event]
  methodbind.ptrcall(self, addr `?param`[0])

proc actionHasEvent*(self: InputMap; action: StringName; event: gdref InputEvent): bool =
  expandMethodBind(className InputMap, "action_has_event", 1185871985)
  var `?param` = [getPtr action, getPtr event]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc actionEraseEvent*(self: InputMap; action: StringName; event: gdref InputEvent): void =
  expandMethodBind(className InputMap, "action_erase_event", 518302593)
  var `?param` = [getPtr action, getPtr event]
  methodbind.ptrcall(self, addr `?param`[0])

proc actionEraseEvents*(self: InputMap; action: StringName): void =
  expandMethodBind(className InputMap, "action_erase_events", 3304788590)
  var `?param` = [getPtr action]
  methodbind.ptrcall(self, addr `?param`[0])

proc actionGetEvents*(self: InputMap; action: StringName): TypedArray[gdref InputEvent] =
  expandMethodBind(className InputMap, "action_get_events", 689397652)
  var `?param` = [getPtr action]
  var ret: encoded TypedArray[gdref InputEvent]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[gdref InputEvent])

proc eventIsAction*(self: InputMap; event: gdref InputEvent; action: StringName; exactMatch: bool = false): bool =
  expandMethodBind(className InputMap, "event_is_action", 3193353650)
  var `?param` = [getPtr event, getPtr action, getPtr exactMatch]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc loadFromProjectSettings*(self: InputMap): void =
  expandMethodBind(className InputMap, "load_from_project_settings", 3218959716)
  methodbind.ptrcall(self, nil)

const InputMap_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputMap]): Table[string, string] = InputMap_vmap
{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setEvents*(self: Shortcut; events: Array): void =
  expandMethodBind(className Shortcut, "set_events", 381264803)
  methodbind.ptrcall(self, [getPtr events])

proc getEvents*(self: Shortcut): Array =
  expandMethodBind(className Shortcut, "get_events", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

proc hasValidEvent*(self: Shortcut): bool =
  expandMethodBind(className Shortcut, "has_valid_event", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc matchesEvent*(self: Shortcut; event: gdref InputEvent): bool =
  expandMethodBind(className Shortcut, "matches_event", 3738334489)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr event], addr ret)
  (addr ret).decode_result(bool)

proc getAsText*(self: Shortcut): String =
  expandMethodBind(className Shortcut, "get_as_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

template events*(self: Shortcut): untyped = self.getEvents()
template `events=`*(self: Shortcut; value) = self.setEvents(value)

const Shortcut_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Shortcut]): Table[string, string] = Shortcut_vmap
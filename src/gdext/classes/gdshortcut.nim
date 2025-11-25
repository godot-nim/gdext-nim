{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Shortcut, Resource)

proc setEvents*(self: Shortcut; events: Array[Variant]): void =
  expandMethodBind(className Shortcut, "set_events", 381264803)
  nilCheck events
  methodbind.ptrcall(self, [getPtr events])

proc getEvents*(self: Shortcut): Array[Variant] =
  expandMethodBind(className Shortcut, "get_events", 3995934104)
  var ret: encoded Array[Variant]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[Variant])

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

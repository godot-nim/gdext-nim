{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Shortcut, Resource)

proc setEvents*(self: Shortcut; events: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shortcut, "set_events", 381264803)
  methodbind.ptrcall(self, [getPtr events], void)

proc getEvents*(self: Shortcut): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shortcut, "get_events", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc hasValidEvent*(self: Shortcut): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shortcut, "has_valid_event", 36873697)
  methodbind.ptrcall(self, [], bool)

proc matchesEvent*(self: Shortcut; event: gdref InputEvent): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shortcut, "matches_event", 3738334489)
  methodbind.ptrcall(self, [getPtr event], bool)

proc getAsText*(self: Shortcut): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Shortcut, "get_as_text", 201670096)
  methodbind.ptrcall(self, [], String)

template events*(self: Shortcut): untyped = self.getEvents()
template `events=`*(self: Shortcut; value) = self.setEvents(value)

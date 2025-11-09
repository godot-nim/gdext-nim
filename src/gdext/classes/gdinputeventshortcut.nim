{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputevent; export gdinputevent

expandOnClassImported(InputEventShortcut, InputEvent)

proc setShortcut*(self: InputEventShortcut; shortcut: gdref Shortcut): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventShortcut, "set_shortcut", 857163497)
  methodbind.ptrcall(self, [getPtr shortcut], void)

proc getShortcut*(self: InputEventShortcut): gdref Shortcut =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventShortcut, "get_shortcut", 3766804753)
  methodbind.ptrcall(self, [], gdref Shortcut)

template shortcut*(self: InputEventShortcut): untyped = self.getShortcut()
template `shortcut=`*(self: InputEventShortcut; value) = self.setShortcut(value)

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputevent; export gdinputevent
export InputEventShortcut

proc setShortcut*(self: InputEventShortcut; shortcut: gdref Shortcut): void =
  expandMethodBind(className InputEventShortcut, "set_shortcut", 857163497)
  methodbind.ptrcall(self, [getPtr shortcut])

proc getShortcut*(self: InputEventShortcut): gdref Shortcut =
  expandMethodBind(className InputEventShortcut, "get_shortcut", 3766804753)
  var ret: encoded gdref Shortcut
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Shortcut)

template shortcut*(self: InputEventShortcut): untyped = self.getShortcut()
template `shortcut=`*(self: InputEventShortcut; value) = self.setShortcut(value)

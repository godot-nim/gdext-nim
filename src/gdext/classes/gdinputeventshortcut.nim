{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdinputevent; export gdinputevent

proc setShortcut*(self: InputEventShortcut; shortcut: gdref Shortcut): void =
  expandMethodBind(className InputEventShortcut, "set_shortcut", 857163497)
  var `?param` = [getPtr shortcut]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShortcut*(self: InputEventShortcut): gdref Shortcut =
  expandMethodBind(className InputEventShortcut, "get_shortcut", 3766804753)
  var ret: encoded gdref Shortcut
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Shortcut)

template shortcut*(self: InputEventShortcut): untyped = self.getShortcut()
template `shortcut=`*(self: InputEventShortcut; value) = self.setShortcut(value)

const InputEventShortcut_vmap =
  InputEvent.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEventShortcut]): Table[string, string] = InputEventShortcut_vmap
{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputevent; export gdinputevent

proc setWindowId*(self: InputEventFromWindow; id: int64): void =
  expandMethodBind(className InputEventFromWindow, "set_window_id", 1286410249)
  methodbind.ptrcall(self, [getPtr id])

proc getWindowId*(self: InputEventFromWindow): int64 =
  expandMethodBind(className InputEventFromWindow, "get_window_id", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

template windowId*(self: InputEventFromWindow): untyped = self.getWindowId()
template `windowId=`*(self: InputEventFromWindow; value) = self.setWindowId(value)

const InputEventFromWindow_vmap =
  InputEvent.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEventFromWindow]): Table[string, string] = InputEventFromWindow_vmap
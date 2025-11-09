{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputevent; export gdinputevent

expandOnClassImported(InputEventFromWindow, InputEvent)

proc setWindowId*(self: InputEventFromWindow; id: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventFromWindow, "set_window_id", 1286410249)
  methodbind.ptrcall(self, [getPtr id], void)

proc getWindowId*(self: InputEventFromWindow): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventFromWindow, "get_window_id", 3905245786)
  methodbind.ptrcall(self, [], int64)

template windowId*(self: InputEventFromWindow): untyped = self.getWindowId()
template `windowId=`*(self: InputEventFromWindow; value) = self.setWindowId(value)

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputevent; export gdinputevent

expandOnClassImported(InputEventAction, InputEvent)

proc setAction*(self: InputEventAction; action: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventAction, "set_action", 3304788590)
  methodbind.ptrcall(self, [getPtr action], void)

proc getAction*(self: InputEventAction): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventAction, "get_action", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setPressed*(self: InputEventAction; pressed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventAction, "set_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed], void)

proc setStrength*(self: InputEventAction; strength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventAction, "set_strength", 373806689)
  methodbind.ptrcall(self, [getPtr strength], void)

proc getStrength*(self: InputEventAction): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventAction, "get_strength", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setEventIndex*(self: InputEventAction; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventAction, "set_event_index", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc getEventIndex*(self: InputEventAction): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventAction, "get_event_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

template action*(self: InputEventAction): untyped = self.getAction()
template `action=`*(self: InputEventAction; value) = self.setAction(value)

template pressed*(self: InputEventAction): untyped = self.isPressed()
template `pressed=`*(self: InputEventAction; value) = self.setPressed(value)

template strength*(self: InputEventAction): untyped = self.getStrength()
template `strength=`*(self: InputEventAction; value) = self.setStrength(value)

template eventIndex*(self: InputEventAction): untyped = self.getEventIndex()
template `eventIndex=`*(self: InputEventAction; value) = self.setEventIndex(value)

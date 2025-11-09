{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputevent; export gdinputevent

expandOnClassImported(InputEventMIDI, InputEvent)

proc setChannel*(self: InputEventMIDI; channel: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "set_channel", 1286410249)
  methodbind.ptrcall(self, [getPtr channel], void)

proc getChannel*(self: InputEventMIDI): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "get_channel", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMessage*(self: InputEventMIDI; message: MIDIMessage): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "set_message", 1064271510)
  methodbind.ptrcall(self, [getPtr message], void)

proc getMessage*(self: InputEventMIDI): MIDIMessage =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "get_message", 1936512097)
  methodbind.ptrcall(self, [], MIDIMessage)

proc setPitch*(self: InputEventMIDI; pitch: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "set_pitch", 1286410249)
  methodbind.ptrcall(self, [getPtr pitch], void)

proc getPitch*(self: InputEventMIDI): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "get_pitch", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setVelocity*(self: InputEventMIDI; velocity: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "set_velocity", 1286410249)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc getVelocity*(self: InputEventMIDI): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "get_velocity", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setInstrument*(self: InputEventMIDI; instrument: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "set_instrument", 1286410249)
  methodbind.ptrcall(self, [getPtr instrument], void)

proc getInstrument*(self: InputEventMIDI): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "get_instrument", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPressure*(self: InputEventMIDI; pressure: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "set_pressure", 1286410249)
  methodbind.ptrcall(self, [getPtr pressure], void)

proc getPressure*(self: InputEventMIDI): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "get_pressure", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setControllerNumber*(self: InputEventMIDI; controllerNumber: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "set_controller_number", 1286410249)
  methodbind.ptrcall(self, [getPtr controllerNumber], void)

proc getControllerNumber*(self: InputEventMIDI): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "get_controller_number", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setControllerValue*(self: InputEventMIDI; controllerValue: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "set_controller_value", 1286410249)
  methodbind.ptrcall(self, [getPtr controllerValue], void)

proc getControllerValue*(self: InputEventMIDI): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMIDI, "get_controller_value", 3905245786)
  methodbind.ptrcall(self, [], int32)

template channel*(self: InputEventMIDI): untyped = self.getChannel()
template `channel=`*(self: InputEventMIDI; value) = self.setChannel(value)

template message*(self: InputEventMIDI): untyped = self.getMessage()
template `message=`*(self: InputEventMIDI; value) = self.setMessage(value)

template pitch*(self: InputEventMIDI): untyped = self.getPitch()
template `pitch=`*(self: InputEventMIDI; value) = self.setPitch(value)

template velocity*(self: InputEventMIDI): untyped = self.getVelocity()
template `velocity=`*(self: InputEventMIDI; value) = self.setVelocity(value)

template instrument*(self: InputEventMIDI): untyped = self.getInstrument()
template `instrument=`*(self: InputEventMIDI; value) = self.setInstrument(value)

template pressure*(self: InputEventMIDI): untyped = self.getPressure()
template `pressure=`*(self: InputEventMIDI; value) = self.setPressure(value)

template controllerNumber*(self: InputEventMIDI): untyped = self.getControllerNumber()
template `controllerNumber=`*(self: InputEventMIDI; value) = self.setControllerNumber(value)

template controllerValue*(self: InputEventMIDI): untyped = self.getControllerValue()
template `controllerValue=`*(self: InputEventMIDI; value) = self.setControllerValue(value)

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputevent; export gdinputevent

proc setChannel*(self: InputEventMidi; channel: int32): void =
  expandMethodBind(className InputEventMidi, "set_channel", 1286410249)
  var `?param` = [getPtr channel]
  methodbind.ptrcall(self, addr `?param`[0])

proc getChannel*(self: InputEventMidi): int32 =
  expandMethodBind(className InputEventMidi, "get_channel", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMessage*(self: InputEventMidi; message: MidiMessage): void =
  expandMethodBind(className InputEventMidi, "set_message", 1064271510)
  var `?param` = [getPtr message]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMessage*(self: InputEventMidi): MidiMessage =
  expandMethodBind(className InputEventMidi, "get_message", 1936512097)
  var ret: encoded MidiMessage
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(MidiMessage)

proc setPitch*(self: InputEventMidi; pitch: int32): void =
  expandMethodBind(className InputEventMidi, "set_pitch", 1286410249)
  var `?param` = [getPtr pitch]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPitch*(self: InputEventMidi): int32 =
  expandMethodBind(className InputEventMidi, "get_pitch", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setVelocity*(self: InputEventMidi; velocity: int32): void =
  expandMethodBind(className InputEventMidi, "set_velocity", 1286410249)
  var `?param` = [getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVelocity*(self: InputEventMidi): int32 =
  expandMethodBind(className InputEventMidi, "get_velocity", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setInstrument*(self: InputEventMidi; instrument: int32): void =
  expandMethodBind(className InputEventMidi, "set_instrument", 1286410249)
  var `?param` = [getPtr instrument]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInstrument*(self: InputEventMidi): int32 =
  expandMethodBind(className InputEventMidi, "get_instrument", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setPressure*(self: InputEventMidi; pressure: int32): void =
  expandMethodBind(className InputEventMidi, "set_pressure", 1286410249)
  var `?param` = [getPtr pressure]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPressure*(self: InputEventMidi): int32 =
  expandMethodBind(className InputEventMidi, "get_pressure", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setControllerNumber*(self: InputEventMidi; controllerNumber: int32): void =
  expandMethodBind(className InputEventMidi, "set_controller_number", 1286410249)
  var `?param` = [getPtr controllerNumber]
  methodbind.ptrcall(self, addr `?param`[0])

proc getControllerNumber*(self: InputEventMidi): int32 =
  expandMethodBind(className InputEventMidi, "get_controller_number", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setControllerValue*(self: InputEventMidi; controllerValue: int32): void =
  expandMethodBind(className InputEventMidi, "set_controller_value", 1286410249)
  var `?param` = [getPtr controllerValue]
  methodbind.ptrcall(self, addr `?param`[0])

proc getControllerValue*(self: InputEventMidi): int32 =
  expandMethodBind(className InputEventMidi, "get_controller_value", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template channel*(self: InputEventMidi): untyped = self.getChannel()
template `channel=`*(self: InputEventMidi; value) = self.setChannel(value)

template message*(self: InputEventMidi): untyped = self.getMessage()
template `message=`*(self: InputEventMidi; value) = self.setMessage(value)

template pitch*(self: InputEventMidi): untyped = self.getPitch()
template `pitch=`*(self: InputEventMidi; value) = self.setPitch(value)

template velocity*(self: InputEventMidi): untyped = self.getVelocity()
template `velocity=`*(self: InputEventMidi; value) = self.setVelocity(value)

template instrument*(self: InputEventMidi): untyped = self.getInstrument()
template `instrument=`*(self: InputEventMidi; value) = self.setInstrument(value)

template pressure*(self: InputEventMidi): untyped = self.getPressure()
template `pressure=`*(self: InputEventMidi; value) = self.setPressure(value)

template controllerNumber*(self: InputEventMidi): untyped = self.getControllerNumber()
template `controllerNumber=`*(self: InputEventMidi; value) = self.setControllerNumber(value)

template controllerValue*(self: InputEventMidi): untyped = self.getControllerValue()
template `controllerValue=`*(self: InputEventMidi; value) = self.setControllerValue(value)

const InputEventMidi_vmap =
  InputEvent.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEventMidi]): Table[string, string] = InputEventMidi_vmap
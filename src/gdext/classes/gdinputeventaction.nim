{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdinputevent; export gdinputevent

proc setAction*(self: InputEventAction; action: StringName): void =
  expandMethodBind(className InputEventAction, "set_action", 3304788590)
  var `?param` = [getPtr action]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAction*(self: InputEventAction): StringName =
  expandMethodBind(className InputEventAction, "get_action", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setPressed*(self: InputEventAction; pressed: bool): void =
  expandMethodBind(className InputEventAction, "set_pressed", 2586408642)
  var `?param` = [getPtr pressed]
  methodbind.ptrcall(self, addr `?param`[0])

proc setStrength*(self: InputEventAction; strength: Float): void =
  expandMethodBind(className InputEventAction, "set_strength", 373806689)
  var `?param` = [getPtr strength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStrength*(self: InputEventAction): Float =
  expandMethodBind(className InputEventAction, "get_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEventIndex*(self: InputEventAction; index: int32): void =
  expandMethodBind(className InputEventAction, "set_event_index", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEventIndex*(self: InputEventAction): int32 =
  expandMethodBind(className InputEventAction, "get_event_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template action*(self: InputEventAction): untyped = self.getAction()
template `action=`*(self: InputEventAction; value) = self.setAction(value)

template pressed*(self: InputEventAction): untyped = self.isPressed()
template `pressed=`*(self: InputEventAction; value) = self.setPressed(value)

template strength*(self: InputEventAction): untyped = self.getStrength()
template `strength=`*(self: InputEventAction; value) = self.setStrength(value)

template eventIndex*(self: InputEventAction): untyped = self.getEventIndex()
template `eventIndex=`*(self: InputEventAction; value) = self.setEventIndex(value)

const InputEventAction_vmap =
  InputEvent.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEventAction]): Table[string, string] = InputEventAction_vmap
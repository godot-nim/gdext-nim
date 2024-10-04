{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdinputeventwithmodifiers; export gdinputeventwithmodifiers

proc setButtonMask*(self: InputEventMouse; buttonMask: set[MouseButtonMask]): void =
  expandMethodBind(className InputEventMouse, "set_button_mask", 3950145251)
  var `?param` = [getPtr buttonMask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getButtonMask*(self: InputEventMouse): set[MouseButtonMask] =
  expandMethodBind(className InputEventMouse, "get_button_mask", 2512161324)
  var ret: encoded set[MouseButtonMask]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[MouseButtonMask])

proc setPosition*(self: InputEventMouse; position: Vector2): void =
  expandMethodBind(className InputEventMouse, "set_position", 743155724)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPosition*(self: InputEventMouse): Vector2 =
  expandMethodBind(className InputEventMouse, "get_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setGlobalPosition*(self: InputEventMouse; globalPosition: Vector2): void =
  expandMethodBind(className InputEventMouse, "set_global_position", 743155724)
  var `?param` = [getPtr globalPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlobalPosition*(self: InputEventMouse): Vector2 =
  expandMethodBind(className InputEventMouse, "get_global_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

template buttonMask*(self: InputEventMouse): untyped = self.getButtonMask()
template `buttonMask=`*(self: InputEventMouse; value) = self.setButtonMask(value)

template position*(self: InputEventMouse): untyped = self.getPosition()
template `position=`*(self: InputEventMouse; value) = self.setPosition(value)

template globalPosition*(self: InputEventMouse): untyped = self.getGlobalPosition()
template `globalPosition=`*(self: InputEventMouse; value) = self.setGlobalPosition(value)

const InputEventMouse_vmap =
  InputEventWithModifiers.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEventMouse]): Table[string, string] = InputEventMouse_vmap
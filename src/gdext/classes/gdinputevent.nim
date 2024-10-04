{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc setDevice*(self: InputEvent; device: int32): void =
  expandMethodBind(className InputEvent, "set_device", 1286410249)
  var `?param` = [getPtr device]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDevice*(self: InputEvent): int32 =
  expandMethodBind(className InputEvent, "get_device", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc isAction*(self: InputEvent; action: StringName; exactMatch: bool = false): bool =
  expandMethodBind(className InputEvent, "is_action", 1558498928)
  var `?param` = [getPtr action, getPtr exactMatch]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isActionPressed*(self: InputEvent; action: StringName; allowEcho: bool = false; exactMatch: bool = false): bool =
  expandMethodBind(className InputEvent, "is_action_pressed", 1631499404)
  var `?param` = [getPtr action, getPtr allowEcho, getPtr exactMatch]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isActionReleased*(self: InputEvent; action: StringName; exactMatch: bool = false): bool =
  expandMethodBind(className InputEvent, "is_action_released", 1558498928)
  var `?param` = [getPtr action, getPtr exactMatch]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getActionStrength*(self: InputEvent; action: StringName; exactMatch: bool = false): Float =
  expandMethodBind(className InputEvent, "get_action_strength", 801543509)
  var `?param` = [getPtr action, getPtr exactMatch]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc isCanceled*(self: InputEvent): bool =
  expandMethodBind(className InputEvent, "is_canceled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isPressed*(self: InputEvent): bool =
  expandMethodBind(className InputEvent, "is_pressed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isReleased*(self: InputEvent): bool =
  expandMethodBind(className InputEvent, "is_released", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isEcho*(self: InputEvent): bool =
  expandMethodBind(className InputEvent, "is_echo", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc asText*(self: InputEvent): String =
  expandMethodBind(className InputEvent, "as_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc isMatch*(self: InputEvent; event: gdref InputEvent; exactMatch: bool = true): bool =
  expandMethodBind(className InputEvent, "is_match", 1754951977)
  var `?param` = [getPtr event, getPtr exactMatch]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isActionType*(self: InputEvent): bool =
  expandMethodBind(className InputEvent, "is_action_type", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc accumulate*(self: InputEvent; withEvent: gdref InputEvent): bool =
  expandMethodBind(className InputEvent, "accumulate", 1062211774)
  var `?param` = [getPtr withEvent]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc xformedBy*(self: InputEvent; xform: Transform2D; localOfs: Vector2 = vector2(0, 0)): gdref InputEvent =
  expandMethodBind(className InputEvent, "xformed_by", 1282766827)
  var `?param` = [getPtr xform, getPtr localOfs]
  var ret: encoded gdref InputEvent
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref InputEvent)

template device*(self: InputEvent): untyped = self.getDevice()
template `device=`*(self: InputEvent; value) = self.setDevice(value)

const InputEvent_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEvent]): Table[string, string] = InputEvent_vmap
{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(InputEvent, Resource)

const DeviceIdEmulation* = -1

proc setDevice*(self: InputEvent; device: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "set_device", 1286410249)
  methodbind.ptrcall(self, [getPtr device], void)

proc getDevice*(self: InputEvent): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "get_device", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc isAction*(self: InputEvent; action: StringName; exactMatch: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "is_action", 1558498928)
  methodbind.ptrcall(self, [getPtr action, getPtr exactMatch], bool)

proc isActionPressed*(self: InputEvent; action: StringName; allowEcho: bool = false; exactMatch: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "is_action_pressed", 1631499404)
  methodbind.ptrcall(self, [getPtr action, getPtr allowEcho, getPtr exactMatch], bool)

proc isActionReleased*(self: InputEvent; action: StringName; exactMatch: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "is_action_released", 1558498928)
  methodbind.ptrcall(self, [getPtr action, getPtr exactMatch], bool)

proc getActionStrength*(self: InputEvent; action: StringName; exactMatch: bool = false): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "get_action_strength", 801543509)
  methodbind.ptrcall(self, [getPtr action, getPtr exactMatch], Float)

proc isCanceled*(self: InputEvent): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "is_canceled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isPressed*(self: InputEvent): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "is_pressed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isReleased*(self: InputEvent): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "is_released", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isEcho*(self: InputEvent): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "is_echo", 36873697)
  methodbind.ptrcall(self, [], bool)

proc asText*(self: InputEvent): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "as_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc isMatch*(self: InputEvent; event: gdref InputEvent; exactMatch: bool = true): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "is_match", 1754951977)
  methodbind.ptrcall(self, [getPtr event, getPtr exactMatch], bool)

proc isActionType*(self: InputEvent): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "is_action_type", 36873697)
  methodbind.ptrcall(self, [], bool)

proc accumulate*(self: InputEvent; withEvent: gdref InputEvent): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "accumulate", 1062211774)
  methodbind.ptrcall(self, [getPtr withEvent], bool)

proc xformedBy*(self: InputEvent; xform: Transform2D; localOfs: Vector2 = vector2(0, 0)): gdref InputEvent =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEvent, "xformed_by", 1282766827)
  methodbind.ptrcall(self, [getPtr xform, getPtr localOfs], gdref InputEvent)

template device*(self: InputEvent): untyped = self.getDevice()
template `device=`*(self: InputEvent; value) = self.setDevice(value)

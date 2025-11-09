{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventwithmodifiers; export gdinputeventwithmodifiers

expandOnClassImported(InputEventMouse, InputEventWithModifiers)

proc setButtonMask*(self: InputEventMouse; buttonMask: set[MouseButtonMask]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouse, "set_button_mask", 3950145251)
  methodbind.ptrcall(self, [getPtr buttonMask], void)

proc getButtonMask*(self: InputEventMouse): set[MouseButtonMask] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouse, "get_button_mask", 2512161324)
  methodbind.ptrcall(self, [], set[MouseButtonMask])

proc setPosition*(self: InputEventMouse; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouse, "set_position", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc getPosition*(self: InputEventMouse): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouse, "get_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setGlobalPosition*(self: InputEventMouse; globalPosition: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouse, "set_global_position", 743155724)
  methodbind.ptrcall(self, [getPtr globalPosition], void)

proc getGlobalPosition*(self: InputEventMouse): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouse, "get_global_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

template buttonMask*(self: InputEventMouse): untyped = self.getButtonMask()
template `buttonMask=`*(self: InputEventMouse; value) = self.setButtonMask(value)

template position*(self: InputEventMouse): untyped = self.getPosition()
template `position=`*(self: InputEventMouse; value) = self.setPosition(value)

template globalPosition*(self: InputEventMouse): untyped = self.getGlobalPosition()
template `globalPosition=`*(self: InputEventMouse; value) = self.setGlobalPosition(value)

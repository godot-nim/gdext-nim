{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventgesture; export gdinputeventgesture

expandOnClassImported(InputEventMagnifyGesture, InputEventGesture)

proc setFactor*(self: InputEventMagnifyGesture; factor: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMagnifyGesture, "set_factor", 373806689)
  methodbind.ptrcall(self, [getPtr factor], void)

proc getFactor*(self: InputEventMagnifyGesture): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMagnifyGesture, "get_factor", 1740695150)
  methodbind.ptrcall(self, [], Float)

template factor*(self: InputEventMagnifyGesture): untyped = self.getFactor()
template `factor=`*(self: InputEventMagnifyGesture; value) = self.setFactor(value)

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrhapticbase; export gdopenxrhapticbase

expandOnClassImported(OpenXRHapticVibration, OpenXRHapticBase)

proc setDuration*(self: OpenXRHapticVibration; duration: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHapticVibration, "set_duration", 1286410249)
  methodbind.ptrcall(self, [getPtr duration], void)

proc getDuration*(self: OpenXRHapticVibration): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHapticVibration, "get_duration", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc setFrequency*(self: OpenXRHapticVibration; frequency: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHapticVibration, "set_frequency", 373806689)
  methodbind.ptrcall(self, [getPtr frequency], void)

proc getFrequency*(self: OpenXRHapticVibration): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHapticVibration, "get_frequency", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAmplitude*(self: OpenXRHapticVibration; amplitude: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHapticVibration, "set_amplitude", 373806689)
  methodbind.ptrcall(self, [getPtr amplitude], void)

proc getAmplitude*(self: OpenXRHapticVibration): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHapticVibration, "get_amplitude", 1740695150)
  methodbind.ptrcall(self, [], Float)

template duration*(self: OpenXRHapticVibration): untyped = self.getDuration()
template `duration=`*(self: OpenXRHapticVibration; value) = self.setDuration(value)

template frequency*(self: OpenXRHapticVibration): untyped = self.getFrequency()
template `frequency=`*(self: OpenXRHapticVibration; value) = self.setFrequency(value)

template amplitude*(self: OpenXRHapticVibration): untyped = self.getAmplitude()
template `amplitude=`*(self: OpenXRHapticVibration; value) = self.setAmplitude(value)

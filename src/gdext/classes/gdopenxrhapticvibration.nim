{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrhapticbase; export gdopenxrhapticbase

expandOnClassImported(OpenXRHapticVibration, OpenXRHapticBase)

proc setDuration*(self: OpenXRHapticVibration; duration: int64): void =
  expandMethodBind(className OpenXRHapticVibration, "set_duration", 1286410249)
  methodbind.ptrcall(self, [getPtr duration])

proc getDuration*(self: OpenXRHapticVibration): int64 =
  expandMethodBind(className OpenXRHapticVibration, "get_duration", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc setFrequency*(self: OpenXRHapticVibration; frequency: Float): void =
  expandMethodBind(className OpenXRHapticVibration, "set_frequency", 373806689)
  methodbind.ptrcall(self, [getPtr frequency])

proc getFrequency*(self: OpenXRHapticVibration): Float =
  expandMethodBind(className OpenXRHapticVibration, "get_frequency", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setAmplitude*(self: OpenXRHapticVibration; amplitude: Float): void =
  expandMethodBind(className OpenXRHapticVibration, "set_amplitude", 373806689)
  methodbind.ptrcall(self, [getPtr amplitude])

proc getAmplitude*(self: OpenXRHapticVibration): Float =
  expandMethodBind(className OpenXRHapticVibration, "get_amplitude", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template duration*(self: OpenXRHapticVibration): untyped = self.getDuration()
template `duration=`*(self: OpenXRHapticVibration; value) = self.setDuration(value)

template frequency*(self: OpenXRHapticVibration): untyped = self.getFrequency()
template `frequency=`*(self: OpenXRHapticVibration; value) = self.setFrequency(value)

template amplitude*(self: OpenXRHapticVibration): untyped = self.getAmplitude()
template `amplitude=`*(self: OpenXRHapticVibration; value) = self.setAmplitude(value)

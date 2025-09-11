{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxractionbindingmodifier; export gdopenxractionbindingmodifier

expandOnClassImported(OpenXRAnalogThresholdModifier, OpenXRActionBindingModifier)

proc setOnThreshold*(self: OpenXRAnalogThresholdModifier; onThreshold: Float): void =
  expandMethodBind(className OpenXRAnalogThresholdModifier, "set_on_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr onThreshold])

proc getOnThreshold*(self: OpenXRAnalogThresholdModifier): Float =
  expandMethodBind(className OpenXRAnalogThresholdModifier, "get_on_threshold", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setOffThreshold*(self: OpenXRAnalogThresholdModifier; offThreshold: Float): void =
  expandMethodBind(className OpenXRAnalogThresholdModifier, "set_off_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr offThreshold])

proc getOffThreshold*(self: OpenXRAnalogThresholdModifier): Float =
  expandMethodBind(className OpenXRAnalogThresholdModifier, "get_off_threshold", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setOnHaptic*(self: OpenXRAnalogThresholdModifier; haptic: gdref OpenXRHapticBase): void =
  expandMethodBind(className OpenXRAnalogThresholdModifier, "set_on_haptic", 2998020150)
  methodbind.ptrcall(self, [getPtr haptic])

proc getOnHaptic*(self: OpenXRAnalogThresholdModifier): gdref OpenXRHapticBase =
  expandMethodBind(className OpenXRAnalogThresholdModifier, "get_on_haptic", 922310751)
  var ret: encoded gdref OpenXRHapticBase
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref OpenXRHapticBase)

proc setOffHaptic*(self: OpenXRAnalogThresholdModifier; haptic: gdref OpenXRHapticBase): void =
  expandMethodBind(className OpenXRAnalogThresholdModifier, "set_off_haptic", 2998020150)
  methodbind.ptrcall(self, [getPtr haptic])

proc getOffHaptic*(self: OpenXRAnalogThresholdModifier): gdref OpenXRHapticBase =
  expandMethodBind(className OpenXRAnalogThresholdModifier, "get_off_haptic", 922310751)
  var ret: encoded gdref OpenXRHapticBase
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref OpenXRHapticBase)

template onThreshold*(self: OpenXRAnalogThresholdModifier): untyped = self.getOnThreshold()
template `onThreshold=`*(self: OpenXRAnalogThresholdModifier; value) = self.setOnThreshold(value)

template offThreshold*(self: OpenXRAnalogThresholdModifier): untyped = self.getOffThreshold()
template `offThreshold=`*(self: OpenXRAnalogThresholdModifier; value) = self.setOffThreshold(value)

template onHaptic*(self: OpenXRAnalogThresholdModifier): untyped = self.getOnHaptic()
template `onHaptic=`*(self: OpenXRAnalogThresholdModifier; value) = self.setOnHaptic(value)

template offHaptic*(self: OpenXRAnalogThresholdModifier): untyped = self.getOffHaptic()
template `offHaptic=`*(self: OpenXRAnalogThresholdModifier; value) = self.setOffHaptic(value)

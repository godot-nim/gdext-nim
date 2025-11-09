{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxractionbindingmodifier; export gdopenxractionbindingmodifier

expandOnClassImported(OpenXRAnalogThresholdModifier, OpenXRActionBindingModifier)

proc setOnThreshold*(self: OpenXRAnalogThresholdModifier; onThreshold: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAnalogThresholdModifier, "set_on_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr onThreshold], void)

proc getOnThreshold*(self: OpenXRAnalogThresholdModifier): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAnalogThresholdModifier, "get_on_threshold", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setOffThreshold*(self: OpenXRAnalogThresholdModifier; offThreshold: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAnalogThresholdModifier, "set_off_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr offThreshold], void)

proc getOffThreshold*(self: OpenXRAnalogThresholdModifier): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAnalogThresholdModifier, "get_off_threshold", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setOnHaptic*(self: OpenXRAnalogThresholdModifier; haptic: gdref OpenXRHapticBase): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAnalogThresholdModifier, "set_on_haptic", 2998020150)
  methodbind.ptrcall(self, [getPtr haptic], void)

proc getOnHaptic*(self: OpenXRAnalogThresholdModifier): gdref OpenXRHapticBase =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAnalogThresholdModifier, "get_on_haptic", 922310751)
  methodbind.ptrcall(self, [], gdref OpenXRHapticBase)

proc setOffHaptic*(self: OpenXRAnalogThresholdModifier; haptic: gdref OpenXRHapticBase): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAnalogThresholdModifier, "set_off_haptic", 2998020150)
  methodbind.ptrcall(self, [getPtr haptic], void)

proc getOffHaptic*(self: OpenXRAnalogThresholdModifier): gdref OpenXRHapticBase =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAnalogThresholdModifier, "get_off_haptic", 922310751)
  methodbind.ptrcall(self, [], gdref OpenXRHapticBase)

template onThreshold*(self: OpenXRAnalogThresholdModifier): untyped = self.getOnThreshold()
template `onThreshold=`*(self: OpenXRAnalogThresholdModifier; value) = self.setOnThreshold(value)

template offThreshold*(self: OpenXRAnalogThresholdModifier): untyped = self.getOffThreshold()
template `offThreshold=`*(self: OpenXRAnalogThresholdModifier; value) = self.setOffThreshold(value)

template onHaptic*(self: OpenXRAnalogThresholdModifier): untyped = self.getOnHaptic()
template `onHaptic=`*(self: OpenXRAnalogThresholdModifier; value) = self.setOnHaptic(value)

template offHaptic*(self: OpenXRAnalogThresholdModifier): untyped = self.getOffHaptic()
template `offHaptic=`*(self: OpenXRAnalogThresholdModifier; value) = self.setOffHaptic(value)

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxripbindingmodifier; export gdopenxripbindingmodifier

expandOnClassImported(OpenXRDpadBindingModifier, OpenXRIPBindingModifier)

proc setActionSet*(self: OpenXRDpadBindingModifier; actionSet: gdref OpenXRActionSet): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "set_action_set", 2093310581)
  methodbind.ptrcall(self, [getPtr actionSet], void)

proc getActionSet*(self: OpenXRDpadBindingModifier): gdref OpenXRActionSet =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "get_action_set", 619941079)
  methodbind.ptrcall(self, [], gdref OpenXRActionSet)

proc setInputPath*(self: OpenXRDpadBindingModifier; inputPath: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "set_input_path", 83702148)
  methodbind.ptrcall(self, [getPtr inputPath], void)

proc getInputPath*(self: OpenXRDpadBindingModifier): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "get_input_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc setThreshold*(self: OpenXRDpadBindingModifier; threshold: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "set_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr threshold], void)

proc getThreshold*(self: OpenXRDpadBindingModifier): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "get_threshold", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setThresholdReleased*(self: OpenXRDpadBindingModifier; thresholdReleased: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "set_threshold_released", 373806689)
  methodbind.ptrcall(self, [getPtr thresholdReleased], void)

proc getThresholdReleased*(self: OpenXRDpadBindingModifier): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "get_threshold_released", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setCenterRegion*(self: OpenXRDpadBindingModifier; centerRegion: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "set_center_region", 373806689)
  methodbind.ptrcall(self, [getPtr centerRegion], void)

proc getCenterRegion*(self: OpenXRDpadBindingModifier): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "get_center_region", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setWedgeAngle*(self: OpenXRDpadBindingModifier; wedgeAngle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "set_wedge_angle", 373806689)
  methodbind.ptrcall(self, [getPtr wedgeAngle], void)

proc getWedgeAngle*(self: OpenXRDpadBindingModifier): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "get_wedge_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setIsSticky*(self: OpenXRDpadBindingModifier; isSticky: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "set_is_sticky", 2586408642)
  methodbind.ptrcall(self, [getPtr isSticky], void)

proc getIsSticky*(self: OpenXRDpadBindingModifier): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "get_is_sticky", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setOnHaptic*(self: OpenXRDpadBindingModifier; haptic: gdref OpenXRHapticBase): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "set_on_haptic", 2998020150)
  methodbind.ptrcall(self, [getPtr haptic], void)

proc getOnHaptic*(self: OpenXRDpadBindingModifier): gdref OpenXRHapticBase =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "get_on_haptic", 922310751)
  methodbind.ptrcall(self, [], gdref OpenXRHapticBase)

proc setOffHaptic*(self: OpenXRDpadBindingModifier; haptic: gdref OpenXRHapticBase): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "set_off_haptic", 2998020150)
  methodbind.ptrcall(self, [getPtr haptic], void)

proc getOffHaptic*(self: OpenXRDpadBindingModifier): gdref OpenXRHapticBase =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRDpadBindingModifier, "get_off_haptic", 922310751)
  methodbind.ptrcall(self, [], gdref OpenXRHapticBase)

template actionSet*(self: OpenXRDpadBindingModifier): untyped = self.getActionSet()
template `actionSet=`*(self: OpenXRDpadBindingModifier; value) = self.setActionSet(value)

template inputPath*(self: OpenXRDpadBindingModifier): untyped = self.getInputPath()
template `inputPath=`*(self: OpenXRDpadBindingModifier; value) = self.setInputPath(value)

template threshold*(self: OpenXRDpadBindingModifier): untyped = self.getThreshold()
template `threshold=`*(self: OpenXRDpadBindingModifier; value) = self.setThreshold(value)

template thresholdReleased*(self: OpenXRDpadBindingModifier): untyped = self.getThresholdReleased()
template `thresholdReleased=`*(self: OpenXRDpadBindingModifier; value) = self.setThresholdReleased(value)

template centerRegion*(self: OpenXRDpadBindingModifier): untyped = self.getCenterRegion()
template `centerRegion=`*(self: OpenXRDpadBindingModifier; value) = self.setCenterRegion(value)

template wedgeAngle*(self: OpenXRDpadBindingModifier): untyped = self.getWedgeAngle()
template `wedgeAngle=`*(self: OpenXRDpadBindingModifier; value) = self.setWedgeAngle(value)

template isSticky*(self: OpenXRDpadBindingModifier): untyped = self.getIsSticky()
template `isSticky=`*(self: OpenXRDpadBindingModifier; value) = self.setIsSticky(value)

template onHaptic*(self: OpenXRDpadBindingModifier): untyped = self.getOnHaptic()
template `onHaptic=`*(self: OpenXRDpadBindingModifier; value) = self.setOnHaptic(value)

template offHaptic*(self: OpenXRDpadBindingModifier): untyped = self.getOffHaptic()
template `offHaptic=`*(self: OpenXRDpadBindingModifier; value) = self.setOffHaptic(value)

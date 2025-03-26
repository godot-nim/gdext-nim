{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxripbindingmodifier; export gdopenxripbindingmodifier

proc setActionSet*(self: OpenXRDpadBindingModifier; actionSet: gdref OpenXRActionSet): void =
  expandMethodBind(className OpenXRDpadBindingModifier, "set_action_set", 2093310581)
  methodbind.ptrcall(self, [getPtr actionSet])

proc getActionSet*(self: OpenXRDpadBindingModifier): gdref OpenXRActionSet =
  expandMethodBind(className OpenXRDpadBindingModifier, "get_action_set", 619941079)
  var ret: encoded gdref OpenXRActionSet
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref OpenXRActionSet)

proc setInputPath*(self: OpenXRDpadBindingModifier; inputPath: String): void =
  expandMethodBind(className OpenXRDpadBindingModifier, "set_input_path", 83702148)
  methodbind.ptrcall(self, [getPtr inputPath])

proc getInputPath*(self: OpenXRDpadBindingModifier): String =
  expandMethodBind(className OpenXRDpadBindingModifier, "get_input_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setThreshold*(self: OpenXRDpadBindingModifier; threshold: Float): void =
  expandMethodBind(className OpenXRDpadBindingModifier, "set_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr threshold])

proc getThreshold*(self: OpenXRDpadBindingModifier): Float =
  expandMethodBind(className OpenXRDpadBindingModifier, "get_threshold", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setThresholdReleased*(self: OpenXRDpadBindingModifier; thresholdReleased: Float): void =
  expandMethodBind(className OpenXRDpadBindingModifier, "set_threshold_released", 373806689)
  methodbind.ptrcall(self, [getPtr thresholdReleased])

proc getThresholdReleased*(self: OpenXRDpadBindingModifier): Float =
  expandMethodBind(className OpenXRDpadBindingModifier, "get_threshold_released", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setCenterRegion*(self: OpenXRDpadBindingModifier; centerRegion: Float): void =
  expandMethodBind(className OpenXRDpadBindingModifier, "set_center_region", 373806689)
  methodbind.ptrcall(self, [getPtr centerRegion])

proc getCenterRegion*(self: OpenXRDpadBindingModifier): Float =
  expandMethodBind(className OpenXRDpadBindingModifier, "get_center_region", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setWedgeAngle*(self: OpenXRDpadBindingModifier; wedgeAngle: Float): void =
  expandMethodBind(className OpenXRDpadBindingModifier, "set_wedge_angle", 373806689)
  methodbind.ptrcall(self, [getPtr wedgeAngle])

proc getWedgeAngle*(self: OpenXRDpadBindingModifier): Float =
  expandMethodBind(className OpenXRDpadBindingModifier, "get_wedge_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setIsSticky*(self: OpenXRDpadBindingModifier; isSticky: bool): void =
  expandMethodBind(className OpenXRDpadBindingModifier, "set_is_sticky", 2586408642)
  methodbind.ptrcall(self, [getPtr isSticky])

proc getIsSticky*(self: OpenXRDpadBindingModifier): bool =
  expandMethodBind(className OpenXRDpadBindingModifier, "get_is_sticky", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setOnHaptic*(self: OpenXRDpadBindingModifier; haptic: gdref OpenXRHapticBase): void =
  expandMethodBind(className OpenXRDpadBindingModifier, "set_on_haptic", 2998020150)
  methodbind.ptrcall(self, [getPtr haptic])

proc getOnHaptic*(self: OpenXRDpadBindingModifier): gdref OpenXRHapticBase =
  expandMethodBind(className OpenXRDpadBindingModifier, "get_on_haptic", 922310751)
  var ret: encoded gdref OpenXRHapticBase
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref OpenXRHapticBase)

proc setOffHaptic*(self: OpenXRDpadBindingModifier; haptic: gdref OpenXRHapticBase): void =
  expandMethodBind(className OpenXRDpadBindingModifier, "set_off_haptic", 2998020150)
  methodbind.ptrcall(self, [getPtr haptic])

proc getOffHaptic*(self: OpenXRDpadBindingModifier): gdref OpenXRHapticBase =
  expandMethodBind(className OpenXRDpadBindingModifier, "get_off_haptic", 922310751)
  var ret: encoded gdref OpenXRHapticBase
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref OpenXRHapticBase)

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

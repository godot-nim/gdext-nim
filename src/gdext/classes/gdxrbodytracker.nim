{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrpositionaltracker; export gdxrpositionaltracker

expandOnClassImported(XRBodyTracker, XRPositionalTracker)

proc setHasTrackingData*(self: XRBodyTracker; hasData: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRBodyTracker, "set_has_tracking_data", 2586408642)
  methodbind.ptrcall(self, [getPtr hasData], void)

proc getHasTrackingData*(self: XRBodyTracker): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRBodyTracker, "get_has_tracking_data", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setBodyFlags*(self: XRBodyTracker; flags: set[XRBodyTracker_BodyFlags]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRBodyTracker, "set_body_flags", 2103235750)
  methodbind.ptrcall(self, [getPtr flags], void)

proc getBodyFlags*(self: XRBodyTracker): set[XRBodyTracker_BodyFlags] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRBodyTracker, "get_body_flags", 3543166366)
  methodbind.ptrcall(self, [], set[XRBodyTracker_BodyFlags])

proc setJointFlags*(self: XRBodyTracker; joint: XRBodyTracker_Joint; flags: set[XRBodyTracker_JointFlags]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRBodyTracker, "set_joint_flags", 592144999)
  methodbind.ptrcall(self, [getPtr joint, getPtr flags], void)

proc getJointFlags*(self: XRBodyTracker; joint: XRBodyTracker_Joint): set[XRBodyTracker_JointFlags] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRBodyTracker, "get_joint_flags", 1030162609)
  methodbind.ptrcall(self, [getPtr joint], set[XRBodyTracker_JointFlags])

proc setJointTransform*(self: XRBodyTracker; joint: XRBodyTracker_Joint; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRBodyTracker, "set_joint_transform", 2635424328)
  methodbind.ptrcall(self, [getPtr joint, getPtr transform], void)

proc getJointTransform*(self: XRBodyTracker; joint: XRBodyTracker_Joint): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRBodyTracker, "get_joint_transform", 3474811534)
  methodbind.ptrcall(self, [getPtr joint], Transform3D)

template hasTrackingData*(self: XRBodyTracker): untyped = self.getHasTrackingData()
template `hasTrackingData=`*(self: XRBodyTracker; value) = self.setHasTrackingData(value)

template bodyFlags*(self: XRBodyTracker): untyped = self.getBodyFlags()
template `bodyFlags=`*(self: XRBodyTracker; value) = self.setBodyFlags(value)

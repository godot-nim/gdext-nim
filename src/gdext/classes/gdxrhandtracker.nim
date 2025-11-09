{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrpositionaltracker; export gdxrpositionaltracker

expandOnClassImported(XRHandTracker, XRPositionalTracker)

proc setHasTrackingData*(self: XRHandTracker; hasData: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandTracker, "set_has_tracking_data", 2586408642)
  methodbind.ptrcall(self, [getPtr hasData], void)

proc getHasTrackingData*(self: XRHandTracker): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandTracker, "get_has_tracking_data", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHandTrackingSource*(self: XRHandTracker; source: XRHandTracker_HandTrackingSource): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandTracker, "set_hand_tracking_source", 2958308861)
  methodbind.ptrcall(self, [getPtr source], void)

proc getHandTrackingSource*(self: XRHandTracker): XRHandTracker_HandTrackingSource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandTracker, "get_hand_tracking_source", 2475045250)
  methodbind.ptrcall(self, [], XRHandTracker_HandTrackingSource)

proc setHandJointFlags*(self: XRHandTracker; joint: XRHandTracker_HandJoint; flags: set[XRHandTracker_HandJointFlags]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandTracker, "set_hand_joint_flags", 3028437365)
  methodbind.ptrcall(self, [getPtr joint, getPtr flags], void)

proc getHandJointFlags*(self: XRHandTracker; joint: XRHandTracker_HandJoint): set[XRHandTracker_HandJointFlags] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandTracker, "get_hand_joint_flags", 1730972401)
  methodbind.ptrcall(self, [getPtr joint], set[XRHandTracker_HandJointFlags])

proc setHandJointTransform*(self: XRHandTracker; joint: XRHandTracker_HandJoint; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandTracker, "set_hand_joint_transform", 2529959613)
  methodbind.ptrcall(self, [getPtr joint, getPtr transform], void)

proc getHandJointTransform*(self: XRHandTracker; joint: XRHandTracker_HandJoint): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandTracker, "get_hand_joint_transform", 1090840196)
  methodbind.ptrcall(self, [getPtr joint], Transform3D)

proc setHandJointRadius*(self: XRHandTracker; joint: XRHandTracker_HandJoint; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandTracker, "set_hand_joint_radius", 2723659615)
  methodbind.ptrcall(self, [getPtr joint, getPtr radius], void)

proc getHandJointRadius*(self: XRHandTracker; joint: XRHandTracker_HandJoint): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandTracker, "get_hand_joint_radius", 3400025734)
  methodbind.ptrcall(self, [getPtr joint], Float)

proc setHandJointLinearVelocity*(self: XRHandTracker; joint: XRHandTracker_HandJoint; linearVelocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandTracker, "set_hand_joint_linear_velocity", 1978646737)
  methodbind.ptrcall(self, [getPtr joint, getPtr linearVelocity], void)

proc getHandJointLinearVelocity*(self: XRHandTracker; joint: XRHandTracker_HandJoint): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandTracker, "get_hand_joint_linear_velocity", 547240792)
  methodbind.ptrcall(self, [getPtr joint], Vector3)

proc setHandJointAngularVelocity*(self: XRHandTracker; joint: XRHandTracker_HandJoint; angularVelocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandTracker, "set_hand_joint_angular_velocity", 1978646737)
  methodbind.ptrcall(self, [getPtr joint, getPtr angularVelocity], void)

proc getHandJointAngularVelocity*(self: XRHandTracker; joint: XRHandTracker_HandJoint): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandTracker, "get_hand_joint_angular_velocity", 547240792)
  methodbind.ptrcall(self, [getPtr joint], Vector3)

template hasTrackingData*(self: XRHandTracker): untyped = self.getHasTrackingData()
template `hasTrackingData=`*(self: XRHandTracker; value) = self.setHasTrackingData(value)

template handTrackingSource*(self: XRHandTracker): untyped = self.getHandTrackingSource()
template `handTrackingSource=`*(self: XRHandTracker; value) = self.setHandTrackingSource(value)

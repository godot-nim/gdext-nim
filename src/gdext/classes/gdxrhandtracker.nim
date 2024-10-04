{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdxrpositionaltracker; export gdxrpositionaltracker

proc setHasTrackingData*(self: XrHandTracker; hasData: bool): void =
  expandMethodBind(className XrHandTracker, "set_has_tracking_data", 2586408642)
  var `?param` = [getPtr hasData]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHasTrackingData*(self: XrHandTracker): bool =
  expandMethodBind(className XrHandTracker, "get_has_tracking_data", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setHandTrackingSource*(self: XrHandTracker; source: XrHandTracker_HandTrackingSource): void =
  expandMethodBind(className XrHandTracker, "set_hand_tracking_source", 2958308861)
  var `?param` = [getPtr source]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandTrackingSource*(self: XrHandTracker): XrHandTracker_HandTrackingSource =
  expandMethodBind(className XrHandTracker, "get_hand_tracking_source", 2475045250)
  var ret: encoded XrHandTracker_HandTrackingSource
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XrHandTracker_HandTrackingSource)

proc setHandJointFlags*(self: XrHandTracker; joint: XrHandTracker_HandJoint; flags: set[XrHandTracker_HandJointFlags]): void =
  expandMethodBind(className XrHandTracker, "set_hand_joint_flags", 3028437365)
  var `?param` = [getPtr joint, getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandJointFlags*(self: XrHandTracker; joint: XrHandTracker_HandJoint): set[XrHandTracker_HandJointFlags] =
  expandMethodBind(className XrHandTracker, "get_hand_joint_flags", 1730972401)
  var `?param` = [getPtr joint]
  var ret: encoded set[XrHandTracker_HandJointFlags]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(set[XrHandTracker_HandJointFlags])

proc setHandJointTransform*(self: XrHandTracker; joint: XrHandTracker_HandJoint; transform: Transform3D): void =
  expandMethodBind(className XrHandTracker, "set_hand_joint_transform", 2529959613)
  var `?param` = [getPtr joint, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandJointTransform*(self: XrHandTracker; joint: XrHandTracker_HandJoint): Transform3D =
  expandMethodBind(className XrHandTracker, "get_hand_joint_transform", 1090840196)
  var `?param` = [getPtr joint]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc setHandJointRadius*(self: XrHandTracker; joint: XrHandTracker_HandJoint; radius: Float): void =
  expandMethodBind(className XrHandTracker, "set_hand_joint_radius", 2723659615)
  var `?param` = [getPtr joint, getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandJointRadius*(self: XrHandTracker; joint: XrHandTracker_HandJoint): Float =
  expandMethodBind(className XrHandTracker, "get_hand_joint_radius", 3400025734)
  var `?param` = [getPtr joint]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setHandJointLinearVelocity*(self: XrHandTracker; joint: XrHandTracker_HandJoint; linearVelocity: Vector3): void =
  expandMethodBind(className XrHandTracker, "set_hand_joint_linear_velocity", 1978646737)
  var `?param` = [getPtr joint, getPtr linearVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandJointLinearVelocity*(self: XrHandTracker; joint: XrHandTracker_HandJoint): Vector3 =
  expandMethodBind(className XrHandTracker, "get_hand_joint_linear_velocity", 547240792)
  var `?param` = [getPtr joint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc setHandJointAngularVelocity*(self: XrHandTracker; joint: XrHandTracker_HandJoint; angularVelocity: Vector3): void =
  expandMethodBind(className XrHandTracker, "set_hand_joint_angular_velocity", 1978646737)
  var `?param` = [getPtr joint, getPtr angularVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandJointAngularVelocity*(self: XrHandTracker; joint: XrHandTracker_HandJoint): Vector3 =
  expandMethodBind(className XrHandTracker, "get_hand_joint_angular_velocity", 547240792)
  var `?param` = [getPtr joint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

template hasTrackingData*(self: XrHandTracker): untyped = self.getHasTrackingData()
template `hasTrackingData=`*(self: XrHandTracker; value) = self.setHasTrackingData(value)

template handTrackingSource*(self: XrHandTracker): untyped = self.getHandTrackingSource()
template `handTrackingSource=`*(self: XrHandTracker; value) = self.setHandTrackingSource(value)

const XrHandTracker_vmap =
  XrPositionalTracker.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrHandTracker]): Table[string, string] = XrHandTracker_vmap
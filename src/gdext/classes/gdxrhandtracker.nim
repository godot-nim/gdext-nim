{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrpositionaltracker; export gdxrpositionaltracker

proc setHasTrackingData*(self: XRHandTracker; hasData: bool): void =
  expandMethodBind(className XRHandTracker, "set_has_tracking_data", 2586408642)
  var `?param` = [getPtr hasData]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHasTrackingData*(self: XRHandTracker): bool =
  expandMethodBind(className XRHandTracker, "get_has_tracking_data", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setHandTrackingSource*(self: XRHandTracker; source: XRHandTracker_HandTrackingSource): void =
  expandMethodBind(className XRHandTracker, "set_hand_tracking_source", 2958308861)
  var `?param` = [getPtr source]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandTrackingSource*(self: XRHandTracker): XRHandTracker_HandTrackingSource =
  expandMethodBind(className XRHandTracker, "get_hand_tracking_source", 2475045250)
  var ret: encoded XRHandTracker_HandTrackingSource
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XRHandTracker_HandTrackingSource)

proc setHandJointFlags*(self: XRHandTracker; joint: XRHandTracker_HandJoint; flags: set[XRHandTracker_HandJointFlags]): void =
  expandMethodBind(className XRHandTracker, "set_hand_joint_flags", 3028437365)
  var `?param` = [getPtr joint, getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandJointFlags*(self: XRHandTracker; joint: XRHandTracker_HandJoint): set[XRHandTracker_HandJointFlags] =
  expandMethodBind(className XRHandTracker, "get_hand_joint_flags", 1730972401)
  var `?param` = [getPtr joint]
  var ret: encoded set[XRHandTracker_HandJointFlags]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(set[XRHandTracker_HandJointFlags])

proc setHandJointTransform*(self: XRHandTracker; joint: XRHandTracker_HandJoint; transform: Transform3D): void =
  expandMethodBind(className XRHandTracker, "set_hand_joint_transform", 2529959613)
  var `?param` = [getPtr joint, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandJointTransform*(self: XRHandTracker; joint: XRHandTracker_HandJoint): Transform3D =
  expandMethodBind(className XRHandTracker, "get_hand_joint_transform", 1090840196)
  var `?param` = [getPtr joint]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc setHandJointRadius*(self: XRHandTracker; joint: XRHandTracker_HandJoint; radius: Float): void =
  expandMethodBind(className XRHandTracker, "set_hand_joint_radius", 2723659615)
  var `?param` = [getPtr joint, getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandJointRadius*(self: XRHandTracker; joint: XRHandTracker_HandJoint): Float =
  expandMethodBind(className XRHandTracker, "get_hand_joint_radius", 3400025734)
  var `?param` = [getPtr joint]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setHandJointLinearVelocity*(self: XRHandTracker; joint: XRHandTracker_HandJoint; linearVelocity: Vector3): void =
  expandMethodBind(className XRHandTracker, "set_hand_joint_linear_velocity", 1978646737)
  var `?param` = [getPtr joint, getPtr linearVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandJointLinearVelocity*(self: XRHandTracker; joint: XRHandTracker_HandJoint): Vector3 =
  expandMethodBind(className XRHandTracker, "get_hand_joint_linear_velocity", 547240792)
  var `?param` = [getPtr joint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc setHandJointAngularVelocity*(self: XRHandTracker; joint: XRHandTracker_HandJoint; angularVelocity: Vector3): void =
  expandMethodBind(className XRHandTracker, "set_hand_joint_angular_velocity", 1978646737)
  var `?param` = [getPtr joint, getPtr angularVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandJointAngularVelocity*(self: XRHandTracker; joint: XRHandTracker_HandJoint): Vector3 =
  expandMethodBind(className XRHandTracker, "get_hand_joint_angular_velocity", 547240792)
  var `?param` = [getPtr joint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

template hasTrackingData*(self: XRHandTracker): untyped = self.getHasTrackingData()
template `hasTrackingData=`*(self: XRHandTracker; value) = self.setHasTrackingData(value)

template handTrackingSource*(self: XRHandTracker): untyped = self.getHandTrackingSource()
template `handTrackingSource=`*(self: XRHandTracker; value) = self.setHandTrackingSource(value)

const XRHandTracker_vmap =
  XRPositionalTracker.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRHandTracker]): Table[string, string] = XRHandTracker_vmap
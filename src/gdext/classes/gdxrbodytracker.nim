{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrpositionaltracker; export gdxrpositionaltracker

proc setHasTrackingData*(self: XRBodyTracker; hasData: bool): void =
  expandMethodBind(className XRBodyTracker, "set_has_tracking_data", 2586408642)
  var `?param` = [getPtr hasData]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHasTrackingData*(self: XRBodyTracker): bool =
  expandMethodBind(className XRBodyTracker, "get_has_tracking_data", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setBodyFlags*(self: XRBodyTracker; flags: set[XRBodyTracker_BodyFlags]): void =
  expandMethodBind(className XRBodyTracker, "set_body_flags", 2103235750)
  var `?param` = [getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBodyFlags*(self: XRBodyTracker): set[XRBodyTracker_BodyFlags] =
  expandMethodBind(className XRBodyTracker, "get_body_flags", 3543166366)
  var ret: encoded set[XRBodyTracker_BodyFlags]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[XRBodyTracker_BodyFlags])

proc setJointFlags*(self: XRBodyTracker; joint: XRBodyTracker_Joint; flags: set[XRBodyTracker_JointFlags]): void =
  expandMethodBind(className XRBodyTracker, "set_joint_flags", 592144999)
  var `?param` = [getPtr joint, getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJointFlags*(self: XRBodyTracker; joint: XRBodyTracker_Joint): set[XRBodyTracker_JointFlags] =
  expandMethodBind(className XRBodyTracker, "get_joint_flags", 1030162609)
  var `?param` = [getPtr joint]
  var ret: encoded set[XRBodyTracker_JointFlags]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(set[XRBodyTracker_JointFlags])

proc setJointTransform*(self: XRBodyTracker; joint: XRBodyTracker_Joint; transform: Transform3D): void =
  expandMethodBind(className XRBodyTracker, "set_joint_transform", 2635424328)
  var `?param` = [getPtr joint, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJointTransform*(self: XRBodyTracker; joint: XRBodyTracker_Joint): Transform3D =
  expandMethodBind(className XRBodyTracker, "get_joint_transform", 3474811534)
  var `?param` = [getPtr joint]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

template hasTrackingData*(self: XRBodyTracker): untyped = self.getHasTrackingData()
template `hasTrackingData=`*(self: XRBodyTracker; value) = self.setHasTrackingData(value)

template bodyFlags*(self: XRBodyTracker): untyped = self.getBodyFlags()
template `bodyFlags=`*(self: XRBodyTracker; value) = self.setBodyFlags(value)

const XRBodyTracker_vmap =
  XRPositionalTracker.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRBodyTracker]): Table[string, string] = XRBodyTracker_vmap
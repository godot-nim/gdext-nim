{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdxrpositionaltracker; export gdxrpositionaltracker

proc setHasTrackingData*(self: XrBodyTracker; hasData: bool): void =
  expandMethodBind(className XrBodyTracker, "set_has_tracking_data", 2586408642)
  var `?param` = [getPtr hasData]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHasTrackingData*(self: XrBodyTracker): bool =
  expandMethodBind(className XrBodyTracker, "get_has_tracking_data", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setBodyFlags*(self: XrBodyTracker; flags: set[XrBodyTracker_BodyFlags]): void =
  expandMethodBind(className XrBodyTracker, "set_body_flags", 2103235750)
  var `?param` = [getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBodyFlags*(self: XrBodyTracker): set[XrBodyTracker_BodyFlags] =
  expandMethodBind(className XrBodyTracker, "get_body_flags", 3543166366)
  var ret: encoded set[XrBodyTracker_BodyFlags]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[XrBodyTracker_BodyFlags])

proc setJointFlags*(self: XrBodyTracker; joint: XrBodyTracker_Joint; flags: set[XrBodyTracker_JointFlags]): void =
  expandMethodBind(className XrBodyTracker, "set_joint_flags", 592144999)
  var `?param` = [getPtr joint, getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJointFlags*(self: XrBodyTracker; joint: XrBodyTracker_Joint): set[XrBodyTracker_JointFlags] =
  expandMethodBind(className XrBodyTracker, "get_joint_flags", 1030162609)
  var `?param` = [getPtr joint]
  var ret: encoded set[XrBodyTracker_JointFlags]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(set[XrBodyTracker_JointFlags])

proc setJointTransform*(self: XrBodyTracker; joint: XrBodyTracker_Joint; transform: Transform3D): void =
  expandMethodBind(className XrBodyTracker, "set_joint_transform", 2635424328)
  var `?param` = [getPtr joint, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJointTransform*(self: XrBodyTracker; joint: XrBodyTracker_Joint): Transform3D =
  expandMethodBind(className XrBodyTracker, "get_joint_transform", 3474811534)
  var `?param` = [getPtr joint]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

template hasTrackingData*(self: XrBodyTracker): untyped = self.getHasTrackingData()
template `hasTrackingData=`*(self: XrBodyTracker; value) = self.setHasTrackingData(value)

template bodyFlags*(self: XrBodyTracker): untyped = self.getBodyFlags()
template `bodyFlags=`*(self: XrBodyTracker; value) = self.setBodyFlags(value)

const XrBodyTracker_vmap =
  XrPositionalTracker.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrBodyTracker]): Table[string, string] = XrBodyTracker_vmap
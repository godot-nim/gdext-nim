{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setHasTrackingData*(self: XrPose; hasTrackingData: bool): void =
  expandMethodBind(className XrPose, "set_has_tracking_data", 2586408642)
  var `?param` = [getPtr hasTrackingData]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHasTrackingData*(self: XrPose): bool =
  expandMethodBind(className XrPose, "get_has_tracking_data", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setName*(self: XrPose; name: StringName): void =
  expandMethodBind(className XrPose, "set_name", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getName*(self: XrPose): StringName =
  expandMethodBind(className XrPose, "get_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setTransform*(self: XrPose; transform: Transform3D): void =
  expandMethodBind(className XrPose, "set_transform", 2952846383)
  var `?param` = [getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTransform*(self: XrPose): Transform3D =
  expandMethodBind(className XrPose, "get_transform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc getAdjustedTransform*(self: XrPose): Transform3D =
  expandMethodBind(className XrPose, "get_adjusted_transform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc setLinearVelocity*(self: XrPose; velocity: Vector3): void =
  expandMethodBind(className XrPose, "set_linear_velocity", 3460891852)
  var `?param` = [getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLinearVelocity*(self: XrPose): Vector3 =
  expandMethodBind(className XrPose, "get_linear_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setAngularVelocity*(self: XrPose; velocity: Vector3): void =
  expandMethodBind(className XrPose, "set_angular_velocity", 3460891852)
  var `?param` = [getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAngularVelocity*(self: XrPose): Vector3 =
  expandMethodBind(className XrPose, "get_angular_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setTrackingConfidence*(self: XrPose; trackingConfidence: XrPose_TrackingConfidence): void =
  expandMethodBind(className XrPose, "set_tracking_confidence", 4171656666)
  var `?param` = [getPtr trackingConfidence]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTrackingConfidence*(self: XrPose): XrPose_TrackingConfidence =
  expandMethodBind(className XrPose, "get_tracking_confidence", 2064923680)
  var ret: encoded XrPose_TrackingConfidence
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XrPose_TrackingConfidence)

template hasTrackingData*(self: XrPose): untyped = self.getHasTrackingData()
template `hasTrackingData=`*(self: XrPose; value) = self.setHasTrackingData(value)

template name*(self: XrPose): untyped = self.getName()
template `name=`*(self: XrPose; value) = self.setName(value)

template transform*(self: XrPose): untyped = self.getTransform()
template `transform=`*(self: XrPose; value) = self.setTransform(value)

template linearVelocity*(self: XrPose): untyped = self.getLinearVelocity()
template `linearVelocity=`*(self: XrPose; value) = self.setLinearVelocity(value)

template angularVelocity*(self: XrPose): untyped = self.getAngularVelocity()
template `angularVelocity=`*(self: XrPose; value) = self.setAngularVelocity(value)

template trackingConfidence*(self: XrPose): untyped = self.getTrackingConfidence()
template `trackingConfidence=`*(self: XrPose; value) = self.setTrackingConfidence(value)

const XrPose_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrPose]): Table[string, string] = XrPose_vmap
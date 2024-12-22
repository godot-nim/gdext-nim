{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setHasTrackingData*(self: XRPose; hasTrackingData: bool): void =
  expandMethodBind(className XRPose, "set_has_tracking_data", 2586408642)
  var `?param` = [getPtr hasTrackingData]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHasTrackingData*(self: XRPose): bool =
  expandMethodBind(className XRPose, "get_has_tracking_data", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setName*(self: XRPose; name: StringName): void =
  expandMethodBind(className XRPose, "set_name", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getName*(self: XRPose): StringName =
  expandMethodBind(className XRPose, "get_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setTransform*(self: XRPose; transform: Transform3D): void =
  expandMethodBind(className XRPose, "set_transform", 2952846383)
  var `?param` = [getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTransform*(self: XRPose): Transform3D =
  expandMethodBind(className XRPose, "get_transform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc getAdjustedTransform*(self: XRPose): Transform3D =
  expandMethodBind(className XRPose, "get_adjusted_transform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc setLinearVelocity*(self: XRPose; velocity: Vector3): void =
  expandMethodBind(className XRPose, "set_linear_velocity", 3460891852)
  var `?param` = [getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLinearVelocity*(self: XRPose): Vector3 =
  expandMethodBind(className XRPose, "get_linear_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setAngularVelocity*(self: XRPose; velocity: Vector3): void =
  expandMethodBind(className XRPose, "set_angular_velocity", 3460891852)
  var `?param` = [getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAngularVelocity*(self: XRPose): Vector3 =
  expandMethodBind(className XRPose, "get_angular_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setTrackingConfidence*(self: XRPose; trackingConfidence: XRPose_TrackingConfidence): void =
  expandMethodBind(className XRPose, "set_tracking_confidence", 4171656666)
  var `?param` = [getPtr trackingConfidence]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTrackingConfidence*(self: XRPose): XRPose_TrackingConfidence =
  expandMethodBind(className XRPose, "get_tracking_confidence", 2064923680)
  var ret: encoded XRPose_TrackingConfidence
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XRPose_TrackingConfidence)

template hasTrackingData*(self: XRPose): untyped = self.getHasTrackingData()
template `hasTrackingData=`*(self: XRPose; value) = self.setHasTrackingData(value)

template name*(self: XRPose): untyped = self.getName()
template `name=`*(self: XRPose; value) = self.setName(value)

template transform*(self: XRPose): untyped = self.getTransform()
template `transform=`*(self: XRPose; value) = self.setTransform(value)

template linearVelocity*(self: XRPose): untyped = self.getLinearVelocity()
template `linearVelocity=`*(self: XRPose; value) = self.setLinearVelocity(value)

template angularVelocity*(self: XRPose): untyped = self.getAngularVelocity()
template `angularVelocity=`*(self: XRPose; value) = self.setAngularVelocity(value)

template trackingConfidence*(self: XRPose): untyped = self.getTrackingConfidence()
template `trackingConfidence=`*(self: XRPose; value) = self.setTrackingConfidence(value)

const XRPose_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRPose]): Table[string, string] = XRPose_vmap
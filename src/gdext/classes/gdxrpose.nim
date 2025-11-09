{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(XRPose, RefCounted)

proc setHasTrackingData*(self: XRPose; hasTrackingData: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPose, "set_has_tracking_data", 2586408642)
  methodbind.ptrcall(self, [getPtr hasTrackingData], void)

proc getHasTrackingData*(self: XRPose): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPose, "get_has_tracking_data", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setName*(self: XRPose; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPose, "set_name", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getName*(self: XRPose): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPose, "get_name", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setTransform*(self: XRPose; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPose, "set_transform", 2952846383)
  methodbind.ptrcall(self, [getPtr transform], void)

proc getTransform*(self: XRPose): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPose, "get_transform", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc getAdjustedTransform*(self: XRPose): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPose, "get_adjusted_transform", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc setLinearVelocity*(self: XRPose; velocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPose, "set_linear_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc getLinearVelocity*(self: XRPose): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPose, "get_linear_velocity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setAngularVelocity*(self: XRPose; velocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPose, "set_angular_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc getAngularVelocity*(self: XRPose): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPose, "get_angular_velocity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setTrackingConfidence*(self: XRPose; trackingConfidence: XRPose_TrackingConfidence): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPose, "set_tracking_confidence", 4171656666)
  methodbind.ptrcall(self, [getPtr trackingConfidence], void)

proc getTrackingConfidence*(self: XRPose): XRPose_TrackingConfidence =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRPose, "get_tracking_confidence", 2064923680)
  methodbind.ptrcall(self, [], XRPose_TrackingConfidence)

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

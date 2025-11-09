{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcollisionobject3d; export gdcollisionobject3d

expandOnClassImported(Area3D, CollisionObject3D)

proc setGravitySpaceOverrideMode*(self: Area3D; spaceOverrideMode: Area3D_SpaceOverride): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_gravity_space_override_mode", 2311433571)
  methodbind.ptrcall(self, [getPtr spaceOverrideMode], void)

proc getGravitySpaceOverrideMode*(self: Area3D): Area3D_SpaceOverride =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_gravity_space_override_mode", 958191869)
  methodbind.ptrcall(self, [], Area3D_SpaceOverride)

proc setGravityIsPoint*(self: Area3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_gravity_is_point", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isGravityAPoint*(self: Area3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "is_gravity_a_point", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setGravityPointUnitDistance*(self: Area3D; distanceScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_gravity_point_unit_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distanceScale], void)

proc getGravityPointUnitDistance*(self: Area3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_gravity_point_unit_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setGravityPointCenter*(self: Area3D; center: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_gravity_point_center", 3460891852)
  methodbind.ptrcall(self, [getPtr center], void)

proc getGravityPointCenter*(self: Area3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_gravity_point_center", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setGravityDirection*(self: Area3D; direction: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_gravity_direction", 3460891852)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getGravityDirection*(self: Area3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_gravity_direction", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setGravity*(self: Area3D; gravity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_gravity", 373806689)
  methodbind.ptrcall(self, [getPtr gravity], void)

proc getGravity*(self: Area3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_gravity", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setLinearDampSpaceOverrideMode*(self: Area3D; spaceOverrideMode: Area3D_SpaceOverride): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_linear_damp_space_override_mode", 2311433571)
  methodbind.ptrcall(self, [getPtr spaceOverrideMode], void)

proc getLinearDampSpaceOverrideMode*(self: Area3D): Area3D_SpaceOverride =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_linear_damp_space_override_mode", 958191869)
  methodbind.ptrcall(self, [], Area3D_SpaceOverride)

proc setAngularDampSpaceOverrideMode*(self: Area3D; spaceOverrideMode: Area3D_SpaceOverride): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_angular_damp_space_override_mode", 2311433571)
  methodbind.ptrcall(self, [getPtr spaceOverrideMode], void)

proc getAngularDampSpaceOverrideMode*(self: Area3D): Area3D_SpaceOverride =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_angular_damp_space_override_mode", 958191869)
  methodbind.ptrcall(self, [], Area3D_SpaceOverride)

proc setAngularDamp*(self: Area3D; angularDamp: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_angular_damp", 373806689)
  methodbind.ptrcall(self, [getPtr angularDamp], void)

proc getAngularDamp*(self: Area3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_angular_damp", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setLinearDamp*(self: Area3D; linearDamp: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_linear_damp", 373806689)
  methodbind.ptrcall(self, [getPtr linearDamp], void)

proc getLinearDamp*(self: Area3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_linear_damp", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPriority*(self: Area3D; priority: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_priority", 1286410249)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getPriority*(self: Area3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_priority", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setWindForceMagnitude*(self: Area3D; windForceMagnitude: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_wind_force_magnitude", 373806689)
  methodbind.ptrcall(self, [getPtr windForceMagnitude], void)

proc getWindForceMagnitude*(self: Area3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_wind_force_magnitude", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setWindAttenuationFactor*(self: Area3D; windAttenuationFactor: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_wind_attenuation_factor", 373806689)
  methodbind.ptrcall(self, [getPtr windAttenuationFactor], void)

proc getWindAttenuationFactor*(self: Area3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_wind_attenuation_factor", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setWindSourcePath*(self: Area3D; windSourcePath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_wind_source_path", 1348162250)
  methodbind.ptrcall(self, [getPtr windSourcePath], void)

proc getWindSourcePath*(self: Area3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_wind_source_path", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setMonitorable*(self: Area3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_monitorable", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isMonitorable*(self: Area3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "is_monitorable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMonitoring*(self: Area3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_monitoring", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isMonitoring*(self: Area3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "is_monitoring", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getOverlappingBodies*(self: Area3D): TypedArray[Node3D] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_overlapping_bodies", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Node3D])

proc getOverlappingAreas*(self: Area3D): TypedArray[Area3D] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_overlapping_areas", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Area3D])

proc hasOverlappingBodies*(self: Area3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "has_overlapping_bodies", 36873697)
  methodbind.ptrcall(self, [], bool)

proc hasOverlappingAreas*(self: Area3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "has_overlapping_areas", 36873697)
  methodbind.ptrcall(self, [], bool)

proc overlapsBody*(self: Area3D; body: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "overlaps_body", 3093956946)
  methodbind.ptrcall(self, [getPtr body], bool)

proc overlapsArea*(self: Area3D; area: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "overlaps_area", 3093956946)
  methodbind.ptrcall(self, [getPtr area], bool)

proc setAudioBusOverride*(self: Area3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_audio_bus_override", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isOverridingAudioBus*(self: Area3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "is_overriding_audio_bus", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAudioBusName*(self: Area3D; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_audio_bus_name", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getAudioBusName*(self: Area3D): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_audio_bus_name", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setUseReverbBus*(self: Area3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_use_reverb_bus", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingReverbBus*(self: Area3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "is_using_reverb_bus", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setReverbBusName*(self: Area3D; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_reverb_bus_name", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getReverbBusName*(self: Area3D): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_reverb_bus_name", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setReverbAmount*(self: Area3D; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_reverb_amount", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getReverbAmount*(self: Area3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_reverb_amount", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setReverbUniformity*(self: Area3D; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "set_reverb_uniformity", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getReverbUniformity*(self: Area3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area3D, "get_reverb_uniformity", 1740695150)
  methodbind.ptrcall(self, [], Float)

template monitoring*(self: Area3D): untyped = self.isMonitoring()
template `monitoring=`*(self: Area3D; value) = self.setMonitoring(value)

template monitorable*(self: Area3D): untyped = self.isMonitorable()
template `monitorable=`*(self: Area3D; value) = self.setMonitorable(value)

template priority*(self: Area3D): untyped = self.getPriority()
template `priority=`*(self: Area3D; value) = self.setPriority(value)

template gravitySpaceOverride*(self: Area3D): untyped = self.getGravitySpaceOverrideMode()
template `gravitySpaceOverride=`*(self: Area3D; value) = self.setGravitySpaceOverrideMode(value)

template gravityPoint*(self: Area3D): untyped = self.isGravityAPoint()
template `gravityPoint=`*(self: Area3D; value) = self.setGravityIsPoint(value)

template gravityPointUnitDistance*(self: Area3D): untyped = self.getGravityPointUnitDistance()
template `gravityPointUnitDistance=`*(self: Area3D; value) = self.setGravityPointUnitDistance(value)

template gravityPointCenter*(self: Area3D): untyped = self.getGravityPointCenter()
template `gravityPointCenter=`*(self: Area3D; value) = self.setGravityPointCenter(value)

template gravityDirection*(self: Area3D): untyped = self.getGravityDirection()
template `gravityDirection=`*(self: Area3D; value) = self.setGravityDirection(value)

template gravity*(self: Area3D): untyped = self.getGravity()
template `gravity=`*(self: Area3D; value) = self.setGravity(value)

template linearDampSpaceOverride*(self: Area3D): untyped = self.getLinearDampSpaceOverrideMode()
template `linearDampSpaceOverride=`*(self: Area3D; value) = self.setLinearDampSpaceOverrideMode(value)

template linearDamp*(self: Area3D): untyped = self.getLinearDamp()
template `linearDamp=`*(self: Area3D; value) = self.setLinearDamp(value)

template angularDampSpaceOverride*(self: Area3D): untyped = self.getAngularDampSpaceOverrideMode()
template `angularDampSpaceOverride=`*(self: Area3D; value) = self.setAngularDampSpaceOverrideMode(value)

template angularDamp*(self: Area3D): untyped = self.getAngularDamp()
template `angularDamp=`*(self: Area3D; value) = self.setAngularDamp(value)

template windForceMagnitude*(self: Area3D): untyped = self.getWindForceMagnitude()
template `windForceMagnitude=`*(self: Area3D; value) = self.setWindForceMagnitude(value)

template windAttenuationFactor*(self: Area3D): untyped = self.getWindAttenuationFactor()
template `windAttenuationFactor=`*(self: Area3D; value) = self.setWindAttenuationFactor(value)

template windSourcePath*(self: Area3D): untyped = self.getWindSourcePath()
template `windSourcePath=`*(self: Area3D; value) = self.setWindSourcePath(value)

template audioBusOverride*(self: Area3D): untyped = self.isOverridingAudioBus()
template `audioBusOverride=`*(self: Area3D; value) = self.setAudioBusOverride(value)

template audioBusName*(self: Area3D): untyped = self.getAudioBusName()
template `audioBusName=`*(self: Area3D; value) = self.setAudioBusName(value)

template reverbBusEnabled*(self: Area3D): untyped = self.isUsingReverbBus()
template `reverbBusEnabled=`*(self: Area3D; value) = self.setUseReverbBus(value)

template reverbBusName*(self: Area3D): untyped = self.getReverbBusName()
template `reverbBusName=`*(self: Area3D; value) = self.setReverbBusName(value)

template reverbBusAmount*(self: Area3D): untyped = self.getReverbAmount()
template `reverbBusAmount=`*(self: Area3D; value) = self.setReverbAmount(value)

template reverbBusUniformity*(self: Area3D): untyped = self.getReverbUniformity()
template `reverbBusUniformity=`*(self: Area3D; value) = self.setReverbUniformity(value)

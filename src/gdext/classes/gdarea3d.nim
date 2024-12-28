{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcollisionobject3d; export gdcollisionobject3d

proc setGravitySpaceOverrideMode*(self: Area3D; spaceOverrideMode: Area3D_SpaceOverride): void =
  expandMethodBind(className Area3D, "set_gravity_space_override_mode", 2311433571)
  methodbind.ptrcall(self, [getPtr spaceOverrideMode])

proc getGravitySpaceOverrideMode*(self: Area3D): Area3D_SpaceOverride =
  expandMethodBind(className Area3D, "get_gravity_space_override_mode", 958191869)
  var ret: encoded Area3D_SpaceOverride
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Area3D_SpaceOverride)

proc setGravityIsPoint*(self: Area3D; enable: bool): void =
  expandMethodBind(className Area3D, "set_gravity_is_point", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isGravityAPoint*(self: Area3D): bool =
  expandMethodBind(className Area3D, "is_gravity_a_point", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setGravityPointUnitDistance*(self: Area3D; distanceScale: Float): void =
  expandMethodBind(className Area3D, "set_gravity_point_unit_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distanceScale])

proc getGravityPointUnitDistance*(self: Area3D): Float =
  expandMethodBind(className Area3D, "get_gravity_point_unit_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setGravityPointCenter*(self: Area3D; center: Vector3): void =
  expandMethodBind(className Area3D, "set_gravity_point_center", 3460891852)
  methodbind.ptrcall(self, [getPtr center])

proc getGravityPointCenter*(self: Area3D): Vector3 =
  expandMethodBind(className Area3D, "get_gravity_point_center", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setGravityDirection*(self: Area3D; direction: Vector3): void =
  expandMethodBind(className Area3D, "set_gravity_direction", 3460891852)
  methodbind.ptrcall(self, [getPtr direction])

proc getGravityDirection*(self: Area3D): Vector3 =
  expandMethodBind(className Area3D, "get_gravity_direction", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setGravity*(self: Area3D; gravity: Float): void =
  expandMethodBind(className Area3D, "set_gravity", 373806689)
  methodbind.ptrcall(self, [getPtr gravity])

proc getGravity*(self: Area3D): Float =
  expandMethodBind(className Area3D, "get_gravity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setLinearDampSpaceOverrideMode*(self: Area3D; spaceOverrideMode: Area3D_SpaceOverride): void =
  expandMethodBind(className Area3D, "set_linear_damp_space_override_mode", 2311433571)
  methodbind.ptrcall(self, [getPtr spaceOverrideMode])

proc getLinearDampSpaceOverrideMode*(self: Area3D): Area3D_SpaceOverride =
  expandMethodBind(className Area3D, "get_linear_damp_space_override_mode", 958191869)
  var ret: encoded Area3D_SpaceOverride
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Area3D_SpaceOverride)

proc setAngularDampSpaceOverrideMode*(self: Area3D; spaceOverrideMode: Area3D_SpaceOverride): void =
  expandMethodBind(className Area3D, "set_angular_damp_space_override_mode", 2311433571)
  methodbind.ptrcall(self, [getPtr spaceOverrideMode])

proc getAngularDampSpaceOverrideMode*(self: Area3D): Area3D_SpaceOverride =
  expandMethodBind(className Area3D, "get_angular_damp_space_override_mode", 958191869)
  var ret: encoded Area3D_SpaceOverride
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Area3D_SpaceOverride)

proc setAngularDamp*(self: Area3D; angularDamp: Float): void =
  expandMethodBind(className Area3D, "set_angular_damp", 373806689)
  methodbind.ptrcall(self, [getPtr angularDamp])

proc getAngularDamp*(self: Area3D): Float =
  expandMethodBind(className Area3D, "get_angular_damp", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setLinearDamp*(self: Area3D; linearDamp: Float): void =
  expandMethodBind(className Area3D, "set_linear_damp", 373806689)
  methodbind.ptrcall(self, [getPtr linearDamp])

proc getLinearDamp*(self: Area3D): Float =
  expandMethodBind(className Area3D, "get_linear_damp", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPriority*(self: Area3D; priority: int32): void =
  expandMethodBind(className Area3D, "set_priority", 1286410249)
  methodbind.ptrcall(self, [getPtr priority])

proc getPriority*(self: Area3D): int32 =
  expandMethodBind(className Area3D, "get_priority", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setWindForceMagnitude*(self: Area3D; windForceMagnitude: Float): void =
  expandMethodBind(className Area3D, "set_wind_force_magnitude", 373806689)
  methodbind.ptrcall(self, [getPtr windForceMagnitude])

proc getWindForceMagnitude*(self: Area3D): Float =
  expandMethodBind(className Area3D, "get_wind_force_magnitude", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setWindAttenuationFactor*(self: Area3D; windAttenuationFactor: Float): void =
  expandMethodBind(className Area3D, "set_wind_attenuation_factor", 373806689)
  methodbind.ptrcall(self, [getPtr windAttenuationFactor])

proc getWindAttenuationFactor*(self: Area3D): Float =
  expandMethodBind(className Area3D, "get_wind_attenuation_factor", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setWindSourcePath*(self: Area3D; windSourcePath: NodePath): void =
  expandMethodBind(className Area3D, "set_wind_source_path", 1348162250)
  methodbind.ptrcall(self, [getPtr windSourcePath])

proc getWindSourcePath*(self: Area3D): NodePath =
  expandMethodBind(className Area3D, "get_wind_source_path", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setMonitorable*(self: Area3D; enable: bool): void =
  expandMethodBind(className Area3D, "set_monitorable", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isMonitorable*(self: Area3D): bool =
  expandMethodBind(className Area3D, "is_monitorable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMonitoring*(self: Area3D; enable: bool): void =
  expandMethodBind(className Area3D, "set_monitoring", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isMonitoring*(self: Area3D): bool =
  expandMethodBind(className Area3D, "is_monitoring", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getOverlappingBodies*(self: Area3D): TypedArray[Node3D] =
  expandMethodBind(className Area3D, "get_overlapping_bodies", 3995934104)
  var ret: encoded TypedArray[Node3D]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[Node3D])

proc getOverlappingAreas*(self: Area3D): TypedArray[Area3D] =
  expandMethodBind(className Area3D, "get_overlapping_areas", 3995934104)
  var ret: encoded TypedArray[Area3D]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[Area3D])

proc hasOverlappingBodies*(self: Area3D): bool =
  expandMethodBind(className Area3D, "has_overlapping_bodies", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc hasOverlappingAreas*(self: Area3D): bool =
  expandMethodBind(className Area3D, "has_overlapping_areas", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc overlapsBody*(self: Area3D; body: Node): bool =
  expandMethodBind(className Area3D, "overlaps_body", 3093956946)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(bool)

proc overlapsArea*(self: Area3D; area: Node): bool =
  expandMethodBind(className Area3D, "overlaps_area", 3093956946)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr area], addr ret)
  (addr ret).decode_result(bool)

proc setAudioBusOverride*(self: Area3D; enable: bool): void =
  expandMethodBind(className Area3D, "set_audio_bus_override", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isOverridingAudioBus*(self: Area3D): bool =
  expandMethodBind(className Area3D, "is_overriding_audio_bus", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAudioBusName*(self: Area3D; name: StringName): void =
  expandMethodBind(className Area3D, "set_audio_bus_name", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc getAudioBusName*(self: Area3D): StringName =
  expandMethodBind(className Area3D, "get_audio_bus_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc setUseReverbBus*(self: Area3D; enable: bool): void =
  expandMethodBind(className Area3D, "set_use_reverb_bus", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isUsingReverbBus*(self: Area3D): bool =
  expandMethodBind(className Area3D, "is_using_reverb_bus", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setReverbBusName*(self: Area3D; name: StringName): void =
  expandMethodBind(className Area3D, "set_reverb_bus_name", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc getReverbBusName*(self: Area3D): StringName =
  expandMethodBind(className Area3D, "get_reverb_bus_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc setReverbAmount*(self: Area3D; amount: Float): void =
  expandMethodBind(className Area3D, "set_reverb_amount", 373806689)
  methodbind.ptrcall(self, [getPtr amount])

proc getReverbAmount*(self: Area3D): Float =
  expandMethodBind(className Area3D, "get_reverb_amount", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setReverbUniformity*(self: Area3D; amount: Float): void =
  expandMethodBind(className Area3D, "set_reverb_uniformity", 373806689)
  methodbind.ptrcall(self, [getPtr amount])

proc getReverbUniformity*(self: Area3D): Float =
  expandMethodBind(className Area3D, "get_reverb_uniformity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

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

const Area3D_vmap =
  CollisionObject3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Area3D]): Table[string, string] = Area3D_vmap

proc bodyShapeEntered*(self: Area3D; bodyRid: Variant; body: Variant; bodyShapeIndex: Variant; localShapeIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_shape_entered")
  let args = [bodyRid, body, bodyShapeIndex, localShapeIndex]
  self.emitSignal(signalname, args)

proc bodyShapeExited*(self: Area3D; bodyRid: Variant; body: Variant; bodyShapeIndex: Variant; localShapeIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_shape_exited")
  let args = [bodyRid, body, bodyShapeIndex, localShapeIndex]
  self.emitSignal(signalname, args)

proc bodyEntered*(self: Area3D; body: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_entered")
  let args = [body]
  self.emitSignal(signalname, args)

proc bodyExited*(self: Area3D; body: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_exited")
  let args = [body]
  self.emitSignal(signalname, args)

proc areaShapeEntered*(self: Area3D; areaRid: Variant; area: Variant; areaShapeIndex: Variant; localShapeIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("area_shape_entered")
  let args = [areaRid, area, areaShapeIndex, localShapeIndex]
  self.emitSignal(signalname, args)

proc areaShapeExited*(self: Area3D; areaRid: Variant; area: Variant; areaShapeIndex: Variant; localShapeIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("area_shape_exited")
  let args = [areaRid, area, areaShapeIndex, localShapeIndex]
  self.emitSignal(signalname, args)

proc areaEntered*(self: Area3D; area: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("area_entered")
  let args = [area]
  self.emitSignal(signalname, args)

proc areaExited*(self: Area3D; area: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("area_exited")
  let args = [area]
  self.emitSignal(signalname, args)
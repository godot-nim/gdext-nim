{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcollisionobject2d; export gdcollisionobject2d

proc setGravitySpaceOverrideMode*(self: Area2D; spaceOverrideMode: Area2D_SpaceOverride): void =
  expandMethodBind(className Area2D, "set_gravity_space_override_mode", 2879900038)
  var `?param` = [getPtr spaceOverrideMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGravitySpaceOverrideMode*(self: Area2D): Area2D_SpaceOverride =
  expandMethodBind(className Area2D, "get_gravity_space_override_mode", 3990256304)
  var ret: encoded Area2D_SpaceOverride
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Area2D_SpaceOverride)

proc setGravityIsPoint*(self: Area2D; enable: bool): void =
  expandMethodBind(className Area2D, "set_gravity_is_point", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isGravityAPoint*(self: Area2D): bool =
  expandMethodBind(className Area2D, "is_gravity_a_point", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setGravityPointUnitDistance*(self: Area2D; distanceScale: Float): void =
  expandMethodBind(className Area2D, "set_gravity_point_unit_distance", 373806689)
  var `?param` = [getPtr distanceScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGravityPointUnitDistance*(self: Area2D): Float =
  expandMethodBind(className Area2D, "get_gravity_point_unit_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setGravityPointCenter*(self: Area2D; center: Vector2): void =
  expandMethodBind(className Area2D, "set_gravity_point_center", 743155724)
  var `?param` = [getPtr center]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGravityPointCenter*(self: Area2D): Vector2 =
  expandMethodBind(className Area2D, "get_gravity_point_center", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setGravityDirection*(self: Area2D; direction: Vector2): void =
  expandMethodBind(className Area2D, "set_gravity_direction", 743155724)
  var `?param` = [getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGravityDirection*(self: Area2D): Vector2 =
  expandMethodBind(className Area2D, "get_gravity_direction", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setGravity*(self: Area2D; gravity: Float): void =
  expandMethodBind(className Area2D, "set_gravity", 373806689)
  var `?param` = [getPtr gravity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGravity*(self: Area2D): Float =
  expandMethodBind(className Area2D, "get_gravity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setLinearDampSpaceOverrideMode*(self: Area2D; spaceOverrideMode: Area2D_SpaceOverride): void =
  expandMethodBind(className Area2D, "set_linear_damp_space_override_mode", 2879900038)
  var `?param` = [getPtr spaceOverrideMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLinearDampSpaceOverrideMode*(self: Area2D): Area2D_SpaceOverride =
  expandMethodBind(className Area2D, "get_linear_damp_space_override_mode", 3990256304)
  var ret: encoded Area2D_SpaceOverride
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Area2D_SpaceOverride)

proc setAngularDampSpaceOverrideMode*(self: Area2D; spaceOverrideMode: Area2D_SpaceOverride): void =
  expandMethodBind(className Area2D, "set_angular_damp_space_override_mode", 2879900038)
  var `?param` = [getPtr spaceOverrideMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAngularDampSpaceOverrideMode*(self: Area2D): Area2D_SpaceOverride =
  expandMethodBind(className Area2D, "get_angular_damp_space_override_mode", 3990256304)
  var ret: encoded Area2D_SpaceOverride
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Area2D_SpaceOverride)

proc setLinearDamp*(self: Area2D; linearDamp: Float): void =
  expandMethodBind(className Area2D, "set_linear_damp", 373806689)
  var `?param` = [getPtr linearDamp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLinearDamp*(self: Area2D): Float =
  expandMethodBind(className Area2D, "get_linear_damp", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAngularDamp*(self: Area2D; angularDamp: Float): void =
  expandMethodBind(className Area2D, "set_angular_damp", 373806689)
  var `?param` = [getPtr angularDamp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAngularDamp*(self: Area2D): Float =
  expandMethodBind(className Area2D, "get_angular_damp", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPriority*(self: Area2D; priority: int32): void =
  expandMethodBind(className Area2D, "set_priority", 1286410249)
  var `?param` = [getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPriority*(self: Area2D): int32 =
  expandMethodBind(className Area2D, "get_priority", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMonitoring*(self: Area2D; enable: bool): void =
  expandMethodBind(className Area2D, "set_monitoring", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isMonitoring*(self: Area2D): bool =
  expandMethodBind(className Area2D, "is_monitoring", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMonitorable*(self: Area2D; enable: bool): void =
  expandMethodBind(className Area2D, "set_monitorable", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isMonitorable*(self: Area2D): bool =
  expandMethodBind(className Area2D, "is_monitorable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getOverlappingBodies*(self: Area2D): TypedArray[Node2D] =
  expandMethodBind(className Area2D, "get_overlapping_bodies", 3995934104)
  var ret: encoded TypedArray[Node2D]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Node2D])

proc getOverlappingAreas*(self: Area2D): TypedArray[Area2D] =
  expandMethodBind(className Area2D, "get_overlapping_areas", 3995934104)
  var ret: encoded TypedArray[Area2D]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Area2D])

proc hasOverlappingBodies*(self: Area2D): bool =
  expandMethodBind(className Area2D, "has_overlapping_bodies", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc hasOverlappingAreas*(self: Area2D): bool =
  expandMethodBind(className Area2D, "has_overlapping_areas", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc overlapsBody*(self: Area2D; body: Node): bool =
  expandMethodBind(className Area2D, "overlaps_body", 3093956946)
  var `?param` = [getPtr body]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc overlapsArea*(self: Area2D; area: Node): bool =
  expandMethodBind(className Area2D, "overlaps_area", 3093956946)
  var `?param` = [getPtr area]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setAudioBusName*(self: Area2D; name: StringName): void =
  expandMethodBind(className Area2D, "set_audio_bus_name", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAudioBusName*(self: Area2D): StringName =
  expandMethodBind(className Area2D, "get_audio_bus_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setAudioBusOverride*(self: Area2D; enable: bool): void =
  expandMethodBind(className Area2D, "set_audio_bus_override", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isOverridingAudioBus*(self: Area2D): bool =
  expandMethodBind(className Area2D, "is_overriding_audio_bus", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template monitoring*(self: Area2D): untyped = self.isMonitoring()
template `monitoring=`*(self: Area2D; value) = self.setMonitoring(value)

template monitorable*(self: Area2D): untyped = self.isMonitorable()
template `monitorable=`*(self: Area2D; value) = self.setMonitorable(value)

template priority*(self: Area2D): untyped = self.getPriority()
template `priority=`*(self: Area2D; value) = self.setPriority(value)

template gravitySpaceOverride*(self: Area2D): untyped = self.getGravitySpaceOverrideMode()
template `gravitySpaceOverride=`*(self: Area2D; value) = self.setGravitySpaceOverrideMode(value)

template gravityPoint*(self: Area2D): untyped = self.isGravityAPoint()
template `gravityPoint=`*(self: Area2D; value) = self.setGravityIsPoint(value)

template gravityPointUnitDistance*(self: Area2D): untyped = self.getGravityPointUnitDistance()
template `gravityPointUnitDistance=`*(self: Area2D; value) = self.setGravityPointUnitDistance(value)

template gravityPointCenter*(self: Area2D): untyped = self.getGravityPointCenter()
template `gravityPointCenter=`*(self: Area2D; value) = self.setGravityPointCenter(value)

template gravityDirection*(self: Area2D): untyped = self.getGravityDirection()
template `gravityDirection=`*(self: Area2D; value) = self.setGravityDirection(value)

template gravity*(self: Area2D): untyped = self.getGravity()
template `gravity=`*(self: Area2D; value) = self.setGravity(value)

template linearDampSpaceOverride*(self: Area2D): untyped = self.getLinearDampSpaceOverrideMode()
template `linearDampSpaceOverride=`*(self: Area2D; value) = self.setLinearDampSpaceOverrideMode(value)

template linearDamp*(self: Area2D): untyped = self.getLinearDamp()
template `linearDamp=`*(self: Area2D; value) = self.setLinearDamp(value)

template angularDampSpaceOverride*(self: Area2D): untyped = self.getAngularDampSpaceOverrideMode()
template `angularDampSpaceOverride=`*(self: Area2D; value) = self.setAngularDampSpaceOverrideMode(value)

template angularDamp*(self: Area2D): untyped = self.getAngularDamp()
template `angularDamp=`*(self: Area2D; value) = self.setAngularDamp(value)

template audioBusOverride*(self: Area2D): untyped = self.isOverridingAudioBus()
template `audioBusOverride=`*(self: Area2D; value) = self.setAudioBusOverride(value)

template audioBusName*(self: Area2D): untyped = self.getAudioBusName()
template `audioBusName=`*(self: Area2D; value) = self.setAudioBusName(value)

const Area2D_vmap =
  CollisionObject2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Area2D]): Table[string, string] = Area2D_vmap

proc bodyShapeEntered*(self: Area2D; bodyRid: Variant; body: Variant; bodyShapeIndex: Variant; localShapeIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_shape_entered")
  let args = [bodyRid, body, bodyShapeIndex, localShapeIndex]
  self.emitSignal(signalname, args)

proc bodyShapeExited*(self: Area2D; bodyRid: Variant; body: Variant; bodyShapeIndex: Variant; localShapeIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_shape_exited")
  let args = [bodyRid, body, bodyShapeIndex, localShapeIndex]
  self.emitSignal(signalname, args)

proc bodyEntered*(self: Area2D; body: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_entered")
  let args = [body]
  self.emitSignal(signalname, args)

proc bodyExited*(self: Area2D; body: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_exited")
  let args = [body]
  self.emitSignal(signalname, args)

proc areaShapeEntered*(self: Area2D; areaRid: Variant; area: Variant; areaShapeIndex: Variant; localShapeIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("area_shape_entered")
  let args = [areaRid, area, areaShapeIndex, localShapeIndex]
  self.emitSignal(signalname, args)

proc areaShapeExited*(self: Area2D; areaRid: Variant; area: Variant; areaShapeIndex: Variant; localShapeIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("area_shape_exited")
  let args = [areaRid, area, areaShapeIndex, localShapeIndex]
  self.emitSignal(signalname, args)

proc areaEntered*(self: Area2D; area: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("area_entered")
  let args = [area]
  self.emitSignal(signalname, args)

proc areaExited*(self: Area2D; area: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("area_exited")
  let args = [area]
  self.emitSignal(signalname, args)
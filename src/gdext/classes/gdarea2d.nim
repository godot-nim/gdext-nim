{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcollisionobject2d; export gdcollisionobject2d

expandOnClassImported(Area2D, CollisionObject2D)

proc setGravitySpaceOverrideMode*(self: Area2D; spaceOverrideMode: Area2D_SpaceOverride): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_gravity_space_override_mode", 2879900038)
  methodbind.ptrcall(self, [getPtr spaceOverrideMode], void)

proc getGravitySpaceOverrideMode*(self: Area2D): Area2D_SpaceOverride =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "get_gravity_space_override_mode", 3990256304)
  methodbind.ptrcall(self, [], Area2D_SpaceOverride)

proc setGravityIsPoint*(self: Area2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_gravity_is_point", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isGravityAPoint*(self: Area2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "is_gravity_a_point", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setGravityPointUnitDistance*(self: Area2D; distanceScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_gravity_point_unit_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distanceScale], void)

proc getGravityPointUnitDistance*(self: Area2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "get_gravity_point_unit_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setGravityPointCenter*(self: Area2D; center: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_gravity_point_center", 743155724)
  methodbind.ptrcall(self, [getPtr center], void)

proc getGravityPointCenter*(self: Area2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "get_gravity_point_center", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setGravityDirection*(self: Area2D; direction: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_gravity_direction", 743155724)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getGravityDirection*(self: Area2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "get_gravity_direction", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setGravity*(self: Area2D; gravity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_gravity", 373806689)
  methodbind.ptrcall(self, [getPtr gravity], void)

proc getGravity*(self: Area2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "get_gravity", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setLinearDampSpaceOverrideMode*(self: Area2D; spaceOverrideMode: Area2D_SpaceOverride): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_linear_damp_space_override_mode", 2879900038)
  methodbind.ptrcall(self, [getPtr spaceOverrideMode], void)

proc getLinearDampSpaceOverrideMode*(self: Area2D): Area2D_SpaceOverride =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "get_linear_damp_space_override_mode", 3990256304)
  methodbind.ptrcall(self, [], Area2D_SpaceOverride)

proc setAngularDampSpaceOverrideMode*(self: Area2D; spaceOverrideMode: Area2D_SpaceOverride): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_angular_damp_space_override_mode", 2879900038)
  methodbind.ptrcall(self, [getPtr spaceOverrideMode], void)

proc getAngularDampSpaceOverrideMode*(self: Area2D): Area2D_SpaceOverride =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "get_angular_damp_space_override_mode", 3990256304)
  methodbind.ptrcall(self, [], Area2D_SpaceOverride)

proc setLinearDamp*(self: Area2D; linearDamp: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_linear_damp", 373806689)
  methodbind.ptrcall(self, [getPtr linearDamp], void)

proc getLinearDamp*(self: Area2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "get_linear_damp", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAngularDamp*(self: Area2D; angularDamp: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_angular_damp", 373806689)
  methodbind.ptrcall(self, [getPtr angularDamp], void)

proc getAngularDamp*(self: Area2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "get_angular_damp", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPriority*(self: Area2D; priority: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_priority", 1286410249)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getPriority*(self: Area2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "get_priority", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMonitoring*(self: Area2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_monitoring", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isMonitoring*(self: Area2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "is_monitoring", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMonitorable*(self: Area2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_monitorable", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isMonitorable*(self: Area2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "is_monitorable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getOverlappingBodies*(self: Area2D): TypedArray[Node2D] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "get_overlapping_bodies", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Node2D])

proc getOverlappingAreas*(self: Area2D): TypedArray[Area2D] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "get_overlapping_areas", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Area2D])

proc hasOverlappingBodies*(self: Area2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "has_overlapping_bodies", 36873697)
  methodbind.ptrcall(self, [], bool)

proc hasOverlappingAreas*(self: Area2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "has_overlapping_areas", 36873697)
  methodbind.ptrcall(self, [], bool)

proc overlapsBody*(self: Area2D; body: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "overlaps_body", 3093956946)
  methodbind.ptrcall(self, [getPtr body], bool)

proc overlapsArea*(self: Area2D; area: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "overlaps_area", 3093956946)
  methodbind.ptrcall(self, [getPtr area], bool)

proc setAudioBusName*(self: Area2D; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_audio_bus_name", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getAudioBusName*(self: Area2D): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "get_audio_bus_name", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setAudioBusOverride*(self: Area2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "set_audio_bus_override", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isOverridingAudioBus*(self: Area2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Area2D, "is_overriding_audio_bus", 36873697)
  methodbind.ptrcall(self, [], bool)

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

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsbody2d; export gdphysicsbody2d

expandOnClassImported(CharacterBody2D, PhysicsBody2D)

proc moveAndSlide*(self: CharacterBody2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "move_and_slide", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc applyFloorSnap*(self: CharacterBody2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "apply_floor_snap", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setVelocity*(self: CharacterBody2D; velocity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_velocity", 743155724)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc getVelocity*(self: CharacterBody2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_velocity", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setSafeMargin*(self: CharacterBody2D; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_safe_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getSafeMargin*(self: CharacterBody2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_safe_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc isFloorStopOnSlopeEnabled*(self: CharacterBody2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "is_floor_stop_on_slope_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFloorStopOnSlopeEnabled*(self: CharacterBody2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_floor_stop_on_slope_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc setFloorConstantSpeedEnabled*(self: CharacterBody2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_floor_constant_speed_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isFloorConstantSpeedEnabled*(self: CharacterBody2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "is_floor_constant_speed_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFloorBlockOnWallEnabled*(self: CharacterBody2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_floor_block_on_wall_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isFloorBlockOnWallEnabled*(self: CharacterBody2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "is_floor_block_on_wall_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSlideOnCeilingEnabled*(self: CharacterBody2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_slide_on_ceiling_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isSlideOnCeilingEnabled*(self: CharacterBody2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "is_slide_on_ceiling_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPlatformFloorLayers*(self: CharacterBody2D; excludeLayer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_platform_floor_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr excludeLayer], void)

proc getPlatformFloorLayers*(self: CharacterBody2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_platform_floor_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setPlatformWallLayers*(self: CharacterBody2D; excludeLayer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_platform_wall_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr excludeLayer], void)

proc getPlatformWallLayers*(self: CharacterBody2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_platform_wall_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc getMaxSlides*(self: CharacterBody2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_max_slides", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMaxSlides*(self: CharacterBody2D; maxSlides: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_max_slides", 1286410249)
  methodbind.ptrcall(self, [getPtr maxSlides], void)

proc getFloorMaxAngle*(self: CharacterBody2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_floor_max_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFloorMaxAngle*(self: CharacterBody2D; radians: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_floor_max_angle", 373806689)
  methodbind.ptrcall(self, [getPtr radians], void)

proc getFloorSnapLength*(self: CharacterBody2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_floor_snap_length", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setFloorSnapLength*(self: CharacterBody2D; floorSnapLength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_floor_snap_length", 373806689)
  methodbind.ptrcall(self, [getPtr floorSnapLength], void)

proc getWallMinSlideAngle*(self: CharacterBody2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_wall_min_slide_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setWallMinSlideAngle*(self: CharacterBody2D; radians: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_wall_min_slide_angle", 373806689)
  methodbind.ptrcall(self, [getPtr radians], void)

proc getUpDirection*(self: CharacterBody2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_up_direction", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setUpDirection*(self: CharacterBody2D; upDirection: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_up_direction", 743155724)
  methodbind.ptrcall(self, [getPtr upDirection], void)

proc setMotionMode*(self: CharacterBody2D; mode: CharacterBody2D_MotionMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_motion_mode", 1224392233)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getMotionMode*(self: CharacterBody2D): CharacterBody2D_MotionMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_motion_mode", 1160151236)
  methodbind.ptrcall(self, [], CharacterBody2D_MotionMode)

proc setPlatformOnLeave*(self: CharacterBody2D; onLeaveApplyVelocity: CharacterBody2D_PlatformOnLeave): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "set_platform_on_leave", 2423324375)
  methodbind.ptrcall(self, [getPtr onLeaveApplyVelocity], void)

proc getPlatformOnLeave*(self: CharacterBody2D): CharacterBody2D_PlatformOnLeave =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_platform_on_leave", 4054324341)
  methodbind.ptrcall(self, [], CharacterBody2D_PlatformOnLeave)

proc isOnFloor*(self: CharacterBody2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "is_on_floor", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isOnFloorOnly*(self: CharacterBody2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "is_on_floor_only", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isOnCeiling*(self: CharacterBody2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "is_on_ceiling", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isOnCeilingOnly*(self: CharacterBody2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "is_on_ceiling_only", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isOnWall*(self: CharacterBody2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "is_on_wall", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isOnWallOnly*(self: CharacterBody2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "is_on_wall_only", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getFloorNormal*(self: CharacterBody2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_floor_normal", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getWallNormal*(self: CharacterBody2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_wall_normal", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getLastMotion*(self: CharacterBody2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_last_motion", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getPositionDelta*(self: CharacterBody2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_position_delta", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getRealVelocity*(self: CharacterBody2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_real_velocity", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getFloorAngle*(self: CharacterBody2D; upDirection: Vector2 = vector2(0, -1)): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_floor_angle", 2841063350)
  methodbind.ptrcall(self, [getPtr upDirection], Float)

proc getPlatformVelocity*(self: CharacterBody2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_platform_velocity", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getSlideCollisionCount*(self: CharacterBody2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_slide_collision_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSlideCollision*(self: CharacterBody2D; slideIdx: int32): gdref KinematicCollision2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_slide_collision", 860659811)
  methodbind.ptrcall(self, [getPtr slideIdx], gdref KinematicCollision2D)

proc getLastSlideCollision*(self: CharacterBody2D): gdref KinematicCollision2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CharacterBody2D, "get_last_slide_collision", 2161834755)
  methodbind.ptrcall(self, [], gdref KinematicCollision2D)

template motionMode*(self: CharacterBody2D): untyped = self.getMotionMode()
template `motionMode=`*(self: CharacterBody2D; value) = self.setMotionMode(value)

template upDirection*(self: CharacterBody2D): untyped = self.getUpDirection()
template `upDirection=`*(self: CharacterBody2D; value) = self.setUpDirection(value)

template velocity*(self: CharacterBody2D): untyped = self.getVelocity()
template `velocity=`*(self: CharacterBody2D; value) = self.setVelocity(value)

template slideOnCeiling*(self: CharacterBody2D): untyped = self.isSlideOnCeilingEnabled()
template `slideOnCeiling=`*(self: CharacterBody2D; value) = self.setSlideOnCeilingEnabled(value)

template maxSlides*(self: CharacterBody2D): untyped = self.getMaxSlides()
template `maxSlides=`*(self: CharacterBody2D; value) = self.setMaxSlides(value)

template wallMinSlideAngle*(self: CharacterBody2D): untyped = self.getWallMinSlideAngle()
template `wallMinSlideAngle=`*(self: CharacterBody2D; value) = self.setWallMinSlideAngle(value)

template floorStopOnSlope*(self: CharacterBody2D): untyped = self.isFloorStopOnSlopeEnabled()
template `floorStopOnSlope=`*(self: CharacterBody2D; value) = self.setFloorStopOnSlopeEnabled(value)

template floorConstantSpeed*(self: CharacterBody2D): untyped = self.isFloorConstantSpeedEnabled()
template `floorConstantSpeed=`*(self: CharacterBody2D; value) = self.setFloorConstantSpeedEnabled(value)

template floorBlockOnWall*(self: CharacterBody2D): untyped = self.isFloorBlockOnWallEnabled()
template `floorBlockOnWall=`*(self: CharacterBody2D; value) = self.setFloorBlockOnWallEnabled(value)

template floorMaxAngle*(self: CharacterBody2D): untyped = self.getFloorMaxAngle()
template `floorMaxAngle=`*(self: CharacterBody2D; value) = self.setFloorMaxAngle(value)

template floorSnapLength*(self: CharacterBody2D): untyped = self.getFloorSnapLength()
template `floorSnapLength=`*(self: CharacterBody2D; value) = self.setFloorSnapLength(value)

template platformOnLeave*(self: CharacterBody2D): untyped = self.getPlatformOnLeave()
template `platformOnLeave=`*(self: CharacterBody2D; value) = self.setPlatformOnLeave(value)

template platformFloorLayers*(self: CharacterBody2D): untyped = self.getPlatformFloorLayers()
template `platformFloorLayers=`*(self: CharacterBody2D; value) = self.setPlatformFloorLayers(value)

template platformWallLayers*(self: CharacterBody2D): untyped = self.getPlatformWallLayers()
template `platformWallLayers=`*(self: CharacterBody2D; value) = self.setPlatformWallLayers(value)

template safeMargin*(self: CharacterBody2D): untyped = self.getSafeMargin()
template `safeMargin=`*(self: CharacterBody2D; value) = self.setSafeMargin(value)

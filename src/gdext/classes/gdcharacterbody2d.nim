{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsbody2d; export gdphysicsbody2d

proc moveAndSlide*(self: CharacterBody2D): bool =
  expandMethodBind(className CharacterBody2D, "move_and_slide", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc applyFloorSnap*(self: CharacterBody2D): void =
  expandMethodBind(className CharacterBody2D, "apply_floor_snap", 3218959716)
  methodbind.ptrcall(self, [])

proc setVelocity*(self: CharacterBody2D; velocity: Vector2): void =
  expandMethodBind(className CharacterBody2D, "set_velocity", 743155724)
  methodbind.ptrcall(self, [getPtr velocity])

proc getVelocity*(self: CharacterBody2D): Vector2 =
  expandMethodBind(className CharacterBody2D, "get_velocity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setSafeMargin*(self: CharacterBody2D; margin: Float): void =
  expandMethodBind(className CharacterBody2D, "set_safe_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin])

proc getSafeMargin*(self: CharacterBody2D): Float =
  expandMethodBind(className CharacterBody2D, "get_safe_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc isFloorStopOnSlopeEnabled*(self: CharacterBody2D): bool =
  expandMethodBind(className CharacterBody2D, "is_floor_stop_on_slope_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFloorStopOnSlopeEnabled*(self: CharacterBody2D; enabled: bool): void =
  expandMethodBind(className CharacterBody2D, "set_floor_stop_on_slope_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc setFloorConstantSpeedEnabled*(self: CharacterBody2D; enabled: bool): void =
  expandMethodBind(className CharacterBody2D, "set_floor_constant_speed_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isFloorConstantSpeedEnabled*(self: CharacterBody2D): bool =
  expandMethodBind(className CharacterBody2D, "is_floor_constant_speed_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFloorBlockOnWallEnabled*(self: CharacterBody2D; enabled: bool): void =
  expandMethodBind(className CharacterBody2D, "set_floor_block_on_wall_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isFloorBlockOnWallEnabled*(self: CharacterBody2D): bool =
  expandMethodBind(className CharacterBody2D, "is_floor_block_on_wall_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setSlideOnCeilingEnabled*(self: CharacterBody2D; enabled: bool): void =
  expandMethodBind(className CharacterBody2D, "set_slide_on_ceiling_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isSlideOnCeilingEnabled*(self: CharacterBody2D): bool =
  expandMethodBind(className CharacterBody2D, "is_slide_on_ceiling_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setPlatformFloorLayers*(self: CharacterBody2D; excludeLayer: uint32): void =
  expandMethodBind(className CharacterBody2D, "set_platform_floor_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr excludeLayer])

proc getPlatformFloorLayers*(self: CharacterBody2D): uint32 =
  expandMethodBind(className CharacterBody2D, "get_platform_floor_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setPlatformWallLayers*(self: CharacterBody2D; excludeLayer: uint32): void =
  expandMethodBind(className CharacterBody2D, "set_platform_wall_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr excludeLayer])

proc getPlatformWallLayers*(self: CharacterBody2D): uint32 =
  expandMethodBind(className CharacterBody2D, "get_platform_wall_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc getMaxSlides*(self: CharacterBody2D): int32 =
  expandMethodBind(className CharacterBody2D, "get_max_slides", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setMaxSlides*(self: CharacterBody2D; maxSlides: int32): void =
  expandMethodBind(className CharacterBody2D, "set_max_slides", 1286410249)
  methodbind.ptrcall(self, [getPtr maxSlides])

proc getFloorMaxAngle*(self: CharacterBody2D): Float =
  expandMethodBind(className CharacterBody2D, "get_floor_max_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setFloorMaxAngle*(self: CharacterBody2D; radians: Float): void =
  expandMethodBind(className CharacterBody2D, "set_floor_max_angle", 373806689)
  methodbind.ptrcall(self, [getPtr radians])

proc getFloorSnapLength*(self: CharacterBody2D): Float =
  expandMethodBind(className CharacterBody2D, "get_floor_snap_length", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setFloorSnapLength*(self: CharacterBody2D; floorSnapLength: Float): void =
  expandMethodBind(className CharacterBody2D, "set_floor_snap_length", 373806689)
  methodbind.ptrcall(self, [getPtr floorSnapLength])

proc getWallMinSlideAngle*(self: CharacterBody2D): Float =
  expandMethodBind(className CharacterBody2D, "get_wall_min_slide_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setWallMinSlideAngle*(self: CharacterBody2D; radians: Float): void =
  expandMethodBind(className CharacterBody2D, "set_wall_min_slide_angle", 373806689)
  methodbind.ptrcall(self, [getPtr radians])

proc getUpDirection*(self: CharacterBody2D): Vector2 =
  expandMethodBind(className CharacterBody2D, "get_up_direction", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setUpDirection*(self: CharacterBody2D; upDirection: Vector2): void =
  expandMethodBind(className CharacterBody2D, "set_up_direction", 743155724)
  methodbind.ptrcall(self, [getPtr upDirection])

proc setMotionMode*(self: CharacterBody2D; mode: CharacterBody2D_MotionMode): void =
  expandMethodBind(className CharacterBody2D, "set_motion_mode", 1224392233)
  methodbind.ptrcall(self, [getPtr mode])

proc getMotionMode*(self: CharacterBody2D): CharacterBody2D_MotionMode =
  expandMethodBind(className CharacterBody2D, "get_motion_mode", 1160151236)
  var ret: encoded CharacterBody2D_MotionMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(CharacterBody2D_MotionMode)

proc setPlatformOnLeave*(self: CharacterBody2D; onLeaveApplyVelocity: CharacterBody2D_PlatformOnLeave): void =
  expandMethodBind(className CharacterBody2D, "set_platform_on_leave", 2423324375)
  methodbind.ptrcall(self, [getPtr onLeaveApplyVelocity])

proc getPlatformOnLeave*(self: CharacterBody2D): CharacterBody2D_PlatformOnLeave =
  expandMethodBind(className CharacterBody2D, "get_platform_on_leave", 4054324341)
  var ret: encoded CharacterBody2D_PlatformOnLeave
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(CharacterBody2D_PlatformOnLeave)

proc isOnFloor*(self: CharacterBody2D): bool =
  expandMethodBind(className CharacterBody2D, "is_on_floor", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isOnFloorOnly*(self: CharacterBody2D): bool =
  expandMethodBind(className CharacterBody2D, "is_on_floor_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isOnCeiling*(self: CharacterBody2D): bool =
  expandMethodBind(className CharacterBody2D, "is_on_ceiling", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isOnCeilingOnly*(self: CharacterBody2D): bool =
  expandMethodBind(className CharacterBody2D, "is_on_ceiling_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isOnWall*(self: CharacterBody2D): bool =
  expandMethodBind(className CharacterBody2D, "is_on_wall", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isOnWallOnly*(self: CharacterBody2D): bool =
  expandMethodBind(className CharacterBody2D, "is_on_wall_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getFloorNormal*(self: CharacterBody2D): Vector2 =
  expandMethodBind(className CharacterBody2D, "get_floor_normal", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getWallNormal*(self: CharacterBody2D): Vector2 =
  expandMethodBind(className CharacterBody2D, "get_wall_normal", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getLastMotion*(self: CharacterBody2D): Vector2 =
  expandMethodBind(className CharacterBody2D, "get_last_motion", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getPositionDelta*(self: CharacterBody2D): Vector2 =
  expandMethodBind(className CharacterBody2D, "get_position_delta", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getRealVelocity*(self: CharacterBody2D): Vector2 =
  expandMethodBind(className CharacterBody2D, "get_real_velocity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getFloorAngle*(self: CharacterBody2D; upDirection: Vector2 = vector2(0, -1)): Float =
  expandMethodBind(className CharacterBody2D, "get_floor_angle", 2841063350)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr upDirection], addr ret)
  (addr ret).decode_result(Float)

proc getPlatformVelocity*(self: CharacterBody2D): Vector2 =
  expandMethodBind(className CharacterBody2D, "get_platform_velocity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getSlideCollisionCount*(self: CharacterBody2D): int32 =
  expandMethodBind(className CharacterBody2D, "get_slide_collision_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getSlideCollision*(self: CharacterBody2D; slideIdx: int32): gdref KinematicCollision2D =
  expandMethodBind(className CharacterBody2D, "get_slide_collision", 860659811)
  var ret: encoded gdref KinematicCollision2D
  methodbind.ptrcall(self, [getPtr slideIdx], addr ret)
  (addr ret).decode_result(gdref KinematicCollision2D)

proc getLastSlideCollision*(self: CharacterBody2D): gdref KinematicCollision2D =
  expandMethodBind(className CharacterBody2D, "get_last_slide_collision", 2161834755)
  var ret: encoded gdref KinematicCollision2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref KinematicCollision2D)

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

const CharacterBody2D_vmap =
  PhysicsBody2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CharacterBody2D]): Table[string, string] = CharacterBody2D_vmap
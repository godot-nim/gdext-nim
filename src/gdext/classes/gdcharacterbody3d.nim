{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsbody3d; export gdphysicsbody3d

proc moveAndSlide*(self: CharacterBody3D): bool =
  expandMethodBind(className CharacterBody3D, "move_and_slide", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc applyFloorSnap*(self: CharacterBody3D): void =
  expandMethodBind(className CharacterBody3D, "apply_floor_snap", 3218959716)
  methodbind.ptrcall(self, nil)

proc setVelocity*(self: CharacterBody3D; velocity: Vector3): void =
  expandMethodBind(className CharacterBody3D, "set_velocity", 3460891852)
  var `?param` = [getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVelocity*(self: CharacterBody3D): Vector3 =
  expandMethodBind(className CharacterBody3D, "get_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setSafeMargin*(self: CharacterBody3D; margin: Float): void =
  expandMethodBind(className CharacterBody3D, "set_safe_margin", 373806689)
  var `?param` = [getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSafeMargin*(self: CharacterBody3D): Float =
  expandMethodBind(className CharacterBody3D, "get_safe_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc isFloorStopOnSlopeEnabled*(self: CharacterBody3D): bool =
  expandMethodBind(className CharacterBody3D, "is_floor_stop_on_slope_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFloorStopOnSlopeEnabled*(self: CharacterBody3D; enabled: bool): void =
  expandMethodBind(className CharacterBody3D, "set_floor_stop_on_slope_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFloorConstantSpeedEnabled*(self: CharacterBody3D; enabled: bool): void =
  expandMethodBind(className CharacterBody3D, "set_floor_constant_speed_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFloorConstantSpeedEnabled*(self: CharacterBody3D): bool =
  expandMethodBind(className CharacterBody3D, "is_floor_constant_speed_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFloorBlockOnWallEnabled*(self: CharacterBody3D; enabled: bool): void =
  expandMethodBind(className CharacterBody3D, "set_floor_block_on_wall_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFloorBlockOnWallEnabled*(self: CharacterBody3D): bool =
  expandMethodBind(className CharacterBody3D, "is_floor_block_on_wall_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSlideOnCeilingEnabled*(self: CharacterBody3D; enabled: bool): void =
  expandMethodBind(className CharacterBody3D, "set_slide_on_ceiling_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSlideOnCeilingEnabled*(self: CharacterBody3D): bool =
  expandMethodBind(className CharacterBody3D, "is_slide_on_ceiling_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPlatformFloorLayers*(self: CharacterBody3D; excludeLayer: uint32): void =
  expandMethodBind(className CharacterBody3D, "set_platform_floor_layers", 1286410249)
  var `?param` = [getPtr excludeLayer]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPlatformFloorLayers*(self: CharacterBody3D): uint32 =
  expandMethodBind(className CharacterBody3D, "get_platform_floor_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setPlatformWallLayers*(self: CharacterBody3D; excludeLayer: uint32): void =
  expandMethodBind(className CharacterBody3D, "set_platform_wall_layers", 1286410249)
  var `?param` = [getPtr excludeLayer]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPlatformWallLayers*(self: CharacterBody3D): uint32 =
  expandMethodBind(className CharacterBody3D, "get_platform_wall_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc getMaxSlides*(self: CharacterBody3D): int32 =
  expandMethodBind(className CharacterBody3D, "get_max_slides", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMaxSlides*(self: CharacterBody3D; maxSlides: int32): void =
  expandMethodBind(className CharacterBody3D, "set_max_slides", 1286410249)
  var `?param` = [getPtr maxSlides]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFloorMaxAngle*(self: CharacterBody3D): Float =
  expandMethodBind(className CharacterBody3D, "get_floor_max_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFloorMaxAngle*(self: CharacterBody3D; radians: Float): void =
  expandMethodBind(className CharacterBody3D, "set_floor_max_angle", 373806689)
  var `?param` = [getPtr radians]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFloorSnapLength*(self: CharacterBody3D): Float =
  expandMethodBind(className CharacterBody3D, "get_floor_snap_length", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFloorSnapLength*(self: CharacterBody3D; floorSnapLength: Float): void =
  expandMethodBind(className CharacterBody3D, "set_floor_snap_length", 373806689)
  var `?param` = [getPtr floorSnapLength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWallMinSlideAngle*(self: CharacterBody3D): Float =
  expandMethodBind(className CharacterBody3D, "get_wall_min_slide_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setWallMinSlideAngle*(self: CharacterBody3D; radians: Float): void =
  expandMethodBind(className CharacterBody3D, "set_wall_min_slide_angle", 373806689)
  var `?param` = [getPtr radians]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUpDirection*(self: CharacterBody3D): Vector3 =
  expandMethodBind(className CharacterBody3D, "get_up_direction", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setUpDirection*(self: CharacterBody3D; upDirection: Vector3): void =
  expandMethodBind(className CharacterBody3D, "set_up_direction", 3460891852)
  var `?param` = [getPtr upDirection]
  methodbind.ptrcall(self, addr `?param`[0])

proc setMotionMode*(self: CharacterBody3D; mode: CharacterBody3D_MotionMode): void =
  expandMethodBind(className CharacterBody3D, "set_motion_mode", 2690739026)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMotionMode*(self: CharacterBody3D): CharacterBody3D_MotionMode =
  expandMethodBind(className CharacterBody3D, "get_motion_mode", 3529553604)
  var ret: encoded CharacterBody3D_MotionMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CharacterBody3D_MotionMode)

proc setPlatformOnLeave*(self: CharacterBody3D; onLeaveApplyVelocity: CharacterBody3D_PlatformOnLeave): void =
  expandMethodBind(className CharacterBody3D, "set_platform_on_leave", 1459986142)
  var `?param` = [getPtr onLeaveApplyVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPlatformOnLeave*(self: CharacterBody3D): CharacterBody3D_PlatformOnLeave =
  expandMethodBind(className CharacterBody3D, "get_platform_on_leave", 996491171)
  var ret: encoded CharacterBody3D_PlatformOnLeave
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CharacterBody3D_PlatformOnLeave)

proc isOnFloor*(self: CharacterBody3D): bool =
  expandMethodBind(className CharacterBody3D, "is_on_floor", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isOnFloorOnly*(self: CharacterBody3D): bool =
  expandMethodBind(className CharacterBody3D, "is_on_floor_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isOnCeiling*(self: CharacterBody3D): bool =
  expandMethodBind(className CharacterBody3D, "is_on_ceiling", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isOnCeilingOnly*(self: CharacterBody3D): bool =
  expandMethodBind(className CharacterBody3D, "is_on_ceiling_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isOnWall*(self: CharacterBody3D): bool =
  expandMethodBind(className CharacterBody3D, "is_on_wall", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isOnWallOnly*(self: CharacterBody3D): bool =
  expandMethodBind(className CharacterBody3D, "is_on_wall_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getFloorNormal*(self: CharacterBody3D): Vector3 =
  expandMethodBind(className CharacterBody3D, "get_floor_normal", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getWallNormal*(self: CharacterBody3D): Vector3 =
  expandMethodBind(className CharacterBody3D, "get_wall_normal", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getLastMotion*(self: CharacterBody3D): Vector3 =
  expandMethodBind(className CharacterBody3D, "get_last_motion", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getPositionDelta*(self: CharacterBody3D): Vector3 =
  expandMethodBind(className CharacterBody3D, "get_position_delta", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getRealVelocity*(self: CharacterBody3D): Vector3 =
  expandMethodBind(className CharacterBody3D, "get_real_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getFloorAngle*(self: CharacterBody3D; upDirection: Vector3 = vector3(0, 1, 0)): Float =
  expandMethodBind(className CharacterBody3D, "get_floor_angle", 2906300789)
  var `?param` = [getPtr upDirection]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getPlatformVelocity*(self: CharacterBody3D): Vector3 =
  expandMethodBind(className CharacterBody3D, "get_platform_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getPlatformAngularVelocity*(self: CharacterBody3D): Vector3 =
  expandMethodBind(className CharacterBody3D, "get_platform_angular_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getSlideCollisionCount*(self: CharacterBody3D): int32 =
  expandMethodBind(className CharacterBody3D, "get_slide_collision_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getSlideCollision*(self: CharacterBody3D; slideIdx: int32): gdref KinematicCollision3D =
  expandMethodBind(className CharacterBody3D, "get_slide_collision", 107003663)
  var `?param` = [getPtr slideIdx]
  var ret: encoded gdref KinematicCollision3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref KinematicCollision3D)

proc getLastSlideCollision*(self: CharacterBody3D): gdref KinematicCollision3D =
  expandMethodBind(className CharacterBody3D, "get_last_slide_collision", 186875014)
  var ret: encoded gdref KinematicCollision3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref KinematicCollision3D)

template motionMode*(self: CharacterBody3D): untyped = self.getMotionMode()
template `motionMode=`*(self: CharacterBody3D; value) = self.setMotionMode(value)

template upDirection*(self: CharacterBody3D): untyped = self.getUpDirection()
template `upDirection=`*(self: CharacterBody3D; value) = self.setUpDirection(value)

template slideOnCeiling*(self: CharacterBody3D): untyped = self.isSlideOnCeilingEnabled()
template `slideOnCeiling=`*(self: CharacterBody3D; value) = self.setSlideOnCeilingEnabled(value)

template velocity*(self: CharacterBody3D): untyped = self.getVelocity()
template `velocity=`*(self: CharacterBody3D; value) = self.setVelocity(value)

template maxSlides*(self: CharacterBody3D): untyped = self.getMaxSlides()
template `maxSlides=`*(self: CharacterBody3D; value) = self.setMaxSlides(value)

template wallMinSlideAngle*(self: CharacterBody3D): untyped = self.getWallMinSlideAngle()
template `wallMinSlideAngle=`*(self: CharacterBody3D; value) = self.setWallMinSlideAngle(value)

template floorStopOnSlope*(self: CharacterBody3D): untyped = self.isFloorStopOnSlopeEnabled()
template `floorStopOnSlope=`*(self: CharacterBody3D; value) = self.setFloorStopOnSlopeEnabled(value)

template floorConstantSpeed*(self: CharacterBody3D): untyped = self.isFloorConstantSpeedEnabled()
template `floorConstantSpeed=`*(self: CharacterBody3D; value) = self.setFloorConstantSpeedEnabled(value)

template floorBlockOnWall*(self: CharacterBody3D): untyped = self.isFloorBlockOnWallEnabled()
template `floorBlockOnWall=`*(self: CharacterBody3D; value) = self.setFloorBlockOnWallEnabled(value)

template floorMaxAngle*(self: CharacterBody3D): untyped = self.getFloorMaxAngle()
template `floorMaxAngle=`*(self: CharacterBody3D; value) = self.setFloorMaxAngle(value)

template floorSnapLength*(self: CharacterBody3D): untyped = self.getFloorSnapLength()
template `floorSnapLength=`*(self: CharacterBody3D; value) = self.setFloorSnapLength(value)

template platformOnLeave*(self: CharacterBody3D): untyped = self.getPlatformOnLeave()
template `platformOnLeave=`*(self: CharacterBody3D; value) = self.setPlatformOnLeave(value)

template platformFloorLayers*(self: CharacterBody3D): untyped = self.getPlatformFloorLayers()
template `platformFloorLayers=`*(self: CharacterBody3D; value) = self.setPlatformFloorLayers(value)

template platformWallLayers*(self: CharacterBody3D): untyped = self.getPlatformWallLayers()
template `platformWallLayers=`*(self: CharacterBody3D; value) = self.setPlatformWallLayers(value)

template safeMargin*(self: CharacterBody3D): untyped = self.getSafeMargin()
template `safeMargin=`*(self: CharacterBody3D; value) = self.setSafeMargin(value)

const CharacterBody3D_vmap =
  PhysicsBody3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CharacterBody3D]): Table[string, string] = CharacterBody3D_vmap
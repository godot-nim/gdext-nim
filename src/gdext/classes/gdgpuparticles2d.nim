{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(GPUParticles2D, Node2D)

proc setEmitting*(self: GPUParticles2D; emitting: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_emitting", 2586408642)
  methodbind.ptrcall(self, [getPtr emitting], void)

proc setAmount*(self: GPUParticles2D; amount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_amount", 1286410249)
  methodbind.ptrcall(self, [getPtr amount], void)

proc setLifetime*(self: GPUParticles2D; secs: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_lifetime", 373806689)
  methodbind.ptrcall(self, [getPtr secs], void)

proc setOneShot*(self: GPUParticles2D; secs: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_one_shot", 2586408642)
  methodbind.ptrcall(self, [getPtr secs], void)

proc setPreProcessTime*(self: GPUParticles2D; secs: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_pre_process_time", 373806689)
  methodbind.ptrcall(self, [getPtr secs], void)

proc setExplosivenessRatio*(self: GPUParticles2D; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_explosiveness_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc setRandomnessRatio*(self: GPUParticles2D; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_randomness_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc setVisibilityRect*(self: GPUParticles2D; visibilityRect: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_visibility_rect", 2046264180)
  methodbind.ptrcall(self, [getPtr visibilityRect], void)

proc setUseLocalCoordinates*(self: GPUParticles2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_use_local_coordinates", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc setFixedFps*(self: GPUParticles2D; fps: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_fixed_fps", 1286410249)
  methodbind.ptrcall(self, [getPtr fps], void)

proc setFractionalDelta*(self: GPUParticles2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_fractional_delta", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc setInterpolate*(self: GPUParticles2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_interpolate", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc setProcessMaterial*(self: GPUParticles2D; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_process_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc setSpeedScale*(self: GPUParticles2D; scale: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_speed_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale], void)

proc setCollisionBaseSize*(self: GPUParticles2D; size: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_collision_base_size", 373806689)
  methodbind.ptrcall(self, [getPtr size], void)

proc setInterpToEnd*(self: GPUParticles2D; interp: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_interp_to_end", 373806689)
  methodbind.ptrcall(self, [getPtr interp], void)

proc requestParticlesProcess*(self: GPUParticles2D; processTime: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "request_particles_process", 373806689)
  methodbind.ptrcall(self, [getPtr processTime], void)

proc isEmitting*(self: GPUParticles2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "is_emitting", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getAmount*(self: GPUParticles2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_amount", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getLifetime*(self: GPUParticles2D): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_lifetime", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getOneShot*(self: GPUParticles2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_one_shot", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getPreProcessTime*(self: GPUParticles2D): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_pre_process_time", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getExplosivenessRatio*(self: GPUParticles2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_explosiveness_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getRandomnessRatio*(self: GPUParticles2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_randomness_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getVisibilityRect*(self: GPUParticles2D): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_visibility_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc getUseLocalCoordinates*(self: GPUParticles2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_use_local_coordinates", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getFixedFps*(self: GPUParticles2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_fixed_fps", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getFractionalDelta*(self: GPUParticles2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_fractional_delta", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getInterpolate*(self: GPUParticles2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_interpolate", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getProcessMaterial*(self: GPUParticles2D): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_process_material", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

proc getSpeedScale*(self: GPUParticles2D): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_speed_scale", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getCollisionBaseSize*(self: GPUParticles2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_collision_base_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getInterpToEnd*(self: GPUParticles2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_interp_to_end", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDrawOrder*(self: GPUParticles2D; order: GPUParticles2D_DrawOrder): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_draw_order", 1939677959)
  methodbind.ptrcall(self, [getPtr order], void)

proc getDrawOrder*(self: GPUParticles2D): GPUParticles2D_DrawOrder =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_draw_order", 941479095)
  methodbind.ptrcall(self, [], GPUParticles2D_DrawOrder)

proc setTexture*(self: GPUParticles2D; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexture*(self: GPUParticles2D): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc captureRect*(self: GPUParticles2D): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "capture_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc restart*(self: GPUParticles2D; keepSeed: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "restart", 107499316)
  methodbind.ptrcall(self, [getPtr keepSeed], void)

proc setSubEmitter*(self: GPUParticles2D; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_sub_emitter", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getSubEmitter*(self: GPUParticles2D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_sub_emitter", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc emitParticle*(self: GPUParticles2D; xform: Transform2D; velocity: Vector2; color: Color; custom: Color; flags: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "emit_particle", 2179202058)
  methodbind.ptrcall(self, [getPtr xform, getPtr velocity, getPtr color, getPtr custom, getPtr flags], void)

proc setTrailEnabled*(self: GPUParticles2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_trail_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc setTrailLifetime*(self: GPUParticles2D; secs: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_trail_lifetime", 373806689)
  methodbind.ptrcall(self, [getPtr secs], void)

proc isTrailEnabled*(self: GPUParticles2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "is_trail_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getTrailLifetime*(self: GPUParticles2D): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_trail_lifetime", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setTrailSections*(self: GPUParticles2D; sections: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_trail_sections", 1286410249)
  methodbind.ptrcall(self, [getPtr sections], void)

proc getTrailSections*(self: GPUParticles2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_trail_sections", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setTrailSectionSubdivisions*(self: GPUParticles2D; subdivisions: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_trail_section_subdivisions", 1286410249)
  methodbind.ptrcall(self, [getPtr subdivisions], void)

proc getTrailSectionSubdivisions*(self: GPUParticles2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_trail_section_subdivisions", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc convertFromParticles*(self: GPUParticles2D; particles: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "convert_from_particles", 1078189570)
  methodbind.ptrcall(self, [getPtr particles], void)

proc setAmountRatio*(self: GPUParticles2D; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_amount_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc getAmountRatio*(self: GPUParticles2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_amount_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setUseFixedSeed*(self: GPUParticles2D; useFixedSeed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_use_fixed_seed", 2586408642)
  methodbind.ptrcall(self, [getPtr useFixedSeed], void)

proc getUseFixedSeed*(self: GPUParticles2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_use_fixed_seed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSeed*(self: GPUParticles2D; seed: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "set_seed", 1286410249)
  methodbind.ptrcall(self, [getPtr seed], void)

proc getSeed*(self: GPUParticles2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles2D, "get_seed", 3905245786)
  methodbind.ptrcall(self, [], uint32)

template emitting*(self: GPUParticles2D): untyped = self.isEmitting()
template `emitting=`*(self: GPUParticles2D; value) = self.setEmitting(value)

template amount*(self: GPUParticles2D): untyped = self.getAmount()
template `amount=`*(self: GPUParticles2D; value) = self.setAmount(value)

template amountRatio*(self: GPUParticles2D): untyped = self.getAmountRatio()
template `amountRatio=`*(self: GPUParticles2D; value) = self.setAmountRatio(value)

template subEmitter*(self: GPUParticles2D): untyped = self.getSubEmitter()
template `subEmitter=`*(self: GPUParticles2D; value) = self.setSubEmitter(value)

template texture*(self: GPUParticles2D): untyped = self.getTexture()
template `texture=`*(self: GPUParticles2D; value) = self.setTexture(value)

template lifetime*(self: GPUParticles2D): untyped = self.getLifetime()
template `lifetime=`*(self: GPUParticles2D; value) = self.setLifetime(value)

template interpToEnd*(self: GPUParticles2D): untyped = self.getInterpToEnd()
template `interpToEnd=`*(self: GPUParticles2D; value) = self.setInterpToEnd(value)

template oneShot*(self: GPUParticles2D): untyped = self.getOneShot()
template `oneShot=`*(self: GPUParticles2D; value) = self.setOneShot(value)

template preprocess*(self: GPUParticles2D): untyped = self.getPreProcessTime()
template `preprocess=`*(self: GPUParticles2D; value) = self.setPreProcessTime(value)

template speedScale*(self: GPUParticles2D): untyped = self.getSpeedScale()
template `speedScale=`*(self: GPUParticles2D; value) = self.setSpeedScale(value)

template explosiveness*(self: GPUParticles2D): untyped = self.getExplosivenessRatio()
template `explosiveness=`*(self: GPUParticles2D; value) = self.setExplosivenessRatio(value)

template randomness*(self: GPUParticles2D): untyped = self.getRandomnessRatio()
template `randomness=`*(self: GPUParticles2D; value) = self.setRandomnessRatio(value)

template useFixedSeed*(self: GPUParticles2D): untyped = self.getUseFixedSeed()
template `useFixedSeed=`*(self: GPUParticles2D; value) = self.setUseFixedSeed(value)

template seed*(self: GPUParticles2D): untyped = self.getSeed()
template `seed=`*(self: GPUParticles2D; value) = self.setSeed(value)

template fixedFps*(self: GPUParticles2D): untyped = self.getFixedFps()
template `fixedFps=`*(self: GPUParticles2D; value) = self.setFixedFps(value)

template interpolate*(self: GPUParticles2D): untyped = self.getInterpolate()
template `interpolate=`*(self: GPUParticles2D; value) = self.setInterpolate(value)

template fractDelta*(self: GPUParticles2D): untyped = self.getFractionalDelta()
template `fractDelta=`*(self: GPUParticles2D; value) = self.setFractionalDelta(value)

template collisionBaseSize*(self: GPUParticles2D): untyped = self.getCollisionBaseSize()
template `collisionBaseSize=`*(self: GPUParticles2D; value) = self.setCollisionBaseSize(value)

template visibilityRect*(self: GPUParticles2D): untyped = self.getVisibilityRect()
template `visibilityRect=`*(self: GPUParticles2D; value) = self.setVisibilityRect(value)

template localCoords*(self: GPUParticles2D): untyped = self.getUseLocalCoordinates()
template `localCoords=`*(self: GPUParticles2D; value) = self.setUseLocalCoordinates(value)

template drawOrder*(self: GPUParticles2D): untyped = self.getDrawOrder()
template `drawOrder=`*(self: GPUParticles2D; value) = self.setDrawOrder(value)

template trailEnabled*(self: GPUParticles2D): untyped = self.isTrailEnabled()
template `trailEnabled=`*(self: GPUParticles2D; value) = self.setTrailEnabled(value)

template trailLifetime*(self: GPUParticles2D): untyped = self.getTrailLifetime()
template `trailLifetime=`*(self: GPUParticles2D; value) = self.setTrailLifetime(value)

template trailSections*(self: GPUParticles2D): untyped = self.getTrailSections()
template `trailSections=`*(self: GPUParticles2D; value) = self.setTrailSections(value)

template trailSectionSubdivisions*(self: GPUParticles2D): untyped = self.getTrailSectionSubdivisions()
template `trailSectionSubdivisions=`*(self: GPUParticles2D; value) = self.setTrailSectionSubdivisions(value)

template processMaterial*(self: GPUParticles2D): untyped = self.getProcessMaterial()
template `processMaterial=`*(self: GPUParticles2D; value) = self.setProcessMaterial(value)

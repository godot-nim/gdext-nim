{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgeometryinstance3d; export gdgeometryinstance3d

expandOnClassImported(GPUParticles3D, GeometryInstance3D)

const MaxDrawPasses* = 4

proc setEmitting*(self: GPUParticles3D; emitting: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_emitting", 2586408642)
  methodbind.ptrcall(self, [getPtr emitting], void)

proc setAmount*(self: GPUParticles3D; amount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_amount", 1286410249)
  methodbind.ptrcall(self, [getPtr amount], void)

proc setLifetime*(self: GPUParticles3D; secs: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_lifetime", 373806689)
  methodbind.ptrcall(self, [getPtr secs], void)

proc setOneShot*(self: GPUParticles3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_one_shot", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc setPreProcessTime*(self: GPUParticles3D; secs: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_pre_process_time", 373806689)
  methodbind.ptrcall(self, [getPtr secs], void)

proc setExplosivenessRatio*(self: GPUParticles3D; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_explosiveness_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc setRandomnessRatio*(self: GPUParticles3D; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_randomness_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc setVisibilityAabb*(self: GPUParticles3D; aabb: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_visibility_aabb", 259215842)
  methodbind.ptrcall(self, [getPtr aabb], void)

proc setUseLocalCoordinates*(self: GPUParticles3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_use_local_coordinates", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc setFixedFps*(self: GPUParticles3D; fps: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_fixed_fps", 1286410249)
  methodbind.ptrcall(self, [getPtr fps], void)

proc setFractionalDelta*(self: GPUParticles3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_fractional_delta", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc setInterpolate*(self: GPUParticles3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_interpolate", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc setProcessMaterial*(self: GPUParticles3D; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_process_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc setSpeedScale*(self: GPUParticles3D; scale: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_speed_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale], void)

proc setCollisionBaseSize*(self: GPUParticles3D; size: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_collision_base_size", 373806689)
  methodbind.ptrcall(self, [getPtr size], void)

proc setInterpToEnd*(self: GPUParticles3D; interp: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_interp_to_end", 373806689)
  methodbind.ptrcall(self, [getPtr interp], void)

proc isEmitting*(self: GPUParticles3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "is_emitting", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getAmount*(self: GPUParticles3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_amount", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getLifetime*(self: GPUParticles3D): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_lifetime", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getOneShot*(self: GPUParticles3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_one_shot", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getPreProcessTime*(self: GPUParticles3D): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_pre_process_time", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getExplosivenessRatio*(self: GPUParticles3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_explosiveness_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getRandomnessRatio*(self: GPUParticles3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_randomness_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getVisibilityAabb*(self: GPUParticles3D): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_visibility_aabb", 1068685055)
  methodbind.ptrcall(self, [], AABB)

proc getUseLocalCoordinates*(self: GPUParticles3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_use_local_coordinates", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getFixedFps*(self: GPUParticles3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_fixed_fps", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getFractionalDelta*(self: GPUParticles3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_fractional_delta", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getInterpolate*(self: GPUParticles3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_interpolate", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getProcessMaterial*(self: GPUParticles3D): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_process_material", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

proc getSpeedScale*(self: GPUParticles3D): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_speed_scale", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getCollisionBaseSize*(self: GPUParticles3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_collision_base_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getInterpToEnd*(self: GPUParticles3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_interp_to_end", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setUseFixedSeed*(self: GPUParticles3D; useFixedSeed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_use_fixed_seed", 2586408642)
  methodbind.ptrcall(self, [getPtr useFixedSeed], void)

proc getUseFixedSeed*(self: GPUParticles3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_use_fixed_seed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSeed*(self: GPUParticles3D; seed: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_seed", 1286410249)
  methodbind.ptrcall(self, [getPtr seed], void)

proc getSeed*(self: GPUParticles3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_seed", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setDrawOrder*(self: GPUParticles3D; order: GPUParticles3D_DrawOrder): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_draw_order", 1208074815)
  methodbind.ptrcall(self, [getPtr order], void)

proc getDrawOrder*(self: GPUParticles3D): GPUParticles3D_DrawOrder =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_draw_order", 3770381780)
  methodbind.ptrcall(self, [], GPUParticles3D_DrawOrder)

proc setDrawPasses*(self: GPUParticles3D; passes: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_draw_passes", 1286410249)
  methodbind.ptrcall(self, [getPtr passes], void)

proc setDrawPassMesh*(self: GPUParticles3D; pass: int32; mesh: gdref Mesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_draw_pass_mesh", 969122797)
  methodbind.ptrcall(self, [getPtr pass, getPtr mesh], void)

proc getDrawPasses*(self: GPUParticles3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_draw_passes", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getDrawPassMesh*(self: GPUParticles3D; pass: int32): gdref Mesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_draw_pass_mesh", 1576363275)
  methodbind.ptrcall(self, [getPtr pass], gdref Mesh)

proc setSkin*(self: GPUParticles3D; skin: gdref Skin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_skin", 3971435618)
  methodbind.ptrcall(self, [getPtr skin], void)

proc getSkin*(self: GPUParticles3D): gdref Skin =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_skin", 2074563878)
  methodbind.ptrcall(self, [], gdref Skin)

proc restart*(self: GPUParticles3D; keepSeed: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "restart", 107499316)
  methodbind.ptrcall(self, [getPtr keepSeed], void)

proc captureAabb*(self: GPUParticles3D): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "capture_aabb", 1068685055)
  methodbind.ptrcall(self, [], AABB)

proc setSubEmitter*(self: GPUParticles3D; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_sub_emitter", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getSubEmitter*(self: GPUParticles3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_sub_emitter", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc emitParticle*(self: GPUParticles3D; xform: Transform3D; velocity: Vector3; color: Color; custom: Color; flags: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "emit_particle", 992173727)
  methodbind.ptrcall(self, [getPtr xform, getPtr velocity, getPtr color, getPtr custom, getPtr flags], void)

proc setTrailEnabled*(self: GPUParticles3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_trail_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc setTrailLifetime*(self: GPUParticles3D; secs: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_trail_lifetime", 373806689)
  methodbind.ptrcall(self, [getPtr secs], void)

proc isTrailEnabled*(self: GPUParticles3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "is_trail_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getTrailLifetime*(self: GPUParticles3D): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_trail_lifetime", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setTransformAlign*(self: GPUParticles3D; align: GPUParticles3D_TransformAlign): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_transform_align", 3892425954)
  methodbind.ptrcall(self, [getPtr align], void)

proc getTransformAlign*(self: GPUParticles3D): GPUParticles3D_TransformAlign =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_transform_align", 2100992166)
  methodbind.ptrcall(self, [], GPUParticles3D_TransformAlign)

proc convertFromParticles*(self: GPUParticles3D; particles: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "convert_from_particles", 1078189570)
  methodbind.ptrcall(self, [getPtr particles], void)

proc setAmountRatio*(self: GPUParticles3D; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "set_amount_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc getAmountRatio*(self: GPUParticles3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "get_amount_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc requestParticlesProcess*(self: GPUParticles3D; processTime: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GPUParticles3D, "request_particles_process", 373806689)
  methodbind.ptrcall(self, [getPtr processTime], void)

template emitting*(self: GPUParticles3D): untyped = self.isEmitting()
template `emitting=`*(self: GPUParticles3D; value) = self.setEmitting(value)

template amount*(self: GPUParticles3D): untyped = self.getAmount()
template `amount=`*(self: GPUParticles3D; value) = self.setAmount(value)

template amountRatio*(self: GPUParticles3D): untyped = self.getAmountRatio()
template `amountRatio=`*(self: GPUParticles3D; value) = self.setAmountRatio(value)

template subEmitter*(self: GPUParticles3D): untyped = self.getSubEmitter()
template `subEmitter=`*(self: GPUParticles3D; value) = self.setSubEmitter(value)

template lifetime*(self: GPUParticles3D): untyped = self.getLifetime()
template `lifetime=`*(self: GPUParticles3D; value) = self.setLifetime(value)

template interpToEnd*(self: GPUParticles3D): untyped = self.getInterpToEnd()
template `interpToEnd=`*(self: GPUParticles3D; value) = self.setInterpToEnd(value)

template oneShot*(self: GPUParticles3D): untyped = self.getOneShot()
template `oneShot=`*(self: GPUParticles3D; value) = self.setOneShot(value)

template preprocess*(self: GPUParticles3D): untyped = self.getPreProcessTime()
template `preprocess=`*(self: GPUParticles3D; value) = self.setPreProcessTime(value)

template speedScale*(self: GPUParticles3D): untyped = self.getSpeedScale()
template `speedScale=`*(self: GPUParticles3D; value) = self.setSpeedScale(value)

template explosiveness*(self: GPUParticles3D): untyped = self.getExplosivenessRatio()
template `explosiveness=`*(self: GPUParticles3D; value) = self.setExplosivenessRatio(value)

template randomness*(self: GPUParticles3D): untyped = self.getRandomnessRatio()
template `randomness=`*(self: GPUParticles3D; value) = self.setRandomnessRatio(value)

template useFixedSeed*(self: GPUParticles3D): untyped = self.getUseFixedSeed()
template `useFixedSeed=`*(self: GPUParticles3D; value) = self.setUseFixedSeed(value)

template seed*(self: GPUParticles3D): untyped = self.getSeed()
template `seed=`*(self: GPUParticles3D; value) = self.setSeed(value)

template fixedFps*(self: GPUParticles3D): untyped = self.getFixedFps()
template `fixedFps=`*(self: GPUParticles3D; value) = self.setFixedFps(value)

template interpolate*(self: GPUParticles3D): untyped = self.getInterpolate()
template `interpolate=`*(self: GPUParticles3D; value) = self.setInterpolate(value)

template fractDelta*(self: GPUParticles3D): untyped = self.getFractionalDelta()
template `fractDelta=`*(self: GPUParticles3D; value) = self.setFractionalDelta(value)

template collisionBaseSize*(self: GPUParticles3D): untyped = self.getCollisionBaseSize()
template `collisionBaseSize=`*(self: GPUParticles3D; value) = self.setCollisionBaseSize(value)

template visibilityAabb*(self: GPUParticles3D): untyped = self.getVisibilityAabb()
template `visibilityAabb=`*(self: GPUParticles3D; value) = self.setVisibilityAabb(value)

template localCoords*(self: GPUParticles3D): untyped = self.getUseLocalCoordinates()
template `localCoords=`*(self: GPUParticles3D; value) = self.setUseLocalCoordinates(value)

template drawOrder*(self: GPUParticles3D): untyped = self.getDrawOrder()
template `drawOrder=`*(self: GPUParticles3D; value) = self.setDrawOrder(value)

template transformAlign*(self: GPUParticles3D): untyped = self.getTransformAlign()
template `transformAlign=`*(self: GPUParticles3D; value) = self.setTransformAlign(value)

template trailEnabled*(self: GPUParticles3D): untyped = self.isTrailEnabled()
template `trailEnabled=`*(self: GPUParticles3D; value) = self.setTrailEnabled(value)

template trailLifetime*(self: GPUParticles3D): untyped = self.getTrailLifetime()
template `trailLifetime=`*(self: GPUParticles3D; value) = self.setTrailLifetime(value)

template processMaterial*(self: GPUParticles3D): untyped = self.getProcessMaterial()
template `processMaterial=`*(self: GPUParticles3D; value) = self.setProcessMaterial(value)

template drawPasses*(self: GPUParticles3D): untyped = self.getDrawPasses()
template `drawPasses=`*(self: GPUParticles3D; value) = self.setDrawPasses(value)

template drawPass1*(self: GPUParticles3D): untyped = self.getDrawPassMesh(int32(0))
template `drawPass1=`*(self: GPUParticles3D; value) = self.setDrawPassMesh(int32(0), value)

template drawPass2*(self: GPUParticles3D): untyped = self.getDrawPassMesh(int32(1))
template `drawPass2=`*(self: GPUParticles3D; value) = self.setDrawPassMesh(int32(1), value)

template drawPass3*(self: GPUParticles3D): untyped = self.getDrawPassMesh(int32(2))
template `drawPass3=`*(self: GPUParticles3D; value) = self.setDrawPassMesh(int32(2), value)

template drawPass4*(self: GPUParticles3D): untyped = self.getDrawPassMesh(int32(3))
template `drawPass4=`*(self: GPUParticles3D; value) = self.setDrawPassMesh(int32(3), value)

template drawSkin*(self: GPUParticles3D): untyped = self.getSkin()
template `drawSkin=`*(self: GPUParticles3D; value) = self.setSkin(value)

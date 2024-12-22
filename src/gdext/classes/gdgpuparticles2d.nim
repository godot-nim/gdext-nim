{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setEmitting*(self: GPUParticles2D; emitting: bool): void =
  expandMethodBind(className GPUParticles2D, "set_emitting", 2586408642)
  var `?param` = [getPtr emitting]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAmount*(self: GPUParticles2D; amount: int32): void =
  expandMethodBind(className GPUParticles2D, "set_amount", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc setLifetime*(self: GPUParticles2D; secs: float64): void =
  expandMethodBind(className GPUParticles2D, "set_lifetime", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOneShot*(self: GPUParticles2D; secs: bool): void =
  expandMethodBind(className GPUParticles2D, "set_one_shot", 2586408642)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPreProcessTime*(self: GPUParticles2D; secs: float64): void =
  expandMethodBind(className GPUParticles2D, "set_pre_process_time", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc setExplosivenessRatio*(self: GPUParticles2D; ratio: Float): void =
  expandMethodBind(className GPUParticles2D, "set_explosiveness_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc setRandomnessRatio*(self: GPUParticles2D; ratio: Float): void =
  expandMethodBind(className GPUParticles2D, "set_randomness_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc setVisibilityRect*(self: GPUParticles2D; visibilityRect: Rect2): void =
  expandMethodBind(className GPUParticles2D, "set_visibility_rect", 2046264180)
  var `?param` = [getPtr visibilityRect]
  methodbind.ptrcall(self, addr `?param`[0])

proc setUseLocalCoordinates*(self: GPUParticles2D; enable: bool): void =
  expandMethodBind(className GPUParticles2D, "set_use_local_coordinates", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFixedFps*(self: GPUParticles2D; fps: int32): void =
  expandMethodBind(className GPUParticles2D, "set_fixed_fps", 1286410249)
  var `?param` = [getPtr fps]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFractionalDelta*(self: GPUParticles2D; enable: bool): void =
  expandMethodBind(className GPUParticles2D, "set_fractional_delta", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setInterpolate*(self: GPUParticles2D; enable: bool): void =
  expandMethodBind(className GPUParticles2D, "set_interpolate", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setProcessMaterial*(self: GPUParticles2D; material: gdref Material): void =
  expandMethodBind(className GPUParticles2D, "set_process_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSpeedScale*(self: GPUParticles2D; scale: float64): void =
  expandMethodBind(className GPUParticles2D, "set_speed_scale", 373806689)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCollisionBaseSize*(self: GPUParticles2D; size: Float): void =
  expandMethodBind(className GPUParticles2D, "set_collision_base_size", 373806689)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc setInterpToEnd*(self: GPUParticles2D; interp: Float): void =
  expandMethodBind(className GPUParticles2D, "set_interp_to_end", 373806689)
  var `?param` = [getPtr interp]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEmitting*(self: GPUParticles2D): bool =
  expandMethodBind(className GPUParticles2D, "is_emitting", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getAmount*(self: GPUParticles2D): int32 =
  expandMethodBind(className GPUParticles2D, "get_amount", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getLifetime*(self: GPUParticles2D): float64 =
  expandMethodBind(className GPUParticles2D, "get_lifetime", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getOneShot*(self: GPUParticles2D): bool =
  expandMethodBind(className GPUParticles2D, "get_one_shot", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getPreProcessTime*(self: GPUParticles2D): float64 =
  expandMethodBind(className GPUParticles2D, "get_pre_process_time", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getExplosivenessRatio*(self: GPUParticles2D): Float =
  expandMethodBind(className GPUParticles2D, "get_explosiveness_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getRandomnessRatio*(self: GPUParticles2D): Float =
  expandMethodBind(className GPUParticles2D, "get_randomness_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getVisibilityRect*(self: GPUParticles2D): Rect2 =
  expandMethodBind(className GPUParticles2D, "get_visibility_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

proc getUseLocalCoordinates*(self: GPUParticles2D): bool =
  expandMethodBind(className GPUParticles2D, "get_use_local_coordinates", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getFixedFps*(self: GPUParticles2D): int32 =
  expandMethodBind(className GPUParticles2D, "get_fixed_fps", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getFractionalDelta*(self: GPUParticles2D): bool =
  expandMethodBind(className GPUParticles2D, "get_fractional_delta", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getInterpolate*(self: GPUParticles2D): bool =
  expandMethodBind(className GPUParticles2D, "get_interpolate", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getProcessMaterial*(self: GPUParticles2D): gdref Material =
  expandMethodBind(className GPUParticles2D, "get_process_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

proc getSpeedScale*(self: GPUParticles2D): float64 =
  expandMethodBind(className GPUParticles2D, "get_speed_scale", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getCollisionBaseSize*(self: GPUParticles2D): Float =
  expandMethodBind(className GPUParticles2D, "get_collision_base_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getInterpToEnd*(self: GPUParticles2D): Float =
  expandMethodBind(className GPUParticles2D, "get_interp_to_end", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDrawOrder*(self: GPUParticles2D; order: GPUParticles2D_DrawOrder): void =
  expandMethodBind(className GPUParticles2D, "set_draw_order", 1939677959)
  var `?param` = [getPtr order]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDrawOrder*(self: GPUParticles2D): GPUParticles2D_DrawOrder =
  expandMethodBind(className GPUParticles2D, "get_draw_order", 941479095)
  var ret: encoded GPUParticles2D_DrawOrder
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GPUParticles2D_DrawOrder)

proc setTexture*(self: GPUParticles2D; texture: gdref Texture2D): void =
  expandMethodBind(className GPUParticles2D, "set_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: GPUParticles2D): gdref Texture2D =
  expandMethodBind(className GPUParticles2D, "get_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc captureRect*(self: GPUParticles2D): Rect2 =
  expandMethodBind(className GPUParticles2D, "capture_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

proc restart*(self: GPUParticles2D): void =
  expandMethodBind(className GPUParticles2D, "restart", 3218959716)
  methodbind.ptrcall(self, nil)

proc setSubEmitter*(self: GPUParticles2D; path: NodePath): void =
  expandMethodBind(className GPUParticles2D, "set_sub_emitter", 1348162250)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSubEmitter*(self: GPUParticles2D): NodePath =
  expandMethodBind(className GPUParticles2D, "get_sub_emitter", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc emitParticle*(self: GPUParticles2D; xform: Transform2D; velocity: Vector2; color: Color; custom: Color; flags: uint32): void =
  expandMethodBind(className GPUParticles2D, "emit_particle", 2179202058)
  var `?param` = [getPtr xform, getPtr velocity, getPtr color, getPtr custom, getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc setTrailEnabled*(self: GPUParticles2D; enabled: bool): void =
  expandMethodBind(className GPUParticles2D, "set_trail_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc setTrailLifetime*(self: GPUParticles2D; secs: float64): void =
  expandMethodBind(className GPUParticles2D, "set_trail_lifetime", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc isTrailEnabled*(self: GPUParticles2D): bool =
  expandMethodBind(className GPUParticles2D, "is_trail_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getTrailLifetime*(self: GPUParticles2D): float64 =
  expandMethodBind(className GPUParticles2D, "get_trail_lifetime", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setTrailSections*(self: GPUParticles2D; sections: int32): void =
  expandMethodBind(className GPUParticles2D, "set_trail_sections", 1286410249)
  var `?param` = [getPtr sections]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTrailSections*(self: GPUParticles2D): int32 =
  expandMethodBind(className GPUParticles2D, "get_trail_sections", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setTrailSectionSubdivisions*(self: GPUParticles2D; subdivisions: int32): void =
  expandMethodBind(className GPUParticles2D, "set_trail_section_subdivisions", 1286410249)
  var `?param` = [getPtr subdivisions]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTrailSectionSubdivisions*(self: GPUParticles2D): int32 =
  expandMethodBind(className GPUParticles2D, "get_trail_section_subdivisions", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc convertFromParticles*(self: GPUParticles2D; particles: Node): void =
  expandMethodBind(className GPUParticles2D, "convert_from_particles", 1078189570)
  var `?param` = [getPtr particles]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAmountRatio*(self: GPUParticles2D; ratio: Float): void =
  expandMethodBind(className GPUParticles2D, "set_amount_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAmountRatio*(self: GPUParticles2D): Float =
  expandMethodBind(className GPUParticles2D, "get_amount_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template emitting*(self: GPUParticles2D): untyped = self.isEmitting()
template `emitting=`*(self: GPUParticles2D; value) = self.setEmitting(value)

template amount*(self: GPUParticles2D): untyped = self.getAmount()
template `amount=`*(self: GPUParticles2D; value) = self.setAmount(value)

template amountRatio*(self: GPUParticles2D): untyped = self.getAmountRatio()
template `amountRatio=`*(self: GPUParticles2D; value) = self.setAmountRatio(value)

template subEmitter*(self: GPUParticles2D): untyped = self.getSubEmitter()
template `subEmitter=`*(self: GPUParticles2D; value) = self.setSubEmitter(value)

template processMaterial*(self: GPUParticles2D): untyped = self.getProcessMaterial()
template `processMaterial=`*(self: GPUParticles2D; value) = self.setProcessMaterial(value)

template texture*(self: GPUParticles2D): untyped = self.getTexture()
template `texture=`*(self: GPUParticles2D; value) = self.setTexture(value)

template lifetime*(self: GPUParticles2D): untyped = self.getLifetime()
template `lifetime=`*(self: GPUParticles2D; value) = self.setLifetime(value)

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

template fixedFps*(self: GPUParticles2D): untyped = self.getFixedFps()
template `fixedFps=`*(self: GPUParticles2D; value) = self.setFixedFps(value)

template interpolate*(self: GPUParticles2D): untyped = self.getInterpolate()
template `interpolate=`*(self: GPUParticles2D; value) = self.setInterpolate(value)

template fractDelta*(self: GPUParticles2D): untyped = self.getFractionalDelta()
template `fractDelta=`*(self: GPUParticles2D; value) = self.setFractionalDelta(value)

template interpToEnd*(self: GPUParticles2D): untyped = self.getInterpToEnd()
template `interpToEnd=`*(self: GPUParticles2D; value) = self.setInterpToEnd(value)

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

const GPUParticles2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GPUParticles2D]): Table[string, string] = GPUParticles2D_vmap

proc finished*(self: GPUParticles2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("finished")
  self.emitSignal(signalname)
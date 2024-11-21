{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setEmitting*(self: CpuParticles2D; emitting: bool): void =
  expandMethodBind(className CpuParticles2D, "set_emitting", 2586408642)
  var `?param` = [getPtr emitting]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAmount*(self: CpuParticles2D; amount: int32): void =
  expandMethodBind(className CpuParticles2D, "set_amount", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc setLifetime*(self: CpuParticles2D; secs: float64): void =
  expandMethodBind(className CpuParticles2D, "set_lifetime", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOneShot*(self: CpuParticles2D; enable: bool): void =
  expandMethodBind(className CpuParticles2D, "set_one_shot", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPreProcessTime*(self: CpuParticles2D; secs: float64): void =
  expandMethodBind(className CpuParticles2D, "set_pre_process_time", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc setExplosivenessRatio*(self: CpuParticles2D; ratio: Float): void =
  expandMethodBind(className CpuParticles2D, "set_explosiveness_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc setRandomnessRatio*(self: CpuParticles2D; ratio: Float): void =
  expandMethodBind(className CpuParticles2D, "set_randomness_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc setLifetimeRandomness*(self: CpuParticles2D; random: float64): void =
  expandMethodBind(className CpuParticles2D, "set_lifetime_randomness", 373806689)
  var `?param` = [getPtr random]
  methodbind.ptrcall(self, addr `?param`[0])

proc setUseLocalCoordinates*(self: CpuParticles2D; enable: bool): void =
  expandMethodBind(className CpuParticles2D, "set_use_local_coordinates", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFixedFps*(self: CpuParticles2D; fps: int32): void =
  expandMethodBind(className CpuParticles2D, "set_fixed_fps", 1286410249)
  var `?param` = [getPtr fps]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFractionalDelta*(self: CpuParticles2D; enable: bool): void =
  expandMethodBind(className CpuParticles2D, "set_fractional_delta", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSpeedScale*(self: CpuParticles2D; scale: float64): void =
  expandMethodBind(className CpuParticles2D, "set_speed_scale", 373806689)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEmitting*(self: CpuParticles2D): bool =
  expandMethodBind(className CpuParticles2D, "is_emitting", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getAmount*(self: CpuParticles2D): int32 =
  expandMethodBind(className CpuParticles2D, "get_amount", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getLifetime*(self: CpuParticles2D): float64 =
  expandMethodBind(className CpuParticles2D, "get_lifetime", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getOneShot*(self: CpuParticles2D): bool =
  expandMethodBind(className CpuParticles2D, "get_one_shot", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getPreProcessTime*(self: CpuParticles2D): float64 =
  expandMethodBind(className CpuParticles2D, "get_pre_process_time", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getExplosivenessRatio*(self: CpuParticles2D): Float =
  expandMethodBind(className CpuParticles2D, "get_explosiveness_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getRandomnessRatio*(self: CpuParticles2D): Float =
  expandMethodBind(className CpuParticles2D, "get_randomness_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getLifetimeRandomness*(self: CpuParticles2D): float64 =
  expandMethodBind(className CpuParticles2D, "get_lifetime_randomness", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getUseLocalCoordinates*(self: CpuParticles2D): bool =
  expandMethodBind(className CpuParticles2D, "get_use_local_coordinates", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getFixedFps*(self: CpuParticles2D): int32 =
  expandMethodBind(className CpuParticles2D, "get_fixed_fps", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getFractionalDelta*(self: CpuParticles2D): bool =
  expandMethodBind(className CpuParticles2D, "get_fractional_delta", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getSpeedScale*(self: CpuParticles2D): float64 =
  expandMethodBind(className CpuParticles2D, "get_speed_scale", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setDrawOrder*(self: CpuParticles2D; order: CpuParticles2D_DrawOrder): void =
  expandMethodBind(className CpuParticles2D, "set_draw_order", 4183193490)
  var `?param` = [getPtr order]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDrawOrder*(self: CpuParticles2D): CpuParticles2D_DrawOrder =
  expandMethodBind(className CpuParticles2D, "get_draw_order", 1668655735)
  var ret: encoded CpuParticles2D_DrawOrder
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CpuParticles2D_DrawOrder)

proc setTexture*(self: CpuParticles2D; texture: gdref Texture2D): void =
  expandMethodBind(className CpuParticles2D, "set_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: CpuParticles2D): gdref Texture2D =
  expandMethodBind(className CpuParticles2D, "get_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc restart*(self: CpuParticles2D): void =
  expandMethodBind(className CpuParticles2D, "restart", 3218959716)
  methodbind.ptrcall(self, nil)

proc setDirection*(self: CpuParticles2D; direction: Vector2): void =
  expandMethodBind(className CpuParticles2D, "set_direction", 743155724)
  var `?param` = [getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDirection*(self: CpuParticles2D): Vector2 =
  expandMethodBind(className CpuParticles2D, "get_direction", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setSpread*(self: CpuParticles2D; spread: Float): void =
  expandMethodBind(className CpuParticles2D, "set_spread", 373806689)
  var `?param` = [getPtr spread]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpread*(self: CpuParticles2D): Float =
  expandMethodBind(className CpuParticles2D, "get_spread", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setParamMin*(self: CpuParticles2D; param: CpuParticles2D_Parameter; value: Float): void =
  expandMethodBind(className CpuParticles2D, "set_param_min", 3320615296)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamMin*(self: CpuParticles2D; param: CpuParticles2D_Parameter): Float =
  expandMethodBind(className CpuParticles2D, "get_param_min", 2038050600)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setParamMax*(self: CpuParticles2D; param: CpuParticles2D_Parameter; value: Float): void =
  expandMethodBind(className CpuParticles2D, "set_param_max", 3320615296)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamMax*(self: CpuParticles2D; param: CpuParticles2D_Parameter): Float =
  expandMethodBind(className CpuParticles2D, "get_param_max", 2038050600)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setParamCurve*(self: CpuParticles2D; param: CpuParticles2D_Parameter; curve: gdref Curve): void =
  expandMethodBind(className CpuParticles2D, "set_param_curve", 2959350143)
  var `?param` = [getPtr param, getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamCurve*(self: CpuParticles2D; param: CpuParticles2D_Parameter): gdref Curve =
  expandMethodBind(className CpuParticles2D, "get_param_curve", 2603158474)
  var `?param` = [getPtr param]
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Curve)

proc setColor*(self: CpuParticles2D; color: Color): void =
  expandMethodBind(className CpuParticles2D, "set_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColor*(self: CpuParticles2D): Color =
  expandMethodBind(className CpuParticles2D, "get_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setColorRamp*(self: CpuParticles2D; ramp: gdref Gradient): void =
  expandMethodBind(className CpuParticles2D, "set_color_ramp", 2756054477)
  var `?param` = [getPtr ramp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorRamp*(self: CpuParticles2D): gdref Gradient =
  expandMethodBind(className CpuParticles2D, "get_color_ramp", 132272999)
  var ret: encoded gdref Gradient
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Gradient)

proc setColorInitialRamp*(self: CpuParticles2D; ramp: gdref Gradient): void =
  expandMethodBind(className CpuParticles2D, "set_color_initial_ramp", 2756054477)
  var `?param` = [getPtr ramp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorInitialRamp*(self: CpuParticles2D): gdref Gradient =
  expandMethodBind(className CpuParticles2D, "get_color_initial_ramp", 132272999)
  var ret: encoded gdref Gradient
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Gradient)

proc setParticleFlag*(self: CpuParticles2D; particleFlag: CpuParticles2D_ParticleFlags; enable: bool): void =
  expandMethodBind(className CpuParticles2D, "set_particle_flag", 4178137949)
  var `?param` = [getPtr particleFlag, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParticleFlag*(self: CpuParticles2D; particleFlag: CpuParticles2D_ParticleFlags): bool =
  expandMethodBind(className CpuParticles2D, "get_particle_flag", 2829976507)
  var `?param` = [getPtr particleFlag]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setEmissionShape*(self: CpuParticles2D; shape: CpuParticles2D_EmissionShape): void =
  expandMethodBind(className CpuParticles2D, "set_emission_shape", 393763892)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionShape*(self: CpuParticles2D): CpuParticles2D_EmissionShape =
  expandMethodBind(className CpuParticles2D, "get_emission_shape", 1740246024)
  var ret: encoded CpuParticles2D_EmissionShape
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CpuParticles2D_EmissionShape)

proc setEmissionSphereRadius*(self: CpuParticles2D; radius: Float): void =
  expandMethodBind(className CpuParticles2D, "set_emission_sphere_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionSphereRadius*(self: CpuParticles2D): Float =
  expandMethodBind(className CpuParticles2D, "get_emission_sphere_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEmissionRectExtents*(self: CpuParticles2D; extents: Vector2): void =
  expandMethodBind(className CpuParticles2D, "set_emission_rect_extents", 743155724)
  var `?param` = [getPtr extents]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionRectExtents*(self: CpuParticles2D): Vector2 =
  expandMethodBind(className CpuParticles2D, "get_emission_rect_extents", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setEmissionPoints*(self: CpuParticles2D; array: PackedVector2Array): void =
  expandMethodBind(className CpuParticles2D, "set_emission_points", 1509147220)
  var `?param` = [getPtr array]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionPoints*(self: CpuParticles2D): PackedVector2Array =
  expandMethodBind(className CpuParticles2D, "get_emission_points", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc setEmissionNormals*(self: CpuParticles2D; array: PackedVector2Array): void =
  expandMethodBind(className CpuParticles2D, "set_emission_normals", 1509147220)
  var `?param` = [getPtr array]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionNormals*(self: CpuParticles2D): PackedVector2Array =
  expandMethodBind(className CpuParticles2D, "get_emission_normals", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc setEmissionColors*(self: CpuParticles2D; array: PackedColorArray): void =
  expandMethodBind(className CpuParticles2D, "set_emission_colors", 3546319833)
  var `?param` = [getPtr array]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionColors*(self: CpuParticles2D): PackedColorArray =
  expandMethodBind(className CpuParticles2D, "get_emission_colors", 1392750486)
  var ret: encoded PackedColorArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedColorArray)

proc getGravity*(self: CpuParticles2D): Vector2 =
  expandMethodBind(className CpuParticles2D, "get_gravity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setGravity*(self: CpuParticles2D; accelVec: Vector2): void =
  expandMethodBind(className CpuParticles2D, "set_gravity", 743155724)
  var `?param` = [getPtr accelVec]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSplitScale*(self: CpuParticles2D): bool =
  expandMethodBind(className CpuParticles2D, "get_split_scale", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSplitScale*(self: CpuParticles2D; splitScale: bool): void =
  expandMethodBind(className CpuParticles2D, "set_split_scale", 2586408642)
  var `?param` = [getPtr splitScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScaleCurveX*(self: CpuParticles2D): gdref Curve =
  expandMethodBind(className CpuParticles2D, "get_scale_curve_x", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setScaleCurveX*(self: CpuParticles2D; scaleCurve: gdref Curve): void =
  expandMethodBind(className CpuParticles2D, "set_scale_curve_x", 270443179)
  var `?param` = [getPtr scaleCurve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScaleCurveY*(self: CpuParticles2D): gdref Curve =
  expandMethodBind(className CpuParticles2D, "get_scale_curve_y", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setScaleCurveY*(self: CpuParticles2D; scaleCurve: gdref Curve): void =
  expandMethodBind(className CpuParticles2D, "set_scale_curve_y", 270443179)
  var `?param` = [getPtr scaleCurve]
  methodbind.ptrcall(self, addr `?param`[0])

proc convertFromParticles*(self: CpuParticles2D; particles: Node): void =
  expandMethodBind(className CpuParticles2D, "convert_from_particles", 1078189570)
  var `?param` = [getPtr particles]
  methodbind.ptrcall(self, addr `?param`[0])

template emitting*(self: CpuParticles2D): untyped = self.isEmitting()
template `emitting=`*(self: CpuParticles2D; value) = self.setEmitting(value)

template amount*(self: CpuParticles2D): untyped = self.getAmount()
template `amount=`*(self: CpuParticles2D; value) = self.setAmount(value)

template lifetime*(self: CpuParticles2D): untyped = self.getLifetime()
template `lifetime=`*(self: CpuParticles2D; value) = self.setLifetime(value)

template oneShot*(self: CpuParticles2D): untyped = self.getOneShot()
template `oneShot=`*(self: CpuParticles2D; value) = self.setOneShot(value)

template preprocess*(self: CpuParticles2D): untyped = self.getPreProcessTime()
template `preprocess=`*(self: CpuParticles2D; value) = self.setPreProcessTime(value)

template speedScale*(self: CpuParticles2D): untyped = self.getSpeedScale()
template `speedScale=`*(self: CpuParticles2D; value) = self.setSpeedScale(value)

template explosiveness*(self: CpuParticles2D): untyped = self.getExplosivenessRatio()
template `explosiveness=`*(self: CpuParticles2D; value) = self.setExplosivenessRatio(value)

template randomness*(self: CpuParticles2D): untyped = self.getRandomnessRatio()
template `randomness=`*(self: CpuParticles2D; value) = self.setRandomnessRatio(value)

template lifetimeRandomness*(self: CpuParticles2D): untyped = self.getLifetimeRandomness()
template `lifetimeRandomness=`*(self: CpuParticles2D; value) = self.setLifetimeRandomness(value)

template fixedFps*(self: CpuParticles2D): untyped = self.getFixedFps()
template `fixedFps=`*(self: CpuParticles2D; value) = self.setFixedFps(value)

template fractDelta*(self: CpuParticles2D): untyped = self.getFractionalDelta()
template `fractDelta=`*(self: CpuParticles2D; value) = self.setFractionalDelta(value)

template localCoords*(self: CpuParticles2D): untyped = self.getUseLocalCoordinates()
template `localCoords=`*(self: CpuParticles2D; value) = self.setUseLocalCoordinates(value)

template drawOrder*(self: CpuParticles2D): untyped = self.getDrawOrder()
template `drawOrder=`*(self: CpuParticles2D; value) = self.setDrawOrder(value)

template texture*(self: CpuParticles2D): untyped = self.getTexture()
template `texture=`*(self: CpuParticles2D; value) = self.setTexture(value)

template emissionShape*(self: CpuParticles2D): untyped = self.getEmissionShape()
template `emissionShape=`*(self: CpuParticles2D; value) = self.setEmissionShape(value)

template emissionSphereRadius*(self: CpuParticles2D): untyped = self.getEmissionSphereRadius()
template `emissionSphereRadius=`*(self: CpuParticles2D; value) = self.setEmissionSphereRadius(value)

template emissionRectExtents*(self: CpuParticles2D): untyped = self.getEmissionRectExtents()
template `emissionRectExtents=`*(self: CpuParticles2D; value) = self.setEmissionRectExtents(value)

template emissionPoints*(self: CpuParticles2D): untyped = self.getEmissionPoints()
template `emissionPoints=`*(self: CpuParticles2D; value) = self.setEmissionPoints(value)

template emissionNormals*(self: CpuParticles2D): untyped = self.getEmissionNormals()
template `emissionNormals=`*(self: CpuParticles2D; value) = self.setEmissionNormals(value)

template emissionColors*(self: CpuParticles2D): untyped = self.getEmissionColors()
template `emissionColors=`*(self: CpuParticles2D; value) = self.setEmissionColors(value)

template particleFlagAlignY*(self: CpuParticles2D): untyped = self.getParticleFlag(CpuParticles2D_ParticleFlags(0))
template `particleFlagAlignY=`*(self: CpuParticles2D; value) = self.setParticleFlag(CpuParticles2D_ParticleFlags(0), value)

template direction*(self: CpuParticles2D): untyped = self.getDirection()
template `direction=`*(self: CpuParticles2D; value) = self.setDirection(value)

template spread*(self: CpuParticles2D): untyped = self.getSpread()
template `spread=`*(self: CpuParticles2D; value) = self.setSpread(value)

template gravity*(self: CpuParticles2D): untyped = self.getGravity()
template `gravity=`*(self: CpuParticles2D; value) = self.setGravity(value)

template initialVelocityMin*(self: CpuParticles2D): untyped = self.getParamMin(CpuParticles2D_Parameter(0))
template `initialVelocityMin=`*(self: CpuParticles2D; value) = self.setParamMin(CpuParticles2D_Parameter(0), value)

template initialVelocityMax*(self: CpuParticles2D): untyped = self.getParamMax(CpuParticles2D_Parameter(0))
template `initialVelocityMax=`*(self: CpuParticles2D; value) = self.setParamMax(CpuParticles2D_Parameter(0), value)

template angularVelocityMin*(self: CpuParticles2D): untyped = self.getParamMin(CpuParticles2D_Parameter(1))
template `angularVelocityMin=`*(self: CpuParticles2D; value) = self.setParamMin(CpuParticles2D_Parameter(1), value)

template angularVelocityMax*(self: CpuParticles2D): untyped = self.getParamMax(CpuParticles2D_Parameter(1))
template `angularVelocityMax=`*(self: CpuParticles2D; value) = self.setParamMax(CpuParticles2D_Parameter(1), value)

template angularVelocityCurve*(self: CpuParticles2D): untyped = self.getParamCurve(CpuParticles2D_Parameter(1))
template `angularVelocityCurve=`*(self: CpuParticles2D; value) = self.setParamCurve(CpuParticles2D_Parameter(1), value)

template orbitVelocityMin*(self: CpuParticles2D): untyped = self.getParamMin(CpuParticles2D_Parameter(2))
template `orbitVelocityMin=`*(self: CpuParticles2D; value) = self.setParamMin(CpuParticles2D_Parameter(2), value)

template orbitVelocityMax*(self: CpuParticles2D): untyped = self.getParamMax(CpuParticles2D_Parameter(2))
template `orbitVelocityMax=`*(self: CpuParticles2D; value) = self.setParamMax(CpuParticles2D_Parameter(2), value)

template orbitVelocityCurve*(self: CpuParticles2D): untyped = self.getParamCurve(CpuParticles2D_Parameter(2))
template `orbitVelocityCurve=`*(self: CpuParticles2D; value) = self.setParamCurve(CpuParticles2D_Parameter(2), value)

template linearAccelMin*(self: CpuParticles2D): untyped = self.getParamMin(CpuParticles2D_Parameter(3))
template `linearAccelMin=`*(self: CpuParticles2D; value) = self.setParamMin(CpuParticles2D_Parameter(3), value)

template linearAccelMax*(self: CpuParticles2D): untyped = self.getParamMax(CpuParticles2D_Parameter(3))
template `linearAccelMax=`*(self: CpuParticles2D; value) = self.setParamMax(CpuParticles2D_Parameter(3), value)

template linearAccelCurve*(self: CpuParticles2D): untyped = self.getParamCurve(CpuParticles2D_Parameter(3))
template `linearAccelCurve=`*(self: CpuParticles2D; value) = self.setParamCurve(CpuParticles2D_Parameter(3), value)

template radialAccelMin*(self: CpuParticles2D): untyped = self.getParamMin(CpuParticles2D_Parameter(4))
template `radialAccelMin=`*(self: CpuParticles2D; value) = self.setParamMin(CpuParticles2D_Parameter(4), value)

template radialAccelMax*(self: CpuParticles2D): untyped = self.getParamMax(CpuParticles2D_Parameter(4))
template `radialAccelMax=`*(self: CpuParticles2D; value) = self.setParamMax(CpuParticles2D_Parameter(4), value)

template radialAccelCurve*(self: CpuParticles2D): untyped = self.getParamCurve(CpuParticles2D_Parameter(4))
template `radialAccelCurve=`*(self: CpuParticles2D; value) = self.setParamCurve(CpuParticles2D_Parameter(4), value)

template tangentialAccelMin*(self: CpuParticles2D): untyped = self.getParamMin(CpuParticles2D_Parameter(5))
template `tangentialAccelMin=`*(self: CpuParticles2D; value) = self.setParamMin(CpuParticles2D_Parameter(5), value)

template tangentialAccelMax*(self: CpuParticles2D): untyped = self.getParamMax(CpuParticles2D_Parameter(5))
template `tangentialAccelMax=`*(self: CpuParticles2D; value) = self.setParamMax(CpuParticles2D_Parameter(5), value)

template tangentialAccelCurve*(self: CpuParticles2D): untyped = self.getParamCurve(CpuParticles2D_Parameter(5))
template `tangentialAccelCurve=`*(self: CpuParticles2D; value) = self.setParamCurve(CpuParticles2D_Parameter(5), value)

template dampingMin*(self: CpuParticles2D): untyped = self.getParamMin(CpuParticles2D_Parameter(6))
template `dampingMin=`*(self: CpuParticles2D; value) = self.setParamMin(CpuParticles2D_Parameter(6), value)

template dampingMax*(self: CpuParticles2D): untyped = self.getParamMax(CpuParticles2D_Parameter(6))
template `dampingMax=`*(self: CpuParticles2D; value) = self.setParamMax(CpuParticles2D_Parameter(6), value)

template dampingCurve*(self: CpuParticles2D): untyped = self.getParamCurve(CpuParticles2D_Parameter(6))
template `dampingCurve=`*(self: CpuParticles2D; value) = self.setParamCurve(CpuParticles2D_Parameter(6), value)

template angleMin*(self: CpuParticles2D): untyped = self.getParamMin(CpuParticles2D_Parameter(7))
template `angleMin=`*(self: CpuParticles2D; value) = self.setParamMin(CpuParticles2D_Parameter(7), value)

template angleMax*(self: CpuParticles2D): untyped = self.getParamMax(CpuParticles2D_Parameter(7))
template `angleMax=`*(self: CpuParticles2D; value) = self.setParamMax(CpuParticles2D_Parameter(7), value)

template angleCurve*(self: CpuParticles2D): untyped = self.getParamCurve(CpuParticles2D_Parameter(7))
template `angleCurve=`*(self: CpuParticles2D; value) = self.setParamCurve(CpuParticles2D_Parameter(7), value)

template scaleAmountMin*(self: CpuParticles2D): untyped = self.getParamMin(CpuParticles2D_Parameter(8))
template `scaleAmountMin=`*(self: CpuParticles2D; value) = self.setParamMin(CpuParticles2D_Parameter(8), value)

template scaleAmountMax*(self: CpuParticles2D): untyped = self.getParamMax(CpuParticles2D_Parameter(8))
template `scaleAmountMax=`*(self: CpuParticles2D; value) = self.setParamMax(CpuParticles2D_Parameter(8), value)

template scaleAmountCurve*(self: CpuParticles2D): untyped = self.getParamCurve(CpuParticles2D_Parameter(8))
template `scaleAmountCurve=`*(self: CpuParticles2D; value) = self.setParamCurve(CpuParticles2D_Parameter(8), value)

template splitScale*(self: CpuParticles2D): untyped = self.getSplitScale()
template `splitScale=`*(self: CpuParticles2D; value) = self.setSplitScale(value)

template scaleCurveX*(self: CpuParticles2D): untyped = self.getScaleCurveX()
template `scaleCurveX=`*(self: CpuParticles2D; value) = self.setScaleCurveX(value)

template scaleCurveY*(self: CpuParticles2D): untyped = self.getScaleCurveY()
template `scaleCurveY=`*(self: CpuParticles2D; value) = self.setScaleCurveY(value)

template color*(self: CpuParticles2D): untyped = self.getColor()
template `color=`*(self: CpuParticles2D; value) = self.setColor(value)

template colorRamp*(self: CpuParticles2D): untyped = self.getColorRamp()
template `colorRamp=`*(self: CpuParticles2D; value) = self.setColorRamp(value)

template colorInitialRamp*(self: CpuParticles2D): untyped = self.getColorInitialRamp()
template `colorInitialRamp=`*(self: CpuParticles2D; value) = self.setColorInitialRamp(value)

template hueVariationMin*(self: CpuParticles2D): untyped = self.getParamMin(CpuParticles2D_Parameter(9))
template `hueVariationMin=`*(self: CpuParticles2D; value) = self.setParamMin(CpuParticles2D_Parameter(9), value)

template hueVariationMax*(self: CpuParticles2D): untyped = self.getParamMax(CpuParticles2D_Parameter(9))
template `hueVariationMax=`*(self: CpuParticles2D; value) = self.setParamMax(CpuParticles2D_Parameter(9), value)

template hueVariationCurve*(self: CpuParticles2D): untyped = self.getParamCurve(CpuParticles2D_Parameter(9))
template `hueVariationCurve=`*(self: CpuParticles2D; value) = self.setParamCurve(CpuParticles2D_Parameter(9), value)

template animSpeedMin*(self: CpuParticles2D): untyped = self.getParamMin(CpuParticles2D_Parameter(10))
template `animSpeedMin=`*(self: CpuParticles2D; value) = self.setParamMin(CpuParticles2D_Parameter(10), value)

template animSpeedMax*(self: CpuParticles2D): untyped = self.getParamMax(CpuParticles2D_Parameter(10))
template `animSpeedMax=`*(self: CpuParticles2D; value) = self.setParamMax(CpuParticles2D_Parameter(10), value)

template animSpeedCurve*(self: CpuParticles2D): untyped = self.getParamCurve(CpuParticles2D_Parameter(10))
template `animSpeedCurve=`*(self: CpuParticles2D; value) = self.setParamCurve(CpuParticles2D_Parameter(10), value)

template animOffsetMin*(self: CpuParticles2D): untyped = self.getParamMin(CpuParticles2D_Parameter(11))
template `animOffsetMin=`*(self: CpuParticles2D; value) = self.setParamMin(CpuParticles2D_Parameter(11), value)

template animOffsetMax*(self: CpuParticles2D): untyped = self.getParamMax(CpuParticles2D_Parameter(11))
template `animOffsetMax=`*(self: CpuParticles2D; value) = self.setParamMax(CpuParticles2D_Parameter(11), value)

template animOffsetCurve*(self: CpuParticles2D): untyped = self.getParamCurve(CpuParticles2D_Parameter(11))
template `animOffsetCurve=`*(self: CpuParticles2D; value) = self.setParamCurve(CpuParticles2D_Parameter(11), value)

const CpuParticles2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CpuParticles2D]): Table[string, string] = CpuParticles2D_vmap

proc finished*(self: CpuParticles2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("finished")
  self.emitSignal(signalname)
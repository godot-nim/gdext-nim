{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setEmitting*(self: CPUParticles2D; emitting: bool): void =
  expandMethodBind(className CPUParticles2D, "set_emitting", 2586408642)
  var `?param` = [getPtr emitting]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAmount*(self: CPUParticles2D; amount: int32): void =
  expandMethodBind(className CPUParticles2D, "set_amount", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc setLifetime*(self: CPUParticles2D; secs: float64): void =
  expandMethodBind(className CPUParticles2D, "set_lifetime", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOneShot*(self: CPUParticles2D; enable: bool): void =
  expandMethodBind(className CPUParticles2D, "set_one_shot", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPreProcessTime*(self: CPUParticles2D; secs: float64): void =
  expandMethodBind(className CPUParticles2D, "set_pre_process_time", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc setExplosivenessRatio*(self: CPUParticles2D; ratio: Float): void =
  expandMethodBind(className CPUParticles2D, "set_explosiveness_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc setRandomnessRatio*(self: CPUParticles2D; ratio: Float): void =
  expandMethodBind(className CPUParticles2D, "set_randomness_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc setLifetimeRandomness*(self: CPUParticles2D; random: float64): void =
  expandMethodBind(className CPUParticles2D, "set_lifetime_randomness", 373806689)
  var `?param` = [getPtr random]
  methodbind.ptrcall(self, addr `?param`[0])

proc setUseLocalCoordinates*(self: CPUParticles2D; enable: bool): void =
  expandMethodBind(className CPUParticles2D, "set_use_local_coordinates", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFixedFps*(self: CPUParticles2D; fps: int32): void =
  expandMethodBind(className CPUParticles2D, "set_fixed_fps", 1286410249)
  var `?param` = [getPtr fps]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFractionalDelta*(self: CPUParticles2D; enable: bool): void =
  expandMethodBind(className CPUParticles2D, "set_fractional_delta", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSpeedScale*(self: CPUParticles2D; scale: float64): void =
  expandMethodBind(className CPUParticles2D, "set_speed_scale", 373806689)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEmitting*(self: CPUParticles2D): bool =
  expandMethodBind(className CPUParticles2D, "is_emitting", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getAmount*(self: CPUParticles2D): int32 =
  expandMethodBind(className CPUParticles2D, "get_amount", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getLifetime*(self: CPUParticles2D): float64 =
  expandMethodBind(className CPUParticles2D, "get_lifetime", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getOneShot*(self: CPUParticles2D): bool =
  expandMethodBind(className CPUParticles2D, "get_one_shot", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getPreProcessTime*(self: CPUParticles2D): float64 =
  expandMethodBind(className CPUParticles2D, "get_pre_process_time", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getExplosivenessRatio*(self: CPUParticles2D): Float =
  expandMethodBind(className CPUParticles2D, "get_explosiveness_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getRandomnessRatio*(self: CPUParticles2D): Float =
  expandMethodBind(className CPUParticles2D, "get_randomness_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getLifetimeRandomness*(self: CPUParticles2D): float64 =
  expandMethodBind(className CPUParticles2D, "get_lifetime_randomness", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getUseLocalCoordinates*(self: CPUParticles2D): bool =
  expandMethodBind(className CPUParticles2D, "get_use_local_coordinates", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getFixedFps*(self: CPUParticles2D): int32 =
  expandMethodBind(className CPUParticles2D, "get_fixed_fps", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getFractionalDelta*(self: CPUParticles2D): bool =
  expandMethodBind(className CPUParticles2D, "get_fractional_delta", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getSpeedScale*(self: CPUParticles2D): float64 =
  expandMethodBind(className CPUParticles2D, "get_speed_scale", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setDrawOrder*(self: CPUParticles2D; order: CPUParticles2D_DrawOrder): void =
  expandMethodBind(className CPUParticles2D, "set_draw_order", 4183193490)
  var `?param` = [getPtr order]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDrawOrder*(self: CPUParticles2D): CPUParticles2D_DrawOrder =
  expandMethodBind(className CPUParticles2D, "get_draw_order", 1668655735)
  var ret: encoded CPUParticles2D_DrawOrder
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CPUParticles2D_DrawOrder)

proc setTexture*(self: CPUParticles2D; texture: gdref Texture2D): void =
  expandMethodBind(className CPUParticles2D, "set_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: CPUParticles2D): gdref Texture2D =
  expandMethodBind(className CPUParticles2D, "get_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc restart*(self: CPUParticles2D): void =
  expandMethodBind(className CPUParticles2D, "restart", 3218959716)
  methodbind.ptrcall(self, nil)

proc setDirection*(self: CPUParticles2D; direction: Vector2): void =
  expandMethodBind(className CPUParticles2D, "set_direction", 743155724)
  var `?param` = [getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDirection*(self: CPUParticles2D): Vector2 =
  expandMethodBind(className CPUParticles2D, "get_direction", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setSpread*(self: CPUParticles2D; spread: Float): void =
  expandMethodBind(className CPUParticles2D, "set_spread", 373806689)
  var `?param` = [getPtr spread]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpread*(self: CPUParticles2D): Float =
  expandMethodBind(className CPUParticles2D, "get_spread", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setParamMin*(self: CPUParticles2D; param: CPUParticles2D_Parameter; value: Float): void =
  expandMethodBind(className CPUParticles2D, "set_param_min", 3320615296)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamMin*(self: CPUParticles2D; param: CPUParticles2D_Parameter): Float =
  expandMethodBind(className CPUParticles2D, "get_param_min", 2038050600)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setParamMax*(self: CPUParticles2D; param: CPUParticles2D_Parameter; value: Float): void =
  expandMethodBind(className CPUParticles2D, "set_param_max", 3320615296)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamMax*(self: CPUParticles2D; param: CPUParticles2D_Parameter): Float =
  expandMethodBind(className CPUParticles2D, "get_param_max", 2038050600)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setParamCurve*(self: CPUParticles2D; param: CPUParticles2D_Parameter; curve: gdref Curve): void =
  expandMethodBind(className CPUParticles2D, "set_param_curve", 2959350143)
  var `?param` = [getPtr param, getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamCurve*(self: CPUParticles2D; param: CPUParticles2D_Parameter): gdref Curve =
  expandMethodBind(className CPUParticles2D, "get_param_curve", 2603158474)
  var `?param` = [getPtr param]
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Curve)

proc setColor*(self: CPUParticles2D; color: Color): void =
  expandMethodBind(className CPUParticles2D, "set_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColor*(self: CPUParticles2D): Color =
  expandMethodBind(className CPUParticles2D, "get_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setColorRamp*(self: CPUParticles2D; ramp: gdref Gradient): void =
  expandMethodBind(className CPUParticles2D, "set_color_ramp", 2756054477)
  var `?param` = [getPtr ramp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorRamp*(self: CPUParticles2D): gdref Gradient =
  expandMethodBind(className CPUParticles2D, "get_color_ramp", 132272999)
  var ret: encoded gdref Gradient
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Gradient)

proc setColorInitialRamp*(self: CPUParticles2D; ramp: gdref Gradient): void =
  expandMethodBind(className CPUParticles2D, "set_color_initial_ramp", 2756054477)
  var `?param` = [getPtr ramp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorInitialRamp*(self: CPUParticles2D): gdref Gradient =
  expandMethodBind(className CPUParticles2D, "get_color_initial_ramp", 132272999)
  var ret: encoded gdref Gradient
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Gradient)

proc setParticleFlag*(self: CPUParticles2D; particleFlag: CPUParticles2D_ParticleFlags; enable: bool): void =
  expandMethodBind(className CPUParticles2D, "set_particle_flag", 4178137949)
  var `?param` = [getPtr particleFlag, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParticleFlag*(self: CPUParticles2D; particleFlag: CPUParticles2D_ParticleFlags): bool =
  expandMethodBind(className CPUParticles2D, "get_particle_flag", 2829976507)
  var `?param` = [getPtr particleFlag]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setEmissionShape*(self: CPUParticles2D; shape: CPUParticles2D_EmissionShape): void =
  expandMethodBind(className CPUParticles2D, "set_emission_shape", 393763892)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionShape*(self: CPUParticles2D): CPUParticles2D_EmissionShape =
  expandMethodBind(className CPUParticles2D, "get_emission_shape", 1740246024)
  var ret: encoded CPUParticles2D_EmissionShape
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CPUParticles2D_EmissionShape)

proc setEmissionSphereRadius*(self: CPUParticles2D; radius: Float): void =
  expandMethodBind(className CPUParticles2D, "set_emission_sphere_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionSphereRadius*(self: CPUParticles2D): Float =
  expandMethodBind(className CPUParticles2D, "get_emission_sphere_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEmissionRectExtents*(self: CPUParticles2D; extents: Vector2): void =
  expandMethodBind(className CPUParticles2D, "set_emission_rect_extents", 743155724)
  var `?param` = [getPtr extents]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionRectExtents*(self: CPUParticles2D): Vector2 =
  expandMethodBind(className CPUParticles2D, "get_emission_rect_extents", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setEmissionPoints*(self: CPUParticles2D; array: PackedVector2Array): void =
  expandMethodBind(className CPUParticles2D, "set_emission_points", 1509147220)
  var `?param` = [getPtr array]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionPoints*(self: CPUParticles2D): PackedVector2Array =
  expandMethodBind(className CPUParticles2D, "get_emission_points", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc setEmissionNormals*(self: CPUParticles2D; array: PackedVector2Array): void =
  expandMethodBind(className CPUParticles2D, "set_emission_normals", 1509147220)
  var `?param` = [getPtr array]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionNormals*(self: CPUParticles2D): PackedVector2Array =
  expandMethodBind(className CPUParticles2D, "get_emission_normals", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc setEmissionColors*(self: CPUParticles2D; array: PackedColorArray): void =
  expandMethodBind(className CPUParticles2D, "set_emission_colors", 3546319833)
  var `?param` = [getPtr array]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionColors*(self: CPUParticles2D): PackedColorArray =
  expandMethodBind(className CPUParticles2D, "get_emission_colors", 1392750486)
  var ret: encoded PackedColorArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedColorArray)

proc getGravity*(self: CPUParticles2D): Vector2 =
  expandMethodBind(className CPUParticles2D, "get_gravity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setGravity*(self: CPUParticles2D; accelVec: Vector2): void =
  expandMethodBind(className CPUParticles2D, "set_gravity", 743155724)
  var `?param` = [getPtr accelVec]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSplitScale*(self: CPUParticles2D): bool =
  expandMethodBind(className CPUParticles2D, "get_split_scale", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSplitScale*(self: CPUParticles2D; splitScale: bool): void =
  expandMethodBind(className CPUParticles2D, "set_split_scale", 2586408642)
  var `?param` = [getPtr splitScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScaleCurveX*(self: CPUParticles2D): gdref Curve =
  expandMethodBind(className CPUParticles2D, "get_scale_curve_x", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setScaleCurveX*(self: CPUParticles2D; scaleCurve: gdref Curve): void =
  expandMethodBind(className CPUParticles2D, "set_scale_curve_x", 270443179)
  var `?param` = [getPtr scaleCurve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScaleCurveY*(self: CPUParticles2D): gdref Curve =
  expandMethodBind(className CPUParticles2D, "get_scale_curve_y", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setScaleCurveY*(self: CPUParticles2D; scaleCurve: gdref Curve): void =
  expandMethodBind(className CPUParticles2D, "set_scale_curve_y", 270443179)
  var `?param` = [getPtr scaleCurve]
  methodbind.ptrcall(self, addr `?param`[0])

proc convertFromParticles*(self: CPUParticles2D; particles: Node): void =
  expandMethodBind(className CPUParticles2D, "convert_from_particles", 1078189570)
  var `?param` = [getPtr particles]
  methodbind.ptrcall(self, addr `?param`[0])

template emitting*(self: CPUParticles2D): untyped = self.isEmitting()
template `emitting=`*(self: CPUParticles2D; value) = self.setEmitting(value)

template amount*(self: CPUParticles2D): untyped = self.getAmount()
template `amount=`*(self: CPUParticles2D; value) = self.setAmount(value)

template lifetime*(self: CPUParticles2D): untyped = self.getLifetime()
template `lifetime=`*(self: CPUParticles2D; value) = self.setLifetime(value)

template oneShot*(self: CPUParticles2D): untyped = self.getOneShot()
template `oneShot=`*(self: CPUParticles2D; value) = self.setOneShot(value)

template preprocess*(self: CPUParticles2D): untyped = self.getPreProcessTime()
template `preprocess=`*(self: CPUParticles2D; value) = self.setPreProcessTime(value)

template speedScale*(self: CPUParticles2D): untyped = self.getSpeedScale()
template `speedScale=`*(self: CPUParticles2D; value) = self.setSpeedScale(value)

template explosiveness*(self: CPUParticles2D): untyped = self.getExplosivenessRatio()
template `explosiveness=`*(self: CPUParticles2D; value) = self.setExplosivenessRatio(value)

template randomness*(self: CPUParticles2D): untyped = self.getRandomnessRatio()
template `randomness=`*(self: CPUParticles2D; value) = self.setRandomnessRatio(value)

template lifetimeRandomness*(self: CPUParticles2D): untyped = self.getLifetimeRandomness()
template `lifetimeRandomness=`*(self: CPUParticles2D; value) = self.setLifetimeRandomness(value)

template fixedFps*(self: CPUParticles2D): untyped = self.getFixedFps()
template `fixedFps=`*(self: CPUParticles2D; value) = self.setFixedFps(value)

template fractDelta*(self: CPUParticles2D): untyped = self.getFractionalDelta()
template `fractDelta=`*(self: CPUParticles2D; value) = self.setFractionalDelta(value)

template localCoords*(self: CPUParticles2D): untyped = self.getUseLocalCoordinates()
template `localCoords=`*(self: CPUParticles2D; value) = self.setUseLocalCoordinates(value)

template drawOrder*(self: CPUParticles2D): untyped = self.getDrawOrder()
template `drawOrder=`*(self: CPUParticles2D; value) = self.setDrawOrder(value)

template texture*(self: CPUParticles2D): untyped = self.getTexture()
template `texture=`*(self: CPUParticles2D; value) = self.setTexture(value)

template emissionShape*(self: CPUParticles2D): untyped = self.getEmissionShape()
template `emissionShape=`*(self: CPUParticles2D; value) = self.setEmissionShape(value)

template emissionSphereRadius*(self: CPUParticles2D): untyped = self.getEmissionSphereRadius()
template `emissionSphereRadius=`*(self: CPUParticles2D; value) = self.setEmissionSphereRadius(value)

template emissionRectExtents*(self: CPUParticles2D): untyped = self.getEmissionRectExtents()
template `emissionRectExtents=`*(self: CPUParticles2D; value) = self.setEmissionRectExtents(value)

template emissionPoints*(self: CPUParticles2D): untyped = self.getEmissionPoints()
template `emissionPoints=`*(self: CPUParticles2D; value) = self.setEmissionPoints(value)

template emissionNormals*(self: CPUParticles2D): untyped = self.getEmissionNormals()
template `emissionNormals=`*(self: CPUParticles2D; value) = self.setEmissionNormals(value)

template emissionColors*(self: CPUParticles2D): untyped = self.getEmissionColors()
template `emissionColors=`*(self: CPUParticles2D; value) = self.setEmissionColors(value)

template particleFlagAlignY*(self: CPUParticles2D): untyped = self.getParticleFlag(CPUParticles2D_ParticleFlags(0))
template `particleFlagAlignY=`*(self: CPUParticles2D; value) = self.setParticleFlag(CPUParticles2D_ParticleFlags(0), value)

template direction*(self: CPUParticles2D): untyped = self.getDirection()
template `direction=`*(self: CPUParticles2D; value) = self.setDirection(value)

template spread*(self: CPUParticles2D): untyped = self.getSpread()
template `spread=`*(self: CPUParticles2D; value) = self.setSpread(value)

template gravity*(self: CPUParticles2D): untyped = self.getGravity()
template `gravity=`*(self: CPUParticles2D; value) = self.setGravity(value)

template initialVelocityMin*(self: CPUParticles2D): untyped = self.getParamMin(CPUParticles2D_Parameter(0))
template `initialVelocityMin=`*(self: CPUParticles2D; value) = self.setParamMin(CPUParticles2D_Parameter(0), value)

template initialVelocityMax*(self: CPUParticles2D): untyped = self.getParamMax(CPUParticles2D_Parameter(0))
template `initialVelocityMax=`*(self: CPUParticles2D; value) = self.setParamMax(CPUParticles2D_Parameter(0), value)

template angularVelocityMin*(self: CPUParticles2D): untyped = self.getParamMin(CPUParticles2D_Parameter(1))
template `angularVelocityMin=`*(self: CPUParticles2D; value) = self.setParamMin(CPUParticles2D_Parameter(1), value)

template angularVelocityMax*(self: CPUParticles2D): untyped = self.getParamMax(CPUParticles2D_Parameter(1))
template `angularVelocityMax=`*(self: CPUParticles2D; value) = self.setParamMax(CPUParticles2D_Parameter(1), value)

template angularVelocityCurve*(self: CPUParticles2D): untyped = self.getParamCurve(CPUParticles2D_Parameter(1))
template `angularVelocityCurve=`*(self: CPUParticles2D; value) = self.setParamCurve(CPUParticles2D_Parameter(1), value)

template orbitVelocityMin*(self: CPUParticles2D): untyped = self.getParamMin(CPUParticles2D_Parameter(2))
template `orbitVelocityMin=`*(self: CPUParticles2D; value) = self.setParamMin(CPUParticles2D_Parameter(2), value)

template orbitVelocityMax*(self: CPUParticles2D): untyped = self.getParamMax(CPUParticles2D_Parameter(2))
template `orbitVelocityMax=`*(self: CPUParticles2D; value) = self.setParamMax(CPUParticles2D_Parameter(2), value)

template orbitVelocityCurve*(self: CPUParticles2D): untyped = self.getParamCurve(CPUParticles2D_Parameter(2))
template `orbitVelocityCurve=`*(self: CPUParticles2D; value) = self.setParamCurve(CPUParticles2D_Parameter(2), value)

template linearAccelMin*(self: CPUParticles2D): untyped = self.getParamMin(CPUParticles2D_Parameter(3))
template `linearAccelMin=`*(self: CPUParticles2D; value) = self.setParamMin(CPUParticles2D_Parameter(3), value)

template linearAccelMax*(self: CPUParticles2D): untyped = self.getParamMax(CPUParticles2D_Parameter(3))
template `linearAccelMax=`*(self: CPUParticles2D; value) = self.setParamMax(CPUParticles2D_Parameter(3), value)

template linearAccelCurve*(self: CPUParticles2D): untyped = self.getParamCurve(CPUParticles2D_Parameter(3))
template `linearAccelCurve=`*(self: CPUParticles2D; value) = self.setParamCurve(CPUParticles2D_Parameter(3), value)

template radialAccelMin*(self: CPUParticles2D): untyped = self.getParamMin(CPUParticles2D_Parameter(4))
template `radialAccelMin=`*(self: CPUParticles2D; value) = self.setParamMin(CPUParticles2D_Parameter(4), value)

template radialAccelMax*(self: CPUParticles2D): untyped = self.getParamMax(CPUParticles2D_Parameter(4))
template `radialAccelMax=`*(self: CPUParticles2D; value) = self.setParamMax(CPUParticles2D_Parameter(4), value)

template radialAccelCurve*(self: CPUParticles2D): untyped = self.getParamCurve(CPUParticles2D_Parameter(4))
template `radialAccelCurve=`*(self: CPUParticles2D; value) = self.setParamCurve(CPUParticles2D_Parameter(4), value)

template tangentialAccelMin*(self: CPUParticles2D): untyped = self.getParamMin(CPUParticles2D_Parameter(5))
template `tangentialAccelMin=`*(self: CPUParticles2D; value) = self.setParamMin(CPUParticles2D_Parameter(5), value)

template tangentialAccelMax*(self: CPUParticles2D): untyped = self.getParamMax(CPUParticles2D_Parameter(5))
template `tangentialAccelMax=`*(self: CPUParticles2D; value) = self.setParamMax(CPUParticles2D_Parameter(5), value)

template tangentialAccelCurve*(self: CPUParticles2D): untyped = self.getParamCurve(CPUParticles2D_Parameter(5))
template `tangentialAccelCurve=`*(self: CPUParticles2D; value) = self.setParamCurve(CPUParticles2D_Parameter(5), value)

template dampingMin*(self: CPUParticles2D): untyped = self.getParamMin(CPUParticles2D_Parameter(6))
template `dampingMin=`*(self: CPUParticles2D; value) = self.setParamMin(CPUParticles2D_Parameter(6), value)

template dampingMax*(self: CPUParticles2D): untyped = self.getParamMax(CPUParticles2D_Parameter(6))
template `dampingMax=`*(self: CPUParticles2D; value) = self.setParamMax(CPUParticles2D_Parameter(6), value)

template dampingCurve*(self: CPUParticles2D): untyped = self.getParamCurve(CPUParticles2D_Parameter(6))
template `dampingCurve=`*(self: CPUParticles2D; value) = self.setParamCurve(CPUParticles2D_Parameter(6), value)

template angleMin*(self: CPUParticles2D): untyped = self.getParamMin(CPUParticles2D_Parameter(7))
template `angleMin=`*(self: CPUParticles2D; value) = self.setParamMin(CPUParticles2D_Parameter(7), value)

template angleMax*(self: CPUParticles2D): untyped = self.getParamMax(CPUParticles2D_Parameter(7))
template `angleMax=`*(self: CPUParticles2D; value) = self.setParamMax(CPUParticles2D_Parameter(7), value)

template angleCurve*(self: CPUParticles2D): untyped = self.getParamCurve(CPUParticles2D_Parameter(7))
template `angleCurve=`*(self: CPUParticles2D; value) = self.setParamCurve(CPUParticles2D_Parameter(7), value)

template scaleAmountMin*(self: CPUParticles2D): untyped = self.getParamMin(CPUParticles2D_Parameter(8))
template `scaleAmountMin=`*(self: CPUParticles2D; value) = self.setParamMin(CPUParticles2D_Parameter(8), value)

template scaleAmountMax*(self: CPUParticles2D): untyped = self.getParamMax(CPUParticles2D_Parameter(8))
template `scaleAmountMax=`*(self: CPUParticles2D; value) = self.setParamMax(CPUParticles2D_Parameter(8), value)

template scaleAmountCurve*(self: CPUParticles2D): untyped = self.getParamCurve(CPUParticles2D_Parameter(8))
template `scaleAmountCurve=`*(self: CPUParticles2D; value) = self.setParamCurve(CPUParticles2D_Parameter(8), value)

template splitScale*(self: CPUParticles2D): untyped = self.getSplitScale()
template `splitScale=`*(self: CPUParticles2D; value) = self.setSplitScale(value)

template scaleCurveX*(self: CPUParticles2D): untyped = self.getScaleCurveX()
template `scaleCurveX=`*(self: CPUParticles2D; value) = self.setScaleCurveX(value)

template scaleCurveY*(self: CPUParticles2D): untyped = self.getScaleCurveY()
template `scaleCurveY=`*(self: CPUParticles2D; value) = self.setScaleCurveY(value)

template color*(self: CPUParticles2D): untyped = self.getColor()
template `color=`*(self: CPUParticles2D; value) = self.setColor(value)

template colorRamp*(self: CPUParticles2D): untyped = self.getColorRamp()
template `colorRamp=`*(self: CPUParticles2D; value) = self.setColorRamp(value)

template colorInitialRamp*(self: CPUParticles2D): untyped = self.getColorInitialRamp()
template `colorInitialRamp=`*(self: CPUParticles2D; value) = self.setColorInitialRamp(value)

template hueVariationMin*(self: CPUParticles2D): untyped = self.getParamMin(CPUParticles2D_Parameter(9))
template `hueVariationMin=`*(self: CPUParticles2D; value) = self.setParamMin(CPUParticles2D_Parameter(9), value)

template hueVariationMax*(self: CPUParticles2D): untyped = self.getParamMax(CPUParticles2D_Parameter(9))
template `hueVariationMax=`*(self: CPUParticles2D; value) = self.setParamMax(CPUParticles2D_Parameter(9), value)

template hueVariationCurve*(self: CPUParticles2D): untyped = self.getParamCurve(CPUParticles2D_Parameter(9))
template `hueVariationCurve=`*(self: CPUParticles2D; value) = self.setParamCurve(CPUParticles2D_Parameter(9), value)

template animSpeedMin*(self: CPUParticles2D): untyped = self.getParamMin(CPUParticles2D_Parameter(10))
template `animSpeedMin=`*(self: CPUParticles2D; value) = self.setParamMin(CPUParticles2D_Parameter(10), value)

template animSpeedMax*(self: CPUParticles2D): untyped = self.getParamMax(CPUParticles2D_Parameter(10))
template `animSpeedMax=`*(self: CPUParticles2D; value) = self.setParamMax(CPUParticles2D_Parameter(10), value)

template animSpeedCurve*(self: CPUParticles2D): untyped = self.getParamCurve(CPUParticles2D_Parameter(10))
template `animSpeedCurve=`*(self: CPUParticles2D; value) = self.setParamCurve(CPUParticles2D_Parameter(10), value)

template animOffsetMin*(self: CPUParticles2D): untyped = self.getParamMin(CPUParticles2D_Parameter(11))
template `animOffsetMin=`*(self: CPUParticles2D; value) = self.setParamMin(CPUParticles2D_Parameter(11), value)

template animOffsetMax*(self: CPUParticles2D): untyped = self.getParamMax(CPUParticles2D_Parameter(11))
template `animOffsetMax=`*(self: CPUParticles2D; value) = self.setParamMax(CPUParticles2D_Parameter(11), value)

template animOffsetCurve*(self: CPUParticles2D): untyped = self.getParamCurve(CPUParticles2D_Parameter(11))
template `animOffsetCurve=`*(self: CPUParticles2D; value) = self.setParamCurve(CPUParticles2D_Parameter(11), value)

const CPUParticles2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CPUParticles2D]): Table[string, string] = CPUParticles2D_vmap

proc finished*(self: CPUParticles2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("finished")
  self.emitSignal(signalname)
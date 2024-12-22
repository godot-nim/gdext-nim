{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgeometryinstance3d; export gdgeometryinstance3d

proc setEmitting*(self: CPUParticles3D; emitting: bool): void =
  expandMethodBind(className CPUParticles3D, "set_emitting", 2586408642)
  var `?param` = [getPtr emitting]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAmount*(self: CPUParticles3D; amount: int32): void =
  expandMethodBind(className CPUParticles3D, "set_amount", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc setLifetime*(self: CPUParticles3D; secs: float64): void =
  expandMethodBind(className CPUParticles3D, "set_lifetime", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOneShot*(self: CPUParticles3D; enable: bool): void =
  expandMethodBind(className CPUParticles3D, "set_one_shot", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPreProcessTime*(self: CPUParticles3D; secs: float64): void =
  expandMethodBind(className CPUParticles3D, "set_pre_process_time", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc setExplosivenessRatio*(self: CPUParticles3D; ratio: Float): void =
  expandMethodBind(className CPUParticles3D, "set_explosiveness_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc setRandomnessRatio*(self: CPUParticles3D; ratio: Float): void =
  expandMethodBind(className CPUParticles3D, "set_randomness_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc setVisibilityAabb*(self: CPUParticles3D; aabb: AABB): void =
  expandMethodBind(className CPUParticles3D, "set_visibility_aabb", 259215842)
  var `?param` = [getPtr aabb]
  methodbind.ptrcall(self, addr `?param`[0])

proc setLifetimeRandomness*(self: CPUParticles3D; random: float64): void =
  expandMethodBind(className CPUParticles3D, "set_lifetime_randomness", 373806689)
  var `?param` = [getPtr random]
  methodbind.ptrcall(self, addr `?param`[0])

proc setUseLocalCoordinates*(self: CPUParticles3D; enable: bool): void =
  expandMethodBind(className CPUParticles3D, "set_use_local_coordinates", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFixedFps*(self: CPUParticles3D; fps: int32): void =
  expandMethodBind(className CPUParticles3D, "set_fixed_fps", 1286410249)
  var `?param` = [getPtr fps]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFractionalDelta*(self: CPUParticles3D; enable: bool): void =
  expandMethodBind(className CPUParticles3D, "set_fractional_delta", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSpeedScale*(self: CPUParticles3D; scale: float64): void =
  expandMethodBind(className CPUParticles3D, "set_speed_scale", 373806689)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEmitting*(self: CPUParticles3D): bool =
  expandMethodBind(className CPUParticles3D, "is_emitting", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getAmount*(self: CPUParticles3D): int32 =
  expandMethodBind(className CPUParticles3D, "get_amount", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getLifetime*(self: CPUParticles3D): float64 =
  expandMethodBind(className CPUParticles3D, "get_lifetime", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getOneShot*(self: CPUParticles3D): bool =
  expandMethodBind(className CPUParticles3D, "get_one_shot", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getPreProcessTime*(self: CPUParticles3D): float64 =
  expandMethodBind(className CPUParticles3D, "get_pre_process_time", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getExplosivenessRatio*(self: CPUParticles3D): Float =
  expandMethodBind(className CPUParticles3D, "get_explosiveness_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getRandomnessRatio*(self: CPUParticles3D): Float =
  expandMethodBind(className CPUParticles3D, "get_randomness_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getVisibilityAabb*(self: CPUParticles3D): AABB =
  expandMethodBind(className CPUParticles3D, "get_visibility_aabb", 1068685055)
  var ret: encoded AABB
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AABB)

proc getLifetimeRandomness*(self: CPUParticles3D): float64 =
  expandMethodBind(className CPUParticles3D, "get_lifetime_randomness", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getUseLocalCoordinates*(self: CPUParticles3D): bool =
  expandMethodBind(className CPUParticles3D, "get_use_local_coordinates", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getFixedFps*(self: CPUParticles3D): int32 =
  expandMethodBind(className CPUParticles3D, "get_fixed_fps", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getFractionalDelta*(self: CPUParticles3D): bool =
  expandMethodBind(className CPUParticles3D, "get_fractional_delta", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getSpeedScale*(self: CPUParticles3D): float64 =
  expandMethodBind(className CPUParticles3D, "get_speed_scale", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setDrawOrder*(self: CPUParticles3D; order: CPUParticles3D_DrawOrder): void =
  expandMethodBind(className CPUParticles3D, "set_draw_order", 1427401774)
  var `?param` = [getPtr order]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDrawOrder*(self: CPUParticles3D): CPUParticles3D_DrawOrder =
  expandMethodBind(className CPUParticles3D, "get_draw_order", 1321900776)
  var ret: encoded CPUParticles3D_DrawOrder
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CPUParticles3D_DrawOrder)

proc setMesh*(self: CPUParticles3D; mesh: gdref Mesh): void =
  expandMethodBind(className CPUParticles3D, "set_mesh", 194775623)
  var `?param` = [getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMesh*(self: CPUParticles3D): gdref Mesh =
  expandMethodBind(className CPUParticles3D, "get_mesh", 1808005922)
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Mesh)

proc restart*(self: CPUParticles3D): void =
  expandMethodBind(className CPUParticles3D, "restart", 3218959716)
  methodbind.ptrcall(self, nil)

proc setDirection*(self: CPUParticles3D; direction: Vector3): void =
  expandMethodBind(className CPUParticles3D, "set_direction", 3460891852)
  var `?param` = [getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDirection*(self: CPUParticles3D): Vector3 =
  expandMethodBind(className CPUParticles3D, "get_direction", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setSpread*(self: CPUParticles3D; degrees: Float): void =
  expandMethodBind(className CPUParticles3D, "set_spread", 373806689)
  var `?param` = [getPtr degrees]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpread*(self: CPUParticles3D): Float =
  expandMethodBind(className CPUParticles3D, "get_spread", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFlatness*(self: CPUParticles3D; amount: Float): void =
  expandMethodBind(className CPUParticles3D, "set_flatness", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFlatness*(self: CPUParticles3D): Float =
  expandMethodBind(className CPUParticles3D, "get_flatness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setParamMin*(self: CPUParticles3D; param: CPUParticles3D_Parameter; value: Float): void =
  expandMethodBind(className CPUParticles3D, "set_param_min", 557936109)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamMin*(self: CPUParticles3D; param: CPUParticles3D_Parameter): Float =
  expandMethodBind(className CPUParticles3D, "get_param_min", 597646162)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setParamMax*(self: CPUParticles3D; param: CPUParticles3D_Parameter; value: Float): void =
  expandMethodBind(className CPUParticles3D, "set_param_max", 557936109)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamMax*(self: CPUParticles3D; param: CPUParticles3D_Parameter): Float =
  expandMethodBind(className CPUParticles3D, "get_param_max", 597646162)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setParamCurve*(self: CPUParticles3D; param: CPUParticles3D_Parameter; curve: gdref Curve): void =
  expandMethodBind(className CPUParticles3D, "set_param_curve", 4044142537)
  var `?param` = [getPtr param, getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamCurve*(self: CPUParticles3D; param: CPUParticles3D_Parameter): gdref Curve =
  expandMethodBind(className CPUParticles3D, "get_param_curve", 4132790277)
  var `?param` = [getPtr param]
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Curve)

proc setColor*(self: CPUParticles3D; color: Color): void =
  expandMethodBind(className CPUParticles3D, "set_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColor*(self: CPUParticles3D): Color =
  expandMethodBind(className CPUParticles3D, "get_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setColorRamp*(self: CPUParticles3D; ramp: gdref Gradient): void =
  expandMethodBind(className CPUParticles3D, "set_color_ramp", 2756054477)
  var `?param` = [getPtr ramp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorRamp*(self: CPUParticles3D): gdref Gradient =
  expandMethodBind(className CPUParticles3D, "get_color_ramp", 132272999)
  var ret: encoded gdref Gradient
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Gradient)

proc setColorInitialRamp*(self: CPUParticles3D; ramp: gdref Gradient): void =
  expandMethodBind(className CPUParticles3D, "set_color_initial_ramp", 2756054477)
  var `?param` = [getPtr ramp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorInitialRamp*(self: CPUParticles3D): gdref Gradient =
  expandMethodBind(className CPUParticles3D, "get_color_initial_ramp", 132272999)
  var ret: encoded gdref Gradient
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Gradient)

proc setParticleFlag*(self: CPUParticles3D; particleFlag: CPUParticles3D_ParticleFlags; enable: bool): void =
  expandMethodBind(className CPUParticles3D, "set_particle_flag", 3515406498)
  var `?param` = [getPtr particleFlag, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParticleFlag*(self: CPUParticles3D; particleFlag: CPUParticles3D_ParticleFlags): bool =
  expandMethodBind(className CPUParticles3D, "get_particle_flag", 2845201987)
  var `?param` = [getPtr particleFlag]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setEmissionShape*(self: CPUParticles3D; shape: CPUParticles3D_EmissionShape): void =
  expandMethodBind(className CPUParticles3D, "set_emission_shape", 491823814)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionShape*(self: CPUParticles3D): CPUParticles3D_EmissionShape =
  expandMethodBind(className CPUParticles3D, "get_emission_shape", 2961454842)
  var ret: encoded CPUParticles3D_EmissionShape
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CPUParticles3D_EmissionShape)

proc setEmissionSphereRadius*(self: CPUParticles3D; radius: Float): void =
  expandMethodBind(className CPUParticles3D, "set_emission_sphere_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionSphereRadius*(self: CPUParticles3D): Float =
  expandMethodBind(className CPUParticles3D, "get_emission_sphere_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEmissionBoxExtents*(self: CPUParticles3D; extents: Vector3): void =
  expandMethodBind(className CPUParticles3D, "set_emission_box_extents", 3460891852)
  var `?param` = [getPtr extents]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionBoxExtents*(self: CPUParticles3D): Vector3 =
  expandMethodBind(className CPUParticles3D, "get_emission_box_extents", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setEmissionPoints*(self: CPUParticles3D; array: PackedVector3Array): void =
  expandMethodBind(className CPUParticles3D, "set_emission_points", 334873810)
  var `?param` = [getPtr array]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionPoints*(self: CPUParticles3D): PackedVector3Array =
  expandMethodBind(className CPUParticles3D, "get_emission_points", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc setEmissionNormals*(self: CPUParticles3D; array: PackedVector3Array): void =
  expandMethodBind(className CPUParticles3D, "set_emission_normals", 334873810)
  var `?param` = [getPtr array]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionNormals*(self: CPUParticles3D): PackedVector3Array =
  expandMethodBind(className CPUParticles3D, "get_emission_normals", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc setEmissionColors*(self: CPUParticles3D; array: PackedColorArray): void =
  expandMethodBind(className CPUParticles3D, "set_emission_colors", 3546319833)
  var `?param` = [getPtr array]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionColors*(self: CPUParticles3D): PackedColorArray =
  expandMethodBind(className CPUParticles3D, "get_emission_colors", 1392750486)
  var ret: encoded PackedColorArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedColorArray)

proc setEmissionRingAxis*(self: CPUParticles3D; axis: Vector3): void =
  expandMethodBind(className CPUParticles3D, "set_emission_ring_axis", 3460891852)
  var `?param` = [getPtr axis]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionRingAxis*(self: CPUParticles3D): Vector3 =
  expandMethodBind(className CPUParticles3D, "get_emission_ring_axis", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setEmissionRingHeight*(self: CPUParticles3D; height: Float): void =
  expandMethodBind(className CPUParticles3D, "set_emission_ring_height", 373806689)
  var `?param` = [getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionRingHeight*(self: CPUParticles3D): Float =
  expandMethodBind(className CPUParticles3D, "get_emission_ring_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEmissionRingRadius*(self: CPUParticles3D; radius: Float): void =
  expandMethodBind(className CPUParticles3D, "set_emission_ring_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionRingRadius*(self: CPUParticles3D): Float =
  expandMethodBind(className CPUParticles3D, "get_emission_ring_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEmissionRingInnerRadius*(self: CPUParticles3D; innerRadius: Float): void =
  expandMethodBind(className CPUParticles3D, "set_emission_ring_inner_radius", 373806689)
  var `?param` = [getPtr innerRadius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionRingInnerRadius*(self: CPUParticles3D): Float =
  expandMethodBind(className CPUParticles3D, "get_emission_ring_inner_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getGravity*(self: CPUParticles3D): Vector3 =
  expandMethodBind(className CPUParticles3D, "get_gravity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setGravity*(self: CPUParticles3D; accelVec: Vector3): void =
  expandMethodBind(className CPUParticles3D, "set_gravity", 3460891852)
  var `?param` = [getPtr accelVec]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSplitScale*(self: CPUParticles3D): bool =
  expandMethodBind(className CPUParticles3D, "get_split_scale", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSplitScale*(self: CPUParticles3D; splitScale: bool): void =
  expandMethodBind(className CPUParticles3D, "set_split_scale", 2586408642)
  var `?param` = [getPtr splitScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScaleCurveX*(self: CPUParticles3D): gdref Curve =
  expandMethodBind(className CPUParticles3D, "get_scale_curve_x", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setScaleCurveX*(self: CPUParticles3D; scaleCurve: gdref Curve): void =
  expandMethodBind(className CPUParticles3D, "set_scale_curve_x", 270443179)
  var `?param` = [getPtr scaleCurve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScaleCurveY*(self: CPUParticles3D): gdref Curve =
  expandMethodBind(className CPUParticles3D, "get_scale_curve_y", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setScaleCurveY*(self: CPUParticles3D; scaleCurve: gdref Curve): void =
  expandMethodBind(className CPUParticles3D, "set_scale_curve_y", 270443179)
  var `?param` = [getPtr scaleCurve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScaleCurveZ*(self: CPUParticles3D): gdref Curve =
  expandMethodBind(className CPUParticles3D, "get_scale_curve_z", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setScaleCurveZ*(self: CPUParticles3D; scaleCurve: gdref Curve): void =
  expandMethodBind(className CPUParticles3D, "set_scale_curve_z", 270443179)
  var `?param` = [getPtr scaleCurve]
  methodbind.ptrcall(self, addr `?param`[0])

proc convertFromParticles*(self: CPUParticles3D; particles: Node): void =
  expandMethodBind(className CPUParticles3D, "convert_from_particles", 1078189570)
  var `?param` = [getPtr particles]
  methodbind.ptrcall(self, addr `?param`[0])

template emitting*(self: CPUParticles3D): untyped = self.isEmitting()
template `emitting=`*(self: CPUParticles3D; value) = self.setEmitting(value)

template amount*(self: CPUParticles3D): untyped = self.getAmount()
template `amount=`*(self: CPUParticles3D; value) = self.setAmount(value)

template lifetime*(self: CPUParticles3D): untyped = self.getLifetime()
template `lifetime=`*(self: CPUParticles3D; value) = self.setLifetime(value)

template oneShot*(self: CPUParticles3D): untyped = self.getOneShot()
template `oneShot=`*(self: CPUParticles3D; value) = self.setOneShot(value)

template preprocess*(self: CPUParticles3D): untyped = self.getPreProcessTime()
template `preprocess=`*(self: CPUParticles3D; value) = self.setPreProcessTime(value)

template speedScale*(self: CPUParticles3D): untyped = self.getSpeedScale()
template `speedScale=`*(self: CPUParticles3D; value) = self.setSpeedScale(value)

template explosiveness*(self: CPUParticles3D): untyped = self.getExplosivenessRatio()
template `explosiveness=`*(self: CPUParticles3D; value) = self.setExplosivenessRatio(value)

template randomness*(self: CPUParticles3D): untyped = self.getRandomnessRatio()
template `randomness=`*(self: CPUParticles3D; value) = self.setRandomnessRatio(value)

template lifetimeRandomness*(self: CPUParticles3D): untyped = self.getLifetimeRandomness()
template `lifetimeRandomness=`*(self: CPUParticles3D; value) = self.setLifetimeRandomness(value)

template fixedFps*(self: CPUParticles3D): untyped = self.getFixedFps()
template `fixedFps=`*(self: CPUParticles3D; value) = self.setFixedFps(value)

template fractDelta*(self: CPUParticles3D): untyped = self.getFractionalDelta()
template `fractDelta=`*(self: CPUParticles3D; value) = self.setFractionalDelta(value)

template visibilityAabb*(self: CPUParticles3D): untyped = self.getVisibilityAabb()
template `visibilityAabb=`*(self: CPUParticles3D; value) = self.setVisibilityAabb(value)

template localCoords*(self: CPUParticles3D): untyped = self.getUseLocalCoordinates()
template `localCoords=`*(self: CPUParticles3D; value) = self.setUseLocalCoordinates(value)

template drawOrder*(self: CPUParticles3D): untyped = self.getDrawOrder()
template `drawOrder=`*(self: CPUParticles3D; value) = self.setDrawOrder(value)

template mesh*(self: CPUParticles3D): untyped = self.getMesh()
template `mesh=`*(self: CPUParticles3D; value) = self.setMesh(value)

template emissionShape*(self: CPUParticles3D): untyped = self.getEmissionShape()
template `emissionShape=`*(self: CPUParticles3D; value) = self.setEmissionShape(value)

template emissionSphereRadius*(self: CPUParticles3D): untyped = self.getEmissionSphereRadius()
template `emissionSphereRadius=`*(self: CPUParticles3D; value) = self.setEmissionSphereRadius(value)

template emissionBoxExtents*(self: CPUParticles3D): untyped = self.getEmissionBoxExtents()
template `emissionBoxExtents=`*(self: CPUParticles3D; value) = self.setEmissionBoxExtents(value)

template emissionPoints*(self: CPUParticles3D): untyped = self.getEmissionPoints()
template `emissionPoints=`*(self: CPUParticles3D; value) = self.setEmissionPoints(value)

template emissionNormals*(self: CPUParticles3D): untyped = self.getEmissionNormals()
template `emissionNormals=`*(self: CPUParticles3D; value) = self.setEmissionNormals(value)

template emissionColors*(self: CPUParticles3D): untyped = self.getEmissionColors()
template `emissionColors=`*(self: CPUParticles3D; value) = self.setEmissionColors(value)

template emissionRingAxis*(self: CPUParticles3D): untyped = self.getEmissionRingAxis()
template `emissionRingAxis=`*(self: CPUParticles3D; value) = self.setEmissionRingAxis(value)

template emissionRingHeight*(self: CPUParticles3D): untyped = self.getEmissionRingHeight()
template `emissionRingHeight=`*(self: CPUParticles3D; value) = self.setEmissionRingHeight(value)

template emissionRingRadius*(self: CPUParticles3D): untyped = self.getEmissionRingRadius()
template `emissionRingRadius=`*(self: CPUParticles3D; value) = self.setEmissionRingRadius(value)

template emissionRingInnerRadius*(self: CPUParticles3D): untyped = self.getEmissionRingInnerRadius()
template `emissionRingInnerRadius=`*(self: CPUParticles3D; value) = self.setEmissionRingInnerRadius(value)

template particleFlagAlignY*(self: CPUParticles3D): untyped = self.getParticleFlag(CPUParticles3D_ParticleFlags(0))
template `particleFlagAlignY=`*(self: CPUParticles3D; value) = self.setParticleFlag(CPUParticles3D_ParticleFlags(0), value)

template particleFlagRotateY*(self: CPUParticles3D): untyped = self.getParticleFlag(CPUParticles3D_ParticleFlags(1))
template `particleFlagRotateY=`*(self: CPUParticles3D; value) = self.setParticleFlag(CPUParticles3D_ParticleFlags(1), value)

template particleFlagDisableZ*(self: CPUParticles3D): untyped = self.getParticleFlag(CPUParticles3D_ParticleFlags(2))
template `particleFlagDisableZ=`*(self: CPUParticles3D; value) = self.setParticleFlag(CPUParticles3D_ParticleFlags(2), value)

template direction*(self: CPUParticles3D): untyped = self.getDirection()
template `direction=`*(self: CPUParticles3D; value) = self.setDirection(value)

template spread*(self: CPUParticles3D): untyped = self.getSpread()
template `spread=`*(self: CPUParticles3D; value) = self.setSpread(value)

template flatness*(self: CPUParticles3D): untyped = self.getFlatness()
template `flatness=`*(self: CPUParticles3D; value) = self.setFlatness(value)

template gravity*(self: CPUParticles3D): untyped = self.getGravity()
template `gravity=`*(self: CPUParticles3D; value) = self.setGravity(value)

template initialVelocityMin*(self: CPUParticles3D): untyped = self.getParamMin(CPUParticles3D_Parameter(0))
template `initialVelocityMin=`*(self: CPUParticles3D; value) = self.setParamMin(CPUParticles3D_Parameter(0), value)

template initialVelocityMax*(self: CPUParticles3D): untyped = self.getParamMax(CPUParticles3D_Parameter(0))
template `initialVelocityMax=`*(self: CPUParticles3D; value) = self.setParamMax(CPUParticles3D_Parameter(0), value)

template angularVelocityMin*(self: CPUParticles3D): untyped = self.getParamMin(CPUParticles3D_Parameter(1))
template `angularVelocityMin=`*(self: CPUParticles3D; value) = self.setParamMin(CPUParticles3D_Parameter(1), value)

template angularVelocityMax*(self: CPUParticles3D): untyped = self.getParamMax(CPUParticles3D_Parameter(1))
template `angularVelocityMax=`*(self: CPUParticles3D; value) = self.setParamMax(CPUParticles3D_Parameter(1), value)

template angularVelocityCurve*(self: CPUParticles3D): untyped = self.getParamCurve(CPUParticles3D_Parameter(1))
template `angularVelocityCurve=`*(self: CPUParticles3D; value) = self.setParamCurve(CPUParticles3D_Parameter(1), value)

template orbitVelocityMin*(self: CPUParticles3D): untyped = self.getParamMin(CPUParticles3D_Parameter(2))
template `orbitVelocityMin=`*(self: CPUParticles3D; value) = self.setParamMin(CPUParticles3D_Parameter(2), value)

template orbitVelocityMax*(self: CPUParticles3D): untyped = self.getParamMax(CPUParticles3D_Parameter(2))
template `orbitVelocityMax=`*(self: CPUParticles3D; value) = self.setParamMax(CPUParticles3D_Parameter(2), value)

template orbitVelocityCurve*(self: CPUParticles3D): untyped = self.getParamCurve(CPUParticles3D_Parameter(2))
template `orbitVelocityCurve=`*(self: CPUParticles3D; value) = self.setParamCurve(CPUParticles3D_Parameter(2), value)

template linearAccelMin*(self: CPUParticles3D): untyped = self.getParamMin(CPUParticles3D_Parameter(3))
template `linearAccelMin=`*(self: CPUParticles3D; value) = self.setParamMin(CPUParticles3D_Parameter(3), value)

template linearAccelMax*(self: CPUParticles3D): untyped = self.getParamMax(CPUParticles3D_Parameter(3))
template `linearAccelMax=`*(self: CPUParticles3D; value) = self.setParamMax(CPUParticles3D_Parameter(3), value)

template linearAccelCurve*(self: CPUParticles3D): untyped = self.getParamCurve(CPUParticles3D_Parameter(3))
template `linearAccelCurve=`*(self: CPUParticles3D; value) = self.setParamCurve(CPUParticles3D_Parameter(3), value)

template radialAccelMin*(self: CPUParticles3D): untyped = self.getParamMin(CPUParticles3D_Parameter(4))
template `radialAccelMin=`*(self: CPUParticles3D; value) = self.setParamMin(CPUParticles3D_Parameter(4), value)

template radialAccelMax*(self: CPUParticles3D): untyped = self.getParamMax(CPUParticles3D_Parameter(4))
template `radialAccelMax=`*(self: CPUParticles3D; value) = self.setParamMax(CPUParticles3D_Parameter(4), value)

template radialAccelCurve*(self: CPUParticles3D): untyped = self.getParamCurve(CPUParticles3D_Parameter(4))
template `radialAccelCurve=`*(self: CPUParticles3D; value) = self.setParamCurve(CPUParticles3D_Parameter(4), value)

template tangentialAccelMin*(self: CPUParticles3D): untyped = self.getParamMin(CPUParticles3D_Parameter(5))
template `tangentialAccelMin=`*(self: CPUParticles3D; value) = self.setParamMin(CPUParticles3D_Parameter(5), value)

template tangentialAccelMax*(self: CPUParticles3D): untyped = self.getParamMax(CPUParticles3D_Parameter(5))
template `tangentialAccelMax=`*(self: CPUParticles3D; value) = self.setParamMax(CPUParticles3D_Parameter(5), value)

template tangentialAccelCurve*(self: CPUParticles3D): untyped = self.getParamCurve(CPUParticles3D_Parameter(5))
template `tangentialAccelCurve=`*(self: CPUParticles3D; value) = self.setParamCurve(CPUParticles3D_Parameter(5), value)

template dampingMin*(self: CPUParticles3D): untyped = self.getParamMin(CPUParticles3D_Parameter(6))
template `dampingMin=`*(self: CPUParticles3D; value) = self.setParamMin(CPUParticles3D_Parameter(6), value)

template dampingMax*(self: CPUParticles3D): untyped = self.getParamMax(CPUParticles3D_Parameter(6))
template `dampingMax=`*(self: CPUParticles3D; value) = self.setParamMax(CPUParticles3D_Parameter(6), value)

template dampingCurve*(self: CPUParticles3D): untyped = self.getParamCurve(CPUParticles3D_Parameter(6))
template `dampingCurve=`*(self: CPUParticles3D; value) = self.setParamCurve(CPUParticles3D_Parameter(6), value)

template angleMin*(self: CPUParticles3D): untyped = self.getParamMin(CPUParticles3D_Parameter(7))
template `angleMin=`*(self: CPUParticles3D; value) = self.setParamMin(CPUParticles3D_Parameter(7), value)

template angleMax*(self: CPUParticles3D): untyped = self.getParamMax(CPUParticles3D_Parameter(7))
template `angleMax=`*(self: CPUParticles3D; value) = self.setParamMax(CPUParticles3D_Parameter(7), value)

template angleCurve*(self: CPUParticles3D): untyped = self.getParamCurve(CPUParticles3D_Parameter(7))
template `angleCurve=`*(self: CPUParticles3D; value) = self.setParamCurve(CPUParticles3D_Parameter(7), value)

template scaleAmountMin*(self: CPUParticles3D): untyped = self.getParamMin(CPUParticles3D_Parameter(8))
template `scaleAmountMin=`*(self: CPUParticles3D; value) = self.setParamMin(CPUParticles3D_Parameter(8), value)

template scaleAmountMax*(self: CPUParticles3D): untyped = self.getParamMax(CPUParticles3D_Parameter(8))
template `scaleAmountMax=`*(self: CPUParticles3D; value) = self.setParamMax(CPUParticles3D_Parameter(8), value)

template scaleAmountCurve*(self: CPUParticles3D): untyped = self.getParamCurve(CPUParticles3D_Parameter(8))
template `scaleAmountCurve=`*(self: CPUParticles3D; value) = self.setParamCurve(CPUParticles3D_Parameter(8), value)

template splitScale*(self: CPUParticles3D): untyped = self.getSplitScale()
template `splitScale=`*(self: CPUParticles3D; value) = self.setSplitScale(value)

template scaleCurveX*(self: CPUParticles3D): untyped = self.getScaleCurveX()
template `scaleCurveX=`*(self: CPUParticles3D; value) = self.setScaleCurveX(value)

template scaleCurveY*(self: CPUParticles3D): untyped = self.getScaleCurveY()
template `scaleCurveY=`*(self: CPUParticles3D; value) = self.setScaleCurveY(value)

template scaleCurveZ*(self: CPUParticles3D): untyped = self.getScaleCurveZ()
template `scaleCurveZ=`*(self: CPUParticles3D; value) = self.setScaleCurveZ(value)

template color*(self: CPUParticles3D): untyped = self.getColor()
template `color=`*(self: CPUParticles3D; value) = self.setColor(value)

template colorRamp*(self: CPUParticles3D): untyped = self.getColorRamp()
template `colorRamp=`*(self: CPUParticles3D; value) = self.setColorRamp(value)

template colorInitialRamp*(self: CPUParticles3D): untyped = self.getColorInitialRamp()
template `colorInitialRamp=`*(self: CPUParticles3D; value) = self.setColorInitialRamp(value)

template hueVariationMin*(self: CPUParticles3D): untyped = self.getParamMin(CPUParticles3D_Parameter(9))
template `hueVariationMin=`*(self: CPUParticles3D; value) = self.setParamMin(CPUParticles3D_Parameter(9), value)

template hueVariationMax*(self: CPUParticles3D): untyped = self.getParamMax(CPUParticles3D_Parameter(9))
template `hueVariationMax=`*(self: CPUParticles3D; value) = self.setParamMax(CPUParticles3D_Parameter(9), value)

template hueVariationCurve*(self: CPUParticles3D): untyped = self.getParamCurve(CPUParticles3D_Parameter(9))
template `hueVariationCurve=`*(self: CPUParticles3D; value) = self.setParamCurve(CPUParticles3D_Parameter(9), value)

template animSpeedMin*(self: CPUParticles3D): untyped = self.getParamMin(CPUParticles3D_Parameter(10))
template `animSpeedMin=`*(self: CPUParticles3D; value) = self.setParamMin(CPUParticles3D_Parameter(10), value)

template animSpeedMax*(self: CPUParticles3D): untyped = self.getParamMax(CPUParticles3D_Parameter(10))
template `animSpeedMax=`*(self: CPUParticles3D; value) = self.setParamMax(CPUParticles3D_Parameter(10), value)

template animSpeedCurve*(self: CPUParticles3D): untyped = self.getParamCurve(CPUParticles3D_Parameter(10))
template `animSpeedCurve=`*(self: CPUParticles3D; value) = self.setParamCurve(CPUParticles3D_Parameter(10), value)

template animOffsetMin*(self: CPUParticles3D): untyped = self.getParamMin(CPUParticles3D_Parameter(11))
template `animOffsetMin=`*(self: CPUParticles3D; value) = self.setParamMin(CPUParticles3D_Parameter(11), value)

template animOffsetMax*(self: CPUParticles3D): untyped = self.getParamMax(CPUParticles3D_Parameter(11))
template `animOffsetMax=`*(self: CPUParticles3D; value) = self.setParamMax(CPUParticles3D_Parameter(11), value)

template animOffsetCurve*(self: CPUParticles3D): untyped = self.getParamCurve(CPUParticles3D_Parameter(11))
template `animOffsetCurve=`*(self: CPUParticles3D; value) = self.setParamCurve(CPUParticles3D_Parameter(11), value)

const CPUParticles3D_vmap =
  GeometryInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CPUParticles3D]): Table[string, string] = CPUParticles3D_vmap

proc finished*(self: CPUParticles3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("finished")
  self.emitSignal(signalname)
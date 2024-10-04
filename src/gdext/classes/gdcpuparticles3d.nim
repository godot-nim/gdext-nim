{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdgeometryinstance3d; export gdgeometryinstance3d

proc setEmitting*(self: CpuParticles3D; emitting: bool): void =
  expandMethodBind(className CpuParticles3D, "set_emitting", 2586408642)
  var `?param` = [getPtr emitting]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAmount*(self: CpuParticles3D; amount: int32): void =
  expandMethodBind(className CpuParticles3D, "set_amount", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc setLifetime*(self: CpuParticles3D; secs: float64): void =
  expandMethodBind(className CpuParticles3D, "set_lifetime", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOneShot*(self: CpuParticles3D; enable: bool): void =
  expandMethodBind(className CpuParticles3D, "set_one_shot", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPreProcessTime*(self: CpuParticles3D; secs: float64): void =
  expandMethodBind(className CpuParticles3D, "set_pre_process_time", 373806689)
  var `?param` = [getPtr secs]
  methodbind.ptrcall(self, addr `?param`[0])

proc setExplosivenessRatio*(self: CpuParticles3D; ratio: Float): void =
  expandMethodBind(className CpuParticles3D, "set_explosiveness_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc setRandomnessRatio*(self: CpuParticles3D; ratio: Float): void =
  expandMethodBind(className CpuParticles3D, "set_randomness_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc setVisibilityAabb*(self: CpuParticles3D; aabb: Aabb): void =
  expandMethodBind(className CpuParticles3D, "set_visibility_aabb", 259215842)
  var `?param` = [getPtr aabb]
  methodbind.ptrcall(self, addr `?param`[0])

proc setLifetimeRandomness*(self: CpuParticles3D; random: float64): void =
  expandMethodBind(className CpuParticles3D, "set_lifetime_randomness", 373806689)
  var `?param` = [getPtr random]
  methodbind.ptrcall(self, addr `?param`[0])

proc setUseLocalCoordinates*(self: CpuParticles3D; enable: bool): void =
  expandMethodBind(className CpuParticles3D, "set_use_local_coordinates", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFixedFps*(self: CpuParticles3D; fps: int32): void =
  expandMethodBind(className CpuParticles3D, "set_fixed_fps", 1286410249)
  var `?param` = [getPtr fps]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFractionalDelta*(self: CpuParticles3D; enable: bool): void =
  expandMethodBind(className CpuParticles3D, "set_fractional_delta", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSpeedScale*(self: CpuParticles3D; scale: float64): void =
  expandMethodBind(className CpuParticles3D, "set_speed_scale", 373806689)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEmitting*(self: CpuParticles3D): bool =
  expandMethodBind(className CpuParticles3D, "is_emitting", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getAmount*(self: CpuParticles3D): int32 =
  expandMethodBind(className CpuParticles3D, "get_amount", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getLifetime*(self: CpuParticles3D): float64 =
  expandMethodBind(className CpuParticles3D, "get_lifetime", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getOneShot*(self: CpuParticles3D): bool =
  expandMethodBind(className CpuParticles3D, "get_one_shot", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getPreProcessTime*(self: CpuParticles3D): float64 =
  expandMethodBind(className CpuParticles3D, "get_pre_process_time", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getExplosivenessRatio*(self: CpuParticles3D): Float =
  expandMethodBind(className CpuParticles3D, "get_explosiveness_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getRandomnessRatio*(self: CpuParticles3D): Float =
  expandMethodBind(className CpuParticles3D, "get_randomness_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getVisibilityAabb*(self: CpuParticles3D): Aabb =
  expandMethodBind(className CpuParticles3D, "get_visibility_aabb", 1068685055)
  var ret: encoded Aabb
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Aabb)

proc getLifetimeRandomness*(self: CpuParticles3D): float64 =
  expandMethodBind(className CpuParticles3D, "get_lifetime_randomness", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getUseLocalCoordinates*(self: CpuParticles3D): bool =
  expandMethodBind(className CpuParticles3D, "get_use_local_coordinates", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getFixedFps*(self: CpuParticles3D): int32 =
  expandMethodBind(className CpuParticles3D, "get_fixed_fps", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getFractionalDelta*(self: CpuParticles3D): bool =
  expandMethodBind(className CpuParticles3D, "get_fractional_delta", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getSpeedScale*(self: CpuParticles3D): float64 =
  expandMethodBind(className CpuParticles3D, "get_speed_scale", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setDrawOrder*(self: CpuParticles3D; order: CpuParticles3D_DrawOrder): void =
  expandMethodBind(className CpuParticles3D, "set_draw_order", 1427401774)
  var `?param` = [getPtr order]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDrawOrder*(self: CpuParticles3D): CpuParticles3D_DrawOrder =
  expandMethodBind(className CpuParticles3D, "get_draw_order", 1321900776)
  var ret: encoded CpuParticles3D_DrawOrder
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CpuParticles3D_DrawOrder)

proc setMesh*(self: CpuParticles3D; mesh: gdref Mesh): void =
  expandMethodBind(className CpuParticles3D, "set_mesh", 194775623)
  var `?param` = [getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMesh*(self: CpuParticles3D): gdref Mesh =
  expandMethodBind(className CpuParticles3D, "get_mesh", 1808005922)
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Mesh)

proc restart*(self: CpuParticles3D): void =
  expandMethodBind(className CpuParticles3D, "restart", 3218959716)
  methodbind.ptrcall(self, nil)

proc setDirection*(self: CpuParticles3D; direction: Vector3): void =
  expandMethodBind(className CpuParticles3D, "set_direction", 3460891852)
  var `?param` = [getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDirection*(self: CpuParticles3D): Vector3 =
  expandMethodBind(className CpuParticles3D, "get_direction", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setSpread*(self: CpuParticles3D; degrees: Float): void =
  expandMethodBind(className CpuParticles3D, "set_spread", 373806689)
  var `?param` = [getPtr degrees]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpread*(self: CpuParticles3D): Float =
  expandMethodBind(className CpuParticles3D, "get_spread", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFlatness*(self: CpuParticles3D; amount: Float): void =
  expandMethodBind(className CpuParticles3D, "set_flatness", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFlatness*(self: CpuParticles3D): Float =
  expandMethodBind(className CpuParticles3D, "get_flatness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setParamMin*(self: CpuParticles3D; param: CpuParticles3D_Parameter; value: Float): void =
  expandMethodBind(className CpuParticles3D, "set_param_min", 557936109)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamMin*(self: CpuParticles3D; param: CpuParticles3D_Parameter): Float =
  expandMethodBind(className CpuParticles3D, "get_param_min", 597646162)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setParamMax*(self: CpuParticles3D; param: CpuParticles3D_Parameter; value: Float): void =
  expandMethodBind(className CpuParticles3D, "set_param_max", 557936109)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamMax*(self: CpuParticles3D; param: CpuParticles3D_Parameter): Float =
  expandMethodBind(className CpuParticles3D, "get_param_max", 597646162)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setParamCurve*(self: CpuParticles3D; param: CpuParticles3D_Parameter; curve: gdref Curve): void =
  expandMethodBind(className CpuParticles3D, "set_param_curve", 4044142537)
  var `?param` = [getPtr param, getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamCurve*(self: CpuParticles3D; param: CpuParticles3D_Parameter): gdref Curve =
  expandMethodBind(className CpuParticles3D, "get_param_curve", 4132790277)
  var `?param` = [getPtr param]
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Curve)

proc setColor*(self: CpuParticles3D; color: Color): void =
  expandMethodBind(className CpuParticles3D, "set_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColor*(self: CpuParticles3D): Color =
  expandMethodBind(className CpuParticles3D, "get_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setColorRamp*(self: CpuParticles3D; ramp: gdref Gradient): void =
  expandMethodBind(className CpuParticles3D, "set_color_ramp", 2756054477)
  var `?param` = [getPtr ramp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorRamp*(self: CpuParticles3D): gdref Gradient =
  expandMethodBind(className CpuParticles3D, "get_color_ramp", 132272999)
  var ret: encoded gdref Gradient
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Gradient)

proc setColorInitialRamp*(self: CpuParticles3D; ramp: gdref Gradient): void =
  expandMethodBind(className CpuParticles3D, "set_color_initial_ramp", 2756054477)
  var `?param` = [getPtr ramp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorInitialRamp*(self: CpuParticles3D): gdref Gradient =
  expandMethodBind(className CpuParticles3D, "get_color_initial_ramp", 132272999)
  var ret: encoded gdref Gradient
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Gradient)

proc setParticleFlag*(self: CpuParticles3D; particleFlag: CpuParticles3D_ParticleFlags; enable: bool): void =
  expandMethodBind(className CpuParticles3D, "set_particle_flag", 3515406498)
  var `?param` = [getPtr particleFlag, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParticleFlag*(self: CpuParticles3D; particleFlag: CpuParticles3D_ParticleFlags): bool =
  expandMethodBind(className CpuParticles3D, "get_particle_flag", 2845201987)
  var `?param` = [getPtr particleFlag]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setEmissionShape*(self: CpuParticles3D; shape: CpuParticles3D_EmissionShape): void =
  expandMethodBind(className CpuParticles3D, "set_emission_shape", 491823814)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionShape*(self: CpuParticles3D): CpuParticles3D_EmissionShape =
  expandMethodBind(className CpuParticles3D, "get_emission_shape", 2961454842)
  var ret: encoded CpuParticles3D_EmissionShape
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CpuParticles3D_EmissionShape)

proc setEmissionSphereRadius*(self: CpuParticles3D; radius: Float): void =
  expandMethodBind(className CpuParticles3D, "set_emission_sphere_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionSphereRadius*(self: CpuParticles3D): Float =
  expandMethodBind(className CpuParticles3D, "get_emission_sphere_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEmissionBoxExtents*(self: CpuParticles3D; extents: Vector3): void =
  expandMethodBind(className CpuParticles3D, "set_emission_box_extents", 3460891852)
  var `?param` = [getPtr extents]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionBoxExtents*(self: CpuParticles3D): Vector3 =
  expandMethodBind(className CpuParticles3D, "get_emission_box_extents", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setEmissionPoints*(self: CpuParticles3D; array: PackedVector3Array): void =
  expandMethodBind(className CpuParticles3D, "set_emission_points", 334873810)
  var `?param` = [getPtr array]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionPoints*(self: CpuParticles3D): PackedVector3Array =
  expandMethodBind(className CpuParticles3D, "get_emission_points", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc setEmissionNormals*(self: CpuParticles3D; array: PackedVector3Array): void =
  expandMethodBind(className CpuParticles3D, "set_emission_normals", 334873810)
  var `?param` = [getPtr array]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionNormals*(self: CpuParticles3D): PackedVector3Array =
  expandMethodBind(className CpuParticles3D, "get_emission_normals", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc setEmissionColors*(self: CpuParticles3D; array: PackedColorArray): void =
  expandMethodBind(className CpuParticles3D, "set_emission_colors", 3546319833)
  var `?param` = [getPtr array]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionColors*(self: CpuParticles3D): PackedColorArray =
  expandMethodBind(className CpuParticles3D, "get_emission_colors", 1392750486)
  var ret: encoded PackedColorArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedColorArray)

proc setEmissionRingAxis*(self: CpuParticles3D; axis: Vector3): void =
  expandMethodBind(className CpuParticles3D, "set_emission_ring_axis", 3460891852)
  var `?param` = [getPtr axis]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionRingAxis*(self: CpuParticles3D): Vector3 =
  expandMethodBind(className CpuParticles3D, "get_emission_ring_axis", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setEmissionRingHeight*(self: CpuParticles3D; height: Float): void =
  expandMethodBind(className CpuParticles3D, "set_emission_ring_height", 373806689)
  var `?param` = [getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionRingHeight*(self: CpuParticles3D): Float =
  expandMethodBind(className CpuParticles3D, "get_emission_ring_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEmissionRingRadius*(self: CpuParticles3D; radius: Float): void =
  expandMethodBind(className CpuParticles3D, "set_emission_ring_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionRingRadius*(self: CpuParticles3D): Float =
  expandMethodBind(className CpuParticles3D, "get_emission_ring_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEmissionRingInnerRadius*(self: CpuParticles3D; innerRadius: Float): void =
  expandMethodBind(className CpuParticles3D, "set_emission_ring_inner_radius", 373806689)
  var `?param` = [getPtr innerRadius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionRingInnerRadius*(self: CpuParticles3D): Float =
  expandMethodBind(className CpuParticles3D, "get_emission_ring_inner_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getGravity*(self: CpuParticles3D): Vector3 =
  expandMethodBind(className CpuParticles3D, "get_gravity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setGravity*(self: CpuParticles3D; accelVec: Vector3): void =
  expandMethodBind(className CpuParticles3D, "set_gravity", 3460891852)
  var `?param` = [getPtr accelVec]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSplitScale*(self: CpuParticles3D): bool =
  expandMethodBind(className CpuParticles3D, "get_split_scale", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSplitScale*(self: CpuParticles3D; splitScale: bool): void =
  expandMethodBind(className CpuParticles3D, "set_split_scale", 2586408642)
  var `?param` = [getPtr splitScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScaleCurveX*(self: CpuParticles3D): gdref Curve =
  expandMethodBind(className CpuParticles3D, "get_scale_curve_x", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setScaleCurveX*(self: CpuParticles3D; scaleCurve: gdref Curve): void =
  expandMethodBind(className CpuParticles3D, "set_scale_curve_x", 270443179)
  var `?param` = [getPtr scaleCurve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScaleCurveY*(self: CpuParticles3D): gdref Curve =
  expandMethodBind(className CpuParticles3D, "get_scale_curve_y", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setScaleCurveY*(self: CpuParticles3D; scaleCurve: gdref Curve): void =
  expandMethodBind(className CpuParticles3D, "set_scale_curve_y", 270443179)
  var `?param` = [getPtr scaleCurve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScaleCurveZ*(self: CpuParticles3D): gdref Curve =
  expandMethodBind(className CpuParticles3D, "get_scale_curve_z", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setScaleCurveZ*(self: CpuParticles3D; scaleCurve: gdref Curve): void =
  expandMethodBind(className CpuParticles3D, "set_scale_curve_z", 270443179)
  var `?param` = [getPtr scaleCurve]
  methodbind.ptrcall(self, addr `?param`[0])

proc convertFromParticles*(self: CpuParticles3D; particles: Node): void =
  expandMethodBind(className CpuParticles3D, "convert_from_particles", 1078189570)
  var `?param` = [getPtr particles]
  methodbind.ptrcall(self, addr `?param`[0])

template emitting*(self: CpuParticles3D): untyped = self.isEmitting()
template `emitting=`*(self: CpuParticles3D; value) = self.setEmitting(value)

template amount*(self: CpuParticles3D): untyped = self.getAmount()
template `amount=`*(self: CpuParticles3D; value) = self.setAmount(value)

template lifetime*(self: CpuParticles3D): untyped = self.getLifetime()
template `lifetime=`*(self: CpuParticles3D; value) = self.setLifetime(value)

template oneShot*(self: CpuParticles3D): untyped = self.getOneShot()
template `oneShot=`*(self: CpuParticles3D; value) = self.setOneShot(value)

template preprocess*(self: CpuParticles3D): untyped = self.getPreProcessTime()
template `preprocess=`*(self: CpuParticles3D; value) = self.setPreProcessTime(value)

template speedScale*(self: CpuParticles3D): untyped = self.getSpeedScale()
template `speedScale=`*(self: CpuParticles3D; value) = self.setSpeedScale(value)

template explosiveness*(self: CpuParticles3D): untyped = self.getExplosivenessRatio()
template `explosiveness=`*(self: CpuParticles3D; value) = self.setExplosivenessRatio(value)

template randomness*(self: CpuParticles3D): untyped = self.getRandomnessRatio()
template `randomness=`*(self: CpuParticles3D; value) = self.setRandomnessRatio(value)

template lifetimeRandomness*(self: CpuParticles3D): untyped = self.getLifetimeRandomness()
template `lifetimeRandomness=`*(self: CpuParticles3D; value) = self.setLifetimeRandomness(value)

template fixedFps*(self: CpuParticles3D): untyped = self.getFixedFps()
template `fixedFps=`*(self: CpuParticles3D; value) = self.setFixedFps(value)

template fractDelta*(self: CpuParticles3D): untyped = self.getFractionalDelta()
template `fractDelta=`*(self: CpuParticles3D; value) = self.setFractionalDelta(value)

template visibilityAabb*(self: CpuParticles3D): untyped = self.getVisibilityAabb()
template `visibilityAabb=`*(self: CpuParticles3D; value) = self.setVisibilityAabb(value)

template localCoords*(self: CpuParticles3D): untyped = self.getUseLocalCoordinates()
template `localCoords=`*(self: CpuParticles3D; value) = self.setUseLocalCoordinates(value)

template drawOrder*(self: CpuParticles3D): untyped = self.getDrawOrder()
template `drawOrder=`*(self: CpuParticles3D; value) = self.setDrawOrder(value)

template mesh*(self: CpuParticles3D): untyped = self.getMesh()
template `mesh=`*(self: CpuParticles3D; value) = self.setMesh(value)

template emissionShape*(self: CpuParticles3D): untyped = self.getEmissionShape()
template `emissionShape=`*(self: CpuParticles3D; value) = self.setEmissionShape(value)

template emissionSphereRadius*(self: CpuParticles3D): untyped = self.getEmissionSphereRadius()
template `emissionSphereRadius=`*(self: CpuParticles3D; value) = self.setEmissionSphereRadius(value)

template emissionBoxExtents*(self: CpuParticles3D): untyped = self.getEmissionBoxExtents()
template `emissionBoxExtents=`*(self: CpuParticles3D; value) = self.setEmissionBoxExtents(value)

template emissionPoints*(self: CpuParticles3D): untyped = self.getEmissionPoints()
template `emissionPoints=`*(self: CpuParticles3D; value) = self.setEmissionPoints(value)

template emissionNormals*(self: CpuParticles3D): untyped = self.getEmissionNormals()
template `emissionNormals=`*(self: CpuParticles3D; value) = self.setEmissionNormals(value)

template emissionColors*(self: CpuParticles3D): untyped = self.getEmissionColors()
template `emissionColors=`*(self: CpuParticles3D; value) = self.setEmissionColors(value)

template emissionRingAxis*(self: CpuParticles3D): untyped = self.getEmissionRingAxis()
template `emissionRingAxis=`*(self: CpuParticles3D; value) = self.setEmissionRingAxis(value)

template emissionRingHeight*(self: CpuParticles3D): untyped = self.getEmissionRingHeight()
template `emissionRingHeight=`*(self: CpuParticles3D; value) = self.setEmissionRingHeight(value)

template emissionRingRadius*(self: CpuParticles3D): untyped = self.getEmissionRingRadius()
template `emissionRingRadius=`*(self: CpuParticles3D; value) = self.setEmissionRingRadius(value)

template emissionRingInnerRadius*(self: CpuParticles3D): untyped = self.getEmissionRingInnerRadius()
template `emissionRingInnerRadius=`*(self: CpuParticles3D; value) = self.setEmissionRingInnerRadius(value)

template particleFlagAlignY*(self: CpuParticles3D): untyped = self.getParticleFlag(0)
template `particleFlagAlignY=`*(self: CpuParticles3D; value) = self.setParticleFlag(0, value)

template particleFlagRotateY*(self: CpuParticles3D): untyped = self.getParticleFlag(1)
template `particleFlagRotateY=`*(self: CpuParticles3D; value) = self.setParticleFlag(1, value)

template particleFlagDisableZ*(self: CpuParticles3D): untyped = self.getParticleFlag(2)
template `particleFlagDisableZ=`*(self: CpuParticles3D; value) = self.setParticleFlag(2, value)

template direction*(self: CpuParticles3D): untyped = self.getDirection()
template `direction=`*(self: CpuParticles3D; value) = self.setDirection(value)

template spread*(self: CpuParticles3D): untyped = self.getSpread()
template `spread=`*(self: CpuParticles3D; value) = self.setSpread(value)

template flatness*(self: CpuParticles3D): untyped = self.getFlatness()
template `flatness=`*(self: CpuParticles3D; value) = self.setFlatness(value)

template gravity*(self: CpuParticles3D): untyped = self.getGravity()
template `gravity=`*(self: CpuParticles3D; value) = self.setGravity(value)

template initialVelocityMin*(self: CpuParticles3D): untyped = self.getParamMin(0)
template `initialVelocityMin=`*(self: CpuParticles3D; value) = self.setParamMin(0, value)

template initialVelocityMax*(self: CpuParticles3D): untyped = self.getParamMax(0)
template `initialVelocityMax=`*(self: CpuParticles3D; value) = self.setParamMax(0, value)

template angularVelocityMin*(self: CpuParticles3D): untyped = self.getParamMin(1)
template `angularVelocityMin=`*(self: CpuParticles3D; value) = self.setParamMin(1, value)

template angularVelocityMax*(self: CpuParticles3D): untyped = self.getParamMax(1)
template `angularVelocityMax=`*(self: CpuParticles3D; value) = self.setParamMax(1, value)

template angularVelocityCurve*(self: CpuParticles3D): untyped = self.getParamCurve(1)
template `angularVelocityCurve=`*(self: CpuParticles3D; value) = self.setParamCurve(1, value)

template orbitVelocityMin*(self: CpuParticles3D): untyped = self.getParamMin(2)
template `orbitVelocityMin=`*(self: CpuParticles3D; value) = self.setParamMin(2, value)

template orbitVelocityMax*(self: CpuParticles3D): untyped = self.getParamMax(2)
template `orbitVelocityMax=`*(self: CpuParticles3D; value) = self.setParamMax(2, value)

template orbitVelocityCurve*(self: CpuParticles3D): untyped = self.getParamCurve(2)
template `orbitVelocityCurve=`*(self: CpuParticles3D; value) = self.setParamCurve(2, value)

template linearAccelMin*(self: CpuParticles3D): untyped = self.getParamMin(3)
template `linearAccelMin=`*(self: CpuParticles3D; value) = self.setParamMin(3, value)

template linearAccelMax*(self: CpuParticles3D): untyped = self.getParamMax(3)
template `linearAccelMax=`*(self: CpuParticles3D; value) = self.setParamMax(3, value)

template linearAccelCurve*(self: CpuParticles3D): untyped = self.getParamCurve(3)
template `linearAccelCurve=`*(self: CpuParticles3D; value) = self.setParamCurve(3, value)

template radialAccelMin*(self: CpuParticles3D): untyped = self.getParamMin(4)
template `radialAccelMin=`*(self: CpuParticles3D; value) = self.setParamMin(4, value)

template radialAccelMax*(self: CpuParticles3D): untyped = self.getParamMax(4)
template `radialAccelMax=`*(self: CpuParticles3D; value) = self.setParamMax(4, value)

template radialAccelCurve*(self: CpuParticles3D): untyped = self.getParamCurve(4)
template `radialAccelCurve=`*(self: CpuParticles3D; value) = self.setParamCurve(4, value)

template tangentialAccelMin*(self: CpuParticles3D): untyped = self.getParamMin(5)
template `tangentialAccelMin=`*(self: CpuParticles3D; value) = self.setParamMin(5, value)

template tangentialAccelMax*(self: CpuParticles3D): untyped = self.getParamMax(5)
template `tangentialAccelMax=`*(self: CpuParticles3D; value) = self.setParamMax(5, value)

template tangentialAccelCurve*(self: CpuParticles3D): untyped = self.getParamCurve(5)
template `tangentialAccelCurve=`*(self: CpuParticles3D; value) = self.setParamCurve(5, value)

template dampingMin*(self: CpuParticles3D): untyped = self.getParamMin(6)
template `dampingMin=`*(self: CpuParticles3D; value) = self.setParamMin(6, value)

template dampingMax*(self: CpuParticles3D): untyped = self.getParamMax(6)
template `dampingMax=`*(self: CpuParticles3D; value) = self.setParamMax(6, value)

template dampingCurve*(self: CpuParticles3D): untyped = self.getParamCurve(6)
template `dampingCurve=`*(self: CpuParticles3D; value) = self.setParamCurve(6, value)

template angleMin*(self: CpuParticles3D): untyped = self.getParamMin(7)
template `angleMin=`*(self: CpuParticles3D; value) = self.setParamMin(7, value)

template angleMax*(self: CpuParticles3D): untyped = self.getParamMax(7)
template `angleMax=`*(self: CpuParticles3D; value) = self.setParamMax(7, value)

template angleCurve*(self: CpuParticles3D): untyped = self.getParamCurve(7)
template `angleCurve=`*(self: CpuParticles3D; value) = self.setParamCurve(7, value)

template scaleAmountMin*(self: CpuParticles3D): untyped = self.getParamMin(8)
template `scaleAmountMin=`*(self: CpuParticles3D; value) = self.setParamMin(8, value)

template scaleAmountMax*(self: CpuParticles3D): untyped = self.getParamMax(8)
template `scaleAmountMax=`*(self: CpuParticles3D; value) = self.setParamMax(8, value)

template scaleAmountCurve*(self: CpuParticles3D): untyped = self.getParamCurve(8)
template `scaleAmountCurve=`*(self: CpuParticles3D; value) = self.setParamCurve(8, value)

template splitScale*(self: CpuParticles3D): untyped = self.getSplitScale()
template `splitScale=`*(self: CpuParticles3D; value) = self.setSplitScale(value)

template scaleCurveX*(self: CpuParticles3D): untyped = self.getScaleCurveX()
template `scaleCurveX=`*(self: CpuParticles3D; value) = self.setScaleCurveX(value)

template scaleCurveY*(self: CpuParticles3D): untyped = self.getScaleCurveY()
template `scaleCurveY=`*(self: CpuParticles3D; value) = self.setScaleCurveY(value)

template scaleCurveZ*(self: CpuParticles3D): untyped = self.getScaleCurveZ()
template `scaleCurveZ=`*(self: CpuParticles3D; value) = self.setScaleCurveZ(value)

template color*(self: CpuParticles3D): untyped = self.getColor()
template `color=`*(self: CpuParticles3D; value) = self.setColor(value)

template colorRamp*(self: CpuParticles3D): untyped = self.getColorRamp()
template `colorRamp=`*(self: CpuParticles3D; value) = self.setColorRamp(value)

template colorInitialRamp*(self: CpuParticles3D): untyped = self.getColorInitialRamp()
template `colorInitialRamp=`*(self: CpuParticles3D; value) = self.setColorInitialRamp(value)

template hueVariationMin*(self: CpuParticles3D): untyped = self.getParamMin(9)
template `hueVariationMin=`*(self: CpuParticles3D; value) = self.setParamMin(9, value)

template hueVariationMax*(self: CpuParticles3D): untyped = self.getParamMax(9)
template `hueVariationMax=`*(self: CpuParticles3D; value) = self.setParamMax(9, value)

template hueVariationCurve*(self: CpuParticles3D): untyped = self.getParamCurve(9)
template `hueVariationCurve=`*(self: CpuParticles3D; value) = self.setParamCurve(9, value)

template animSpeedMin*(self: CpuParticles3D): untyped = self.getParamMin(10)
template `animSpeedMin=`*(self: CpuParticles3D; value) = self.setParamMin(10, value)

template animSpeedMax*(self: CpuParticles3D): untyped = self.getParamMax(10)
template `animSpeedMax=`*(self: CpuParticles3D; value) = self.setParamMax(10, value)

template animSpeedCurve*(self: CpuParticles3D): untyped = self.getParamCurve(10)
template `animSpeedCurve=`*(self: CpuParticles3D; value) = self.setParamCurve(10, value)

template animOffsetMin*(self: CpuParticles3D): untyped = self.getParamMin(11)
template `animOffsetMin=`*(self: CpuParticles3D; value) = self.setParamMin(11, value)

template animOffsetMax*(self: CpuParticles3D): untyped = self.getParamMax(11)
template `animOffsetMax=`*(self: CpuParticles3D; value) = self.setParamMax(11, value)

template animOffsetCurve*(self: CpuParticles3D): untyped = self.getParamCurve(11)
template `animOffsetCurve=`*(self: CpuParticles3D; value) = self.setParamCurve(11, value)

const CpuParticles3D_vmap =
  GeometryInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CpuParticles3D]): Table[string, string] = CpuParticles3D_vmap

proc finished*(self: CpuParticles3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("finished")
  self.emitSignal(signalname)
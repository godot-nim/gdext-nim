{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

proc setDirection*(self: ParticleProcessMaterial; degrees: Vector3): void =
  expandMethodBind(className ParticleProcessMaterial, "set_direction", 3460891852)
  var `?param` = [getPtr degrees]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDirection*(self: ParticleProcessMaterial): Vector3 =
  expandMethodBind(className ParticleProcessMaterial, "get_direction", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setInheritVelocityRatio*(self: ParticleProcessMaterial; ratio: float64): void =
  expandMethodBind(className ParticleProcessMaterial, "set_inherit_velocity_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInheritVelocityRatio*(self: ParticleProcessMaterial): float64 =
  expandMethodBind(className ParticleProcessMaterial, "get_inherit_velocity_ratio", 191475506)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setSpread*(self: ParticleProcessMaterial; degrees: Float): void =
  expandMethodBind(className ParticleProcessMaterial, "set_spread", 373806689)
  var `?param` = [getPtr degrees]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpread*(self: ParticleProcessMaterial): Float =
  expandMethodBind(className ParticleProcessMaterial, "get_spread", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFlatness*(self: ParticleProcessMaterial; amount: Float): void =
  expandMethodBind(className ParticleProcessMaterial, "set_flatness", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFlatness*(self: ParticleProcessMaterial): Float =
  expandMethodBind(className ParticleProcessMaterial, "get_flatness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setParam*(self: ParticleProcessMaterial; param: ParticleProcessMaterial_Parameter; value: Vector2): void =
  expandMethodBind(className ParticleProcessMaterial, "set_param", 676779352)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParam*(self: ParticleProcessMaterial; param: ParticleProcessMaterial_Parameter): Vector2 =
  expandMethodBind(className ParticleProcessMaterial, "get_param", 2623708480)
  var `?param` = [getPtr param]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc setParamMin*(self: ParticleProcessMaterial; param: ParticleProcessMaterial_Parameter; value: Float): void =
  expandMethodBind(className ParticleProcessMaterial, "set_param_min", 2295964248)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamMin*(self: ParticleProcessMaterial; param: ParticleProcessMaterial_Parameter): Float =
  expandMethodBind(className ParticleProcessMaterial, "get_param_min", 3903786503)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setParamMax*(self: ParticleProcessMaterial; param: ParticleProcessMaterial_Parameter; value: Float): void =
  expandMethodBind(className ParticleProcessMaterial, "set_param_max", 2295964248)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamMax*(self: ParticleProcessMaterial; param: ParticleProcessMaterial_Parameter): Float =
  expandMethodBind(className ParticleProcessMaterial, "get_param_max", 3903786503)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setParamTexture*(self: ParticleProcessMaterial; param: ParticleProcessMaterial_Parameter; texture: gdref Texture2D): void =
  expandMethodBind(className ParticleProcessMaterial, "set_param_texture", 526976089)
  var `?param` = [getPtr param, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamTexture*(self: ParticleProcessMaterial; param: ParticleProcessMaterial_Parameter): gdref Texture2D =
  expandMethodBind(className ParticleProcessMaterial, "get_param_texture", 3489372978)
  var `?param` = [getPtr param]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setColor*(self: ParticleProcessMaterial; color: Color): void =
  expandMethodBind(className ParticleProcessMaterial, "set_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColor*(self: ParticleProcessMaterial): Color =
  expandMethodBind(className ParticleProcessMaterial, "get_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setColorRamp*(self: ParticleProcessMaterial; ramp: gdref Texture2D): void =
  expandMethodBind(className ParticleProcessMaterial, "set_color_ramp", 4051416890)
  var `?param` = [getPtr ramp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorRamp*(self: ParticleProcessMaterial): gdref Texture2D =
  expandMethodBind(className ParticleProcessMaterial, "get_color_ramp", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setAlphaCurve*(self: ParticleProcessMaterial; curve: gdref Texture2D): void =
  expandMethodBind(className ParticleProcessMaterial, "set_alpha_curve", 4051416890)
  var `?param` = [getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAlphaCurve*(self: ParticleProcessMaterial): gdref Texture2D =
  expandMethodBind(className ParticleProcessMaterial, "get_alpha_curve", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setEmissionCurve*(self: ParticleProcessMaterial; curve: gdref Texture2D): void =
  expandMethodBind(className ParticleProcessMaterial, "set_emission_curve", 4051416890)
  var `?param` = [getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionCurve*(self: ParticleProcessMaterial): gdref Texture2D =
  expandMethodBind(className ParticleProcessMaterial, "get_emission_curve", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setColorInitialRamp*(self: ParticleProcessMaterial; ramp: gdref Texture2D): void =
  expandMethodBind(className ParticleProcessMaterial, "set_color_initial_ramp", 4051416890)
  var `?param` = [getPtr ramp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorInitialRamp*(self: ParticleProcessMaterial): gdref Texture2D =
  expandMethodBind(className ParticleProcessMaterial, "get_color_initial_ramp", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setVelocityLimitCurve*(self: ParticleProcessMaterial; curve: gdref Texture2D): void =
  expandMethodBind(className ParticleProcessMaterial, "set_velocity_limit_curve", 4051416890)
  var `?param` = [getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVelocityLimitCurve*(self: ParticleProcessMaterial): gdref Texture2D =
  expandMethodBind(className ParticleProcessMaterial, "get_velocity_limit_curve", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setParticleFlag*(self: ParticleProcessMaterial; particleFlag: ParticleProcessMaterial_ParticleFlags; enable: bool): void =
  expandMethodBind(className ParticleProcessMaterial, "set_particle_flag", 1711815571)
  var `?param` = [getPtr particleFlag, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParticleFlag*(self: ParticleProcessMaterial; particleFlag: ParticleProcessMaterial_ParticleFlags): bool =
  expandMethodBind(className ParticleProcessMaterial, "get_particle_flag", 3895316907)
  var `?param` = [getPtr particleFlag]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setVelocityPivot*(self: ParticleProcessMaterial; pivot: Vector3): void =
  expandMethodBind(className ParticleProcessMaterial, "set_velocity_pivot", 3460891852)
  var `?param` = [getPtr pivot]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVelocityPivot*(self: ParticleProcessMaterial): Vector3 =
  expandMethodBind(className ParticleProcessMaterial, "get_velocity_pivot", 3783033775)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setEmissionShape*(self: ParticleProcessMaterial; shape: ParticleProcessMaterial_EmissionShape): void =
  expandMethodBind(className ParticleProcessMaterial, "set_emission_shape", 461501442)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionShape*(self: ParticleProcessMaterial): ParticleProcessMaterial_EmissionShape =
  expandMethodBind(className ParticleProcessMaterial, "get_emission_shape", 3719733018)
  var ret: encoded ParticleProcessMaterial_EmissionShape
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(ParticleProcessMaterial_EmissionShape)

proc setEmissionSphereRadius*(self: ParticleProcessMaterial; radius: Float): void =
  expandMethodBind(className ParticleProcessMaterial, "set_emission_sphere_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionSphereRadius*(self: ParticleProcessMaterial): Float =
  expandMethodBind(className ParticleProcessMaterial, "get_emission_sphere_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEmissionBoxExtents*(self: ParticleProcessMaterial; extents: Vector3): void =
  expandMethodBind(className ParticleProcessMaterial, "set_emission_box_extents", 3460891852)
  var `?param` = [getPtr extents]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionBoxExtents*(self: ParticleProcessMaterial): Vector3 =
  expandMethodBind(className ParticleProcessMaterial, "get_emission_box_extents", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setEmissionPointTexture*(self: ParticleProcessMaterial; texture: gdref Texture2D): void =
  expandMethodBind(className ParticleProcessMaterial, "set_emission_point_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionPointTexture*(self: ParticleProcessMaterial): gdref Texture2D =
  expandMethodBind(className ParticleProcessMaterial, "get_emission_point_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setEmissionNormalTexture*(self: ParticleProcessMaterial; texture: gdref Texture2D): void =
  expandMethodBind(className ParticleProcessMaterial, "set_emission_normal_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionNormalTexture*(self: ParticleProcessMaterial): gdref Texture2D =
  expandMethodBind(className ParticleProcessMaterial, "get_emission_normal_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setEmissionColorTexture*(self: ParticleProcessMaterial; texture: gdref Texture2D): void =
  expandMethodBind(className ParticleProcessMaterial, "set_emission_color_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionColorTexture*(self: ParticleProcessMaterial): gdref Texture2D =
  expandMethodBind(className ParticleProcessMaterial, "get_emission_color_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setEmissionPointCount*(self: ParticleProcessMaterial; pointCount: int32): void =
  expandMethodBind(className ParticleProcessMaterial, "set_emission_point_count", 1286410249)
  var `?param` = [getPtr pointCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionPointCount*(self: ParticleProcessMaterial): int32 =
  expandMethodBind(className ParticleProcessMaterial, "get_emission_point_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setEmissionRingAxis*(self: ParticleProcessMaterial; axis: Vector3): void =
  expandMethodBind(className ParticleProcessMaterial, "set_emission_ring_axis", 3460891852)
  var `?param` = [getPtr axis]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionRingAxis*(self: ParticleProcessMaterial): Vector3 =
  expandMethodBind(className ParticleProcessMaterial, "get_emission_ring_axis", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setEmissionRingHeight*(self: ParticleProcessMaterial; height: Float): void =
  expandMethodBind(className ParticleProcessMaterial, "set_emission_ring_height", 373806689)
  var `?param` = [getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionRingHeight*(self: ParticleProcessMaterial): Float =
  expandMethodBind(className ParticleProcessMaterial, "get_emission_ring_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEmissionRingRadius*(self: ParticleProcessMaterial; radius: Float): void =
  expandMethodBind(className ParticleProcessMaterial, "set_emission_ring_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionRingRadius*(self: ParticleProcessMaterial): Float =
  expandMethodBind(className ParticleProcessMaterial, "get_emission_ring_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEmissionRingInnerRadius*(self: ParticleProcessMaterial; innerRadius: Float): void =
  expandMethodBind(className ParticleProcessMaterial, "set_emission_ring_inner_radius", 373806689)
  var `?param` = [getPtr innerRadius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionRingInnerRadius*(self: ParticleProcessMaterial): Float =
  expandMethodBind(className ParticleProcessMaterial, "get_emission_ring_inner_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEmissionShapeOffset*(self: ParticleProcessMaterial; emissionShapeOffset: Vector3): void =
  expandMethodBind(className ParticleProcessMaterial, "set_emission_shape_offset", 3460891852)
  var `?param` = [getPtr emissionShapeOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionShapeOffset*(self: ParticleProcessMaterial): Vector3 =
  expandMethodBind(className ParticleProcessMaterial, "get_emission_shape_offset", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setEmissionShapeScale*(self: ParticleProcessMaterial; emissionShapeScale: Vector3): void =
  expandMethodBind(className ParticleProcessMaterial, "set_emission_shape_scale", 3460891852)
  var `?param` = [getPtr emissionShapeScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionShapeScale*(self: ParticleProcessMaterial): Vector3 =
  expandMethodBind(className ParticleProcessMaterial, "get_emission_shape_scale", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getTurbulenceEnabled*(self: ParticleProcessMaterial): bool =
  expandMethodBind(className ParticleProcessMaterial, "get_turbulence_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setTurbulenceEnabled*(self: ParticleProcessMaterial; turbulenceEnabled: bool): void =
  expandMethodBind(className ParticleProcessMaterial, "set_turbulence_enabled", 2586408642)
  var `?param` = [getPtr turbulenceEnabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTurbulenceNoiseStrength*(self: ParticleProcessMaterial): Float =
  expandMethodBind(className ParticleProcessMaterial, "get_turbulence_noise_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTurbulenceNoiseStrength*(self: ParticleProcessMaterial; turbulenceNoiseStrength: Float): void =
  expandMethodBind(className ParticleProcessMaterial, "set_turbulence_noise_strength", 373806689)
  var `?param` = [getPtr turbulenceNoiseStrength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTurbulenceNoiseScale*(self: ParticleProcessMaterial): Float =
  expandMethodBind(className ParticleProcessMaterial, "get_turbulence_noise_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTurbulenceNoiseScale*(self: ParticleProcessMaterial; turbulenceNoiseScale: Float): void =
  expandMethodBind(className ParticleProcessMaterial, "set_turbulence_noise_scale", 373806689)
  var `?param` = [getPtr turbulenceNoiseScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTurbulenceNoiseSpeedRandom*(self: ParticleProcessMaterial): Float =
  expandMethodBind(className ParticleProcessMaterial, "get_turbulence_noise_speed_random", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTurbulenceNoiseSpeedRandom*(self: ParticleProcessMaterial; turbulenceNoiseSpeedRandom: Float): void =
  expandMethodBind(className ParticleProcessMaterial, "set_turbulence_noise_speed_random", 373806689)
  var `?param` = [getPtr turbulenceNoiseSpeedRandom]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTurbulenceNoiseSpeed*(self: ParticleProcessMaterial): Vector3 =
  expandMethodBind(className ParticleProcessMaterial, "get_turbulence_noise_speed", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setTurbulenceNoiseSpeed*(self: ParticleProcessMaterial; turbulenceNoiseSpeed: Vector3): void =
  expandMethodBind(className ParticleProcessMaterial, "set_turbulence_noise_speed", 3460891852)
  var `?param` = [getPtr turbulenceNoiseSpeed]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGravity*(self: ParticleProcessMaterial): Vector3 =
  expandMethodBind(className ParticleProcessMaterial, "get_gravity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setGravity*(self: ParticleProcessMaterial; accelVec: Vector3): void =
  expandMethodBind(className ParticleProcessMaterial, "set_gravity", 3460891852)
  var `?param` = [getPtr accelVec]
  methodbind.ptrcall(self, addr `?param`[0])

proc setLifetimeRandomness*(self: ParticleProcessMaterial; randomness: float64): void =
  expandMethodBind(className ParticleProcessMaterial, "set_lifetime_randomness", 373806689)
  var `?param` = [getPtr randomness]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLifetimeRandomness*(self: ParticleProcessMaterial): float64 =
  expandMethodBind(className ParticleProcessMaterial, "get_lifetime_randomness", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getSubEmitterMode*(self: ParticleProcessMaterial): ParticleProcessMaterial_SubEmitterMode =
  expandMethodBind(className ParticleProcessMaterial, "get_sub_emitter_mode", 2399052877)
  var ret: encoded ParticleProcessMaterial_SubEmitterMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(ParticleProcessMaterial_SubEmitterMode)

proc setSubEmitterMode*(self: ParticleProcessMaterial; mode: ParticleProcessMaterial_SubEmitterMode): void =
  expandMethodBind(className ParticleProcessMaterial, "set_sub_emitter_mode", 2161806672)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSubEmitterFrequency*(self: ParticleProcessMaterial): float64 =
  expandMethodBind(className ParticleProcessMaterial, "get_sub_emitter_frequency", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setSubEmitterFrequency*(self: ParticleProcessMaterial; hz: float64): void =
  expandMethodBind(className ParticleProcessMaterial, "set_sub_emitter_frequency", 373806689)
  var `?param` = [getPtr hz]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSubEmitterAmountAtEnd*(self: ParticleProcessMaterial): int32 =
  expandMethodBind(className ParticleProcessMaterial, "get_sub_emitter_amount_at_end", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSubEmitterAmountAtEnd*(self: ParticleProcessMaterial; amount: int32): void =
  expandMethodBind(className ParticleProcessMaterial, "set_sub_emitter_amount_at_end", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSubEmitterAmountAtCollision*(self: ParticleProcessMaterial): int32 =
  expandMethodBind(className ParticleProcessMaterial, "get_sub_emitter_amount_at_collision", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSubEmitterAmountAtCollision*(self: ParticleProcessMaterial; amount: int32): void =
  expandMethodBind(className ParticleProcessMaterial, "set_sub_emitter_amount_at_collision", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSubEmitterKeepVelocity*(self: ParticleProcessMaterial): bool =
  expandMethodBind(className ParticleProcessMaterial, "get_sub_emitter_keep_velocity", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSubEmitterKeepVelocity*(self: ParticleProcessMaterial; enable: bool): void =
  expandMethodBind(className ParticleProcessMaterial, "set_sub_emitter_keep_velocity", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAttractorInteractionEnabled*(self: ParticleProcessMaterial; enabled: bool): void =
  expandMethodBind(className ParticleProcessMaterial, "set_attractor_interaction_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAttractorInteractionEnabled*(self: ParticleProcessMaterial): bool =
  expandMethodBind(className ParticleProcessMaterial, "is_attractor_interaction_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollisionMode*(self: ParticleProcessMaterial; mode: ParticleProcessMaterial_CollisionMode): void =
  expandMethodBind(className ParticleProcessMaterial, "set_collision_mode", 653804659)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMode*(self: ParticleProcessMaterial): ParticleProcessMaterial_CollisionMode =
  expandMethodBind(className ParticleProcessMaterial, "get_collision_mode", 139371864)
  var ret: encoded ParticleProcessMaterial_CollisionMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(ParticleProcessMaterial_CollisionMode)

proc setCollisionUseScale*(self: ParticleProcessMaterial; radius: bool): void =
  expandMethodBind(className ParticleProcessMaterial, "set_collision_use_scale", 2586408642)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollisionUsingScale*(self: ParticleProcessMaterial): bool =
  expandMethodBind(className ParticleProcessMaterial, "is_collision_using_scale", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollisionFriction*(self: ParticleProcessMaterial; friction: Float): void =
  expandMethodBind(className ParticleProcessMaterial, "set_collision_friction", 373806689)
  var `?param` = [getPtr friction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionFriction*(self: ParticleProcessMaterial): Float =
  expandMethodBind(className ParticleProcessMaterial, "get_collision_friction", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCollisionBounce*(self: ParticleProcessMaterial; bounce: Float): void =
  expandMethodBind(className ParticleProcessMaterial, "set_collision_bounce", 373806689)
  var `?param` = [getPtr bounce]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionBounce*(self: ParticleProcessMaterial): Float =
  expandMethodBind(className ParticleProcessMaterial, "get_collision_bounce", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template lifetimeRandomness*(self: ParticleProcessMaterial): untyped = self.getLifetimeRandomness()
template `lifetimeRandomness=`*(self: ParticleProcessMaterial; value) = self.setLifetimeRandomness(value)

template particleFlagAlignY*(self: ParticleProcessMaterial): untyped = self.getParticleFlag(ParticleProcessMaterial_ParticleFlags(0))
template `particleFlagAlignY=`*(self: ParticleProcessMaterial; value) = self.setParticleFlag(ParticleProcessMaterial_ParticleFlags(0), value)

template particleFlagRotateY*(self: ParticleProcessMaterial): untyped = self.getParticleFlag(ParticleProcessMaterial_ParticleFlags(1))
template `particleFlagRotateY=`*(self: ParticleProcessMaterial; value) = self.setParticleFlag(ParticleProcessMaterial_ParticleFlags(1), value)

template particleFlagDisableZ*(self: ParticleProcessMaterial): untyped = self.getParticleFlag(ParticleProcessMaterial_ParticleFlags(2))
template `particleFlagDisableZ=`*(self: ParticleProcessMaterial; value) = self.setParticleFlag(ParticleProcessMaterial_ParticleFlags(2), value)

template particleFlagDampingAsFriction*(self: ParticleProcessMaterial): untyped = self.getParticleFlag(ParticleProcessMaterial_ParticleFlags(3))
template `particleFlagDampingAsFriction=`*(self: ParticleProcessMaterial; value) = self.setParticleFlag(ParticleProcessMaterial_ParticleFlags(3), value)

template emissionShapeOffset*(self: ParticleProcessMaterial): untyped = self.getEmissionShapeOffset()
template `emissionShapeOffset=`*(self: ParticleProcessMaterial; value) = self.setEmissionShapeOffset(value)

template emissionShapeScale*(self: ParticleProcessMaterial): untyped = self.getEmissionShapeScale()
template `emissionShapeScale=`*(self: ParticleProcessMaterial; value) = self.setEmissionShapeScale(value)

template emissionShape*(self: ParticleProcessMaterial): untyped = self.getEmissionShape()
template `emissionShape=`*(self: ParticleProcessMaterial; value) = self.setEmissionShape(value)

template emissionSphereRadius*(self: ParticleProcessMaterial): untyped = self.getEmissionSphereRadius()
template `emissionSphereRadius=`*(self: ParticleProcessMaterial; value) = self.setEmissionSphereRadius(value)

template emissionBoxExtents*(self: ParticleProcessMaterial): untyped = self.getEmissionBoxExtents()
template `emissionBoxExtents=`*(self: ParticleProcessMaterial; value) = self.setEmissionBoxExtents(value)

template emissionPointTexture*(self: ParticleProcessMaterial): untyped = self.getEmissionPointTexture()
template `emissionPointTexture=`*(self: ParticleProcessMaterial; value) = self.setEmissionPointTexture(value)

template emissionNormalTexture*(self: ParticleProcessMaterial): untyped = self.getEmissionNormalTexture()
template `emissionNormalTexture=`*(self: ParticleProcessMaterial; value) = self.setEmissionNormalTexture(value)

template emissionColorTexture*(self: ParticleProcessMaterial): untyped = self.getEmissionColorTexture()
template `emissionColorTexture=`*(self: ParticleProcessMaterial; value) = self.setEmissionColorTexture(value)

template emissionPointCount*(self: ParticleProcessMaterial): untyped = self.getEmissionPointCount()
template `emissionPointCount=`*(self: ParticleProcessMaterial; value) = self.setEmissionPointCount(value)

template emissionRingAxis*(self: ParticleProcessMaterial): untyped = self.getEmissionRingAxis()
template `emissionRingAxis=`*(self: ParticleProcessMaterial; value) = self.setEmissionRingAxis(value)

template emissionRingHeight*(self: ParticleProcessMaterial): untyped = self.getEmissionRingHeight()
template `emissionRingHeight=`*(self: ParticleProcessMaterial; value) = self.setEmissionRingHeight(value)

template emissionRingRadius*(self: ParticleProcessMaterial): untyped = self.getEmissionRingRadius()
template `emissionRingRadius=`*(self: ParticleProcessMaterial; value) = self.setEmissionRingRadius(value)

template emissionRingInnerRadius*(self: ParticleProcessMaterial): untyped = self.getEmissionRingInnerRadius()
template `emissionRingInnerRadius=`*(self: ParticleProcessMaterial; value) = self.setEmissionRingInnerRadius(value)

template angle*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(7))
template `angle=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(7), value)

template angleMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(7))
template `angleMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(7), value)

template angleMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(7))
template `angleMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(7), value)

template angleCurve*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(7))
template `angleCurve=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(7), value)

template inheritVelocityRatio*(self: ParticleProcessMaterial): untyped = self.getInheritVelocityRatio()
template `inheritVelocityRatio=`*(self: ParticleProcessMaterial; value) = self.setInheritVelocityRatio(value)

template velocityPivot*(self: ParticleProcessMaterial): untyped = self.getVelocityPivot()
template `velocityPivot=`*(self: ParticleProcessMaterial; value) = self.setVelocityPivot(value)

template direction*(self: ParticleProcessMaterial): untyped = self.getDirection()
template `direction=`*(self: ParticleProcessMaterial; value) = self.setDirection(value)

template spread*(self: ParticleProcessMaterial): untyped = self.getSpread()
template `spread=`*(self: ParticleProcessMaterial; value) = self.setSpread(value)

template flatness*(self: ParticleProcessMaterial): untyped = self.getFlatness()
template `flatness=`*(self: ParticleProcessMaterial; value) = self.setFlatness(value)

template initialVelocity*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(0))
template `initialVelocity=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(0), value)

template initialVelocityMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(0))
template `initialVelocityMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(0), value)

template initialVelocityMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(0))
template `initialVelocityMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(0), value)

template angularVelocity*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(1))
template `angularVelocity=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(1), value)

template angularVelocityMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(1))
template `angularVelocityMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(1), value)

template angularVelocityMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(1))
template `angularVelocityMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(1), value)

template angularVelocityCurve*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(1))
template `angularVelocityCurve=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(1), value)

template directionalVelocity*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(16))
template `directionalVelocity=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(16), value)

template directionalVelocityMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(16))
template `directionalVelocityMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(16), value)

template directionalVelocityMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(16))
template `directionalVelocityMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(16), value)

template directionalVelocityCurve*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(16))
template `directionalVelocityCurve=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(16), value)

template orbitVelocity*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(2))
template `orbitVelocity=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(2), value)

template orbitVelocityMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(2))
template `orbitVelocityMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(2), value)

template orbitVelocityMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(2))
template `orbitVelocityMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(2), value)

template orbitVelocityCurve*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(2))
template `orbitVelocityCurve=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(2), value)

template radialVelocity*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(15))
template `radialVelocity=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(15), value)

template radialVelocityMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(15))
template `radialVelocityMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(15), value)

template radialVelocityMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(15))
template `radialVelocityMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(15), value)

template radialVelocityCurve*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(15))
template `radialVelocityCurve=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(15), value)

template velocityLimitCurve*(self: ParticleProcessMaterial): untyped = self.getVelocityLimitCurve()
template `velocityLimitCurve=`*(self: ParticleProcessMaterial; value) = self.setVelocityLimitCurve(value)

template gravity*(self: ParticleProcessMaterial): untyped = self.getGravity()
template `gravity=`*(self: ParticleProcessMaterial; value) = self.setGravity(value)

template linearAccel*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(3))
template `linearAccel=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(3), value)

template linearAccelMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(3))
template `linearAccelMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(3), value)

template linearAccelMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(3))
template `linearAccelMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(3), value)

template linearAccelCurve*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(3))
template `linearAccelCurve=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(3), value)

template radialAccel*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(4))
template `radialAccel=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(4), value)

template radialAccelMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(4))
template `radialAccelMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(4), value)

template radialAccelMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(4))
template `radialAccelMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(4), value)

template radialAccelCurve*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(4))
template `radialAccelCurve=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(4), value)

template tangentialAccel*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(5))
template `tangentialAccel=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(5), value)

template tangentialAccelMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(5))
template `tangentialAccelMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(5), value)

template tangentialAccelMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(5))
template `tangentialAccelMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(5), value)

template tangentialAccelCurve*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(5))
template `tangentialAccelCurve=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(5), value)

template damping*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(6))
template `damping=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(6), value)

template dampingMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(6))
template `dampingMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(6), value)

template dampingMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(6))
template `dampingMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(6), value)

template dampingCurve*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(6))
template `dampingCurve=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(6), value)

template attractorInteractionEnabled*(self: ParticleProcessMaterial): untyped = self.isAttractorInteractionEnabled()
template `attractorInteractionEnabled=`*(self: ParticleProcessMaterial; value) = self.setAttractorInteractionEnabled(value)

template scale*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(8))
template `scale=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(8), value)

template scaleMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(8))
template `scaleMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(8), value)

template scaleMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(8))
template `scaleMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(8), value)

template scaleCurve*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(8))
template `scaleCurve=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(8), value)

template scaleOverVelocity*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(17))
template `scaleOverVelocity=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(17), value)

template scaleOverVelocityMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(17))
template `scaleOverVelocityMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(17), value)

template scaleOverVelocityMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(17))
template `scaleOverVelocityMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(17), value)

template scaleOverVelocityCurve*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(17))
template `scaleOverVelocityCurve=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(17), value)

template color*(self: ParticleProcessMaterial): untyped = self.getColor()
template `color=`*(self: ParticleProcessMaterial; value) = self.setColor(value)

template colorRamp*(self: ParticleProcessMaterial): untyped = self.getColorRamp()
template `colorRamp=`*(self: ParticleProcessMaterial; value) = self.setColorRamp(value)

template colorInitialRamp*(self: ParticleProcessMaterial): untyped = self.getColorInitialRamp()
template `colorInitialRamp=`*(self: ParticleProcessMaterial; value) = self.setColorInitialRamp(value)

template alphaCurve*(self: ParticleProcessMaterial): untyped = self.getAlphaCurve()
template `alphaCurve=`*(self: ParticleProcessMaterial; value) = self.setAlphaCurve(value)

template emissionCurve*(self: ParticleProcessMaterial): untyped = self.getEmissionCurve()
template `emissionCurve=`*(self: ParticleProcessMaterial; value) = self.setEmissionCurve(value)

template hueVariation*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(9))
template `hueVariation=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(9), value)

template hueVariationMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(9))
template `hueVariationMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(9), value)

template hueVariationMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(9))
template `hueVariationMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(9), value)

template hueVariationCurve*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(9))
template `hueVariationCurve=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(9), value)

template animSpeed*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(10))
template `animSpeed=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(10), value)

template animSpeedMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(10))
template `animSpeedMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(10), value)

template animSpeedMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(10))
template `animSpeedMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(10), value)

template animSpeedCurve*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(10))
template `animSpeedCurve=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(10), value)

template animOffset*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(11))
template `animOffset=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(11), value)

template animOffsetMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(11))
template `animOffsetMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(11), value)

template animOffsetMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(11))
template `animOffsetMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(11), value)

template animOffsetCurve*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(11))
template `animOffsetCurve=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(11), value)

template turbulenceEnabled*(self: ParticleProcessMaterial): untyped = self.getTurbulenceEnabled()
template `turbulenceEnabled=`*(self: ParticleProcessMaterial; value) = self.setTurbulenceEnabled(value)

template turbulenceNoiseStrength*(self: ParticleProcessMaterial): untyped = self.getTurbulenceNoiseStrength()
template `turbulenceNoiseStrength=`*(self: ParticleProcessMaterial; value) = self.setTurbulenceNoiseStrength(value)

template turbulenceNoiseScale*(self: ParticleProcessMaterial): untyped = self.getTurbulenceNoiseScale()
template `turbulenceNoiseScale=`*(self: ParticleProcessMaterial; value) = self.setTurbulenceNoiseScale(value)

template turbulenceNoiseSpeed*(self: ParticleProcessMaterial): untyped = self.getTurbulenceNoiseSpeed()
template `turbulenceNoiseSpeed=`*(self: ParticleProcessMaterial; value) = self.setTurbulenceNoiseSpeed(value)

template turbulenceNoiseSpeedRandom*(self: ParticleProcessMaterial): untyped = self.getTurbulenceNoiseSpeedRandom()
template `turbulenceNoiseSpeedRandom=`*(self: ParticleProcessMaterial; value) = self.setTurbulenceNoiseSpeedRandom(value)

template turbulenceInfluence*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(13))
template `turbulenceInfluence=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(13), value)

template turbulenceInfluenceMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(13))
template `turbulenceInfluenceMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(13), value)

template turbulenceInfluenceMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(13))
template `turbulenceInfluenceMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(13), value)

template turbulenceInitialDisplacement*(self: ParticleProcessMaterial): untyped = self.getParam(ParticleProcessMaterial_Parameter(14))
template `turbulenceInitialDisplacement=`*(self: ParticleProcessMaterial; value) = self.setParam(ParticleProcessMaterial_Parameter(14), value)

template turbulenceInitialDisplacementMin*(self: ParticleProcessMaterial): untyped = self.getParamMin(ParticleProcessMaterial_Parameter(14))
template `turbulenceInitialDisplacementMin=`*(self: ParticleProcessMaterial; value) = self.setParamMin(ParticleProcessMaterial_Parameter(14), value)

template turbulenceInitialDisplacementMax*(self: ParticleProcessMaterial): untyped = self.getParamMax(ParticleProcessMaterial_Parameter(14))
template `turbulenceInitialDisplacementMax=`*(self: ParticleProcessMaterial; value) = self.setParamMax(ParticleProcessMaterial_Parameter(14), value)

template turbulenceInfluenceOverLife*(self: ParticleProcessMaterial): untyped = self.getParamTexture(ParticleProcessMaterial_Parameter(12))
template `turbulenceInfluenceOverLife=`*(self: ParticleProcessMaterial; value) = self.setParamTexture(ParticleProcessMaterial_Parameter(12), value)

template collisionMode*(self: ParticleProcessMaterial): untyped = self.getCollisionMode()
template `collisionMode=`*(self: ParticleProcessMaterial; value) = self.setCollisionMode(value)

template collisionFriction*(self: ParticleProcessMaterial): untyped = self.getCollisionFriction()
template `collisionFriction=`*(self: ParticleProcessMaterial; value) = self.setCollisionFriction(value)

template collisionBounce*(self: ParticleProcessMaterial): untyped = self.getCollisionBounce()
template `collisionBounce=`*(self: ParticleProcessMaterial; value) = self.setCollisionBounce(value)

template collisionUseScale*(self: ParticleProcessMaterial): untyped = self.isCollisionUsingScale()
template `collisionUseScale=`*(self: ParticleProcessMaterial; value) = self.setCollisionUseScale(value)

template subEmitterMode*(self: ParticleProcessMaterial): untyped = self.getSubEmitterMode()
template `subEmitterMode=`*(self: ParticleProcessMaterial; value) = self.setSubEmitterMode(value)

template subEmitterFrequency*(self: ParticleProcessMaterial): untyped = self.getSubEmitterFrequency()
template `subEmitterFrequency=`*(self: ParticleProcessMaterial; value) = self.setSubEmitterFrequency(value)

template subEmitterAmountAtEnd*(self: ParticleProcessMaterial): untyped = self.getSubEmitterAmountAtEnd()
template `subEmitterAmountAtEnd=`*(self: ParticleProcessMaterial; value) = self.setSubEmitterAmountAtEnd(value)

template subEmitterAmountAtCollision*(self: ParticleProcessMaterial): untyped = self.getSubEmitterAmountAtCollision()
template `subEmitterAmountAtCollision=`*(self: ParticleProcessMaterial; value) = self.setSubEmitterAmountAtCollision(value)

template subEmitterKeepVelocity*(self: ParticleProcessMaterial): untyped = self.getSubEmitterKeepVelocity()
template `subEmitterKeepVelocity=`*(self: ParticleProcessMaterial; value) = self.setSubEmitterKeepVelocity(value)

const ParticleProcessMaterial_vmap =
  Material.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ParticleProcessMaterial]): Table[string, string] = ParticleProcessMaterial_vmap
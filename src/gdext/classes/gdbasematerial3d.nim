{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

proc setAlbedo*(self: BaseMaterial3D; albedo: Color): void =
  expandMethodBind(className BaseMaterial3D, "set_albedo", 2920490490)
  methodbind.ptrcall(self, [getPtr albedo])

proc getAlbedo*(self: BaseMaterial3D): Color =
  expandMethodBind(className BaseMaterial3D, "get_albedo", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setTransparency*(self: BaseMaterial3D; transparency: BaseMaterial3D_Transparency): void =
  expandMethodBind(className BaseMaterial3D, "set_transparency", 3435651667)
  methodbind.ptrcall(self, [getPtr transparency])

proc getTransparency*(self: BaseMaterial3D): BaseMaterial3D_Transparency =
  expandMethodBind(className BaseMaterial3D, "get_transparency", 990903061)
  var ret: encoded BaseMaterial3D_Transparency
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_Transparency)

proc setAlphaAntialiasing*(self: BaseMaterial3D; alphaAa: BaseMaterial3D_AlphaAntiAliasing): void =
  expandMethodBind(className BaseMaterial3D, "set_alpha_antialiasing", 3212649852)
  methodbind.ptrcall(self, [getPtr alphaAa])

proc getAlphaAntialiasing*(self: BaseMaterial3D): BaseMaterial3D_AlphaAntiAliasing =
  expandMethodBind(className BaseMaterial3D, "get_alpha_antialiasing", 2889939400)
  var ret: encoded BaseMaterial3D_AlphaAntiAliasing
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_AlphaAntiAliasing)

proc setAlphaAntialiasingEdge*(self: BaseMaterial3D; edge: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_alpha_antialiasing_edge", 373806689)
  methodbind.ptrcall(self, [getPtr edge])

proc getAlphaAntialiasingEdge*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_alpha_antialiasing_edge", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setShadingMode*(self: BaseMaterial3D; shadingMode: BaseMaterial3D_ShadingMode): void =
  expandMethodBind(className BaseMaterial3D, "set_shading_mode", 3368750322)
  methodbind.ptrcall(self, [getPtr shadingMode])

proc getShadingMode*(self: BaseMaterial3D): BaseMaterial3D_ShadingMode =
  expandMethodBind(className BaseMaterial3D, "get_shading_mode", 2132070559)
  var ret: encoded BaseMaterial3D_ShadingMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_ShadingMode)

proc setSpecular*(self: BaseMaterial3D; specular: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_specular", 373806689)
  methodbind.ptrcall(self, [getPtr specular])

proc getSpecular*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_specular", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMetallic*(self: BaseMaterial3D; metallic: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_metallic", 373806689)
  methodbind.ptrcall(self, [getPtr metallic])

proc getMetallic*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_metallic", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setRoughness*(self: BaseMaterial3D; roughness: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_roughness", 373806689)
  methodbind.ptrcall(self, [getPtr roughness])

proc getRoughness*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_roughness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setEmission*(self: BaseMaterial3D; emission: Color): void =
  expandMethodBind(className BaseMaterial3D, "set_emission", 2920490490)
  methodbind.ptrcall(self, [getPtr emission])

proc getEmission*(self: BaseMaterial3D): Color =
  expandMethodBind(className BaseMaterial3D, "get_emission", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setEmissionEnergyMultiplier*(self: BaseMaterial3D; emissionEnergyMultiplier: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_emission_energy_multiplier", 373806689)
  methodbind.ptrcall(self, [getPtr emissionEnergyMultiplier])

proc getEmissionEnergyMultiplier*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_emission_energy_multiplier", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setEmissionIntensity*(self: BaseMaterial3D; emissionEnergyMultiplier: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_emission_intensity", 373806689)
  methodbind.ptrcall(self, [getPtr emissionEnergyMultiplier])

proc getEmissionIntensity*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_emission_intensity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setNormalScale*(self: BaseMaterial3D; normalScale: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_normal_scale", 373806689)
  methodbind.ptrcall(self, [getPtr normalScale])

proc getNormalScale*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_normal_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setRim*(self: BaseMaterial3D; rim: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_rim", 373806689)
  methodbind.ptrcall(self, [getPtr rim])

proc getRim*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_rim", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setRimTint*(self: BaseMaterial3D; rimTint: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_rim_tint", 373806689)
  methodbind.ptrcall(self, [getPtr rimTint])

proc getRimTint*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_rim_tint", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setClearcoat*(self: BaseMaterial3D; clearcoat: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_clearcoat", 373806689)
  methodbind.ptrcall(self, [getPtr clearcoat])

proc getClearcoat*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_clearcoat", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setClearcoatRoughness*(self: BaseMaterial3D; clearcoatRoughness: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_clearcoat_roughness", 373806689)
  methodbind.ptrcall(self, [getPtr clearcoatRoughness])

proc getClearcoatRoughness*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_clearcoat_roughness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setAnisotropy*(self: BaseMaterial3D; anisotropy: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_anisotropy", 373806689)
  methodbind.ptrcall(self, [getPtr anisotropy])

proc getAnisotropy*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_anisotropy", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setHeightmapScale*(self: BaseMaterial3D; heightmapScale: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_heightmap_scale", 373806689)
  methodbind.ptrcall(self, [getPtr heightmapScale])

proc getHeightmapScale*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_heightmap_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSubsurfaceScatteringStrength*(self: BaseMaterial3D; strength: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_subsurface_scattering_strength", 373806689)
  methodbind.ptrcall(self, [getPtr strength])

proc getSubsurfaceScatteringStrength*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_subsurface_scattering_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setTransmittanceColor*(self: BaseMaterial3D; color: Color): void =
  expandMethodBind(className BaseMaterial3D, "set_transmittance_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getTransmittanceColor*(self: BaseMaterial3D): Color =
  expandMethodBind(className BaseMaterial3D, "get_transmittance_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setTransmittanceDepth*(self: BaseMaterial3D; depth: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_transmittance_depth", 373806689)
  methodbind.ptrcall(self, [getPtr depth])

proc getTransmittanceDepth*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_transmittance_depth", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setTransmittanceBoost*(self: BaseMaterial3D; boost: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_transmittance_boost", 373806689)
  methodbind.ptrcall(self, [getPtr boost])

proc getTransmittanceBoost*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_transmittance_boost", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setBacklight*(self: BaseMaterial3D; backlight: Color): void =
  expandMethodBind(className BaseMaterial3D, "set_backlight", 2920490490)
  methodbind.ptrcall(self, [getPtr backlight])

proc getBacklight*(self: BaseMaterial3D): Color =
  expandMethodBind(className BaseMaterial3D, "get_backlight", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setRefraction*(self: BaseMaterial3D; refraction: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_refraction", 373806689)
  methodbind.ptrcall(self, [getPtr refraction])

proc getRefraction*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_refraction", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPointSize*(self: BaseMaterial3D; pointSize: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_point_size", 373806689)
  methodbind.ptrcall(self, [getPtr pointSize])

proc getPointSize*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_point_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDetailUv*(self: BaseMaterial3D; detailUv: BaseMaterial3D_DetailUV): void =
  expandMethodBind(className BaseMaterial3D, "set_detail_uv", 456801921)
  methodbind.ptrcall(self, [getPtr detailUv])

proc getDetailUv*(self: BaseMaterial3D): BaseMaterial3D_DetailUV =
  expandMethodBind(className BaseMaterial3D, "get_detail_uv", 2306920512)
  var ret: encoded BaseMaterial3D_DetailUV
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_DetailUV)

proc setBlendMode*(self: BaseMaterial3D; blendMode: BaseMaterial3D_BlendMode): void =
  expandMethodBind(className BaseMaterial3D, "set_blend_mode", 2830186259)
  methodbind.ptrcall(self, [getPtr blendMode])

proc getBlendMode*(self: BaseMaterial3D): BaseMaterial3D_BlendMode =
  expandMethodBind(className BaseMaterial3D, "get_blend_mode", 4022690962)
  var ret: encoded BaseMaterial3D_BlendMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_BlendMode)

proc setDepthDrawMode*(self: BaseMaterial3D; depthDrawMode: BaseMaterial3D_DepthDrawMode): void =
  expandMethodBind(className BaseMaterial3D, "set_depth_draw_mode", 1456584748)
  methodbind.ptrcall(self, [getPtr depthDrawMode])

proc getDepthDrawMode*(self: BaseMaterial3D): BaseMaterial3D_DepthDrawMode =
  expandMethodBind(className BaseMaterial3D, "get_depth_draw_mode", 2578197639)
  var ret: encoded BaseMaterial3D_DepthDrawMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_DepthDrawMode)

proc setCullMode*(self: BaseMaterial3D; cullMode: BaseMaterial3D_CullMode): void =
  expandMethodBind(className BaseMaterial3D, "set_cull_mode", 2338909218)
  methodbind.ptrcall(self, [getPtr cullMode])

proc getCullMode*(self: BaseMaterial3D): BaseMaterial3D_CullMode =
  expandMethodBind(className BaseMaterial3D, "get_cull_mode", 1941499586)
  var ret: encoded BaseMaterial3D_CullMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_CullMode)

proc setDiffuseMode*(self: BaseMaterial3D; diffuseMode: BaseMaterial3D_DiffuseMode): void =
  expandMethodBind(className BaseMaterial3D, "set_diffuse_mode", 1045299638)
  methodbind.ptrcall(self, [getPtr diffuseMode])

proc getDiffuseMode*(self: BaseMaterial3D): BaseMaterial3D_DiffuseMode =
  expandMethodBind(className BaseMaterial3D, "get_diffuse_mode", 3973617136)
  var ret: encoded BaseMaterial3D_DiffuseMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_DiffuseMode)

proc setSpecularMode*(self: BaseMaterial3D; specularMode: BaseMaterial3D_SpecularMode): void =
  expandMethodBind(className BaseMaterial3D, "set_specular_mode", 584737147)
  methodbind.ptrcall(self, [getPtr specularMode])

proc getSpecularMode*(self: BaseMaterial3D): BaseMaterial3D_SpecularMode =
  expandMethodBind(className BaseMaterial3D, "get_specular_mode", 2569953298)
  var ret: encoded BaseMaterial3D_SpecularMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_SpecularMode)

proc setFlag*(self: BaseMaterial3D; flag: BaseMaterial3D_Flags; enable: bool): void =
  expandMethodBind(className BaseMaterial3D, "set_flag", 3070159527)
  methodbind.ptrcall(self, [getPtr flag, getPtr enable])

proc getFlag*(self: BaseMaterial3D; flag: BaseMaterial3D_Flags): bool =
  expandMethodBind(className BaseMaterial3D, "get_flag", 1286410065)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr flag], addr ret)
  (addr ret).decode_result(bool)

proc setTextureFilter*(self: BaseMaterial3D; mode: BaseMaterial3D_TextureFilter): void =
  expandMethodBind(className BaseMaterial3D, "set_texture_filter", 22904437)
  methodbind.ptrcall(self, [getPtr mode])

proc getTextureFilter*(self: BaseMaterial3D): BaseMaterial3D_TextureFilter =
  expandMethodBind(className BaseMaterial3D, "get_texture_filter", 3289213076)
  var ret: encoded BaseMaterial3D_TextureFilter
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_TextureFilter)

proc setFeature*(self: BaseMaterial3D; feature: BaseMaterial3D_Feature; enable: bool): void =
  expandMethodBind(className BaseMaterial3D, "set_feature", 2819288693)
  methodbind.ptrcall(self, [getPtr feature, getPtr enable])

proc getFeature*(self: BaseMaterial3D; feature: BaseMaterial3D_Feature): bool =
  expandMethodBind(className BaseMaterial3D, "get_feature", 1965241794)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr feature], addr ret)
  (addr ret).decode_result(bool)

proc setTexture*(self: BaseMaterial3D; param: BaseMaterial3D_TextureParam; texture: gdref Texture2D): void =
  expandMethodBind(className BaseMaterial3D, "set_texture", 464208135)
  methodbind.ptrcall(self, [getPtr param, getPtr texture])

proc getTexture*(self: BaseMaterial3D; param: BaseMaterial3D_TextureParam): gdref Texture2D =
  expandMethodBind(className BaseMaterial3D, "get_texture", 329605813)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [getPtr param], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setDetailBlendMode*(self: BaseMaterial3D; detailBlendMode: BaseMaterial3D_BlendMode): void =
  expandMethodBind(className BaseMaterial3D, "set_detail_blend_mode", 2830186259)
  methodbind.ptrcall(self, [getPtr detailBlendMode])

proc getDetailBlendMode*(self: BaseMaterial3D): BaseMaterial3D_BlendMode =
  expandMethodBind(className BaseMaterial3D, "get_detail_blend_mode", 4022690962)
  var ret: encoded BaseMaterial3D_BlendMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_BlendMode)

proc setUv1Scale*(self: BaseMaterial3D; scale: Vector3): void =
  expandMethodBind(className BaseMaterial3D, "set_uv1_scale", 3460891852)
  methodbind.ptrcall(self, [getPtr scale])

proc getUv1Scale*(self: BaseMaterial3D): Vector3 =
  expandMethodBind(className BaseMaterial3D, "get_uv1_scale", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setUv1Offset*(self: BaseMaterial3D; offset: Vector3): void =
  expandMethodBind(className BaseMaterial3D, "set_uv1_offset", 3460891852)
  methodbind.ptrcall(self, [getPtr offset])

proc getUv1Offset*(self: BaseMaterial3D): Vector3 =
  expandMethodBind(className BaseMaterial3D, "get_uv1_offset", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setUv1TriplanarBlendSharpness*(self: BaseMaterial3D; sharpness: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_uv1_triplanar_blend_sharpness", 373806689)
  methodbind.ptrcall(self, [getPtr sharpness])

proc getUv1TriplanarBlendSharpness*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_uv1_triplanar_blend_sharpness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setUv2Scale*(self: BaseMaterial3D; scale: Vector3): void =
  expandMethodBind(className BaseMaterial3D, "set_uv2_scale", 3460891852)
  methodbind.ptrcall(self, [getPtr scale])

proc getUv2Scale*(self: BaseMaterial3D): Vector3 =
  expandMethodBind(className BaseMaterial3D, "get_uv2_scale", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setUv2Offset*(self: BaseMaterial3D; offset: Vector3): void =
  expandMethodBind(className BaseMaterial3D, "set_uv2_offset", 3460891852)
  methodbind.ptrcall(self, [getPtr offset])

proc getUv2Offset*(self: BaseMaterial3D): Vector3 =
  expandMethodBind(className BaseMaterial3D, "get_uv2_offset", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setUv2TriplanarBlendSharpness*(self: BaseMaterial3D; sharpness: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_uv2_triplanar_blend_sharpness", 373806689)
  methodbind.ptrcall(self, [getPtr sharpness])

proc getUv2TriplanarBlendSharpness*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_uv2_triplanar_blend_sharpness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setBillboardMode*(self: BaseMaterial3D; mode: BaseMaterial3D_BillboardMode): void =
  expandMethodBind(className BaseMaterial3D, "set_billboard_mode", 4202036497)
  methodbind.ptrcall(self, [getPtr mode])

proc getBillboardMode*(self: BaseMaterial3D): BaseMaterial3D_BillboardMode =
  expandMethodBind(className BaseMaterial3D, "get_billboard_mode", 1283840139)
  var ret: encoded BaseMaterial3D_BillboardMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_BillboardMode)

proc setParticlesAnimHFrames*(self: BaseMaterial3D; frames: int32): void =
  expandMethodBind(className BaseMaterial3D, "set_particles_anim_h_frames", 1286410249)
  methodbind.ptrcall(self, [getPtr frames])

proc getParticlesAnimHFrames*(self: BaseMaterial3D): int32 =
  expandMethodBind(className BaseMaterial3D, "get_particles_anim_h_frames", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setParticlesAnimVFrames*(self: BaseMaterial3D; frames: int32): void =
  expandMethodBind(className BaseMaterial3D, "set_particles_anim_v_frames", 1286410249)
  methodbind.ptrcall(self, [getPtr frames])

proc getParticlesAnimVFrames*(self: BaseMaterial3D): int32 =
  expandMethodBind(className BaseMaterial3D, "get_particles_anim_v_frames", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setParticlesAnimLoop*(self: BaseMaterial3D; loop: bool): void =
  expandMethodBind(className BaseMaterial3D, "set_particles_anim_loop", 2586408642)
  methodbind.ptrcall(self, [getPtr loop])

proc getParticlesAnimLoop*(self: BaseMaterial3D): bool =
  expandMethodBind(className BaseMaterial3D, "get_particles_anim_loop", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setHeightmapDeepParallax*(self: BaseMaterial3D; enable: bool): void =
  expandMethodBind(className BaseMaterial3D, "set_heightmap_deep_parallax", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isHeightmapDeepParallaxEnabled*(self: BaseMaterial3D): bool =
  expandMethodBind(className BaseMaterial3D, "is_heightmap_deep_parallax_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setHeightmapDeepParallaxMinLayers*(self: BaseMaterial3D; layer: int32): void =
  expandMethodBind(className BaseMaterial3D, "set_heightmap_deep_parallax_min_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr layer])

proc getHeightmapDeepParallaxMinLayers*(self: BaseMaterial3D): int32 =
  expandMethodBind(className BaseMaterial3D, "get_heightmap_deep_parallax_min_layers", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setHeightmapDeepParallaxMaxLayers*(self: BaseMaterial3D; layer: int32): void =
  expandMethodBind(className BaseMaterial3D, "set_heightmap_deep_parallax_max_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr layer])

proc getHeightmapDeepParallaxMaxLayers*(self: BaseMaterial3D): int32 =
  expandMethodBind(className BaseMaterial3D, "get_heightmap_deep_parallax_max_layers", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setHeightmapDeepParallaxFlipTangent*(self: BaseMaterial3D; flip: bool): void =
  expandMethodBind(className BaseMaterial3D, "set_heightmap_deep_parallax_flip_tangent", 2586408642)
  methodbind.ptrcall(self, [getPtr flip])

proc getHeightmapDeepParallaxFlipTangent*(self: BaseMaterial3D): bool =
  expandMethodBind(className BaseMaterial3D, "get_heightmap_deep_parallax_flip_tangent", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setHeightmapDeepParallaxFlipBinormal*(self: BaseMaterial3D; flip: bool): void =
  expandMethodBind(className BaseMaterial3D, "set_heightmap_deep_parallax_flip_binormal", 2586408642)
  methodbind.ptrcall(self, [getPtr flip])

proc getHeightmapDeepParallaxFlipBinormal*(self: BaseMaterial3D): bool =
  expandMethodBind(className BaseMaterial3D, "get_heightmap_deep_parallax_flip_binormal", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setGrow*(self: BaseMaterial3D; amount: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_grow", 373806689)
  methodbind.ptrcall(self, [getPtr amount])

proc getGrow*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_grow", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setEmissionOperator*(self: BaseMaterial3D; operator: BaseMaterial3D_EmissionOperator): void =
  expandMethodBind(className BaseMaterial3D, "set_emission_operator", 3825128922)
  methodbind.ptrcall(self, [getPtr operator])

proc getEmissionOperator*(self: BaseMaterial3D): BaseMaterial3D_EmissionOperator =
  expandMethodBind(className BaseMaterial3D, "get_emission_operator", 974205018)
  var ret: encoded BaseMaterial3D_EmissionOperator
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_EmissionOperator)

proc setAoLightAffect*(self: BaseMaterial3D; amount: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_ao_light_affect", 373806689)
  methodbind.ptrcall(self, [getPtr amount])

proc getAoLightAffect*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_ao_light_affect", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setAlphaScissorThreshold*(self: BaseMaterial3D; threshold: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_alpha_scissor_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr threshold])

proc getAlphaScissorThreshold*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_alpha_scissor_threshold", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setAlphaHashScale*(self: BaseMaterial3D; threshold: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_alpha_hash_scale", 373806689)
  methodbind.ptrcall(self, [getPtr threshold])

proc getAlphaHashScale*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_alpha_hash_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setGrowEnabled*(self: BaseMaterial3D; enable: bool): void =
  expandMethodBind(className BaseMaterial3D, "set_grow_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isGrowEnabled*(self: BaseMaterial3D): bool =
  expandMethodBind(className BaseMaterial3D, "is_grow_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMetallicTextureChannel*(self: BaseMaterial3D; channel: BaseMaterial3D_TextureChannel): void =
  expandMethodBind(className BaseMaterial3D, "set_metallic_texture_channel", 744167988)
  methodbind.ptrcall(self, [getPtr channel])

proc getMetallicTextureChannel*(self: BaseMaterial3D): BaseMaterial3D_TextureChannel =
  expandMethodBind(className BaseMaterial3D, "get_metallic_texture_channel", 568133867)
  var ret: encoded BaseMaterial3D_TextureChannel
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_TextureChannel)

proc setRoughnessTextureChannel*(self: BaseMaterial3D; channel: BaseMaterial3D_TextureChannel): void =
  expandMethodBind(className BaseMaterial3D, "set_roughness_texture_channel", 744167988)
  methodbind.ptrcall(self, [getPtr channel])

proc getRoughnessTextureChannel*(self: BaseMaterial3D): BaseMaterial3D_TextureChannel =
  expandMethodBind(className BaseMaterial3D, "get_roughness_texture_channel", 568133867)
  var ret: encoded BaseMaterial3D_TextureChannel
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_TextureChannel)

proc setAoTextureChannel*(self: BaseMaterial3D; channel: BaseMaterial3D_TextureChannel): void =
  expandMethodBind(className BaseMaterial3D, "set_ao_texture_channel", 744167988)
  methodbind.ptrcall(self, [getPtr channel])

proc getAoTextureChannel*(self: BaseMaterial3D): BaseMaterial3D_TextureChannel =
  expandMethodBind(className BaseMaterial3D, "get_ao_texture_channel", 568133867)
  var ret: encoded BaseMaterial3D_TextureChannel
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_TextureChannel)

proc setRefractionTextureChannel*(self: BaseMaterial3D; channel: BaseMaterial3D_TextureChannel): void =
  expandMethodBind(className BaseMaterial3D, "set_refraction_texture_channel", 744167988)
  methodbind.ptrcall(self, [getPtr channel])

proc getRefractionTextureChannel*(self: BaseMaterial3D): BaseMaterial3D_TextureChannel =
  expandMethodBind(className BaseMaterial3D, "get_refraction_texture_channel", 568133867)
  var ret: encoded BaseMaterial3D_TextureChannel
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_TextureChannel)

proc setProximityFadeEnabled*(self: BaseMaterial3D; enabled: bool): void =
  expandMethodBind(className BaseMaterial3D, "set_proximity_fade_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isProximityFadeEnabled*(self: BaseMaterial3D): bool =
  expandMethodBind(className BaseMaterial3D, "is_proximity_fade_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setProximityFadeDistance*(self: BaseMaterial3D; distance: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_proximity_fade_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getProximityFadeDistance*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_proximity_fade_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMsdfPixelRange*(self: BaseMaterial3D; range: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_msdf_pixel_range", 373806689)
  methodbind.ptrcall(self, [getPtr range])

proc getMsdfPixelRange*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_msdf_pixel_range", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMsdfOutlineSize*(self: BaseMaterial3D; size: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_msdf_outline_size", 373806689)
  methodbind.ptrcall(self, [getPtr size])

proc getMsdfOutlineSize*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_msdf_outline_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDistanceFade*(self: BaseMaterial3D; mode: BaseMaterial3D_DistanceFadeMode): void =
  expandMethodBind(className BaseMaterial3D, "set_distance_fade", 1379478617)
  methodbind.ptrcall(self, [getPtr mode])

proc getDistanceFade*(self: BaseMaterial3D): BaseMaterial3D_DistanceFadeMode =
  expandMethodBind(className BaseMaterial3D, "get_distance_fade", 2694575734)
  var ret: encoded BaseMaterial3D_DistanceFadeMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(BaseMaterial3D_DistanceFadeMode)

proc setDistanceFadeMaxDistance*(self: BaseMaterial3D; distance: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_distance_fade_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getDistanceFadeMaxDistance*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_distance_fade_max_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDistanceFadeMinDistance*(self: BaseMaterial3D; distance: Float): void =
  expandMethodBind(className BaseMaterial3D, "set_distance_fade_min_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getDistanceFadeMinDistance*(self: BaseMaterial3D): Float =
  expandMethodBind(className BaseMaterial3D, "get_distance_fade_min_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template transparency*(self: BaseMaterial3D): untyped = self.getTransparency()
template `transparency=`*(self: BaseMaterial3D; value) = self.setTransparency(value)

template alphaScissorThreshold*(self: BaseMaterial3D): untyped = self.getAlphaScissorThreshold()
template `alphaScissorThreshold=`*(self: BaseMaterial3D; value) = self.setAlphaScissorThreshold(value)

template alphaHashScale*(self: BaseMaterial3D): untyped = self.getAlphaHashScale()
template `alphaHashScale=`*(self: BaseMaterial3D; value) = self.setAlphaHashScale(value)

template alphaAntialiasingMode*(self: BaseMaterial3D): untyped = self.getAlphaAntialiasing()
template `alphaAntialiasingMode=`*(self: BaseMaterial3D; value) = self.setAlphaAntialiasing(value)

template alphaAntialiasingEdge*(self: BaseMaterial3D): untyped = self.getAlphaAntialiasingEdge()
template `alphaAntialiasingEdge=`*(self: BaseMaterial3D; value) = self.setAlphaAntialiasingEdge(value)

template blendMode*(self: BaseMaterial3D): untyped = self.getBlendMode()
template `blendMode=`*(self: BaseMaterial3D; value) = self.setBlendMode(value)

template cullMode*(self: BaseMaterial3D): untyped = self.getCullMode()
template `cullMode=`*(self: BaseMaterial3D; value) = self.setCullMode(value)

template depthDrawMode*(self: BaseMaterial3D): untyped = self.getDepthDrawMode()
template `depthDrawMode=`*(self: BaseMaterial3D; value) = self.setDepthDrawMode(value)

template noDepthTest*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(0))
template `noDepthTest=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(0), value)

template shadingMode*(self: BaseMaterial3D): untyped = self.getShadingMode()
template `shadingMode=`*(self: BaseMaterial3D; value) = self.setShadingMode(value)

template diffuseMode*(self: BaseMaterial3D): untyped = self.getDiffuseMode()
template `diffuseMode=`*(self: BaseMaterial3D; value) = self.setDiffuseMode(value)

template specularMode*(self: BaseMaterial3D): untyped = self.getSpecularMode()
template `specularMode=`*(self: BaseMaterial3D; value) = self.setSpecularMode(value)

template disableAmbientLight*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(14))
template `disableAmbientLight=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(14), value)

template disableFog*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(21))
template `disableFog=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(21), value)

template vertexColorUseAsAlbedo*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(1))
template `vertexColorUseAsAlbedo=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(1), value)

template vertexColorIsSrgb*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(2))
template `vertexColorIsSrgb=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(2), value)

template albedoColor*(self: BaseMaterial3D): untyped = self.getAlbedo()
template `albedoColor=`*(self: BaseMaterial3D; value) = self.setAlbedo(value)

template albedoTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(0))
template `albedoTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(0), value)

template albedoTextureForceSrgb*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(12))
template `albedoTextureForceSrgb=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(12), value)

template albedoTextureMsdf*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(20))
template `albedoTextureMsdf=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(20), value)

template ormTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(17))
template `ormTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(17), value)

template metallic*(self: BaseMaterial3D): untyped = self.getMetallic()
template `metallic=`*(self: BaseMaterial3D; value) = self.setMetallic(value)

template metallicSpecular*(self: BaseMaterial3D): untyped = self.getSpecular()
template `metallicSpecular=`*(self: BaseMaterial3D; value) = self.setSpecular(value)

template metallicTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(1))
template `metallicTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(1), value)

template metallicTextureChannel*(self: BaseMaterial3D): untyped = self.getMetallicTextureChannel()
template `metallicTextureChannel=`*(self: BaseMaterial3D; value) = self.setMetallicTextureChannel(value)

template roughness*(self: BaseMaterial3D): untyped = self.getRoughness()
template `roughness=`*(self: BaseMaterial3D; value) = self.setRoughness(value)

template roughnessTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(2))
template `roughnessTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(2), value)

template roughnessTextureChannel*(self: BaseMaterial3D): untyped = self.getRoughnessTextureChannel()
template `roughnessTextureChannel=`*(self: BaseMaterial3D; value) = self.setRoughnessTextureChannel(value)

template emissionEnabled*(self: BaseMaterial3D): untyped = self.getFeature(BaseMaterial3D_Feature(0))
template `emissionEnabled=`*(self: BaseMaterial3D; value) = self.setFeature(BaseMaterial3D_Feature(0), value)

template emission*(self: BaseMaterial3D): untyped = self.getEmission()
template `emission=`*(self: BaseMaterial3D; value) = self.setEmission(value)

template emissionEnergyMultiplier*(self: BaseMaterial3D): untyped = self.getEmissionEnergyMultiplier()
template `emissionEnergyMultiplier=`*(self: BaseMaterial3D; value) = self.setEmissionEnergyMultiplier(value)

template emissionIntensity*(self: BaseMaterial3D): untyped = self.getEmissionIntensity()
template `emissionIntensity=`*(self: BaseMaterial3D; value) = self.setEmissionIntensity(value)

template emissionOperator*(self: BaseMaterial3D): untyped = self.getEmissionOperator()
template `emissionOperator=`*(self: BaseMaterial3D; value) = self.setEmissionOperator(value)

template emissionOnUv2*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(11))
template `emissionOnUv2=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(11), value)

template emissionTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(3))
template `emissionTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(3), value)

template normalEnabled*(self: BaseMaterial3D): untyped = self.getFeature(BaseMaterial3D_Feature(1))
template `normalEnabled=`*(self: BaseMaterial3D; value) = self.setFeature(BaseMaterial3D_Feature(1), value)

template normalScale*(self: BaseMaterial3D): untyped = self.getNormalScale()
template `normalScale=`*(self: BaseMaterial3D; value) = self.setNormalScale(value)

template normalTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(4))
template `normalTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(4), value)

template rimEnabled*(self: BaseMaterial3D): untyped = self.getFeature(BaseMaterial3D_Feature(2))
template `rimEnabled=`*(self: BaseMaterial3D; value) = self.setFeature(BaseMaterial3D_Feature(2), value)

template rim*(self: BaseMaterial3D): untyped = self.getRim()
template `rim=`*(self: BaseMaterial3D; value) = self.setRim(value)

template rimTint*(self: BaseMaterial3D): untyped = self.getRimTint()
template `rimTint=`*(self: BaseMaterial3D; value) = self.setRimTint(value)

template rimTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(5))
template `rimTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(5), value)

template clearcoatEnabled*(self: BaseMaterial3D): untyped = self.getFeature(BaseMaterial3D_Feature(3))
template `clearcoatEnabled=`*(self: BaseMaterial3D; value) = self.setFeature(BaseMaterial3D_Feature(3), value)

template clearcoat*(self: BaseMaterial3D): untyped = self.getClearcoat()
template `clearcoat=`*(self: BaseMaterial3D; value) = self.setClearcoat(value)

template clearcoatRoughness*(self: BaseMaterial3D): untyped = self.getClearcoatRoughness()
template `clearcoatRoughness=`*(self: BaseMaterial3D; value) = self.setClearcoatRoughness(value)

template clearcoatTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(6))
template `clearcoatTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(6), value)

template anisotropyEnabled*(self: BaseMaterial3D): untyped = self.getFeature(BaseMaterial3D_Feature(4))
template `anisotropyEnabled=`*(self: BaseMaterial3D; value) = self.setFeature(BaseMaterial3D_Feature(4), value)

template anisotropy*(self: BaseMaterial3D): untyped = self.getAnisotropy()
template `anisotropy=`*(self: BaseMaterial3D; value) = self.setAnisotropy(value)

template anisotropyFlowmap*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(7))
template `anisotropyFlowmap=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(7), value)

template aoEnabled*(self: BaseMaterial3D): untyped = self.getFeature(BaseMaterial3D_Feature(5))
template `aoEnabled=`*(self: BaseMaterial3D; value) = self.setFeature(BaseMaterial3D_Feature(5), value)

template aoLightAffect*(self: BaseMaterial3D): untyped = self.getAoLightAffect()
template `aoLightAffect=`*(self: BaseMaterial3D; value) = self.setAoLightAffect(value)

template aoTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(8))
template `aoTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(8), value)

template aoOnUv2*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(10))
template `aoOnUv2=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(10), value)

template aoTextureChannel*(self: BaseMaterial3D): untyped = self.getAoTextureChannel()
template `aoTextureChannel=`*(self: BaseMaterial3D; value) = self.setAoTextureChannel(value)

template heightmapEnabled*(self: BaseMaterial3D): untyped = self.getFeature(BaseMaterial3D_Feature(6))
template `heightmapEnabled=`*(self: BaseMaterial3D; value) = self.setFeature(BaseMaterial3D_Feature(6), value)

template heightmapScale*(self: BaseMaterial3D): untyped = self.getHeightmapScale()
template `heightmapScale=`*(self: BaseMaterial3D; value) = self.setHeightmapScale(value)

template heightmapDeepParallax*(self: BaseMaterial3D): untyped = self.isHeightmapDeepParallaxEnabled()
template `heightmapDeepParallax=`*(self: BaseMaterial3D; value) = self.setHeightmapDeepParallax(value)

template heightmapMinLayers*(self: BaseMaterial3D): untyped = self.getHeightmapDeepParallaxMinLayers()
template `heightmapMinLayers=`*(self: BaseMaterial3D; value) = self.setHeightmapDeepParallaxMinLayers(value)

template heightmapMaxLayers*(self: BaseMaterial3D): untyped = self.getHeightmapDeepParallaxMaxLayers()
template `heightmapMaxLayers=`*(self: BaseMaterial3D; value) = self.setHeightmapDeepParallaxMaxLayers(value)

template heightmapFlipTangent*(self: BaseMaterial3D): untyped = self.getHeightmapDeepParallaxFlipTangent()
template `heightmapFlipTangent=`*(self: BaseMaterial3D; value) = self.setHeightmapDeepParallaxFlipTangent(value)

template heightmapFlipBinormal*(self: BaseMaterial3D): untyped = self.getHeightmapDeepParallaxFlipBinormal()
template `heightmapFlipBinormal=`*(self: BaseMaterial3D; value) = self.setHeightmapDeepParallaxFlipBinormal(value)

template heightmapTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(9))
template `heightmapTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(9), value)

template heightmapFlipTexture*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(17))
template `heightmapFlipTexture=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(17), value)

template subsurfScatterEnabled*(self: BaseMaterial3D): untyped = self.getFeature(BaseMaterial3D_Feature(7))
template `subsurfScatterEnabled=`*(self: BaseMaterial3D; value) = self.setFeature(BaseMaterial3D_Feature(7), value)

template subsurfScatterStrength*(self: BaseMaterial3D): untyped = self.getSubsurfaceScatteringStrength()
template `subsurfScatterStrength=`*(self: BaseMaterial3D; value) = self.setSubsurfaceScatteringStrength(value)

template subsurfScatterSkinMode*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(18))
template `subsurfScatterSkinMode=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(18), value)

template subsurfScatterTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(10))
template `subsurfScatterTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(10), value)

template subsurfScatterTransmittanceEnabled*(self: BaseMaterial3D): untyped = self.getFeature(BaseMaterial3D_Feature(8))
template `subsurfScatterTransmittanceEnabled=`*(self: BaseMaterial3D; value) = self.setFeature(BaseMaterial3D_Feature(8), value)

template subsurfScatterTransmittanceColor*(self: BaseMaterial3D): untyped = self.getTransmittanceColor()
template `subsurfScatterTransmittanceColor=`*(self: BaseMaterial3D; value) = self.setTransmittanceColor(value)

template subsurfScatterTransmittanceTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(11))
template `subsurfScatterTransmittanceTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(11), value)

template subsurfScatterTransmittanceDepth*(self: BaseMaterial3D): untyped = self.getTransmittanceDepth()
template `subsurfScatterTransmittanceDepth=`*(self: BaseMaterial3D; value) = self.setTransmittanceDepth(value)

template subsurfScatterTransmittanceBoost*(self: BaseMaterial3D): untyped = self.getTransmittanceBoost()
template `subsurfScatterTransmittanceBoost=`*(self: BaseMaterial3D; value) = self.setTransmittanceBoost(value)

template backlightEnabled*(self: BaseMaterial3D): untyped = self.getFeature(BaseMaterial3D_Feature(9))
template `backlightEnabled=`*(self: BaseMaterial3D; value) = self.setFeature(BaseMaterial3D_Feature(9), value)

template backlight*(self: BaseMaterial3D): untyped = self.getBacklight()
template `backlight=`*(self: BaseMaterial3D; value) = self.setBacklight(value)

template backlightTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(12))
template `backlightTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(12), value)

template refractionEnabled*(self: BaseMaterial3D): untyped = self.getFeature(BaseMaterial3D_Feature(10))
template `refractionEnabled=`*(self: BaseMaterial3D; value) = self.setFeature(BaseMaterial3D_Feature(10), value)

template refractionScale*(self: BaseMaterial3D): untyped = self.getRefraction()
template `refractionScale=`*(self: BaseMaterial3D; value) = self.setRefraction(value)

template refractionTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(13))
template `refractionTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(13), value)

template refractionTextureChannel*(self: BaseMaterial3D): untyped = self.getRefractionTextureChannel()
template `refractionTextureChannel=`*(self: BaseMaterial3D; value) = self.setRefractionTextureChannel(value)

template detailEnabled*(self: BaseMaterial3D): untyped = self.getFeature(BaseMaterial3D_Feature(11))
template `detailEnabled=`*(self: BaseMaterial3D; value) = self.setFeature(BaseMaterial3D_Feature(11), value)

template detailMask*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(14))
template `detailMask=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(14), value)

template detailBlendMode*(self: BaseMaterial3D): untyped = self.getDetailBlendMode()
template `detailBlendMode=`*(self: BaseMaterial3D; value) = self.setDetailBlendMode(value)

template detailUvLayer*(self: BaseMaterial3D): untyped = self.getDetailUv()
template `detailUvLayer=`*(self: BaseMaterial3D; value) = self.setDetailUv(value)

template detailAlbedo*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(15))
template `detailAlbedo=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(15), value)

template detailNormal*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(16))
template `detailNormal=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(16), value)

template uv1Scale*(self: BaseMaterial3D): untyped = self.getUv1Scale()
template `uv1Scale=`*(self: BaseMaterial3D; value) = self.setUv1Scale(value)

template uv1Offset*(self: BaseMaterial3D): untyped = self.getUv1Offset()
template `uv1Offset=`*(self: BaseMaterial3D; value) = self.setUv1Offset(value)

template uv1Triplanar*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(6))
template `uv1Triplanar=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(6), value)

template uv1TriplanarSharpness*(self: BaseMaterial3D): untyped = self.getUv1TriplanarBlendSharpness()
template `uv1TriplanarSharpness=`*(self: BaseMaterial3D; value) = self.setUv1TriplanarBlendSharpness(value)

template uv1WorldTriplanar*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(8))
template `uv1WorldTriplanar=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(8), value)

template uv2Scale*(self: BaseMaterial3D): untyped = self.getUv2Scale()
template `uv2Scale=`*(self: BaseMaterial3D; value) = self.setUv2Scale(value)

template uv2Offset*(self: BaseMaterial3D): untyped = self.getUv2Offset()
template `uv2Offset=`*(self: BaseMaterial3D; value) = self.setUv2Offset(value)

template uv2Triplanar*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(7))
template `uv2Triplanar=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(7), value)

template uv2TriplanarSharpness*(self: BaseMaterial3D): untyped = self.getUv2TriplanarBlendSharpness()
template `uv2TriplanarSharpness=`*(self: BaseMaterial3D; value) = self.setUv2TriplanarBlendSharpness(value)

template uv2WorldTriplanar*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(9))
template `uv2WorldTriplanar=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(9), value)

template textureFilter*(self: BaseMaterial3D): untyped = self.getTextureFilter()
template `textureFilter=`*(self: BaseMaterial3D; value) = self.setTextureFilter(value)

template textureRepeat*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(16))
template `textureRepeat=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(16), value)

template disableReceiveShadows*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(13))
template `disableReceiveShadows=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(13), value)

template shadowToOpacity*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(15))
template `shadowToOpacity=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(15), value)

template billboardMode*(self: BaseMaterial3D): untyped = self.getBillboardMode()
template `billboardMode=`*(self: BaseMaterial3D; value) = self.setBillboardMode(value)

template billboardKeepScale*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(5))
template `billboardKeepScale=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(5), value)

template particlesAnimHFrames*(self: BaseMaterial3D): untyped = self.getParticlesAnimHFrames()
template `particlesAnimHFrames=`*(self: BaseMaterial3D; value) = self.setParticlesAnimHFrames(value)

template particlesAnimVFrames*(self: BaseMaterial3D): untyped = self.getParticlesAnimVFrames()
template `particlesAnimVFrames=`*(self: BaseMaterial3D; value) = self.setParticlesAnimVFrames(value)

template particlesAnimLoop*(self: BaseMaterial3D): untyped = self.getParticlesAnimLoop()
template `particlesAnimLoop=`*(self: BaseMaterial3D; value) = self.setParticlesAnimLoop(value)

template grow*(self: BaseMaterial3D): untyped = self.isGrowEnabled()
template `grow=`*(self: BaseMaterial3D; value) = self.setGrowEnabled(value)

template growAmount*(self: BaseMaterial3D): untyped = self.getGrow()
template `growAmount=`*(self: BaseMaterial3D; value) = self.setGrow(value)

template fixedSize*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(4))
template `fixedSize=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(4), value)

template usePointSize*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(3))
template `usePointSize=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(3), value)

template pointSize*(self: BaseMaterial3D): untyped = self.getPointSize()
template `pointSize=`*(self: BaseMaterial3D; value) = self.setPointSize(value)

template useParticleTrails*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(19))
template `useParticleTrails=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(19), value)

template proximityFadeEnabled*(self: BaseMaterial3D): untyped = self.isProximityFadeEnabled()
template `proximityFadeEnabled=`*(self: BaseMaterial3D; value) = self.setProximityFadeEnabled(value)

template proximityFadeDistance*(self: BaseMaterial3D): untyped = self.getProximityFadeDistance()
template `proximityFadeDistance=`*(self: BaseMaterial3D; value) = self.setProximityFadeDistance(value)

template msdfPixelRange*(self: BaseMaterial3D): untyped = self.getMsdfPixelRange()
template `msdfPixelRange=`*(self: BaseMaterial3D; value) = self.setMsdfPixelRange(value)

template msdfOutlineSize*(self: BaseMaterial3D): untyped = self.getMsdfOutlineSize()
template `msdfOutlineSize=`*(self: BaseMaterial3D; value) = self.setMsdfOutlineSize(value)

template distanceFadeMode*(self: BaseMaterial3D): untyped = self.getDistanceFade()
template `distanceFadeMode=`*(self: BaseMaterial3D; value) = self.setDistanceFade(value)

template distanceFadeMinDistance*(self: BaseMaterial3D): untyped = self.getDistanceFadeMinDistance()
template `distanceFadeMinDistance=`*(self: BaseMaterial3D; value) = self.setDistanceFadeMinDistance(value)

template distanceFadeMaxDistance*(self: BaseMaterial3D): untyped = self.getDistanceFadeMaxDistance()
template `distanceFadeMaxDistance=`*(self: BaseMaterial3D; value) = self.setDistanceFadeMaxDistance(value)

const BaseMaterial3D_vmap =
  Material.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[BaseMaterial3D]): Table[string, string] = BaseMaterial3D_vmap
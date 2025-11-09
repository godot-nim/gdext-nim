{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

expandOnClassImported(BaseMaterial3D, Material)

proc setAlbedo*(self: BaseMaterial3D; albedo: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_albedo", 2920490490)
  methodbind.ptrcall(self, [getPtr albedo], void)

proc getAlbedo*(self: BaseMaterial3D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_albedo", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setTransparency*(self: BaseMaterial3D; transparency: BaseMaterial3D_Transparency): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_transparency", 3435651667)
  methodbind.ptrcall(self, [getPtr transparency], void)

proc getTransparency*(self: BaseMaterial3D): BaseMaterial3D_Transparency =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_transparency", 990903061)
  methodbind.ptrcall(self, [], BaseMaterial3D_Transparency)

proc setAlphaAntialiasing*(self: BaseMaterial3D; alphaAa: BaseMaterial3D_AlphaAntiAliasing): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_alpha_antialiasing", 3212649852)
  methodbind.ptrcall(self, [getPtr alphaAa], void)

proc getAlphaAntialiasing*(self: BaseMaterial3D): BaseMaterial3D_AlphaAntiAliasing =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_alpha_antialiasing", 2889939400)
  methodbind.ptrcall(self, [], BaseMaterial3D_AlphaAntiAliasing)

proc setAlphaAntialiasingEdge*(self: BaseMaterial3D; edge: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_alpha_antialiasing_edge", 373806689)
  methodbind.ptrcall(self, [getPtr edge], void)

proc getAlphaAntialiasingEdge*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_alpha_antialiasing_edge", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setShadingMode*(self: BaseMaterial3D; shadingMode: BaseMaterial3D_ShadingMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_shading_mode", 3368750322)
  methodbind.ptrcall(self, [getPtr shadingMode], void)

proc getShadingMode*(self: BaseMaterial3D): BaseMaterial3D_ShadingMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_shading_mode", 2132070559)
  methodbind.ptrcall(self, [], BaseMaterial3D_ShadingMode)

proc setSpecular*(self: BaseMaterial3D; specular: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_specular", 373806689)
  methodbind.ptrcall(self, [getPtr specular], void)

proc getSpecular*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_specular", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMetallic*(self: BaseMaterial3D; metallic: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_metallic", 373806689)
  methodbind.ptrcall(self, [getPtr metallic], void)

proc getMetallic*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_metallic", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRoughness*(self: BaseMaterial3D; roughness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_roughness", 373806689)
  methodbind.ptrcall(self, [getPtr roughness], void)

proc getRoughness*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_roughness", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setEmission*(self: BaseMaterial3D; emission: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_emission", 2920490490)
  methodbind.ptrcall(self, [getPtr emission], void)

proc getEmission*(self: BaseMaterial3D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_emission", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setEmissionEnergyMultiplier*(self: BaseMaterial3D; emissionEnergyMultiplier: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_emission_energy_multiplier", 373806689)
  methodbind.ptrcall(self, [getPtr emissionEnergyMultiplier], void)

proc getEmissionEnergyMultiplier*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_emission_energy_multiplier", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setEmissionIntensity*(self: BaseMaterial3D; emissionEnergyMultiplier: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_emission_intensity", 373806689)
  methodbind.ptrcall(self, [getPtr emissionEnergyMultiplier], void)

proc getEmissionIntensity*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_emission_intensity", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setNormalScale*(self: BaseMaterial3D; normalScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_normal_scale", 373806689)
  methodbind.ptrcall(self, [getPtr normalScale], void)

proc getNormalScale*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_normal_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRim*(self: BaseMaterial3D; rim: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_rim", 373806689)
  methodbind.ptrcall(self, [getPtr rim], void)

proc getRim*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_rim", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRimTint*(self: BaseMaterial3D; rimTint: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_rim_tint", 373806689)
  methodbind.ptrcall(self, [getPtr rimTint], void)

proc getRimTint*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_rim_tint", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setClearcoat*(self: BaseMaterial3D; clearcoat: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_clearcoat", 373806689)
  methodbind.ptrcall(self, [getPtr clearcoat], void)

proc getClearcoat*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_clearcoat", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setClearcoatRoughness*(self: BaseMaterial3D; clearcoatRoughness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_clearcoat_roughness", 373806689)
  methodbind.ptrcall(self, [getPtr clearcoatRoughness], void)

proc getClearcoatRoughness*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_clearcoat_roughness", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAnisotropy*(self: BaseMaterial3D; anisotropy: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_anisotropy", 373806689)
  methodbind.ptrcall(self, [getPtr anisotropy], void)

proc getAnisotropy*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_anisotropy", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHeightmapScale*(self: BaseMaterial3D; heightmapScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_heightmap_scale", 373806689)
  methodbind.ptrcall(self, [getPtr heightmapScale], void)

proc getHeightmapScale*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_heightmap_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSubsurfaceScatteringStrength*(self: BaseMaterial3D; strength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_subsurface_scattering_strength", 373806689)
  methodbind.ptrcall(self, [getPtr strength], void)

proc getSubsurfaceScatteringStrength*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_subsurface_scattering_strength", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTransmittanceColor*(self: BaseMaterial3D; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_transmittance_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getTransmittanceColor*(self: BaseMaterial3D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_transmittance_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setTransmittanceDepth*(self: BaseMaterial3D; depth: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_transmittance_depth", 373806689)
  methodbind.ptrcall(self, [getPtr depth], void)

proc getTransmittanceDepth*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_transmittance_depth", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTransmittanceBoost*(self: BaseMaterial3D; boost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_transmittance_boost", 373806689)
  methodbind.ptrcall(self, [getPtr boost], void)

proc getTransmittanceBoost*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_transmittance_boost", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setBacklight*(self: BaseMaterial3D; backlight: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_backlight", 2920490490)
  methodbind.ptrcall(self, [getPtr backlight], void)

proc getBacklight*(self: BaseMaterial3D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_backlight", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setRefraction*(self: BaseMaterial3D; refraction: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_refraction", 373806689)
  methodbind.ptrcall(self, [getPtr refraction], void)

proc getRefraction*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_refraction", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPointSize*(self: BaseMaterial3D; pointSize: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_point_size", 373806689)
  methodbind.ptrcall(self, [getPtr pointSize], void)

proc getPointSize*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_point_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDetailUv*(self: BaseMaterial3D; detailUv: BaseMaterial3D_DetailUV): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_detail_uv", 456801921)
  methodbind.ptrcall(self, [getPtr detailUv], void)

proc getDetailUv*(self: BaseMaterial3D): BaseMaterial3D_DetailUV =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_detail_uv", 2306920512)
  methodbind.ptrcall(self, [], BaseMaterial3D_DetailUV)

proc setBlendMode*(self: BaseMaterial3D; blendMode: BaseMaterial3D_BlendMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_blend_mode", 2830186259)
  methodbind.ptrcall(self, [getPtr blendMode], void)

proc getBlendMode*(self: BaseMaterial3D): BaseMaterial3D_BlendMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_blend_mode", 4022690962)
  methodbind.ptrcall(self, [], BaseMaterial3D_BlendMode)

proc setDepthDrawMode*(self: BaseMaterial3D; depthDrawMode: BaseMaterial3D_DepthDrawMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_depth_draw_mode", 1456584748)
  methodbind.ptrcall(self, [getPtr depthDrawMode], void)

proc getDepthDrawMode*(self: BaseMaterial3D): BaseMaterial3D_DepthDrawMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_depth_draw_mode", 2578197639)
  methodbind.ptrcall(self, [], BaseMaterial3D_DepthDrawMode)

proc setDepthTest*(self: BaseMaterial3D; depthTest: BaseMaterial3D_DepthTest): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_depth_test", 3918692338)
  methodbind.ptrcall(self, [getPtr depthTest], void)

proc getDepthTest*(self: BaseMaterial3D): BaseMaterial3D_DepthTest =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_depth_test", 3434785811)
  methodbind.ptrcall(self, [], BaseMaterial3D_DepthTest)

proc setCullMode*(self: BaseMaterial3D; cullMode: BaseMaterial3D_CullMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_cull_mode", 2338909218)
  methodbind.ptrcall(self, [getPtr cullMode], void)

proc getCullMode*(self: BaseMaterial3D): BaseMaterial3D_CullMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_cull_mode", 1941499586)
  methodbind.ptrcall(self, [], BaseMaterial3D_CullMode)

proc setDiffuseMode*(self: BaseMaterial3D; diffuseMode: BaseMaterial3D_DiffuseMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_diffuse_mode", 1045299638)
  methodbind.ptrcall(self, [getPtr diffuseMode], void)

proc getDiffuseMode*(self: BaseMaterial3D): BaseMaterial3D_DiffuseMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_diffuse_mode", 3973617136)
  methodbind.ptrcall(self, [], BaseMaterial3D_DiffuseMode)

proc setSpecularMode*(self: BaseMaterial3D; specularMode: BaseMaterial3D_SpecularMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_specular_mode", 584737147)
  methodbind.ptrcall(self, [getPtr specularMode], void)

proc getSpecularMode*(self: BaseMaterial3D): BaseMaterial3D_SpecularMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_specular_mode", 2569953298)
  methodbind.ptrcall(self, [], BaseMaterial3D_SpecularMode)

proc setFlag*(self: BaseMaterial3D; flag: BaseMaterial3D_Flags; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_flag", 3070159527)
  methodbind.ptrcall(self, [getPtr flag, getPtr enable], void)

proc getFlag*(self: BaseMaterial3D; flag: BaseMaterial3D_Flags): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_flag", 1286410065)
  methodbind.ptrcall(self, [getPtr flag], bool)

proc setTextureFilter*(self: BaseMaterial3D; mode: BaseMaterial3D_TextureFilter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_texture_filter", 22904437)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getTextureFilter*(self: BaseMaterial3D): BaseMaterial3D_TextureFilter =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_texture_filter", 3289213076)
  methodbind.ptrcall(self, [], BaseMaterial3D_TextureFilter)

proc setFeature*(self: BaseMaterial3D; feature: BaseMaterial3D_Feature; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_feature", 2819288693)
  methodbind.ptrcall(self, [getPtr feature, getPtr enable], void)

proc getFeature*(self: BaseMaterial3D; feature: BaseMaterial3D_Feature): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_feature", 1965241794)
  methodbind.ptrcall(self, [getPtr feature], bool)

proc setTexture*(self: BaseMaterial3D; param: BaseMaterial3D_TextureParam; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_texture", 464208135)
  methodbind.ptrcall(self, [getPtr param, getPtr texture], void)

proc getTexture*(self: BaseMaterial3D; param: BaseMaterial3D_TextureParam): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_texture", 329605813)
  methodbind.ptrcall(self, [getPtr param], gdref Texture2D)

proc setDetailBlendMode*(self: BaseMaterial3D; detailBlendMode: BaseMaterial3D_BlendMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_detail_blend_mode", 2830186259)
  methodbind.ptrcall(self, [getPtr detailBlendMode], void)

proc getDetailBlendMode*(self: BaseMaterial3D): BaseMaterial3D_BlendMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_detail_blend_mode", 4022690962)
  methodbind.ptrcall(self, [], BaseMaterial3D_BlendMode)

proc setUv1Scale*(self: BaseMaterial3D; scale: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_uv1_scale", 3460891852)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getUv1Scale*(self: BaseMaterial3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_uv1_scale", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setUv1Offset*(self: BaseMaterial3D; offset: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_uv1_offset", 3460891852)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getUv1Offset*(self: BaseMaterial3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_uv1_offset", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setUv1TriplanarBlendSharpness*(self: BaseMaterial3D; sharpness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_uv1_triplanar_blend_sharpness", 373806689)
  methodbind.ptrcall(self, [getPtr sharpness], void)

proc getUv1TriplanarBlendSharpness*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_uv1_triplanar_blend_sharpness", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setUv2Scale*(self: BaseMaterial3D; scale: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_uv2_scale", 3460891852)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getUv2Scale*(self: BaseMaterial3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_uv2_scale", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setUv2Offset*(self: BaseMaterial3D; offset: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_uv2_offset", 3460891852)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getUv2Offset*(self: BaseMaterial3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_uv2_offset", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setUv2TriplanarBlendSharpness*(self: BaseMaterial3D; sharpness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_uv2_triplanar_blend_sharpness", 373806689)
  methodbind.ptrcall(self, [getPtr sharpness], void)

proc getUv2TriplanarBlendSharpness*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_uv2_triplanar_blend_sharpness", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setBillboardMode*(self: BaseMaterial3D; mode: BaseMaterial3D_BillboardMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_billboard_mode", 4202036497)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getBillboardMode*(self: BaseMaterial3D): BaseMaterial3D_BillboardMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_billboard_mode", 1283840139)
  methodbind.ptrcall(self, [], BaseMaterial3D_BillboardMode)

proc setParticlesAnimHFrames*(self: BaseMaterial3D; frames: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_particles_anim_h_frames", 1286410249)
  methodbind.ptrcall(self, [getPtr frames], void)

proc getParticlesAnimHFrames*(self: BaseMaterial3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_particles_anim_h_frames", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setParticlesAnimVFrames*(self: BaseMaterial3D; frames: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_particles_anim_v_frames", 1286410249)
  methodbind.ptrcall(self, [getPtr frames], void)

proc getParticlesAnimVFrames*(self: BaseMaterial3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_particles_anim_v_frames", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setParticlesAnimLoop*(self: BaseMaterial3D; loop: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_particles_anim_loop", 2586408642)
  methodbind.ptrcall(self, [getPtr loop], void)

proc getParticlesAnimLoop*(self: BaseMaterial3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_particles_anim_loop", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHeightmapDeepParallax*(self: BaseMaterial3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_heightmap_deep_parallax", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isHeightmapDeepParallaxEnabled*(self: BaseMaterial3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "is_heightmap_deep_parallax_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHeightmapDeepParallaxMinLayers*(self: BaseMaterial3D; layer: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_heightmap_deep_parallax_min_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr layer], void)

proc getHeightmapDeepParallaxMinLayers*(self: BaseMaterial3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_heightmap_deep_parallax_min_layers", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setHeightmapDeepParallaxMaxLayers*(self: BaseMaterial3D; layer: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_heightmap_deep_parallax_max_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr layer], void)

proc getHeightmapDeepParallaxMaxLayers*(self: BaseMaterial3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_heightmap_deep_parallax_max_layers", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setHeightmapDeepParallaxFlipTangent*(self: BaseMaterial3D; flip: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_heightmap_deep_parallax_flip_tangent", 2586408642)
  methodbind.ptrcall(self, [getPtr flip], void)

proc getHeightmapDeepParallaxFlipTangent*(self: BaseMaterial3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_heightmap_deep_parallax_flip_tangent", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHeightmapDeepParallaxFlipBinormal*(self: BaseMaterial3D; flip: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_heightmap_deep_parallax_flip_binormal", 2586408642)
  methodbind.ptrcall(self, [getPtr flip], void)

proc getHeightmapDeepParallaxFlipBinormal*(self: BaseMaterial3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_heightmap_deep_parallax_flip_binormal", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setGrow*(self: BaseMaterial3D; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_grow", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getGrow*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_grow", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setEmissionOperator*(self: BaseMaterial3D; operator: BaseMaterial3D_EmissionOperator): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_emission_operator", 3825128922)
  methodbind.ptrcall(self, [getPtr operator], void)

proc getEmissionOperator*(self: BaseMaterial3D): BaseMaterial3D_EmissionOperator =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_emission_operator", 974205018)
  methodbind.ptrcall(self, [], BaseMaterial3D_EmissionOperator)

proc setAoLightAffect*(self: BaseMaterial3D; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_ao_light_affect", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getAoLightAffect*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_ao_light_affect", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAlphaScissorThreshold*(self: BaseMaterial3D; threshold: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_alpha_scissor_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr threshold], void)

proc getAlphaScissorThreshold*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_alpha_scissor_threshold", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAlphaHashScale*(self: BaseMaterial3D; threshold: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_alpha_hash_scale", 373806689)
  methodbind.ptrcall(self, [getPtr threshold], void)

proc getAlphaHashScale*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_alpha_hash_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setGrowEnabled*(self: BaseMaterial3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_grow_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isGrowEnabled*(self: BaseMaterial3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "is_grow_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMetallicTextureChannel*(self: BaseMaterial3D; channel: BaseMaterial3D_TextureChannel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_metallic_texture_channel", 744167988)
  methodbind.ptrcall(self, [getPtr channel], void)

proc getMetallicTextureChannel*(self: BaseMaterial3D): BaseMaterial3D_TextureChannel =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_metallic_texture_channel", 568133867)
  methodbind.ptrcall(self, [], BaseMaterial3D_TextureChannel)

proc setRoughnessTextureChannel*(self: BaseMaterial3D; channel: BaseMaterial3D_TextureChannel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_roughness_texture_channel", 744167988)
  methodbind.ptrcall(self, [getPtr channel], void)

proc getRoughnessTextureChannel*(self: BaseMaterial3D): BaseMaterial3D_TextureChannel =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_roughness_texture_channel", 568133867)
  methodbind.ptrcall(self, [], BaseMaterial3D_TextureChannel)

proc setAoTextureChannel*(self: BaseMaterial3D; channel: BaseMaterial3D_TextureChannel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_ao_texture_channel", 744167988)
  methodbind.ptrcall(self, [getPtr channel], void)

proc getAoTextureChannel*(self: BaseMaterial3D): BaseMaterial3D_TextureChannel =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_ao_texture_channel", 568133867)
  methodbind.ptrcall(self, [], BaseMaterial3D_TextureChannel)

proc setRefractionTextureChannel*(self: BaseMaterial3D; channel: BaseMaterial3D_TextureChannel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_refraction_texture_channel", 744167988)
  methodbind.ptrcall(self, [getPtr channel], void)

proc getRefractionTextureChannel*(self: BaseMaterial3D): BaseMaterial3D_TextureChannel =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_refraction_texture_channel", 568133867)
  methodbind.ptrcall(self, [], BaseMaterial3D_TextureChannel)

proc setProximityFadeEnabled*(self: BaseMaterial3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_proximity_fade_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isProximityFadeEnabled*(self: BaseMaterial3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "is_proximity_fade_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setProximityFadeDistance*(self: BaseMaterial3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_proximity_fade_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getProximityFadeDistance*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_proximity_fade_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMsdfPixelRange*(self: BaseMaterial3D; range: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_msdf_pixel_range", 373806689)
  methodbind.ptrcall(self, [getPtr range], void)

proc getMsdfPixelRange*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_msdf_pixel_range", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMsdfOutlineSize*(self: BaseMaterial3D; size: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_msdf_outline_size", 373806689)
  methodbind.ptrcall(self, [getPtr size], void)

proc getMsdfOutlineSize*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_msdf_outline_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDistanceFade*(self: BaseMaterial3D; mode: BaseMaterial3D_DistanceFadeMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_distance_fade", 1379478617)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getDistanceFade*(self: BaseMaterial3D): BaseMaterial3D_DistanceFadeMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_distance_fade", 2694575734)
  methodbind.ptrcall(self, [], BaseMaterial3D_DistanceFadeMode)

proc setDistanceFadeMaxDistance*(self: BaseMaterial3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_distance_fade_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getDistanceFadeMaxDistance*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_distance_fade_max_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDistanceFadeMinDistance*(self: BaseMaterial3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_distance_fade_min_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getDistanceFadeMinDistance*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_distance_fade_min_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setZClipScale*(self: BaseMaterial3D; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_z_clip_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getZClipScale*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_z_clip_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFovOverride*(self: BaseMaterial3D; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_fov_override", 373806689)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getFovOverride*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_fov_override", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setStencilMode*(self: BaseMaterial3D; stencilMode: BaseMaterial3D_StencilMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_stencil_mode", 2272367200)
  methodbind.ptrcall(self, [getPtr stencilMode], void)

proc getStencilMode*(self: BaseMaterial3D): BaseMaterial3D_StencilMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_stencil_mode", 2908443456)
  methodbind.ptrcall(self, [], BaseMaterial3D_StencilMode)

proc setStencilFlags*(self: BaseMaterial3D; stencilFlags: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_stencil_flags", 1286410249)
  methodbind.ptrcall(self, [getPtr stencilFlags], void)

proc getStencilFlags*(self: BaseMaterial3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_stencil_flags", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setStencilCompare*(self: BaseMaterial3D; stencilCompare: BaseMaterial3D_StencilCompare): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_stencil_compare", 3741726481)
  methodbind.ptrcall(self, [getPtr stencilCompare], void)

proc getStencilCompare*(self: BaseMaterial3D): BaseMaterial3D_StencilCompare =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_stencil_compare", 2824600492)
  methodbind.ptrcall(self, [], BaseMaterial3D_StencilCompare)

proc setStencilReference*(self: BaseMaterial3D; stencilReference: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_stencil_reference", 1286410249)
  methodbind.ptrcall(self, [getPtr stencilReference], void)

proc getStencilReference*(self: BaseMaterial3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_stencil_reference", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setStencilEffectColor*(self: BaseMaterial3D; stencilColor: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_stencil_effect_color", 2920490490)
  methodbind.ptrcall(self, [getPtr stencilColor], void)

proc getStencilEffectColor*(self: BaseMaterial3D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_stencil_effect_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setStencilEffectOutlineThickness*(self: BaseMaterial3D; stencilOutlineThickness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "set_stencil_effect_outline_thickness", 373806689)
  methodbind.ptrcall(self, [getPtr stencilOutlineThickness], void)

proc getStencilEffectOutlineThickness*(self: BaseMaterial3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseMaterial3D, "get_stencil_effect_outline_thickness", 1740695150)
  methodbind.ptrcall(self, [], Float)

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

template depthTest*(self: BaseMaterial3D): untyped = self.getDepthTest()
template `depthTest=`*(self: BaseMaterial3D; value) = self.setDepthTest(value)

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

template disableSpecularOcclusion*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(22))
template `disableSpecularOcclusion=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(22), value)

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

template bentNormalEnabled*(self: BaseMaterial3D): untyped = self.getFeature(BaseMaterial3D_Feature(12))
template `bentNormalEnabled=`*(self: BaseMaterial3D; value) = self.setFeature(BaseMaterial3D_Feature(12), value)

template bentNormalTexture*(self: BaseMaterial3D): untyped = self.getTexture(BaseMaterial3D_TextureParam(18))
template `bentNormalTexture=`*(self: BaseMaterial3D; value) = self.setTexture(BaseMaterial3D_TextureParam(18), value)

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

template useZClipScale*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(23))
template `useZClipScale=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(23), value)

template zClipScale*(self: BaseMaterial3D): untyped = self.getZClipScale()
template `zClipScale=`*(self: BaseMaterial3D; value) = self.setZClipScale(value)

template useFovOverride*(self: BaseMaterial3D): untyped = self.getFlag(BaseMaterial3D_Flags(24))
template `useFovOverride=`*(self: BaseMaterial3D; value) = self.setFlag(BaseMaterial3D_Flags(24), value)

template fovOverride*(self: BaseMaterial3D): untyped = self.getFovOverride()
template `fovOverride=`*(self: BaseMaterial3D; value) = self.setFovOverride(value)

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

template stencilMode*(self: BaseMaterial3D): untyped = self.getStencilMode()
template `stencilMode=`*(self: BaseMaterial3D; value) = self.setStencilMode(value)

template stencilFlags*(self: BaseMaterial3D): untyped = self.getStencilFlags()
template `stencilFlags=`*(self: BaseMaterial3D; value) = self.setStencilFlags(value)

template stencilCompare*(self: BaseMaterial3D): untyped = self.getStencilCompare()
template `stencilCompare=`*(self: BaseMaterial3D; value) = self.setStencilCompare(value)

template stencilReference*(self: BaseMaterial3D): untyped = self.getStencilReference()
template `stencilReference=`*(self: BaseMaterial3D; value) = self.setStencilReference(value)

template stencilColor*(self: BaseMaterial3D): untyped = self.getStencilEffectColor()
template `stencilColor=`*(self: BaseMaterial3D; value) = self.setStencilEffectColor(value)

template stencilOutlineThickness*(self: BaseMaterial3D): untyped = self.getStencilEffectOutlineThickness()
template `stencilOutlineThickness=`*(self: BaseMaterial3D; value) = self.setStencilEffectOutlineThickness(value)

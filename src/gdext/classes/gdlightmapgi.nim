{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

expandOnClassImported(LightmapGI, VisualInstance3D)

proc setLightData*(self: LightmapGI; data: gdref LightmapGIData): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_light_data", 1790597277)
  methodbind.ptrcall(self, [getPtr data], void)

proc getLightData*(self: LightmapGI): gdref LightmapGIData =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_light_data", 290354153)
  methodbind.ptrcall(self, [], gdref LightmapGIData)

proc setBakeQuality*(self: LightmapGI; bakeQuality: LightmapGI_BakeQuality): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_bake_quality", 1192215803)
  methodbind.ptrcall(self, [getPtr bakeQuality], void)

proc getBakeQuality*(self: LightmapGI): LightmapGI_BakeQuality =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_bake_quality", 688832735)
  methodbind.ptrcall(self, [], LightmapGI_BakeQuality)

proc setBounces*(self: LightmapGI; bounces: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_bounces", 1286410249)
  methodbind.ptrcall(self, [getPtr bounces], void)

proc getBounces*(self: LightmapGI): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_bounces", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setBounceIndirectEnergy*(self: LightmapGI; bounceIndirectEnergy: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_bounce_indirect_energy", 373806689)
  methodbind.ptrcall(self, [getPtr bounceIndirectEnergy], void)

proc getBounceIndirectEnergy*(self: LightmapGI): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_bounce_indirect_energy", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setGenerateProbes*(self: LightmapGI; subdivision: LightmapGI_GenerateProbes): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_generate_probes", 549981046)
  methodbind.ptrcall(self, [getPtr subdivision], void)

proc getGenerateProbes*(self: LightmapGI): LightmapGI_GenerateProbes =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_generate_probes", 3930596226)
  methodbind.ptrcall(self, [], LightmapGI_GenerateProbes)

proc setBias*(self: LightmapGI; bias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_bias", 373806689)
  methodbind.ptrcall(self, [getPtr bias], void)

proc getBias*(self: LightmapGI): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_bias", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setEnvironmentMode*(self: LightmapGI; mode: LightmapGI_EnvironmentMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_environment_mode", 2282650285)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getEnvironmentMode*(self: LightmapGI): LightmapGI_EnvironmentMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_environment_mode", 4128646479)
  methodbind.ptrcall(self, [], LightmapGI_EnvironmentMode)

proc setEnvironmentCustomSky*(self: LightmapGI; sky: gdref Sky): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_environment_custom_sky", 3336722921)
  methodbind.ptrcall(self, [getPtr sky], void)

proc getEnvironmentCustomSky*(self: LightmapGI): gdref Sky =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_environment_custom_sky", 1177136966)
  methodbind.ptrcall(self, [], gdref Sky)

proc setEnvironmentCustomColor*(self: LightmapGI; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_environment_custom_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getEnvironmentCustomColor*(self: LightmapGI): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_environment_custom_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setEnvironmentCustomEnergy*(self: LightmapGI; energy: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_environment_custom_energy", 373806689)
  methodbind.ptrcall(self, [getPtr energy], void)

proc getEnvironmentCustomEnergy*(self: LightmapGI): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_environment_custom_energy", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTexelScale*(self: LightmapGI; texelScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_texel_scale", 373806689)
  methodbind.ptrcall(self, [getPtr texelScale], void)

proc getTexelScale*(self: LightmapGI): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_texel_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMaxTextureSize*(self: LightmapGI; maxTextureSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_max_texture_size", 1286410249)
  methodbind.ptrcall(self, [getPtr maxTextureSize], void)

proc getMaxTextureSize*(self: LightmapGI): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_max_texture_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSupersamplingEnabled*(self: LightmapGI; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_supersampling_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSupersamplingEnabled*(self: LightmapGI): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "is_supersampling_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSupersamplingFactor*(self: LightmapGI; factor: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_supersampling_factor", 373806689)
  methodbind.ptrcall(self, [getPtr factor], void)

proc getSupersamplingFactor*(self: LightmapGI): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_supersampling_factor", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setUseDenoiser*(self: LightmapGI; useDenoiser: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_use_denoiser", 2586408642)
  methodbind.ptrcall(self, [getPtr useDenoiser], void)

proc isUsingDenoiser*(self: LightmapGI): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "is_using_denoiser", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDenoiserStrength*(self: LightmapGI; denoiserStrength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_denoiser_strength", 373806689)
  methodbind.ptrcall(self, [getPtr denoiserStrength], void)

proc getDenoiserStrength*(self: LightmapGI): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_denoiser_strength", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDenoiserRange*(self: LightmapGI; denoiserRange: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_denoiser_range", 1286410249)
  methodbind.ptrcall(self, [getPtr denoiserRange], void)

proc getDenoiserRange*(self: LightmapGI): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_denoiser_range", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setInterior*(self: LightmapGI; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_interior", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isInterior*(self: LightmapGI): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "is_interior", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDirectional*(self: LightmapGI; directional: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_directional", 2586408642)
  methodbind.ptrcall(self, [getPtr directional], void)

proc isDirectional*(self: LightmapGI): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "is_directional", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setShadowmaskMode*(self: LightmapGI; mode: LightmapGIData_ShadowmaskMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_shadowmask_mode", 3451066572)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getShadowmaskMode*(self: LightmapGI): LightmapGIData_ShadowmaskMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_shadowmask_mode", 785478560)
  methodbind.ptrcall(self, [], LightmapGIData_ShadowmaskMode)

proc setUseTextureForBounces*(self: LightmapGI; useTextureForBounces: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_use_texture_for_bounces", 2586408642)
  methodbind.ptrcall(self, [getPtr useTextureForBounces], void)

proc isUsingTextureForBounces*(self: LightmapGI): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "is_using_texture_for_bounces", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCameraAttributes*(self: LightmapGI; cameraAttributes: gdref CameraAttributes): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "set_camera_attributes", 2817810567)
  methodbind.ptrcall(self, [getPtr cameraAttributes], void)

proc getCameraAttributes*(self: LightmapGI): gdref CameraAttributes =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGI, "get_camera_attributes", 3921283215)
  methodbind.ptrcall(self, [], gdref CameraAttributes)

template quality*(self: LightmapGI): untyped = self.getBakeQuality()
template `quality=`*(self: LightmapGI; value) = self.setBakeQuality(value)

template supersampling*(self: LightmapGI): untyped = self.isSupersamplingEnabled()
template `supersampling=`*(self: LightmapGI; value) = self.setSupersamplingEnabled(value)

template supersamplingFactor*(self: LightmapGI): untyped = self.getSupersamplingFactor()
template `supersamplingFactor=`*(self: LightmapGI; value) = self.setSupersamplingFactor(value)

template bounces*(self: LightmapGI): untyped = self.getBounces()
template `bounces=`*(self: LightmapGI; value) = self.setBounces(value)

template bounceIndirectEnergy*(self: LightmapGI): untyped = self.getBounceIndirectEnergy()
template `bounceIndirectEnergy=`*(self: LightmapGI; value) = self.setBounceIndirectEnergy(value)

template directional*(self: LightmapGI): untyped = self.isDirectional()
template `directional=`*(self: LightmapGI; value) = self.setDirectional(value)

template shadowmaskMode*(self: LightmapGI): untyped = self.getShadowmaskMode()
template `shadowmaskMode=`*(self: LightmapGI; value) = self.setShadowmaskMode(value)

template useTextureForBounces*(self: LightmapGI): untyped = self.isUsingTextureForBounces()
template `useTextureForBounces=`*(self: LightmapGI; value) = self.setUseTextureForBounces(value)

template interior*(self: LightmapGI): untyped = self.isInterior()
template `interior=`*(self: LightmapGI; value) = self.setInterior(value)

template useDenoiser*(self: LightmapGI): untyped = self.isUsingDenoiser()
template `useDenoiser=`*(self: LightmapGI; value) = self.setUseDenoiser(value)

template denoiserStrength*(self: LightmapGI): untyped = self.getDenoiserStrength()
template `denoiserStrength=`*(self: LightmapGI; value) = self.setDenoiserStrength(value)

template denoiserRange*(self: LightmapGI): untyped = self.getDenoiserRange()
template `denoiserRange=`*(self: LightmapGI; value) = self.setDenoiserRange(value)

template bias*(self: LightmapGI): untyped = self.getBias()
template `bias=`*(self: LightmapGI; value) = self.setBias(value)

template texelScale*(self: LightmapGI): untyped = self.getTexelScale()
template `texelScale=`*(self: LightmapGI; value) = self.setTexelScale(value)

template maxTextureSize*(self: LightmapGI): untyped = self.getMaxTextureSize()
template `maxTextureSize=`*(self: LightmapGI; value) = self.setMaxTextureSize(value)

template environmentMode*(self: LightmapGI): untyped = self.getEnvironmentMode()
template `environmentMode=`*(self: LightmapGI; value) = self.setEnvironmentMode(value)

template environmentCustomSky*(self: LightmapGI): untyped = self.getEnvironmentCustomSky()
template `environmentCustomSky=`*(self: LightmapGI; value) = self.setEnvironmentCustomSky(value)

template environmentCustomColor*(self: LightmapGI): untyped = self.getEnvironmentCustomColor()
template `environmentCustomColor=`*(self: LightmapGI; value) = self.setEnvironmentCustomColor(value)

template environmentCustomEnergy*(self: LightmapGI): untyped = self.getEnvironmentCustomEnergy()
template `environmentCustomEnergy=`*(self: LightmapGI; value) = self.setEnvironmentCustomEnergy(value)

template cameraAttributes*(self: LightmapGI): untyped = self.getCameraAttributes()
template `cameraAttributes=`*(self: LightmapGI; value) = self.setCameraAttributes(value)

template generateProbesSubdiv*(self: LightmapGI): untyped = self.getGenerateProbes()
template `generateProbesSubdiv=`*(self: LightmapGI; value) = self.setGenerateProbes(value)

template lightData*(self: LightmapGI): untyped = self.getLightData()
template `lightData=`*(self: LightmapGI; value) = self.setLightData(value)

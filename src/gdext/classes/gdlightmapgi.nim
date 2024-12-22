{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setLightData*(self: LightmapGI; data: gdref LightmapGIData): void =
  expandMethodBind(className LightmapGI, "set_light_data", 1790597277)
  var `?param` = [getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLightData*(self: LightmapGI): gdref LightmapGIData =
  expandMethodBind(className LightmapGI, "get_light_data", 290354153)
  var ret: encoded gdref LightmapGIData
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref LightmapGIData)

proc setBakeQuality*(self: LightmapGI; bakeQuality: LightmapGI_BakeQuality): void =
  expandMethodBind(className LightmapGI, "set_bake_quality", 1192215803)
  var `?param` = [getPtr bakeQuality]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBakeQuality*(self: LightmapGI): LightmapGI_BakeQuality =
  expandMethodBind(className LightmapGI, "get_bake_quality", 688832735)
  var ret: encoded LightmapGI_BakeQuality
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(LightmapGI_BakeQuality)

proc setBounces*(self: LightmapGI; bounces: int32): void =
  expandMethodBind(className LightmapGI, "set_bounces", 1286410249)
  var `?param` = [getPtr bounces]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBounces*(self: LightmapGI): int32 =
  expandMethodBind(className LightmapGI, "get_bounces", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setBounceIndirectEnergy*(self: LightmapGI; bounceIndirectEnergy: Float): void =
  expandMethodBind(className LightmapGI, "set_bounce_indirect_energy", 373806689)
  var `?param` = [getPtr bounceIndirectEnergy]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBounceIndirectEnergy*(self: LightmapGI): Float =
  expandMethodBind(className LightmapGI, "get_bounce_indirect_energy", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setGenerateProbes*(self: LightmapGI; subdivision: LightmapGI_GenerateProbes): void =
  expandMethodBind(className LightmapGI, "set_generate_probes", 549981046)
  var `?param` = [getPtr subdivision]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGenerateProbes*(self: LightmapGI): LightmapGI_GenerateProbes =
  expandMethodBind(className LightmapGI, "get_generate_probes", 3930596226)
  var ret: encoded LightmapGI_GenerateProbes
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(LightmapGI_GenerateProbes)

proc setBias*(self: LightmapGI; bias: Float): void =
  expandMethodBind(className LightmapGI, "set_bias", 373806689)
  var `?param` = [getPtr bias]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBias*(self: LightmapGI): Float =
  expandMethodBind(className LightmapGI, "get_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEnvironmentMode*(self: LightmapGI; mode: LightmapGI_EnvironmentMode): void =
  expandMethodBind(className LightmapGI, "set_environment_mode", 2282650285)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnvironmentMode*(self: LightmapGI): LightmapGI_EnvironmentMode =
  expandMethodBind(className LightmapGI, "get_environment_mode", 4128646479)
  var ret: encoded LightmapGI_EnvironmentMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(LightmapGI_EnvironmentMode)

proc setEnvironmentCustomSky*(self: LightmapGI; sky: gdref Sky): void =
  expandMethodBind(className LightmapGI, "set_environment_custom_sky", 3336722921)
  var `?param` = [getPtr sky]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnvironmentCustomSky*(self: LightmapGI): gdref Sky =
  expandMethodBind(className LightmapGI, "get_environment_custom_sky", 1177136966)
  var ret: encoded gdref Sky
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Sky)

proc setEnvironmentCustomColor*(self: LightmapGI; color: Color): void =
  expandMethodBind(className LightmapGI, "set_environment_custom_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnvironmentCustomColor*(self: LightmapGI): Color =
  expandMethodBind(className LightmapGI, "get_environment_custom_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setEnvironmentCustomEnergy*(self: LightmapGI; energy: Float): void =
  expandMethodBind(className LightmapGI, "set_environment_custom_energy", 373806689)
  var `?param` = [getPtr energy]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnvironmentCustomEnergy*(self: LightmapGI): Float =
  expandMethodBind(className LightmapGI, "get_environment_custom_energy", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTexelScale*(self: LightmapGI; texelScale: Float): void =
  expandMethodBind(className LightmapGI, "set_texel_scale", 373806689)
  var `?param` = [getPtr texelScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexelScale*(self: LightmapGI): Float =
  expandMethodBind(className LightmapGI, "get_texel_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMaxTextureSize*(self: LightmapGI; maxTextureSize: int32): void =
  expandMethodBind(className LightmapGI, "set_max_texture_size", 1286410249)
  var `?param` = [getPtr maxTextureSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxTextureSize*(self: LightmapGI): int32 =
  expandMethodBind(className LightmapGI, "get_max_texture_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setUseDenoiser*(self: LightmapGI; useDenoiser: bool): void =
  expandMethodBind(className LightmapGI, "set_use_denoiser", 2586408642)
  var `?param` = [getPtr useDenoiser]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingDenoiser*(self: LightmapGI): bool =
  expandMethodBind(className LightmapGI, "is_using_denoiser", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDenoiserStrength*(self: LightmapGI; denoiserStrength: Float): void =
  expandMethodBind(className LightmapGI, "set_denoiser_strength", 373806689)
  var `?param` = [getPtr denoiserStrength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDenoiserStrength*(self: LightmapGI): Float =
  expandMethodBind(className LightmapGI, "get_denoiser_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDenoiserRange*(self: LightmapGI; denoiserRange: int32): void =
  expandMethodBind(className LightmapGI, "set_denoiser_range", 1286410249)
  var `?param` = [getPtr denoiserRange]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDenoiserRange*(self: LightmapGI): int32 =
  expandMethodBind(className LightmapGI, "get_denoiser_range", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setInterior*(self: LightmapGI; enable: bool): void =
  expandMethodBind(className LightmapGI, "set_interior", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isInterior*(self: LightmapGI): bool =
  expandMethodBind(className LightmapGI, "is_interior", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDirectional*(self: LightmapGI; directional: bool): void =
  expandMethodBind(className LightmapGI, "set_directional", 2586408642)
  var `?param` = [getPtr directional]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDirectional*(self: LightmapGI): bool =
  expandMethodBind(className LightmapGI, "is_directional", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUseTextureForBounces*(self: LightmapGI; useTextureForBounces: bool): void =
  expandMethodBind(className LightmapGI, "set_use_texture_for_bounces", 2586408642)
  var `?param` = [getPtr useTextureForBounces]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingTextureForBounces*(self: LightmapGI): bool =
  expandMethodBind(className LightmapGI, "is_using_texture_for_bounces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCameraAttributes*(self: LightmapGI; cameraAttributes: gdref CameraAttributes): void =
  expandMethodBind(className LightmapGI, "set_camera_attributes", 2817810567)
  var `?param` = [getPtr cameraAttributes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCameraAttributes*(self: LightmapGI): gdref CameraAttributes =
  expandMethodBind(className LightmapGI, "get_camera_attributes", 3921283215)
  var ret: encoded gdref CameraAttributes
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref CameraAttributes)

template quality*(self: LightmapGI): untyped = self.getBakeQuality()
template `quality=`*(self: LightmapGI; value) = self.setBakeQuality(value)

template bounces*(self: LightmapGI): untyped = self.getBounces()
template `bounces=`*(self: LightmapGI; value) = self.setBounces(value)

template bounceIndirectEnergy*(self: LightmapGI): untyped = self.getBounceIndirectEnergy()
template `bounceIndirectEnergy=`*(self: LightmapGI; value) = self.setBounceIndirectEnergy(value)

template directional*(self: LightmapGI): untyped = self.isDirectional()
template `directional=`*(self: LightmapGI; value) = self.setDirectional(value)

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

const LightmapGI_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[LightmapGI]): Table[string, string] = LightmapGI_vmap
{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setLightData*(self: LightmapGi; data: gdref LightmapGiData): void =
  expandMethodBind(className LightmapGi, "set_light_data", 1790597277)
  var `?param` = [getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLightData*(self: LightmapGi): gdref LightmapGiData =
  expandMethodBind(className LightmapGi, "get_light_data", 290354153)
  var ret: encoded gdref LightmapGiData
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref LightmapGiData)

proc setBakeQuality*(self: LightmapGi; bakeQuality: LightmapGi_BakeQuality): void =
  expandMethodBind(className LightmapGi, "set_bake_quality", 1192215803)
  var `?param` = [getPtr bakeQuality]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBakeQuality*(self: LightmapGi): LightmapGi_BakeQuality =
  expandMethodBind(className LightmapGi, "get_bake_quality", 688832735)
  var ret: encoded LightmapGi_BakeQuality
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(LightmapGi_BakeQuality)

proc setBounces*(self: LightmapGi; bounces: int32): void =
  expandMethodBind(className LightmapGi, "set_bounces", 1286410249)
  var `?param` = [getPtr bounces]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBounces*(self: LightmapGi): int32 =
  expandMethodBind(className LightmapGi, "get_bounces", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setBounceIndirectEnergy*(self: LightmapGi; bounceIndirectEnergy: Float): void =
  expandMethodBind(className LightmapGi, "set_bounce_indirect_energy", 373806689)
  var `?param` = [getPtr bounceIndirectEnergy]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBounceIndirectEnergy*(self: LightmapGi): Float =
  expandMethodBind(className LightmapGi, "get_bounce_indirect_energy", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setGenerateProbes*(self: LightmapGi; subdivision: LightmapGi_GenerateProbes): void =
  expandMethodBind(className LightmapGi, "set_generate_probes", 549981046)
  var `?param` = [getPtr subdivision]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGenerateProbes*(self: LightmapGi): LightmapGi_GenerateProbes =
  expandMethodBind(className LightmapGi, "get_generate_probes", 3930596226)
  var ret: encoded LightmapGi_GenerateProbes
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(LightmapGi_GenerateProbes)

proc setBias*(self: LightmapGi; bias: Float): void =
  expandMethodBind(className LightmapGi, "set_bias", 373806689)
  var `?param` = [getPtr bias]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBias*(self: LightmapGi): Float =
  expandMethodBind(className LightmapGi, "get_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEnvironmentMode*(self: LightmapGi; mode: LightmapGi_EnvironmentMode): void =
  expandMethodBind(className LightmapGi, "set_environment_mode", 2282650285)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnvironmentMode*(self: LightmapGi): LightmapGi_EnvironmentMode =
  expandMethodBind(className LightmapGi, "get_environment_mode", 4128646479)
  var ret: encoded LightmapGi_EnvironmentMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(LightmapGi_EnvironmentMode)

proc setEnvironmentCustomSky*(self: LightmapGi; sky: gdref Sky): void =
  expandMethodBind(className LightmapGi, "set_environment_custom_sky", 3336722921)
  var `?param` = [getPtr sky]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnvironmentCustomSky*(self: LightmapGi): gdref Sky =
  expandMethodBind(className LightmapGi, "get_environment_custom_sky", 1177136966)
  var ret: encoded gdref Sky
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Sky)

proc setEnvironmentCustomColor*(self: LightmapGi; color: Color): void =
  expandMethodBind(className LightmapGi, "set_environment_custom_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnvironmentCustomColor*(self: LightmapGi): Color =
  expandMethodBind(className LightmapGi, "get_environment_custom_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setEnvironmentCustomEnergy*(self: LightmapGi; energy: Float): void =
  expandMethodBind(className LightmapGi, "set_environment_custom_energy", 373806689)
  var `?param` = [getPtr energy]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnvironmentCustomEnergy*(self: LightmapGi): Float =
  expandMethodBind(className LightmapGi, "get_environment_custom_energy", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTexelScale*(self: LightmapGi; texelScale: Float): void =
  expandMethodBind(className LightmapGi, "set_texel_scale", 373806689)
  var `?param` = [getPtr texelScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexelScale*(self: LightmapGi): Float =
  expandMethodBind(className LightmapGi, "get_texel_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMaxTextureSize*(self: LightmapGi; maxTextureSize: int32): void =
  expandMethodBind(className LightmapGi, "set_max_texture_size", 1286410249)
  var `?param` = [getPtr maxTextureSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxTextureSize*(self: LightmapGi): int32 =
  expandMethodBind(className LightmapGi, "get_max_texture_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setUseDenoiser*(self: LightmapGi; useDenoiser: bool): void =
  expandMethodBind(className LightmapGi, "set_use_denoiser", 2586408642)
  var `?param` = [getPtr useDenoiser]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingDenoiser*(self: LightmapGi): bool =
  expandMethodBind(className LightmapGi, "is_using_denoiser", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDenoiserStrength*(self: LightmapGi; denoiserStrength: Float): void =
  expandMethodBind(className LightmapGi, "set_denoiser_strength", 373806689)
  var `?param` = [getPtr denoiserStrength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDenoiserStrength*(self: LightmapGi): Float =
  expandMethodBind(className LightmapGi, "get_denoiser_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDenoiserRange*(self: LightmapGi; denoiserRange: int32): void =
  expandMethodBind(className LightmapGi, "set_denoiser_range", 1286410249)
  var `?param` = [getPtr denoiserRange]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDenoiserRange*(self: LightmapGi): int32 =
  expandMethodBind(className LightmapGi, "get_denoiser_range", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setInterior*(self: LightmapGi; enable: bool): void =
  expandMethodBind(className LightmapGi, "set_interior", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isInterior*(self: LightmapGi): bool =
  expandMethodBind(className LightmapGi, "is_interior", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDirectional*(self: LightmapGi; directional: bool): void =
  expandMethodBind(className LightmapGi, "set_directional", 2586408642)
  var `?param` = [getPtr directional]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDirectional*(self: LightmapGi): bool =
  expandMethodBind(className LightmapGi, "is_directional", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUseTextureForBounces*(self: LightmapGi; useTextureForBounces: bool): void =
  expandMethodBind(className LightmapGi, "set_use_texture_for_bounces", 2586408642)
  var `?param` = [getPtr useTextureForBounces]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingTextureForBounces*(self: LightmapGi): bool =
  expandMethodBind(className LightmapGi, "is_using_texture_for_bounces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCameraAttributes*(self: LightmapGi; cameraAttributes: gdref CameraAttributes): void =
  expandMethodBind(className LightmapGi, "set_camera_attributes", 2817810567)
  var `?param` = [getPtr cameraAttributes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCameraAttributes*(self: LightmapGi): gdref CameraAttributes =
  expandMethodBind(className LightmapGi, "get_camera_attributes", 3921283215)
  var ret: encoded gdref CameraAttributes
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref CameraAttributes)

template quality*(self: LightmapGi): untyped = self.getBakeQuality()
template `quality=`*(self: LightmapGi; value) = self.setBakeQuality(value)

template bounces*(self: LightmapGi): untyped = self.getBounces()
template `bounces=`*(self: LightmapGi; value) = self.setBounces(value)

template bounceIndirectEnergy*(self: LightmapGi): untyped = self.getBounceIndirectEnergy()
template `bounceIndirectEnergy=`*(self: LightmapGi; value) = self.setBounceIndirectEnergy(value)

template directional*(self: LightmapGi): untyped = self.isDirectional()
template `directional=`*(self: LightmapGi; value) = self.setDirectional(value)

template useTextureForBounces*(self: LightmapGi): untyped = self.isUsingTextureForBounces()
template `useTextureForBounces=`*(self: LightmapGi; value) = self.setUseTextureForBounces(value)

template interior*(self: LightmapGi): untyped = self.isInterior()
template `interior=`*(self: LightmapGi; value) = self.setInterior(value)

template useDenoiser*(self: LightmapGi): untyped = self.isUsingDenoiser()
template `useDenoiser=`*(self: LightmapGi; value) = self.setUseDenoiser(value)

template denoiserStrength*(self: LightmapGi): untyped = self.getDenoiserStrength()
template `denoiserStrength=`*(self: LightmapGi; value) = self.setDenoiserStrength(value)

template denoiserRange*(self: LightmapGi): untyped = self.getDenoiserRange()
template `denoiserRange=`*(self: LightmapGi; value) = self.setDenoiserRange(value)

template bias*(self: LightmapGi): untyped = self.getBias()
template `bias=`*(self: LightmapGi; value) = self.setBias(value)

template texelScale*(self: LightmapGi): untyped = self.getTexelScale()
template `texelScale=`*(self: LightmapGi; value) = self.setTexelScale(value)

template maxTextureSize*(self: LightmapGi): untyped = self.getMaxTextureSize()
template `maxTextureSize=`*(self: LightmapGi; value) = self.setMaxTextureSize(value)

template environmentMode*(self: LightmapGi): untyped = self.getEnvironmentMode()
template `environmentMode=`*(self: LightmapGi; value) = self.setEnvironmentMode(value)

template environmentCustomSky*(self: LightmapGi): untyped = self.getEnvironmentCustomSky()
template `environmentCustomSky=`*(self: LightmapGi; value) = self.setEnvironmentCustomSky(value)

template environmentCustomColor*(self: LightmapGi): untyped = self.getEnvironmentCustomColor()
template `environmentCustomColor=`*(self: LightmapGi; value) = self.setEnvironmentCustomColor(value)

template environmentCustomEnergy*(self: LightmapGi): untyped = self.getEnvironmentCustomEnergy()
template `environmentCustomEnergy=`*(self: LightmapGi; value) = self.setEnvironmentCustomEnergy(value)

template cameraAttributes*(self: LightmapGi): untyped = self.getCameraAttributes()
template `cameraAttributes=`*(self: LightmapGi; value) = self.setCameraAttributes(value)

template generateProbesSubdiv*(self: LightmapGi): untyped = self.getGenerateProbes()
template `generateProbesSubdiv=`*(self: LightmapGi; value) = self.setGenerateProbes(value)

template lightData*(self: LightmapGi): untyped = self.getLightData()
template `lightData=`*(self: LightmapGi; value) = self.setLightData(value)

const LightmapGi_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[LightmapGi]): Table[string, string] = LightmapGi_vmap
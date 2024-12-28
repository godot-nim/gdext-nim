{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setEditorOnly*(self: Light3D; editorOnly: bool): void =
  expandMethodBind(className Light3D, "set_editor_only", 2586408642)
  methodbind.ptrcall(self, [getPtr editorOnly])

proc isEditorOnly*(self: Light3D): bool =
  expandMethodBind(className Light3D, "is_editor_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setParam*(self: Light3D; param: Light3D_Param; value: Float): void =
  expandMethodBind(className Light3D, "set_param", 1722734213)
  methodbind.ptrcall(self, [getPtr param, getPtr value])

proc getParam*(self: Light3D; param: Light3D_Param): Float =
  expandMethodBind(className Light3D, "get_param", 1844084987)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr param], addr ret)
  (addr ret).decode_result(Float)

proc setShadow*(self: Light3D; enabled: bool): void =
  expandMethodBind(className Light3D, "set_shadow", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc hasShadow*(self: Light3D): bool =
  expandMethodBind(className Light3D, "has_shadow", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setNegative*(self: Light3D; enabled: bool): void =
  expandMethodBind(className Light3D, "set_negative", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isNegative*(self: Light3D): bool =
  expandMethodBind(className Light3D, "is_negative", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCullMask*(self: Light3D; cullMask: uint32): void =
  expandMethodBind(className Light3D, "set_cull_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr cullMask])

proc getCullMask*(self: Light3D): uint32 =
  expandMethodBind(className Light3D, "get_cull_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setEnableDistanceFade*(self: Light3D; enable: bool): void =
  expandMethodBind(className Light3D, "set_enable_distance_fade", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isDistanceFadeEnabled*(self: Light3D): bool =
  expandMethodBind(className Light3D, "is_distance_fade_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDistanceFadeBegin*(self: Light3D; distance: Float): void =
  expandMethodBind(className Light3D, "set_distance_fade_begin", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getDistanceFadeBegin*(self: Light3D): Float =
  expandMethodBind(className Light3D, "get_distance_fade_begin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDistanceFadeShadow*(self: Light3D; distance: Float): void =
  expandMethodBind(className Light3D, "set_distance_fade_shadow", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getDistanceFadeShadow*(self: Light3D): Float =
  expandMethodBind(className Light3D, "get_distance_fade_shadow", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDistanceFadeLength*(self: Light3D; distance: Float): void =
  expandMethodBind(className Light3D, "set_distance_fade_length", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getDistanceFadeLength*(self: Light3D): Float =
  expandMethodBind(className Light3D, "get_distance_fade_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setColor*(self: Light3D; color: Color): void =
  expandMethodBind(className Light3D, "set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getColor*(self: Light3D): Color =
  expandMethodBind(className Light3D, "get_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setShadowReverseCullFace*(self: Light3D; enable: bool): void =
  expandMethodBind(className Light3D, "set_shadow_reverse_cull_face", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getShadowReverseCullFace*(self: Light3D): bool =
  expandMethodBind(className Light3D, "get_shadow_reverse_cull_face", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setBakeMode*(self: Light3D; bakeMode: Light3D_BakeMode): void =
  expandMethodBind(className Light3D, "set_bake_mode", 37739303)
  methodbind.ptrcall(self, [getPtr bakeMode])

proc getBakeMode*(self: Light3D): Light3D_BakeMode =
  expandMethodBind(className Light3D, "get_bake_mode", 371737608)
  var ret: encoded Light3D_BakeMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Light3D_BakeMode)

proc setProjector*(self: Light3D; projector: gdref Texture2D): void =
  expandMethodBind(className Light3D, "set_projector", 4051416890)
  methodbind.ptrcall(self, [getPtr projector])

proc getProjector*(self: Light3D): gdref Texture2D =
  expandMethodBind(className Light3D, "get_projector", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setTemperature*(self: Light3D; temperature: Float): void =
  expandMethodBind(className Light3D, "set_temperature", 373806689)
  methodbind.ptrcall(self, [getPtr temperature])

proc getTemperature*(self: Light3D): Float =
  expandMethodBind(className Light3D, "get_temperature", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getCorrelatedColor*(self: Light3D): Color =
  expandMethodBind(className Light3D, "get_correlated_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

template lightIntensityLumens*(self: Light3D): untyped = self.getParam(Light3D_Param(20))
template `lightIntensityLumens=`*(self: Light3D; value) = self.setParam(Light3D_Param(20), value)

template lightIntensityLux*(self: Light3D): untyped = self.getParam(Light3D_Param(20))
template `lightIntensityLux=`*(self: Light3D; value) = self.setParam(Light3D_Param(20), value)

template lightTemperature*(self: Light3D): untyped = self.getTemperature()
template `lightTemperature=`*(self: Light3D; value) = self.setTemperature(value)

template lightColor*(self: Light3D): untyped = self.getColor()
template `lightColor=`*(self: Light3D; value) = self.setColor(value)

template lightEnergy*(self: Light3D): untyped = self.getParam(Light3D_Param(0))
template `lightEnergy=`*(self: Light3D; value) = self.setParam(Light3D_Param(0), value)

template lightIndirectEnergy*(self: Light3D): untyped = self.getParam(Light3D_Param(1))
template `lightIndirectEnergy=`*(self: Light3D; value) = self.setParam(Light3D_Param(1), value)

template lightVolumetricFogEnergy*(self: Light3D): untyped = self.getParam(Light3D_Param(2))
template `lightVolumetricFogEnergy=`*(self: Light3D; value) = self.setParam(Light3D_Param(2), value)

template lightProjector*(self: Light3D): untyped = self.getProjector()
template `lightProjector=`*(self: Light3D; value) = self.setProjector(value)

template lightSize*(self: Light3D): untyped = self.getParam(Light3D_Param(5))
template `lightSize=`*(self: Light3D; value) = self.setParam(Light3D_Param(5), value)

template lightAngularDistance*(self: Light3D): untyped = self.getParam(Light3D_Param(5))
template `lightAngularDistance=`*(self: Light3D; value) = self.setParam(Light3D_Param(5), value)

template lightNegative*(self: Light3D): untyped = self.isNegative()
template `lightNegative=`*(self: Light3D; value) = self.setNegative(value)

template lightSpecular*(self: Light3D): untyped = self.getParam(Light3D_Param(3))
template `lightSpecular=`*(self: Light3D; value) = self.setParam(Light3D_Param(3), value)

template lightBakeMode*(self: Light3D): untyped = self.getBakeMode()
template `lightBakeMode=`*(self: Light3D; value) = self.setBakeMode(value)

template lightCullMask*(self: Light3D): untyped = self.getCullMask()
template `lightCullMask=`*(self: Light3D; value) = self.setCullMask(value)

template shadowEnabled*(self: Light3D): untyped = self.hasShadow()
template `shadowEnabled=`*(self: Light3D; value) = self.setShadow(value)

template shadowBias*(self: Light3D): untyped = self.getParam(Light3D_Param(15))
template `shadowBias=`*(self: Light3D; value) = self.setParam(Light3D_Param(15), value)

template shadowNormalBias*(self: Light3D): untyped = self.getParam(Light3D_Param(14))
template `shadowNormalBias=`*(self: Light3D; value) = self.setParam(Light3D_Param(14), value)

template shadowReverseCullFace*(self: Light3D): untyped = self.getShadowReverseCullFace()
template `shadowReverseCullFace=`*(self: Light3D; value) = self.setShadowReverseCullFace(value)

template shadowTransmittanceBias*(self: Light3D): untyped = self.getParam(Light3D_Param(19))
template `shadowTransmittanceBias=`*(self: Light3D; value) = self.setParam(Light3D_Param(19), value)

template shadowOpacity*(self: Light3D): untyped = self.getParam(Light3D_Param(17))
template `shadowOpacity=`*(self: Light3D; value) = self.setParam(Light3D_Param(17), value)

template shadowBlur*(self: Light3D): untyped = self.getParam(Light3D_Param(18))
template `shadowBlur=`*(self: Light3D; value) = self.setParam(Light3D_Param(18), value)

template distanceFadeEnabled*(self: Light3D): untyped = self.isDistanceFadeEnabled()
template `distanceFadeEnabled=`*(self: Light3D; value) = self.setEnableDistanceFade(value)

template distanceFadeBegin*(self: Light3D): untyped = self.getDistanceFadeBegin()
template `distanceFadeBegin=`*(self: Light3D; value) = self.setDistanceFadeBegin(value)

template distanceFadeShadow*(self: Light3D): untyped = self.getDistanceFadeShadow()
template `distanceFadeShadow=`*(self: Light3D; value) = self.setDistanceFadeShadow(value)

template distanceFadeLength*(self: Light3D): untyped = self.getDistanceFadeLength()
template `distanceFadeLength=`*(self: Light3D; value) = self.setDistanceFadeLength(value)

template editorOnly*(self: Light3D): untyped = self.isEditorOnly()
template `editorOnly=`*(self: Light3D; value) = self.setEditorOnly(value)

const Light3D_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Light3D]): Table[string, string] = Light3D_vmap
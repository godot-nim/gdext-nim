{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdlight3d; export gdlight3d
export DirectionalLight3D

proc setShadowMode*(self: DirectionalLight3D; mode: DirectionalLight3D_ShadowMode): void =
  expandMethodBind(className DirectionalLight3D, "set_shadow_mode", 1261211726)
  methodbind.ptrcall(self, [getPtr mode])

proc getShadowMode*(self: DirectionalLight3D): DirectionalLight3D_ShadowMode =
  expandMethodBind(className DirectionalLight3D, "get_shadow_mode", 2765228544)
  var ret: encoded DirectionalLight3D_ShadowMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(DirectionalLight3D_ShadowMode)

proc setBlendSplits*(self: DirectionalLight3D; enabled: bool): void =
  expandMethodBind(className DirectionalLight3D, "set_blend_splits", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isBlendSplitsEnabled*(self: DirectionalLight3D): bool =
  expandMethodBind(className DirectionalLight3D, "is_blend_splits_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setSkyMode*(self: DirectionalLight3D; mode: DirectionalLight3D_SkyMode): void =
  expandMethodBind(className DirectionalLight3D, "set_sky_mode", 2691194817)
  methodbind.ptrcall(self, [getPtr mode])

proc getSkyMode*(self: DirectionalLight3D): DirectionalLight3D_SkyMode =
  expandMethodBind(className DirectionalLight3D, "get_sky_mode", 3819982774)
  var ret: encoded DirectionalLight3D_SkyMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(DirectionalLight3D_SkyMode)

template directionalShadowMode*(self: DirectionalLight3D): untyped = self.getShadowMode()
template `directionalShadowMode=`*(self: DirectionalLight3D; value) = self.setShadowMode(value)

template directionalShadowSplit1*(self: DirectionalLight3D): untyped = self.getParam(Light3D_Param(10))
template `directionalShadowSplit1=`*(self: DirectionalLight3D; value) = self.setParam(Light3D_Param(10), value)

template directionalShadowSplit2*(self: DirectionalLight3D): untyped = self.getParam(Light3D_Param(11))
template `directionalShadowSplit2=`*(self: DirectionalLight3D; value) = self.setParam(Light3D_Param(11), value)

template directionalShadowSplit3*(self: DirectionalLight3D): untyped = self.getParam(Light3D_Param(12))
template `directionalShadowSplit3=`*(self: DirectionalLight3D; value) = self.setParam(Light3D_Param(12), value)

template directionalShadowBlendSplits*(self: DirectionalLight3D): untyped = self.isBlendSplitsEnabled()
template `directionalShadowBlendSplits=`*(self: DirectionalLight3D; value) = self.setBlendSplits(value)

template directionalShadowFadeStart*(self: DirectionalLight3D): untyped = self.getParam(Light3D_Param(13))
template `directionalShadowFadeStart=`*(self: DirectionalLight3D; value) = self.setParam(Light3D_Param(13), value)

template directionalShadowMaxDistance*(self: DirectionalLight3D): untyped = self.getParam(Light3D_Param(9))
template `directionalShadowMaxDistance=`*(self: DirectionalLight3D; value) = self.setParam(Light3D_Param(9), value)

template directionalShadowPancakeSize*(self: DirectionalLight3D): untyped = self.getParam(Light3D_Param(16))
template `directionalShadowPancakeSize=`*(self: DirectionalLight3D; value) = self.setParam(Light3D_Param(16), value)

template skyMode*(self: DirectionalLight3D): untyped = self.getSkyMode()
template `skyMode=`*(self: DirectionalLight3D; value) = self.setSkyMode(value)

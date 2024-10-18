{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdlight3d; export gdlight3d

proc setShadowMode*(self: DirectionalLight3D; mode: DirectionalLight3D_ShadowMode): void =
  expandMethodBind(className DirectionalLight3D, "set_shadow_mode", 1261211726)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShadowMode*(self: DirectionalLight3D): DirectionalLight3D_ShadowMode =
  expandMethodBind(className DirectionalLight3D, "get_shadow_mode", 2765228544)
  var ret: encoded DirectionalLight3D_ShadowMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(DirectionalLight3D_ShadowMode)

proc setBlendSplits*(self: DirectionalLight3D; enabled: bool): void =
  expandMethodBind(className DirectionalLight3D, "set_blend_splits", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isBlendSplitsEnabled*(self: DirectionalLight3D): bool =
  expandMethodBind(className DirectionalLight3D, "is_blend_splits_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSkyMode*(self: DirectionalLight3D; mode: DirectionalLight3D_SkyMode): void =
  expandMethodBind(className DirectionalLight3D, "set_sky_mode", 2691194817)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkyMode*(self: DirectionalLight3D): DirectionalLight3D_SkyMode =
  expandMethodBind(className DirectionalLight3D, "get_sky_mode", 3819982774)
  var ret: encoded DirectionalLight3D_SkyMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(DirectionalLight3D_SkyMode)

template directionalShadowMode*(self: DirectionalLight3D): untyped = self.getShadowMode()
template `directionalShadowMode=`*(self: DirectionalLight3D; value) = self.setShadowMode(value)

template directionalShadowSplit1*(self: DirectionalLight3D): untyped = self.getParam(10)
template `directionalShadowSplit1=`*(self: DirectionalLight3D; value) = self.setParam(10, value)

template directionalShadowSplit2*(self: DirectionalLight3D): untyped = self.getParam(11)
template `directionalShadowSplit2=`*(self: DirectionalLight3D; value) = self.setParam(11, value)

template directionalShadowSplit3*(self: DirectionalLight3D): untyped = self.getParam(12)
template `directionalShadowSplit3=`*(self: DirectionalLight3D; value) = self.setParam(12, value)

template directionalShadowBlendSplits*(self: DirectionalLight3D): untyped = self.isBlendSplitsEnabled()
template `directionalShadowBlendSplits=`*(self: DirectionalLight3D; value) = self.setBlendSplits(value)

template directionalShadowFadeStart*(self: DirectionalLight3D): untyped = self.getParam(13)
template `directionalShadowFadeStart=`*(self: DirectionalLight3D; value) = self.setParam(13, value)

template directionalShadowMaxDistance*(self: DirectionalLight3D): untyped = self.getParam(9)
template `directionalShadowMaxDistance=`*(self: DirectionalLight3D; value) = self.setParam(9, value)

template directionalShadowPancakeSize*(self: DirectionalLight3D): untyped = self.getParam(16)
template `directionalShadowPancakeSize=`*(self: DirectionalLight3D; value) = self.setParam(16, value)

template skyMode*(self: DirectionalLight3D): untyped = self.getSkyMode()
template `skyMode=`*(self: DirectionalLight3D; value) = self.setSkyMode(value)

const DirectionalLight3D_vmap =
  Light3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[DirectionalLight3D]): Table[string, string] = DirectionalLight3D_vmap
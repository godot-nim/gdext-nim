{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdlight3d; export gdlight3d

proc setShadowMode*(self: OmniLight3D; mode: OmniLight3D_ShadowMode): void =
  expandMethodBind(className OmniLight3D, "set_shadow_mode", 121862228)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShadowMode*(self: OmniLight3D): OmniLight3D_ShadowMode =
  expandMethodBind(className OmniLight3D, "get_shadow_mode", 4181586331)
  var ret: encoded OmniLight3D_ShadowMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(OmniLight3D_ShadowMode)

template omniRange*(self: OmniLight3D): untyped = self.getParam(4)
template `omniRange=`*(self: OmniLight3D; value) = self.setParam(4, value)

template omniAttenuation*(self: OmniLight3D): untyped = self.getParam(6)
template `omniAttenuation=`*(self: OmniLight3D; value) = self.setParam(6, value)

template omniShadowMode*(self: OmniLight3D): untyped = self.getShadowMode()
template `omniShadowMode=`*(self: OmniLight3D; value) = self.setShadowMode(value)

const OmniLight3D_vmap =
  Light3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OmniLight3D]): Table[string, string] = OmniLight3D_vmap
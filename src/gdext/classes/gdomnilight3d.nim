{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdlight3d; export gdlight3d

expandOnClassImported(OmniLight3D, Light3D)

proc setShadowMode*(self: OmniLight3D; mode: OmniLight3D_ShadowMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OmniLight3D, "set_shadow_mode", 121862228)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getShadowMode*(self: OmniLight3D): OmniLight3D_ShadowMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OmniLight3D, "get_shadow_mode", 4181586331)
  methodbind.ptrcall(self, [], OmniLight3D_ShadowMode)

template omniRange*(self: OmniLight3D): untyped = self.getParam(Light3D_Param(4))
template `omniRange=`*(self: OmniLight3D; value) = self.setParam(Light3D_Param(4), value)

template omniAttenuation*(self: OmniLight3D): untyped = self.getParam(Light3D_Param(6))
template `omniAttenuation=`*(self: OmniLight3D; value) = self.setParam(Light3D_Param(6), value)

template omniShadowMode*(self: OmniLight3D): untyped = self.getShadowMode()
template `omniShadowMode=`*(self: OmniLight3D; value) = self.setShadowMode(value)

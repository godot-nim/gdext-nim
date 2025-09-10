{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdlight3d; export gdlight3d
export SpotLight3D

template spotRange*(self: SpotLight3D): untyped = self.getParam(Light3D_Param(4))
template `spotRange=`*(self: SpotLight3D; value) = self.setParam(Light3D_Param(4), value)

template spotAttenuation*(self: SpotLight3D): untyped = self.getParam(Light3D_Param(6))
template `spotAttenuation=`*(self: SpotLight3D; value) = self.setParam(Light3D_Param(6), value)

template spotAngle*(self: SpotLight3D): untyped = self.getParam(Light3D_Param(7))
template `spotAngle=`*(self: SpotLight3D; value) = self.setParam(Light3D_Param(7), value)

template spotAngleAttenuation*(self: SpotLight3D): untyped = self.getParam(Light3D_Param(8))
template `spotAngleAttenuation=`*(self: SpotLight3D; value) = self.setParam(Light3D_Param(8), value)

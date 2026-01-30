{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjointlimitation3d; export gdjointlimitation3d

expandOnClassImported(JointLimitationCone3D, JointLimitation3D)

proc setAngle*(self: JointLimitationCone3D; angle: Float): void =
  expandMethodBind(className JointLimitationCone3D, "set_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle])

proc getAngle*(self: JointLimitationCone3D): Float =
  expandMethodBind(className JointLimitationCone3D, "get_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template angle*(self: JointLimitationCone3D): untyped = self.getAngle()
template `angle=`*(self: JointLimitationCone3D; value) = self.setAngle(value)

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdchainik3d; export gdchainik3d

expandOnClassImported(IterateIK3D, ChainIK3D)

proc setMaxIterations*(self: IterateIK3D; maxIterations: int32): void =
  expandMethodBind(className IterateIK3D, "set_max_iterations", 1286410249)
  methodbind.ptrcall(self, [getPtr maxIterations])

proc getMaxIterations*(self: IterateIK3D): int32 =
  expandMethodBind(className IterateIK3D, "get_max_iterations", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setMinDistance*(self: IterateIK3D; minDistance: float64): void =
  expandMethodBind(className IterateIK3D, "set_min_distance", 373806689)
  methodbind.ptrcall(self, [getPtr minDistance])

proc getMinDistance*(self: IterateIK3D): float64 =
  expandMethodBind(className IterateIK3D, "get_min_distance", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setAngularDeltaLimit*(self: IterateIK3D; angularDeltaLimit: float64): void =
  expandMethodBind(className IterateIK3D, "set_angular_delta_limit", 373806689)
  methodbind.ptrcall(self, [getPtr angularDeltaLimit])

proc getAngularDeltaLimit*(self: IterateIK3D): float64 =
  expandMethodBind(className IterateIK3D, "get_angular_delta_limit", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setDeterministic*(self: IterateIK3D; deterministic: bool): void =
  expandMethodBind(className IterateIK3D, "set_deterministic", 2586408642)
  methodbind.ptrcall(self, [getPtr deterministic])

proc isDeterministic*(self: IterateIK3D): bool =
  expandMethodBind(className IterateIK3D, "is_deterministic", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTargetNode*(self: IterateIK3D; index: int32; targetNode: NodePath): void =
  expandMethodBind(className IterateIK3D, "set_target_node", 2761262315)
  methodbind.ptrcall(self, [getPtr index, getPtr targetNode])

proc getTargetNode*(self: IterateIK3D; index: int32): NodePath =
  expandMethodBind(className IterateIK3D, "get_target_node", 408788394)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(NodePath)

proc setJointRotationAxis*(self: IterateIK3D; index: int32; joint: int32; axis: SkeletonModifier3D_RotationAxis): void =
  expandMethodBind(className IterateIK3D, "set_joint_rotation_axis", 1391134969)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr axis])

proc getJointRotationAxis*(self: IterateIK3D; index: int32; joint: int32): SkeletonModifier3D_RotationAxis =
  expandMethodBind(className IterateIK3D, "get_joint_rotation_axis", 3312594080)
  var ret: encoded SkeletonModifier3D_RotationAxis
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(SkeletonModifier3D_RotationAxis)

proc setJointRotationAxisVector*(self: IterateIK3D; index: int32; joint: int32; axisVector: Vector3): void =
  expandMethodBind(className IterateIK3D, "set_joint_rotation_axis_vector", 2866752138)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr axisVector])

proc getJointRotationAxisVector*(self: IterateIK3D; index: int32; joint: int32): Vector3 =
  expandMethodBind(className IterateIK3D, "get_joint_rotation_axis_vector", 1592972041)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(Vector3)

proc setJointLimitation*(self: IterateIK3D; index: int32; joint: int32; limitation: gdref JointLimitation3D): void =
  expandMethodBind(className IterateIK3D, "set_joint_limitation", 1194636955)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr limitation])

proc getJointLimitation*(self: IterateIK3D; index: int32; joint: int32): gdref JointLimitation3D =
  expandMethodBind(className IterateIK3D, "get_joint_limitation", 91665146)
  var ret: encoded gdref JointLimitation3D
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(gdref JointLimitation3D)

proc setJointLimitationRightAxis*(self: IterateIK3D; index: int32; joint: int32; direction: SkeletonModifier3D_SecondaryDirection): void =
  expandMethodBind(className IterateIK3D, "set_joint_limitation_right_axis", 3838967147)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr direction])

proc getJointLimitationRightAxis*(self: IterateIK3D; index: int32; joint: int32): SkeletonModifier3D_SecondaryDirection =
  expandMethodBind(className IterateIK3D, "get_joint_limitation_right_axis", 623936134)
  var ret: encoded SkeletonModifier3D_SecondaryDirection
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(SkeletonModifier3D_SecondaryDirection)

proc setJointLimitationRightAxisVector*(self: IterateIK3D; index: int32; joint: int32; vector: Vector3): void =
  expandMethodBind(className IterateIK3D, "set_joint_limitation_right_axis_vector", 2866752138)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr vector])

proc getJointLimitationRightAxisVector*(self: IterateIK3D; index: int32; joint: int32): Vector3 =
  expandMethodBind(className IterateIK3D, "get_joint_limitation_right_axis_vector", 1592972041)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(Vector3)

proc setJointLimitationRotationOffset*(self: IterateIK3D; index: int32; joint: int32; offset: Quaternion): void =
  expandMethodBind(className IterateIK3D, "set_joint_limitation_rotation_offset", 4188936002)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr offset])

proc getJointLimitationRotationOffset*(self: IterateIK3D; index: int32; joint: int32): Quaternion =
  expandMethodBind(className IterateIK3D, "get_joint_limitation_rotation_offset", 2722473700)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(Quaternion)

template maxIterations*(self: IterateIK3D): untyped = self.getMaxIterations()
template `maxIterations=`*(self: IterateIK3D; value) = self.setMaxIterations(value)

template minDistance*(self: IterateIK3D): untyped = self.getMinDistance()
template `minDistance=`*(self: IterateIK3D; value) = self.setMinDistance(value)

template angularDeltaLimit*(self: IterateIK3D): untyped = self.getAngularDeltaLimit()
template `angularDeltaLimit=`*(self: IterateIK3D; value) = self.setAngularDeltaLimit(value)

template deterministic*(self: IterateIK3D): untyped = self.isDeterministic()
template `deterministic=`*(self: IterateIK3D; value) = self.setDeterministic(value)

template settingCount*(self: IterateIK3D): untyped = self.getSettingCount()
template `settingCount=`*(self: IterateIK3D; value) = self.setSettingCount(value)

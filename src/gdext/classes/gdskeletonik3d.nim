{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

proc setRootBone*(self: SkeletonIK3D; rootBone: StringName): void =
  expandMethodBind(className SkeletonIK3D, "set_root_bone", 3304788590)
  methodbind.ptrcall(self, [getPtr rootBone])

proc getRootBone*(self: SkeletonIK3D): StringName =
  expandMethodBind(className SkeletonIK3D, "get_root_bone", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc setTipBone*(self: SkeletonIK3D; tipBone: StringName): void =
  expandMethodBind(className SkeletonIK3D, "set_tip_bone", 3304788590)
  methodbind.ptrcall(self, [getPtr tipBone])

proc getTipBone*(self: SkeletonIK3D): StringName =
  expandMethodBind(className SkeletonIK3D, "get_tip_bone", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc setTargetTransform*(self: SkeletonIK3D; target: Transform3D): void =
  expandMethodBind(className SkeletonIK3D, "set_target_transform", 2952846383)
  methodbind.ptrcall(self, [getPtr target])

proc getTargetTransform*(self: SkeletonIK3D): Transform3D =
  expandMethodBind(className SkeletonIK3D, "get_target_transform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Transform3D)

proc setTargetNode*(self: SkeletonIK3D; node: NodePath): void =
  expandMethodBind(className SkeletonIK3D, "set_target_node", 1348162250)
  methodbind.ptrcall(self, [getPtr node])

proc getTargetNode*(self: SkeletonIK3D): NodePath =
  expandMethodBind(className SkeletonIK3D, "get_target_node", 277076166)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setOverrideTipBasis*(self: SkeletonIK3D; override: bool): void =
  expandMethodBind(className SkeletonIK3D, "set_override_tip_basis", 2586408642)
  methodbind.ptrcall(self, [getPtr override])

proc isOverrideTipBasis*(self: SkeletonIK3D): bool =
  expandMethodBind(className SkeletonIK3D, "is_override_tip_basis", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setUseMagnet*(self: SkeletonIK3D; use: bool): void =
  expandMethodBind(className SkeletonIK3D, "set_use_magnet", 2586408642)
  methodbind.ptrcall(self, [getPtr use])

proc isUsingMagnet*(self: SkeletonIK3D): bool =
  expandMethodBind(className SkeletonIK3D, "is_using_magnet", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMagnetPosition*(self: SkeletonIK3D; localPosition: Vector3): void =
  expandMethodBind(className SkeletonIK3D, "set_magnet_position", 3460891852)
  methodbind.ptrcall(self, [getPtr localPosition])

proc getMagnetPosition*(self: SkeletonIK3D): Vector3 =
  expandMethodBind(className SkeletonIK3D, "get_magnet_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc getParentSkeleton*(self: SkeletonIK3D): Skeleton3D =
  expandMethodBind(className SkeletonIK3D, "get_parent_skeleton", 1488626673)
  var ret: encoded Skeleton3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Skeleton3D)

proc isRunning*(self: SkeletonIK3D): bool =
  expandMethodBind(className SkeletonIK3D, "is_running", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMinDistance*(self: SkeletonIK3D; minDistance: Float): void =
  expandMethodBind(className SkeletonIK3D, "set_min_distance", 373806689)
  methodbind.ptrcall(self, [getPtr minDistance])

proc getMinDistance*(self: SkeletonIK3D): Float =
  expandMethodBind(className SkeletonIK3D, "get_min_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMaxIterations*(self: SkeletonIK3D; iterations: int32): void =
  expandMethodBind(className SkeletonIK3D, "set_max_iterations", 1286410249)
  methodbind.ptrcall(self, [getPtr iterations])

proc getMaxIterations*(self: SkeletonIK3D): int32 =
  expandMethodBind(className SkeletonIK3D, "get_max_iterations", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc start*(self: SkeletonIK3D; oneTime: bool = false): void =
  expandMethodBind(className SkeletonIK3D, "start", 107499316)
  methodbind.ptrcall(self, [getPtr oneTime])

proc stop*(self: SkeletonIK3D): void =
  expandMethodBind(className SkeletonIK3D, "stop", 3218959716)
  methodbind.ptrcall(self, [])

proc setInterpolation*(self: SkeletonIK3D; interpolation: Float): void =
  expandMethodBind(className SkeletonIK3D, "set_interpolation", 373806689)
  methodbind.ptrcall(self, [getPtr interpolation])

proc getInterpolation*(self: SkeletonIK3D): Float =
  expandMethodBind(className SkeletonIK3D, "get_interpolation", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template rootBone*(self: SkeletonIK3D): untyped = self.getRootBone()
template `rootBone=`*(self: SkeletonIK3D; value) = self.setRootBone(value)

template tipBone*(self: SkeletonIK3D): untyped = self.getTipBone()
template `tipBone=`*(self: SkeletonIK3D; value) = self.setTipBone(value)

template target*(self: SkeletonIK3D): untyped = self.getTargetTransform()
template `target=`*(self: SkeletonIK3D; value) = self.setTargetTransform(value)

template overrideTipBasis*(self: SkeletonIK3D): untyped = self.isOverrideTipBasis()
template `overrideTipBasis=`*(self: SkeletonIK3D; value) = self.setOverrideTipBasis(value)

template useMagnet*(self: SkeletonIK3D): untyped = self.isUsingMagnet()
template `useMagnet=`*(self: SkeletonIK3D; value) = self.setUseMagnet(value)

template magnet*(self: SkeletonIK3D): untyped = self.getMagnetPosition()
template `magnet=`*(self: SkeletonIK3D; value) = self.setMagnetPosition(value)

template targetNode*(self: SkeletonIK3D): untyped = self.getTargetNode()
template `targetNode=`*(self: SkeletonIK3D; value) = self.setTargetNode(value)

template minDistance*(self: SkeletonIK3D): untyped = self.getMinDistance()
template `minDistance=`*(self: SkeletonIK3D; value) = self.setMinDistance(value)

template maxIterations*(self: SkeletonIK3D): untyped = self.getMaxIterations()
template `maxIterations=`*(self: SkeletonIK3D; value) = self.setMaxIterations(value)

template interpolation*(self: SkeletonIK3D): untyped = self.getInterpolation()
template `interpolation=`*(self: SkeletonIK3D; value) = self.setInterpolation(value)

const SkeletonIK3D_vmap =
  SkeletonModifier3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkeletonIK3D]): Table[string, string] = SkeletonIK3D_vmap
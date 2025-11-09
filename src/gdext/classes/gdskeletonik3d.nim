{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

expandOnClassImported(SkeletonIK3D, SkeletonModifier3D)

proc setRootBone*(self: SkeletonIK3D; rootBone: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "set_root_bone", 3304788590)
  methodbind.ptrcall(self, [getPtr rootBone], void)

proc getRootBone*(self: SkeletonIK3D): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "get_root_bone", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setTipBone*(self: SkeletonIK3D; tipBone: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "set_tip_bone", 3304788590)
  methodbind.ptrcall(self, [getPtr tipBone], void)

proc getTipBone*(self: SkeletonIK3D): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "get_tip_bone", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setTargetTransform*(self: SkeletonIK3D; target: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "set_target_transform", 2952846383)
  methodbind.ptrcall(self, [getPtr target], void)

proc getTargetTransform*(self: SkeletonIK3D): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "get_target_transform", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc setTargetNode*(self: SkeletonIK3D; node: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "set_target_node", 1348162250)
  methodbind.ptrcall(self, [getPtr node], void)

proc getTargetNode*(self: SkeletonIK3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "get_target_node", 277076166)
  methodbind.ptrcall(self, [], NodePath)

proc setOverrideTipBasis*(self: SkeletonIK3D; override: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "set_override_tip_basis", 2586408642)
  methodbind.ptrcall(self, [getPtr override], void)

proc isOverrideTipBasis*(self: SkeletonIK3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "is_override_tip_basis", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseMagnet*(self: SkeletonIK3D; use: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "set_use_magnet", 2586408642)
  methodbind.ptrcall(self, [getPtr use], void)

proc isUsingMagnet*(self: SkeletonIK3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "is_using_magnet", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMagnetPosition*(self: SkeletonIK3D; localPosition: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "set_magnet_position", 3460891852)
  methodbind.ptrcall(self, [getPtr localPosition], void)

proc getMagnetPosition*(self: SkeletonIK3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "get_magnet_position", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getParentSkeleton*(self: SkeletonIK3D): Skeleton3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "get_parent_skeleton", 1488626673)
  methodbind.ptrcall(self, [], Skeleton3D)

proc isRunning*(self: SkeletonIK3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "is_running", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setMinDistance*(self: SkeletonIK3D; minDistance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "set_min_distance", 373806689)
  methodbind.ptrcall(self, [getPtr minDistance], void)

proc getMinDistance*(self: SkeletonIK3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "get_min_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMaxIterations*(self: SkeletonIK3D; iterations: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "set_max_iterations", 1286410249)
  methodbind.ptrcall(self, [getPtr iterations], void)

proc getMaxIterations*(self: SkeletonIK3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "get_max_iterations", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc start*(self: SkeletonIK3D; oneTime: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "start", 107499316)
  methodbind.ptrcall(self, [getPtr oneTime], void)

proc stop*(self: SkeletonIK3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "stop", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setInterpolation*(self: SkeletonIK3D; interpolation: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "set_interpolation", 373806689)
  methodbind.ptrcall(self, [getPtr interpolation], void)

proc getInterpolation*(self: SkeletonIK3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonIK3D, "get_interpolation", 1740695150)
  methodbind.ptrcall(self, [], Float)

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

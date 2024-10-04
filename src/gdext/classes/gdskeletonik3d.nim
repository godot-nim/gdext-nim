{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

proc setRootBone*(self: SkeletonIk3D; rootBone: StringName): void =
  expandMethodBind(className SkeletonIk3D, "set_root_bone", 3304788590)
  var `?param` = [getPtr rootBone]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRootBone*(self: SkeletonIk3D): StringName =
  expandMethodBind(className SkeletonIk3D, "get_root_bone", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setTipBone*(self: SkeletonIk3D; tipBone: StringName): void =
  expandMethodBind(className SkeletonIk3D, "set_tip_bone", 3304788590)
  var `?param` = [getPtr tipBone]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTipBone*(self: SkeletonIk3D): StringName =
  expandMethodBind(className SkeletonIk3D, "get_tip_bone", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setTargetTransform*(self: SkeletonIk3D; target: Transform3D): void =
  expandMethodBind(className SkeletonIk3D, "set_target_transform", 2952846383)
  var `?param` = [getPtr target]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetTransform*(self: SkeletonIk3D): Transform3D =
  expandMethodBind(className SkeletonIk3D, "get_target_transform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc setTargetNode*(self: SkeletonIk3D; node: NodePath): void =
  expandMethodBind(className SkeletonIk3D, "set_target_node", 1348162250)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetNode*(self: SkeletonIk3D): NodePath =
  expandMethodBind(className SkeletonIk3D, "get_target_node", 277076166)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setOverrideTipBasis*(self: SkeletonIk3D; override: bool): void =
  expandMethodBind(className SkeletonIk3D, "set_override_tip_basis", 2586408642)
  var `?param` = [getPtr override]
  methodbind.ptrcall(self, addr `?param`[0])

proc isOverrideTipBasis*(self: SkeletonIk3D): bool =
  expandMethodBind(className SkeletonIk3D, "is_override_tip_basis", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUseMagnet*(self: SkeletonIk3D; use: bool): void =
  expandMethodBind(className SkeletonIk3D, "set_use_magnet", 2586408642)
  var `?param` = [getPtr use]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingMagnet*(self: SkeletonIk3D): bool =
  expandMethodBind(className SkeletonIk3D, "is_using_magnet", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMagnetPosition*(self: SkeletonIk3D; localPosition: Vector3): void =
  expandMethodBind(className SkeletonIk3D, "set_magnet_position", 3460891852)
  var `?param` = [getPtr localPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMagnetPosition*(self: SkeletonIk3D): Vector3 =
  expandMethodBind(className SkeletonIk3D, "get_magnet_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getParentSkeleton*(self: SkeletonIk3D): Skeleton3D =
  expandMethodBind(className SkeletonIk3D, "get_parent_skeleton", 1488626673)
  var ret: encoded Skeleton3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Skeleton3D)

proc isRunning*(self: SkeletonIk3D): bool =
  expandMethodBind(className SkeletonIk3D, "is_running", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMinDistance*(self: SkeletonIk3D; minDistance: Float): void =
  expandMethodBind(className SkeletonIk3D, "set_min_distance", 373806689)
  var `?param` = [getPtr minDistance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMinDistance*(self: SkeletonIk3D): Float =
  expandMethodBind(className SkeletonIk3D, "get_min_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMaxIterations*(self: SkeletonIk3D; iterations: int32): void =
  expandMethodBind(className SkeletonIk3D, "set_max_iterations", 1286410249)
  var `?param` = [getPtr iterations]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxIterations*(self: SkeletonIk3D): int32 =
  expandMethodBind(className SkeletonIk3D, "get_max_iterations", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc start*(self: SkeletonIk3D; oneTime: bool = false): void =
  expandMethodBind(className SkeletonIk3D, "start", 107499316)
  var `?param` = [getPtr oneTime]
  methodbind.ptrcall(self, addr `?param`[0])

proc stop*(self: SkeletonIk3D): void =
  expandMethodBind(className SkeletonIk3D, "stop", 3218959716)
  methodbind.ptrcall(self, nil)

proc setInterpolation*(self: SkeletonIk3D; interpolation: Float): void =
  expandMethodBind(className SkeletonIk3D, "set_interpolation", 373806689)
  var `?param` = [getPtr interpolation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInterpolation*(self: SkeletonIk3D): Float =
  expandMethodBind(className SkeletonIk3D, "get_interpolation", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template rootBone*(self: SkeletonIk3D): untyped = self.getRootBone()
template `rootBone=`*(self: SkeletonIk3D; value) = self.setRootBone(value)

template tipBone*(self: SkeletonIk3D): untyped = self.getTipBone()
template `tipBone=`*(self: SkeletonIk3D; value) = self.setTipBone(value)

template target*(self: SkeletonIk3D): untyped = self.getTargetTransform()
template `target=`*(self: SkeletonIk3D; value) = self.setTargetTransform(value)

template overrideTipBasis*(self: SkeletonIk3D): untyped = self.isOverrideTipBasis()
template `overrideTipBasis=`*(self: SkeletonIk3D; value) = self.setOverrideTipBasis(value)

template useMagnet*(self: SkeletonIk3D): untyped = self.isUsingMagnet()
template `useMagnet=`*(self: SkeletonIk3D; value) = self.setUseMagnet(value)

template magnet*(self: SkeletonIk3D): untyped = self.getMagnetPosition()
template `magnet=`*(self: SkeletonIk3D; value) = self.setMagnetPosition(value)

template targetNode*(self: SkeletonIk3D): untyped = self.getTargetNode()
template `targetNode=`*(self: SkeletonIk3D; value) = self.setTargetNode(value)

template minDistance*(self: SkeletonIk3D): untyped = self.getMinDistance()
template `minDistance=`*(self: SkeletonIk3D; value) = self.setMinDistance(value)

template maxIterations*(self: SkeletonIk3D): untyped = self.getMaxIterations()
template `maxIterations=`*(self: SkeletonIk3D; value) = self.setMaxIterations(value)

template interpolation*(self: SkeletonIk3D): untyped = self.getInterpolation()
template `interpolation=`*(self: SkeletonIk3D; value) = self.setInterpolation(value)

const SkeletonIk3D_vmap =
  SkeletonModifier3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkeletonIk3D]): Table[string, string] = SkeletonIk3D_vmap
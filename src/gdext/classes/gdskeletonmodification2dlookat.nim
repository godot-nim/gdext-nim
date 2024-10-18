{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

proc setBone2dNode*(self: SkeletonModification2DLookAt; bone2dNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2DLookAt, "set_bone2d_node", 1348162250)
  var `?param` = [getPtr bone2dNodepath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBone2dNode*(self: SkeletonModification2DLookAt): NodePath =
  expandMethodBind(className SkeletonModification2DLookAt, "get_bone2d_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setBoneIndex*(self: SkeletonModification2DLookAt; boneIdx: int32): void =
  expandMethodBind(className SkeletonModification2DLookAt, "set_bone_index", 1286410249)
  var `?param` = [getPtr boneIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneIndex*(self: SkeletonModification2DLookAt): int32 =
  expandMethodBind(className SkeletonModification2DLookAt, "get_bone_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setTargetNode*(self: SkeletonModification2DLookAt; targetNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2DLookAt, "set_target_node", 1348162250)
  var `?param` = [getPtr targetNodepath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetNode*(self: SkeletonModification2DLookAt): NodePath =
  expandMethodBind(className SkeletonModification2DLookAt, "get_target_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setAdditionalRotation*(self: SkeletonModification2DLookAt; rotation: Float): void =
  expandMethodBind(className SkeletonModification2DLookAt, "set_additional_rotation", 373806689)
  var `?param` = [getPtr rotation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAdditionalRotation*(self: SkeletonModification2DLookAt): Float =
  expandMethodBind(className SkeletonModification2DLookAt, "get_additional_rotation", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEnableConstraint*(self: SkeletonModification2DLookAt; enableConstraint: bool): void =
  expandMethodBind(className SkeletonModification2DLookAt, "set_enable_constraint", 2586408642)
  var `?param` = [getPtr enableConstraint]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableConstraint*(self: SkeletonModification2DLookAt): bool =
  expandMethodBind(className SkeletonModification2DLookAt, "get_enable_constraint", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setConstraintAngleMin*(self: SkeletonModification2DLookAt; angleMin: Float): void =
  expandMethodBind(className SkeletonModification2DLookAt, "set_constraint_angle_min", 373806689)
  var `?param` = [getPtr angleMin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstraintAngleMin*(self: SkeletonModification2DLookAt): Float =
  expandMethodBind(className SkeletonModification2DLookAt, "get_constraint_angle_min", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setConstraintAngleMax*(self: SkeletonModification2DLookAt; angleMax: Float): void =
  expandMethodBind(className SkeletonModification2DLookAt, "set_constraint_angle_max", 373806689)
  var `?param` = [getPtr angleMax]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstraintAngleMax*(self: SkeletonModification2DLookAt): Float =
  expandMethodBind(className SkeletonModification2DLookAt, "get_constraint_angle_max", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setConstraintAngleInvert*(self: SkeletonModification2DLookAt; invert: bool): void =
  expandMethodBind(className SkeletonModification2DLookAt, "set_constraint_angle_invert", 2586408642)
  var `?param` = [getPtr invert]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstraintAngleInvert*(self: SkeletonModification2DLookAt): bool =
  expandMethodBind(className SkeletonModification2DLookAt, "get_constraint_angle_invert", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template boneIndex*(self: SkeletonModification2DLookAt): untyped = self.getBoneIndex()
template `boneIndex=`*(self: SkeletonModification2DLookAt; value) = self.setBoneIndex(value)

template bone2dNode*(self: SkeletonModification2DLookAt): untyped = self.getBone2dNode()
template `bone2dNode=`*(self: SkeletonModification2DLookAt; value) = self.setBone2dNode(value)

template targetNodepath*(self: SkeletonModification2DLookAt): untyped = self.getTargetNode()
template `targetNodepath=`*(self: SkeletonModification2DLookAt; value) = self.setTargetNode(value)

const SkeletonModification2DLookAt_vmap =
  SkeletonModification2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkeletonModification2DLookAt]): Table[string, string] = SkeletonModification2DLookAt_vmap
{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

expandOnClassImported(SkeletonModification2DLookAt, SkeletonModification2D)

proc setBone2dNode*(self: SkeletonModification2DLookAt; bone2dNodepath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "set_bone2d_node", 1348162250)
  methodbind.ptrcall(self, [getPtr bone2dNodepath], void)

proc getBone2dNode*(self: SkeletonModification2DLookAt): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "get_bone2d_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setBoneIndex*(self: SkeletonModification2DLookAt; boneIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "set_bone_index", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIdx], void)

proc getBoneIndex*(self: SkeletonModification2DLookAt): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "get_bone_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setTargetNode*(self: SkeletonModification2DLookAt; targetNodepath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "set_target_node", 1348162250)
  methodbind.ptrcall(self, [getPtr targetNodepath], void)

proc getTargetNode*(self: SkeletonModification2DLookAt): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "get_target_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setAdditionalRotation*(self: SkeletonModification2DLookAt; rotation: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "set_additional_rotation", 373806689)
  methodbind.ptrcall(self, [getPtr rotation], void)

proc getAdditionalRotation*(self: SkeletonModification2DLookAt): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "get_additional_rotation", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setEnableConstraint*(self: SkeletonModification2DLookAt; enableConstraint: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "set_enable_constraint", 2586408642)
  methodbind.ptrcall(self, [getPtr enableConstraint], void)

proc getEnableConstraint*(self: SkeletonModification2DLookAt): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "get_enable_constraint", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setConstraintAngleMin*(self: SkeletonModification2DLookAt; angleMin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "set_constraint_angle_min", 373806689)
  methodbind.ptrcall(self, [getPtr angleMin], void)

proc getConstraintAngleMin*(self: SkeletonModification2DLookAt): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "get_constraint_angle_min", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setConstraintAngleMax*(self: SkeletonModification2DLookAt; angleMax: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "set_constraint_angle_max", 373806689)
  methodbind.ptrcall(self, [getPtr angleMax], void)

proc getConstraintAngleMax*(self: SkeletonModification2DLookAt): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "get_constraint_angle_max", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setConstraintAngleInvert*(self: SkeletonModification2DLookAt; invert: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "set_constraint_angle_invert", 2586408642)
  methodbind.ptrcall(self, [getPtr invert], void)

proc getConstraintAngleInvert*(self: SkeletonModification2DLookAt): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DLookAt, "get_constraint_angle_invert", 36873697)
  methodbind.ptrcall(self, [], bool)

template boneIndex*(self: SkeletonModification2DLookAt): untyped = self.getBoneIndex()
template `boneIndex=`*(self: SkeletonModification2DLookAt; value) = self.setBoneIndex(value)

template bone2dNode*(self: SkeletonModification2DLookAt): untyped = self.getBone2dNode()
template `bone2dNode=`*(self: SkeletonModification2DLookAt; value) = self.setBone2dNode(value)

template targetNodepath*(self: SkeletonModification2DLookAt): untyped = self.getTargetNode()
template `targetNodepath=`*(self: SkeletonModification2DLookAt; value) = self.setTargetNode(value)

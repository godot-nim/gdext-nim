{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

expandOnClassImported(LookAtModifier3D, SkeletonModifier3D)

proc setTargetNode*(self: LookAtModifier3D; targetNode: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_target_node", 1348162250)
  methodbind.ptrcall(self, [getPtr targetNode], void)

proc getTargetNode*(self: LookAtModifier3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_target_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setBoneName*(self: LookAtModifier3D; boneName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_bone_name", 83702148)
  methodbind.ptrcall(self, [getPtr boneName], void)

proc getBoneName*(self: LookAtModifier3D): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_bone_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc setBone*(self: LookAtModifier3D; bone: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_bone", 1286410249)
  methodbind.ptrcall(self, [getPtr bone], void)

proc getBone*(self: LookAtModifier3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_bone", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setForwardAxis*(self: LookAtModifier3D; forwardAxis: SkeletonModifier3D_BoneAxis): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_forward_axis", 3199955933)
  methodbind.ptrcall(self, [getPtr forwardAxis], void)

proc getForwardAxis*(self: LookAtModifier3D): SkeletonModifier3D_BoneAxis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_forward_axis", 4076020284)
  methodbind.ptrcall(self, [], SkeletonModifier3D_BoneAxis)

proc setPrimaryRotationAxis*(self: LookAtModifier3D; axis: Vector3_Axis): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_primary_rotation_axis", 1144690656)
  methodbind.ptrcall(self, [getPtr axis], void)

proc getPrimaryRotationAxis*(self: LookAtModifier3D): Vector3_Axis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_primary_rotation_axis", 3050976882)
  methodbind.ptrcall(self, [], Vector3_Axis)

proc setUseSecondaryRotation*(self: LookAtModifier3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_use_secondary_rotation", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isUsingSecondaryRotation*(self: LookAtModifier3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "is_using_secondary_rotation", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setOriginSafeMargin*(self: LookAtModifier3D; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_origin_safe_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getOriginSafeMargin*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_origin_safe_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setOriginFrom*(self: LookAtModifier3D; originFrom: LookAtModifier3D_OriginFrom): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_origin_from", 4254695669)
  methodbind.ptrcall(self, [getPtr originFrom], void)

proc getOriginFrom*(self: LookAtModifier3D): LookAtModifier3D_OriginFrom =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_origin_from", 4057166297)
  methodbind.ptrcall(self, [], LookAtModifier3D_OriginFrom)

proc setOriginBoneName*(self: LookAtModifier3D; boneName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_origin_bone_name", 83702148)
  methodbind.ptrcall(self, [getPtr boneName], void)

proc getOriginBoneName*(self: LookAtModifier3D): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_origin_bone_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc setOriginBone*(self: LookAtModifier3D; bone: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_origin_bone", 1286410249)
  methodbind.ptrcall(self, [getPtr bone], void)

proc getOriginBone*(self: LookAtModifier3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_origin_bone", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setOriginExternalNode*(self: LookAtModifier3D; externalNode: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_origin_external_node", 1348162250)
  methodbind.ptrcall(self, [getPtr externalNode], void)

proc getOriginExternalNode*(self: LookAtModifier3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_origin_external_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setOriginOffset*(self: LookAtModifier3D; offset: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_origin_offset", 3460891852)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getOriginOffset*(self: LookAtModifier3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_origin_offset", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setDuration*(self: LookAtModifier3D; duration: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_duration", 373806689)
  methodbind.ptrcall(self, [getPtr duration], void)

proc getDuration*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_duration", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTransitionType*(self: LookAtModifier3D; transitionType: Tween_TransitionType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_transition_type", 1058637742)
  methodbind.ptrcall(self, [getPtr transitionType], void)

proc getTransitionType*(self: LookAtModifier3D): Tween_TransitionType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_transition_type", 3842314528)
  methodbind.ptrcall(self, [], Tween_TransitionType)

proc setEaseType*(self: LookAtModifier3D; easeType: Tween_EaseType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_ease_type", 1208105857)
  methodbind.ptrcall(self, [getPtr easeType], void)

proc getEaseType*(self: LookAtModifier3D): Tween_EaseType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_ease_type", 631880200)
  methodbind.ptrcall(self, [], Tween_EaseType)

proc setUseAngleLimitation*(self: LookAtModifier3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_use_angle_limitation", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isUsingAngleLimitation*(self: LookAtModifier3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "is_using_angle_limitation", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSymmetryLimitation*(self: LookAtModifier3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_symmetry_limitation", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isLimitationSymmetry*(self: LookAtModifier3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "is_limitation_symmetry", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPrimaryLimitAngle*(self: LookAtModifier3D; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_primary_limit_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle], void)

proc getPrimaryLimitAngle*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_primary_limit_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPrimaryDampThreshold*(self: LookAtModifier3D; power: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_primary_damp_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr power], void)

proc getPrimaryDampThreshold*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_primary_damp_threshold", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPrimaryPositiveLimitAngle*(self: LookAtModifier3D; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_primary_positive_limit_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle], void)

proc getPrimaryPositiveLimitAngle*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_primary_positive_limit_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPrimaryPositiveDampThreshold*(self: LookAtModifier3D; power: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_primary_positive_damp_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr power], void)

proc getPrimaryPositiveDampThreshold*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_primary_positive_damp_threshold", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPrimaryNegativeLimitAngle*(self: LookAtModifier3D; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_primary_negative_limit_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle], void)

proc getPrimaryNegativeLimitAngle*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_primary_negative_limit_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPrimaryNegativeDampThreshold*(self: LookAtModifier3D; power: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_primary_negative_damp_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr power], void)

proc getPrimaryNegativeDampThreshold*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_primary_negative_damp_threshold", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSecondaryLimitAngle*(self: LookAtModifier3D; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_secondary_limit_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle], void)

proc getSecondaryLimitAngle*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_secondary_limit_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSecondaryDampThreshold*(self: LookAtModifier3D; power: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_secondary_damp_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr power], void)

proc getSecondaryDampThreshold*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_secondary_damp_threshold", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSecondaryPositiveLimitAngle*(self: LookAtModifier3D; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_secondary_positive_limit_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle], void)

proc getSecondaryPositiveLimitAngle*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_secondary_positive_limit_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSecondaryPositiveDampThreshold*(self: LookAtModifier3D; power: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_secondary_positive_damp_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr power], void)

proc getSecondaryPositiveDampThreshold*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_secondary_positive_damp_threshold", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSecondaryNegativeLimitAngle*(self: LookAtModifier3D; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_secondary_negative_limit_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle], void)

proc getSecondaryNegativeLimitAngle*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_secondary_negative_limit_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSecondaryNegativeDampThreshold*(self: LookAtModifier3D; power: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "set_secondary_negative_damp_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr power], void)

proc getSecondaryNegativeDampThreshold*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_secondary_negative_damp_threshold", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getInterpolationRemaining*(self: LookAtModifier3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "get_interpolation_remaining", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc isInterpolating*(self: LookAtModifier3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "is_interpolating", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isTargetWithinLimitation*(self: LookAtModifier3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LookAtModifier3D, "is_target_within_limitation", 36873697)
  methodbind.ptrcall(self, [], bool)

template targetNode*(self: LookAtModifier3D): untyped = self.getTargetNode()
template `targetNode=`*(self: LookAtModifier3D; value) = self.setTargetNode(value)

template boneName*(self: LookAtModifier3D): untyped = self.getBoneName()
template `boneName=`*(self: LookAtModifier3D; value) = self.setBoneName(value)

template bone*(self: LookAtModifier3D): untyped = self.getBone()
template `bone=`*(self: LookAtModifier3D; value) = self.setBone(value)

template forwardAxis*(self: LookAtModifier3D): untyped = self.getForwardAxis()
template `forwardAxis=`*(self: LookAtModifier3D; value) = self.setForwardAxis(value)

template primaryRotationAxis*(self: LookAtModifier3D): untyped = self.getPrimaryRotationAxis()
template `primaryRotationAxis=`*(self: LookAtModifier3D; value) = self.setPrimaryRotationAxis(value)

template useSecondaryRotation*(self: LookAtModifier3D): untyped = self.isUsingSecondaryRotation()
template `useSecondaryRotation=`*(self: LookAtModifier3D; value) = self.setUseSecondaryRotation(value)

template originFrom*(self: LookAtModifier3D): untyped = self.getOriginFrom()
template `originFrom=`*(self: LookAtModifier3D; value) = self.setOriginFrom(value)

template originBoneName*(self: LookAtModifier3D): untyped = self.getOriginBoneName()
template `originBoneName=`*(self: LookAtModifier3D; value) = self.setOriginBoneName(value)

template originBone*(self: LookAtModifier3D): untyped = self.getOriginBone()
template `originBone=`*(self: LookAtModifier3D; value) = self.setOriginBone(value)

template originExternalNode*(self: LookAtModifier3D): untyped = self.getOriginExternalNode()
template `originExternalNode=`*(self: LookAtModifier3D; value) = self.setOriginExternalNode(value)

template originOffset*(self: LookAtModifier3D): untyped = self.getOriginOffset()
template `originOffset=`*(self: LookAtModifier3D; value) = self.setOriginOffset(value)

template originSafeMargin*(self: LookAtModifier3D): untyped = self.getOriginSafeMargin()
template `originSafeMargin=`*(self: LookAtModifier3D; value) = self.setOriginSafeMargin(value)

template duration*(self: LookAtModifier3D): untyped = self.getDuration()
template `duration=`*(self: LookAtModifier3D; value) = self.setDuration(value)

template transitionType*(self: LookAtModifier3D): untyped = self.getTransitionType()
template `transitionType=`*(self: LookAtModifier3D; value) = self.setTransitionType(value)

template easeType*(self: LookAtModifier3D): untyped = self.getEaseType()
template `easeType=`*(self: LookAtModifier3D; value) = self.setEaseType(value)

template useAngleLimitation*(self: LookAtModifier3D): untyped = self.isUsingAngleLimitation()
template `useAngleLimitation=`*(self: LookAtModifier3D; value) = self.setUseAngleLimitation(value)

template symmetryLimitation*(self: LookAtModifier3D): untyped = self.isLimitationSymmetry()
template `symmetryLimitation=`*(self: LookAtModifier3D; value) = self.setSymmetryLimitation(value)

template primaryLimitAngle*(self: LookAtModifier3D): untyped = self.getPrimaryLimitAngle()
template `primaryLimitAngle=`*(self: LookAtModifier3D; value) = self.setPrimaryLimitAngle(value)

template primaryDampThreshold*(self: LookAtModifier3D): untyped = self.getPrimaryDampThreshold()
template `primaryDampThreshold=`*(self: LookAtModifier3D; value) = self.setPrimaryDampThreshold(value)

template primaryPositiveLimitAngle*(self: LookAtModifier3D): untyped = self.getPrimaryPositiveLimitAngle()
template `primaryPositiveLimitAngle=`*(self: LookAtModifier3D; value) = self.setPrimaryPositiveLimitAngle(value)

template primaryPositiveDampThreshold*(self: LookAtModifier3D): untyped = self.getPrimaryPositiveDampThreshold()
template `primaryPositiveDampThreshold=`*(self: LookAtModifier3D; value) = self.setPrimaryPositiveDampThreshold(value)

template primaryNegativeLimitAngle*(self: LookAtModifier3D): untyped = self.getPrimaryNegativeLimitAngle()
template `primaryNegativeLimitAngle=`*(self: LookAtModifier3D; value) = self.setPrimaryNegativeLimitAngle(value)

template primaryNegativeDampThreshold*(self: LookAtModifier3D): untyped = self.getPrimaryNegativeDampThreshold()
template `primaryNegativeDampThreshold=`*(self: LookAtModifier3D; value) = self.setPrimaryNegativeDampThreshold(value)

template secondaryLimitAngle*(self: LookAtModifier3D): untyped = self.getSecondaryLimitAngle()
template `secondaryLimitAngle=`*(self: LookAtModifier3D; value) = self.setSecondaryLimitAngle(value)

template secondaryDampThreshold*(self: LookAtModifier3D): untyped = self.getSecondaryDampThreshold()
template `secondaryDampThreshold=`*(self: LookAtModifier3D; value) = self.setSecondaryDampThreshold(value)

template secondaryPositiveLimitAngle*(self: LookAtModifier3D): untyped = self.getSecondaryPositiveLimitAngle()
template `secondaryPositiveLimitAngle=`*(self: LookAtModifier3D; value) = self.setSecondaryPositiveLimitAngle(value)

template secondaryPositiveDampThreshold*(self: LookAtModifier3D): untyped = self.getSecondaryPositiveDampThreshold()
template `secondaryPositiveDampThreshold=`*(self: LookAtModifier3D; value) = self.setSecondaryPositiveDampThreshold(value)

template secondaryNegativeLimitAngle*(self: LookAtModifier3D): untyped = self.getSecondaryNegativeLimitAngle()
template `secondaryNegativeLimitAngle=`*(self: LookAtModifier3D; value) = self.setSecondaryNegativeLimitAngle(value)

template secondaryNegativeDampThreshold*(self: LookAtModifier3D): untyped = self.getSecondaryNegativeDampThreshold()
template `secondaryNegativeDampThreshold=`*(self: LookAtModifier3D; value) = self.setSecondaryNegativeDampThreshold(value)

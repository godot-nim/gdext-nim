{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d
export LookAtModifier3D

proc setTargetNode*(self: LookAtModifier3D; targetNode: NodePath): void =
  expandMethodBind(className LookAtModifier3D, "set_target_node", 1348162250)
  methodbind.ptrcall(self, [getPtr targetNode])

proc getTargetNode*(self: LookAtModifier3D): NodePath =
  expandMethodBind(className LookAtModifier3D, "get_target_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setBoneName*(self: LookAtModifier3D; boneName: String): void =
  expandMethodBind(className LookAtModifier3D, "set_bone_name", 83702148)
  methodbind.ptrcall(self, [getPtr boneName])

proc getBoneName*(self: LookAtModifier3D): String =
  expandMethodBind(className LookAtModifier3D, "get_bone_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setBone*(self: LookAtModifier3D; bone: int32): void =
  expandMethodBind(className LookAtModifier3D, "set_bone", 1286410249)
  methodbind.ptrcall(self, [getPtr bone])

proc getBone*(self: LookAtModifier3D): int32 =
  expandMethodBind(className LookAtModifier3D, "get_bone", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setForwardAxis*(self: LookAtModifier3D; forwardAxis: SkeletonModifier3D_BoneAxis): void =
  expandMethodBind(className LookAtModifier3D, "set_forward_axis", 3199955933)
  methodbind.ptrcall(self, [getPtr forwardAxis])

proc getForwardAxis*(self: LookAtModifier3D): SkeletonModifier3D_BoneAxis =
  expandMethodBind(className LookAtModifier3D, "get_forward_axis", 4076020284)
  var ret: encoded SkeletonModifier3D_BoneAxis
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(SkeletonModifier3D_BoneAxis)

proc setPrimaryRotationAxis*(self: LookAtModifier3D; axis: Vector3_Axis): void =
  expandMethodBind(className LookAtModifier3D, "set_primary_rotation_axis", 1144690656)
  methodbind.ptrcall(self, [getPtr axis])

proc getPrimaryRotationAxis*(self: LookAtModifier3D): Vector3_Axis =
  expandMethodBind(className LookAtModifier3D, "get_primary_rotation_axis", 3050976882)
  var ret: encoded Vector3_Axis
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3_Axis)

proc setUseSecondaryRotation*(self: LookAtModifier3D; enabled: bool): void =
  expandMethodBind(className LookAtModifier3D, "set_use_secondary_rotation", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isUsingSecondaryRotation*(self: LookAtModifier3D): bool =
  expandMethodBind(className LookAtModifier3D, "is_using_secondary_rotation", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setOriginSafeMargin*(self: LookAtModifier3D; margin: Float): void =
  expandMethodBind(className LookAtModifier3D, "set_origin_safe_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin])

proc getOriginSafeMargin*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_origin_safe_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setOriginFrom*(self: LookAtModifier3D; originFrom: LookAtModifier3D_OriginFrom): void =
  expandMethodBind(className LookAtModifier3D, "set_origin_from", 4254695669)
  methodbind.ptrcall(self, [getPtr originFrom])

proc getOriginFrom*(self: LookAtModifier3D): LookAtModifier3D_OriginFrom =
  expandMethodBind(className LookAtModifier3D, "get_origin_from", 4057166297)
  var ret: encoded LookAtModifier3D_OriginFrom
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(LookAtModifier3D_OriginFrom)

proc setOriginBoneName*(self: LookAtModifier3D; boneName: String): void =
  expandMethodBind(className LookAtModifier3D, "set_origin_bone_name", 83702148)
  methodbind.ptrcall(self, [getPtr boneName])

proc getOriginBoneName*(self: LookAtModifier3D): String =
  expandMethodBind(className LookAtModifier3D, "get_origin_bone_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setOriginBone*(self: LookAtModifier3D; bone: int32): void =
  expandMethodBind(className LookAtModifier3D, "set_origin_bone", 1286410249)
  methodbind.ptrcall(self, [getPtr bone])

proc getOriginBone*(self: LookAtModifier3D): int32 =
  expandMethodBind(className LookAtModifier3D, "get_origin_bone", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setOriginExternalNode*(self: LookAtModifier3D; externalNode: NodePath): void =
  expandMethodBind(className LookAtModifier3D, "set_origin_external_node", 1348162250)
  methodbind.ptrcall(self, [getPtr externalNode])

proc getOriginExternalNode*(self: LookAtModifier3D): NodePath =
  expandMethodBind(className LookAtModifier3D, "get_origin_external_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setOriginOffset*(self: LookAtModifier3D; offset: Vector3): void =
  expandMethodBind(className LookAtModifier3D, "set_origin_offset", 3460891852)
  methodbind.ptrcall(self, [getPtr offset])

proc getOriginOffset*(self: LookAtModifier3D): Vector3 =
  expandMethodBind(className LookAtModifier3D, "get_origin_offset", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setDuration*(self: LookAtModifier3D; duration: Float): void =
  expandMethodBind(className LookAtModifier3D, "set_duration", 373806689)
  methodbind.ptrcall(self, [getPtr duration])

proc getDuration*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_duration", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setTransitionType*(self: LookAtModifier3D; transitionType: Tween_TransitionType): void =
  expandMethodBind(className LookAtModifier3D, "set_transition_type", 1058637742)
  methodbind.ptrcall(self, [getPtr transitionType])

proc getTransitionType*(self: LookAtModifier3D): Tween_TransitionType =
  expandMethodBind(className LookAtModifier3D, "get_transition_type", 3842314528)
  var ret: encoded Tween_TransitionType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Tween_TransitionType)

proc setEaseType*(self: LookAtModifier3D; easeType: Tween_EaseType): void =
  expandMethodBind(className LookAtModifier3D, "set_ease_type", 1208105857)
  methodbind.ptrcall(self, [getPtr easeType])

proc getEaseType*(self: LookAtModifier3D): Tween_EaseType =
  expandMethodBind(className LookAtModifier3D, "get_ease_type", 631880200)
  var ret: encoded Tween_EaseType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Tween_EaseType)

proc setUseAngleLimitation*(self: LookAtModifier3D; enabled: bool): void =
  expandMethodBind(className LookAtModifier3D, "set_use_angle_limitation", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isUsingAngleLimitation*(self: LookAtModifier3D): bool =
  expandMethodBind(className LookAtModifier3D, "is_using_angle_limitation", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setSymmetryLimitation*(self: LookAtModifier3D; enabled: bool): void =
  expandMethodBind(className LookAtModifier3D, "set_symmetry_limitation", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isLimitationSymmetry*(self: LookAtModifier3D): bool =
  expandMethodBind(className LookAtModifier3D, "is_limitation_symmetry", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setPrimaryLimitAngle*(self: LookAtModifier3D; angle: Float): void =
  expandMethodBind(className LookAtModifier3D, "set_primary_limit_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle])

proc getPrimaryLimitAngle*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_primary_limit_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPrimaryDampThreshold*(self: LookAtModifier3D; power: Float): void =
  expandMethodBind(className LookAtModifier3D, "set_primary_damp_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr power])

proc getPrimaryDampThreshold*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_primary_damp_threshold", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPrimaryPositiveLimitAngle*(self: LookAtModifier3D; angle: Float): void =
  expandMethodBind(className LookAtModifier3D, "set_primary_positive_limit_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle])

proc getPrimaryPositiveLimitAngle*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_primary_positive_limit_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPrimaryPositiveDampThreshold*(self: LookAtModifier3D; power: Float): void =
  expandMethodBind(className LookAtModifier3D, "set_primary_positive_damp_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr power])

proc getPrimaryPositiveDampThreshold*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_primary_positive_damp_threshold", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPrimaryNegativeLimitAngle*(self: LookAtModifier3D; angle: Float): void =
  expandMethodBind(className LookAtModifier3D, "set_primary_negative_limit_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle])

proc getPrimaryNegativeLimitAngle*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_primary_negative_limit_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPrimaryNegativeDampThreshold*(self: LookAtModifier3D; power: Float): void =
  expandMethodBind(className LookAtModifier3D, "set_primary_negative_damp_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr power])

proc getPrimaryNegativeDampThreshold*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_primary_negative_damp_threshold", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSecondaryLimitAngle*(self: LookAtModifier3D; angle: Float): void =
  expandMethodBind(className LookAtModifier3D, "set_secondary_limit_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle])

proc getSecondaryLimitAngle*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_secondary_limit_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSecondaryDampThreshold*(self: LookAtModifier3D; power: Float): void =
  expandMethodBind(className LookAtModifier3D, "set_secondary_damp_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr power])

proc getSecondaryDampThreshold*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_secondary_damp_threshold", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSecondaryPositiveLimitAngle*(self: LookAtModifier3D; angle: Float): void =
  expandMethodBind(className LookAtModifier3D, "set_secondary_positive_limit_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle])

proc getSecondaryPositiveLimitAngle*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_secondary_positive_limit_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSecondaryPositiveDampThreshold*(self: LookAtModifier3D; power: Float): void =
  expandMethodBind(className LookAtModifier3D, "set_secondary_positive_damp_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr power])

proc getSecondaryPositiveDampThreshold*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_secondary_positive_damp_threshold", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSecondaryNegativeLimitAngle*(self: LookAtModifier3D; angle: Float): void =
  expandMethodBind(className LookAtModifier3D, "set_secondary_negative_limit_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle])

proc getSecondaryNegativeLimitAngle*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_secondary_negative_limit_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSecondaryNegativeDampThreshold*(self: LookAtModifier3D; power: Float): void =
  expandMethodBind(className LookAtModifier3D, "set_secondary_negative_damp_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr power])

proc getSecondaryNegativeDampThreshold*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_secondary_negative_damp_threshold", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getInterpolationRemaining*(self: LookAtModifier3D): Float =
  expandMethodBind(className LookAtModifier3D, "get_interpolation_remaining", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc isInterpolating*(self: LookAtModifier3D): bool =
  expandMethodBind(className LookAtModifier3D, "is_interpolating", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isTargetWithinLimitation*(self: LookAtModifier3D): bool =
  expandMethodBind(className LookAtModifier3D, "is_target_within_limitation", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

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

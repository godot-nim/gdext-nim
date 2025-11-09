{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

expandOnClassImported(SpringBoneSimulator3D, SkeletonModifier3D)

proc setRootBoneName*(self: SpringBoneSimulator3D; index: int32; boneName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_root_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName], void)

proc getRootBoneName*(self: SpringBoneSimulator3D; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_root_bone_name", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc setRootBone*(self: SpringBoneSimulator3D; index: int32; bone: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_root_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone], void)

proc getRootBone*(self: SpringBoneSimulator3D; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_root_bone", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc setEndBoneName*(self: SpringBoneSimulator3D; index: int32; boneName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_end_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName], void)

proc getEndBoneName*(self: SpringBoneSimulator3D; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_end_bone_name", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc setEndBone*(self: SpringBoneSimulator3D; index: int32; bone: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_end_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone], void)

proc getEndBone*(self: SpringBoneSimulator3D; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_end_bone", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc setExtendEndBone*(self: SpringBoneSimulator3D; index: int32; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_extend_end_bone", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled], void)

proc isEndBoneExtended*(self: SpringBoneSimulator3D; index: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "is_end_bone_extended", 1116898809)
  methodbind.ptrcall(self, [getPtr index], bool)

proc setEndBoneDirection*(self: SpringBoneSimulator3D; index: int32; boneDirection: SpringBoneSimulator3D_BoneDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_end_bone_direction", 204796492)
  methodbind.ptrcall(self, [getPtr index, getPtr boneDirection], void)

proc getEndBoneDirection*(self: SpringBoneSimulator3D; index: int32): SpringBoneSimulator3D_BoneDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_end_bone_direction", 2438315700)
  methodbind.ptrcall(self, [getPtr index], SpringBoneSimulator3D_BoneDirection)

proc setEndBoneLength*(self: SpringBoneSimulator3D; index: int32; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_end_bone_length", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr length], void)

proc getEndBoneLength*(self: SpringBoneSimulator3D; index: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_end_bone_length", 2339986948)
  methodbind.ptrcall(self, [getPtr index], Float)

proc setCenterFrom*(self: SpringBoneSimulator3D; index: int32; centerFrom: SpringBoneSimulator3D_CenterFrom): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_center_from", 2551505749)
  methodbind.ptrcall(self, [getPtr index, getPtr centerFrom], void)

proc getCenterFrom*(self: SpringBoneSimulator3D; index: int32): SpringBoneSimulator3D_CenterFrom =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_center_from", 2721930813)
  methodbind.ptrcall(self, [getPtr index], SpringBoneSimulator3D_CenterFrom)

proc setCenterNode*(self: SpringBoneSimulator3D; index: int32; nodePath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_center_node", 2761262315)
  methodbind.ptrcall(self, [getPtr index, getPtr nodePath], void)

proc getCenterNode*(self: SpringBoneSimulator3D; index: int32): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_center_node", 408788394)
  methodbind.ptrcall(self, [getPtr index], NodePath)

proc setCenterBoneName*(self: SpringBoneSimulator3D; index: int32; boneName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_center_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName], void)

proc getCenterBoneName*(self: SpringBoneSimulator3D; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_center_bone_name", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc setCenterBone*(self: SpringBoneSimulator3D; index: int32; bone: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_center_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone], void)

proc getCenterBone*(self: SpringBoneSimulator3D; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_center_bone", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc setRadius*(self: SpringBoneSimulator3D; index: int32; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_radius", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr radius], void)

proc getRadius*(self: SpringBoneSimulator3D; index: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_radius", 2339986948)
  methodbind.ptrcall(self, [getPtr index], Float)

proc setRotationAxis*(self: SpringBoneSimulator3D; index: int32; axis: SpringBoneSimulator3D_RotationAxis): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_rotation_axis", 3534169209)
  methodbind.ptrcall(self, [getPtr index, getPtr axis], void)

proc getRotationAxis*(self: SpringBoneSimulator3D; index: int32): SpringBoneSimulator3D_RotationAxis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_rotation_axis", 748837671)
  methodbind.ptrcall(self, [getPtr index], SpringBoneSimulator3D_RotationAxis)

proc setRotationAxisVector*(self: SpringBoneSimulator3D; index: int32; vector: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_rotation_axis_vector", 1530502735)
  methodbind.ptrcall(self, [getPtr index, getPtr vector], void)

proc getRotationAxisVector*(self: SpringBoneSimulator3D; index: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_rotation_axis_vector", 711720468)
  methodbind.ptrcall(self, [getPtr index], Vector3)

proc setRadiusDampingCurve*(self: SpringBoneSimulator3D; index: int32; curve: gdref Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_radius_damping_curve", 1447180063)
  methodbind.ptrcall(self, [getPtr index, getPtr curve], void)

proc getRadiusDampingCurve*(self: SpringBoneSimulator3D; index: int32): gdref Curve =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_radius_damping_curve", 747537754)
  methodbind.ptrcall(self, [getPtr index], gdref Curve)

proc setStiffness*(self: SpringBoneSimulator3D; index: int32; stiffness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_stiffness", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr stiffness], void)

proc getStiffness*(self: SpringBoneSimulator3D; index: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_stiffness", 2339986948)
  methodbind.ptrcall(self, [getPtr index], Float)

proc setStiffnessDampingCurve*(self: SpringBoneSimulator3D; index: int32; curve: gdref Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_stiffness_damping_curve", 1447180063)
  methodbind.ptrcall(self, [getPtr index, getPtr curve], void)

proc getStiffnessDampingCurve*(self: SpringBoneSimulator3D; index: int32): gdref Curve =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_stiffness_damping_curve", 747537754)
  methodbind.ptrcall(self, [getPtr index], gdref Curve)

proc setDrag*(self: SpringBoneSimulator3D; index: int32; drag: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_drag", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr drag], void)

proc getDrag*(self: SpringBoneSimulator3D; index: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_drag", 2339986948)
  methodbind.ptrcall(self, [getPtr index], Float)

proc setDragDampingCurve*(self: SpringBoneSimulator3D; index: int32; curve: gdref Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_drag_damping_curve", 1447180063)
  methodbind.ptrcall(self, [getPtr index, getPtr curve], void)

proc getDragDampingCurve*(self: SpringBoneSimulator3D; index: int32): gdref Curve =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_drag_damping_curve", 747537754)
  methodbind.ptrcall(self, [getPtr index], gdref Curve)

proc setGravity*(self: SpringBoneSimulator3D; index: int32; gravity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_gravity", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr gravity], void)

proc getGravity*(self: SpringBoneSimulator3D; index: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_gravity", 2339986948)
  methodbind.ptrcall(self, [getPtr index], Float)

proc setGravityDampingCurve*(self: SpringBoneSimulator3D; index: int32; curve: gdref Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_gravity_damping_curve", 1447180063)
  methodbind.ptrcall(self, [getPtr index, getPtr curve], void)

proc getGravityDampingCurve*(self: SpringBoneSimulator3D; index: int32): gdref Curve =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_gravity_damping_curve", 747537754)
  methodbind.ptrcall(self, [getPtr index], gdref Curve)

proc setGravityDirection*(self: SpringBoneSimulator3D; index: int32; gravityDirection: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_gravity_direction", 1530502735)
  methodbind.ptrcall(self, [getPtr index, getPtr gravityDirection], void)

proc getGravityDirection*(self: SpringBoneSimulator3D; index: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_gravity_direction", 711720468)
  methodbind.ptrcall(self, [getPtr index], Vector3)

proc setSettingCount*(self: SpringBoneSimulator3D; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_setting_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getSettingCount*(self: SpringBoneSimulator3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_setting_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc clearSettings*(self: SpringBoneSimulator3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "clear_settings", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setIndividualConfig*(self: SpringBoneSimulator3D; index: int32; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_individual_config", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled], void)

proc isConfigIndividual*(self: SpringBoneSimulator3D; index: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "is_config_individual", 1116898809)
  methodbind.ptrcall(self, [getPtr index], bool)

proc getJointBoneName*(self: SpringBoneSimulator3D; index: int32; joint: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_joint_bone_name", 1391810591)
  methodbind.ptrcall(self, [getPtr index, getPtr joint], String)

proc getJointBone*(self: SpringBoneSimulator3D; index: int32; joint: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_joint_bone", 3175239445)
  methodbind.ptrcall(self, [getPtr index, getPtr joint], int32)

proc setJointRotationAxis*(self: SpringBoneSimulator3D; index: int32; joint: int32; axis: SpringBoneSimulator3D_RotationAxis): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_joint_rotation_axis", 4224018032)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr axis], void)

proc getJointRotationAxis*(self: SpringBoneSimulator3D; index: int32; joint: int32): SpringBoneSimulator3D_RotationAxis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_joint_rotation_axis", 2488679199)
  methodbind.ptrcall(self, [getPtr index, getPtr joint], SpringBoneSimulator3D_RotationAxis)

proc setJointRotationAxisVector*(self: SpringBoneSimulator3D; index: int32; joint: int32; vector: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_joint_rotation_axis_vector", 2866752138)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr vector], void)

proc getJointRotationAxisVector*(self: SpringBoneSimulator3D; index: int32; joint: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_joint_rotation_axis_vector", 1592972041)
  methodbind.ptrcall(self, [getPtr index, getPtr joint], Vector3)

proc setJointRadius*(self: SpringBoneSimulator3D; index: int32; joint: int32; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_joint_radius", 3506521499)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr radius], void)

proc getJointRadius*(self: SpringBoneSimulator3D; index: int32; joint: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_joint_radius", 3085491603)
  methodbind.ptrcall(self, [getPtr index, getPtr joint], Float)

proc setJointStiffness*(self: SpringBoneSimulator3D; index: int32; joint: int32; stiffness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_joint_stiffness", 3506521499)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr stiffness], void)

proc getJointStiffness*(self: SpringBoneSimulator3D; index: int32; joint: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_joint_stiffness", 3085491603)
  methodbind.ptrcall(self, [getPtr index, getPtr joint], Float)

proc setJointDrag*(self: SpringBoneSimulator3D; index: int32; joint: int32; drag: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_joint_drag", 3506521499)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr drag], void)

proc getJointDrag*(self: SpringBoneSimulator3D; index: int32; joint: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_joint_drag", 3085491603)
  methodbind.ptrcall(self, [getPtr index, getPtr joint], Float)

proc setJointGravity*(self: SpringBoneSimulator3D; index: int32; joint: int32; gravity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_joint_gravity", 3506521499)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr gravity], void)

proc getJointGravity*(self: SpringBoneSimulator3D; index: int32; joint: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_joint_gravity", 3085491603)
  methodbind.ptrcall(self, [getPtr index, getPtr joint], Float)

proc setJointGravityDirection*(self: SpringBoneSimulator3D; index: int32; joint: int32; gravityDirection: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_joint_gravity_direction", 2866752138)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr gravityDirection], void)

proc getJointGravityDirection*(self: SpringBoneSimulator3D; index: int32; joint: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_joint_gravity_direction", 1592972041)
  methodbind.ptrcall(self, [getPtr index, getPtr joint], Vector3)

proc getJointCount*(self: SpringBoneSimulator3D; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_joint_count", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc setEnableAllChildCollisions*(self: SpringBoneSimulator3D; index: int32; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_enable_all_child_collisions", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled], void)

proc areAllChildCollisionsEnabled*(self: SpringBoneSimulator3D; index: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "are_all_child_collisions_enabled", 1116898809)
  methodbind.ptrcall(self, [getPtr index], bool)

proc setExcludeCollisionPath*(self: SpringBoneSimulator3D; index: int32; collision: int32; nodePath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_exclude_collision_path", 132481804)
  methodbind.ptrcall(self, [getPtr index, getPtr collision, getPtr nodePath], void)

proc getExcludeCollisionPath*(self: SpringBoneSimulator3D; index: int32; collision: int32): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_exclude_collision_path", 464924783)
  methodbind.ptrcall(self, [getPtr index, getPtr collision], NodePath)

proc setExcludeCollisionCount*(self: SpringBoneSimulator3D; index: int32; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_exclude_collision_count", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr count], void)

proc getExcludeCollisionCount*(self: SpringBoneSimulator3D; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_exclude_collision_count", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc clearExcludeCollisions*(self: SpringBoneSimulator3D; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "clear_exclude_collisions", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc setCollisionPath*(self: SpringBoneSimulator3D; index: int32; collision: int32; nodePath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_collision_path", 132481804)
  methodbind.ptrcall(self, [getPtr index, getPtr collision, getPtr nodePath], void)

proc getCollisionPath*(self: SpringBoneSimulator3D; index: int32; collision: int32): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_collision_path", 464924783)
  methodbind.ptrcall(self, [getPtr index, getPtr collision], NodePath)

proc setCollisionCount*(self: SpringBoneSimulator3D; index: int32; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_collision_count", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr count], void)

proc getCollisionCount*(self: SpringBoneSimulator3D; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_collision_count", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc clearCollisions*(self: SpringBoneSimulator3D; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "clear_collisions", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc setExternalForce*(self: SpringBoneSimulator3D; force: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "set_external_force", 3460891852)
  methodbind.ptrcall(self, [getPtr force], void)

proc getExternalForce*(self: SpringBoneSimulator3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "get_external_force", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc reset*(self: SpringBoneSimulator3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneSimulator3D, "reset", 3218959716)
  methodbind.ptrcall(self, [], void)

template externalForce*(self: SpringBoneSimulator3D): untyped = self.getExternalForce()
template `externalForce=`*(self: SpringBoneSimulator3D; value) = self.setExternalForce(value)

template settingCount*(self: SpringBoneSimulator3D): untyped = self.getSettingCount()
template `settingCount=`*(self: SpringBoneSimulator3D; value) = self.setSettingCount(value)

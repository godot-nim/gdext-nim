{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

proc setRootBoneName*(self: SpringBoneSimulator3D; index: int32; boneName: String): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_root_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName])

proc getRootBoneName*(self: SpringBoneSimulator3D; index: int32): String =
  expandMethodBind(className SpringBoneSimulator3D, "get_root_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc setRootBone*(self: SpringBoneSimulator3D; index: int32; bone: int32): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_root_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone])

proc getRootBone*(self: SpringBoneSimulator3D; index: int32): int32 =
  expandMethodBind(className SpringBoneSimulator3D, "get_root_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setEndBoneName*(self: SpringBoneSimulator3D; index: int32; boneName: String): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_end_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName])

proc getEndBoneName*(self: SpringBoneSimulator3D; index: int32): String =
  expandMethodBind(className SpringBoneSimulator3D, "get_end_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc setEndBone*(self: SpringBoneSimulator3D; index: int32; bone: int32): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_end_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone])

proc getEndBone*(self: SpringBoneSimulator3D; index: int32): int32 =
  expandMethodBind(className SpringBoneSimulator3D, "get_end_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setExtendEndBone*(self: SpringBoneSimulator3D; index: int32; enabled: bool): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_extend_end_bone", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isEndBoneExtended*(self: SpringBoneSimulator3D; index: int32): bool =
  expandMethodBind(className SpringBoneSimulator3D, "is_end_bone_extended", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setEndBoneDirection*(self: SpringBoneSimulator3D; index: int32; boneDirection: SpringBoneSimulator3D_BoneDirection): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_end_bone_direction", 204796492)
  methodbind.ptrcall(self, [getPtr index, getPtr boneDirection])

proc getEndBoneDirection*(self: SpringBoneSimulator3D; index: int32): SpringBoneSimulator3D_BoneDirection =
  expandMethodBind(className SpringBoneSimulator3D, "get_end_bone_direction", 2438315700)
  var ret: encoded SpringBoneSimulator3D_BoneDirection
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(SpringBoneSimulator3D_BoneDirection)

proc setEndBoneLength*(self: SpringBoneSimulator3D; index: int32; length: Float): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_end_bone_length", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr length])

proc getEndBoneLength*(self: SpringBoneSimulator3D; index: int32): Float =
  expandMethodBind(className SpringBoneSimulator3D, "get_end_bone_length", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc setCenterFrom*(self: SpringBoneSimulator3D; index: int32; centerFrom: SpringBoneSimulator3D_CenterFrom): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_center_from", 2551505749)
  methodbind.ptrcall(self, [getPtr index, getPtr centerFrom])

proc getCenterFrom*(self: SpringBoneSimulator3D; index: int32): SpringBoneSimulator3D_CenterFrom =
  expandMethodBind(className SpringBoneSimulator3D, "get_center_from", 2721930813)
  var ret: encoded SpringBoneSimulator3D_CenterFrom
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(SpringBoneSimulator3D_CenterFrom)

proc setCenterNode*(self: SpringBoneSimulator3D; index: int32; nodePath: NodePath): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_center_node", 2761262315)
  methodbind.ptrcall(self, [getPtr index, getPtr nodePath])

proc getCenterNode*(self: SpringBoneSimulator3D; index: int32): NodePath =
  expandMethodBind(className SpringBoneSimulator3D, "get_center_node", 408788394)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(NodePath)

proc setCenterBoneName*(self: SpringBoneSimulator3D; index: int32; boneName: String): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_center_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName])

proc getCenterBoneName*(self: SpringBoneSimulator3D; index: int32): String =
  expandMethodBind(className SpringBoneSimulator3D, "get_center_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc setCenterBone*(self: SpringBoneSimulator3D; index: int32; bone: int32): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_center_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone])

proc getCenterBone*(self: SpringBoneSimulator3D; index: int32): int32 =
  expandMethodBind(className SpringBoneSimulator3D, "get_center_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setRadius*(self: SpringBoneSimulator3D; index: int32; radius: Float): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_radius", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr radius])

proc getRadius*(self: SpringBoneSimulator3D; index: int32): Float =
  expandMethodBind(className SpringBoneSimulator3D, "get_radius", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc setRotationAxis*(self: SpringBoneSimulator3D; index: int32; axis: SpringBoneSimulator3D_RotationAxis): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_rotation_axis", 3534169209)
  methodbind.ptrcall(self, [getPtr index, getPtr axis])

proc getRotationAxis*(self: SpringBoneSimulator3D; index: int32): SpringBoneSimulator3D_RotationAxis =
  expandMethodBind(className SpringBoneSimulator3D, "get_rotation_axis", 748837671)
  var ret: encoded SpringBoneSimulator3D_RotationAxis
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(SpringBoneSimulator3D_RotationAxis)

proc setRadiusDampingCurve*(self: SpringBoneSimulator3D; index: int32; curve: gdref Curve): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_radius_damping_curve", 1447180063)
  methodbind.ptrcall(self, [getPtr index, getPtr curve])

proc getRadiusDampingCurve*(self: SpringBoneSimulator3D; index: int32): gdref Curve =
  expandMethodBind(className SpringBoneSimulator3D, "get_radius_damping_curve", 747537754)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(gdref Curve)

proc setStiffness*(self: SpringBoneSimulator3D; index: int32; stiffness: Float): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_stiffness", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr stiffness])

proc getStiffness*(self: SpringBoneSimulator3D; index: int32): Float =
  expandMethodBind(className SpringBoneSimulator3D, "get_stiffness", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc setStiffnessDampingCurve*(self: SpringBoneSimulator3D; index: int32; curve: gdref Curve): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_stiffness_damping_curve", 1447180063)
  methodbind.ptrcall(self, [getPtr index, getPtr curve])

proc getStiffnessDampingCurve*(self: SpringBoneSimulator3D; index: int32): gdref Curve =
  expandMethodBind(className SpringBoneSimulator3D, "get_stiffness_damping_curve", 747537754)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(gdref Curve)

proc setDrag*(self: SpringBoneSimulator3D; index: int32; drag: Float): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_drag", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr drag])

proc getDrag*(self: SpringBoneSimulator3D; index: int32): Float =
  expandMethodBind(className SpringBoneSimulator3D, "get_drag", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc setDragDampingCurve*(self: SpringBoneSimulator3D; index: int32; curve: gdref Curve): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_drag_damping_curve", 1447180063)
  methodbind.ptrcall(self, [getPtr index, getPtr curve])

proc getDragDampingCurve*(self: SpringBoneSimulator3D; index: int32): gdref Curve =
  expandMethodBind(className SpringBoneSimulator3D, "get_drag_damping_curve", 747537754)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(gdref Curve)

proc setGravity*(self: SpringBoneSimulator3D; index: int32; gravity: Float): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_gravity", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr gravity])

proc getGravity*(self: SpringBoneSimulator3D; index: int32): Float =
  expandMethodBind(className SpringBoneSimulator3D, "get_gravity", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc setGravityDampingCurve*(self: SpringBoneSimulator3D; index: int32; curve: gdref Curve): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_gravity_damping_curve", 1447180063)
  methodbind.ptrcall(self, [getPtr index, getPtr curve])

proc getGravityDampingCurve*(self: SpringBoneSimulator3D; index: int32): gdref Curve =
  expandMethodBind(className SpringBoneSimulator3D, "get_gravity_damping_curve", 747537754)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(gdref Curve)

proc setGravityDirection*(self: SpringBoneSimulator3D; index: int32; gravityDirection: Vector3): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_gravity_direction", 1530502735)
  methodbind.ptrcall(self, [getPtr index, getPtr gravityDirection])

proc getGravityDirection*(self: SpringBoneSimulator3D; index: int32): Vector3 =
  expandMethodBind(className SpringBoneSimulator3D, "get_gravity_direction", 711720468)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Vector3)

proc setSettingCount*(self: SpringBoneSimulator3D; count: int32): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_setting_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count])

proc getSettingCount*(self: SpringBoneSimulator3D): int32 =
  expandMethodBind(className SpringBoneSimulator3D, "get_setting_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc clearSettings*(self: SpringBoneSimulator3D): void =
  expandMethodBind(className SpringBoneSimulator3D, "clear_settings", 3218959716)
  methodbind.ptrcall(self, [])

proc setIndividualConfig*(self: SpringBoneSimulator3D; index: int32; enabled: bool): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_individual_config", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isConfigIndividual*(self: SpringBoneSimulator3D; index: int32): bool =
  expandMethodBind(className SpringBoneSimulator3D, "is_config_individual", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc getJointBoneName*(self: SpringBoneSimulator3D; index: int32; joint: int32): String =
  expandMethodBind(className SpringBoneSimulator3D, "get_joint_bone_name", 1391810591)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(String)

proc getJointBone*(self: SpringBoneSimulator3D; index: int32; joint: int32): int32 =
  expandMethodBind(className SpringBoneSimulator3D, "get_joint_bone", 3175239445)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(int32)

proc setJointRotationAxis*(self: SpringBoneSimulator3D; index: int32; joint: int32; axis: SpringBoneSimulator3D_RotationAxis): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_joint_rotation_axis", 4224018032)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr axis])

proc getJointRotationAxis*(self: SpringBoneSimulator3D; index: int32; joint: int32): SpringBoneSimulator3D_RotationAxis =
  expandMethodBind(className SpringBoneSimulator3D, "get_joint_rotation_axis", 2488679199)
  var ret: encoded SpringBoneSimulator3D_RotationAxis
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(SpringBoneSimulator3D_RotationAxis)

proc setJointRadius*(self: SpringBoneSimulator3D; index: int32; joint: int32; radius: Float): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_joint_radius", 3506521499)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr radius])

proc getJointRadius*(self: SpringBoneSimulator3D; index: int32; joint: int32): Float =
  expandMethodBind(className SpringBoneSimulator3D, "get_joint_radius", 3085491603)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(Float)

proc setJointStiffness*(self: SpringBoneSimulator3D; index: int32; joint: int32; stiffness: Float): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_joint_stiffness", 3506521499)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr stiffness])

proc getJointStiffness*(self: SpringBoneSimulator3D; index: int32; joint: int32): Float =
  expandMethodBind(className SpringBoneSimulator3D, "get_joint_stiffness", 3085491603)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(Float)

proc setJointDrag*(self: SpringBoneSimulator3D; index: int32; joint: int32; drag: Float): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_joint_drag", 3506521499)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr drag])

proc getJointDrag*(self: SpringBoneSimulator3D; index: int32; joint: int32): Float =
  expandMethodBind(className SpringBoneSimulator3D, "get_joint_drag", 3085491603)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(Float)

proc setJointGravity*(self: SpringBoneSimulator3D; index: int32; joint: int32; gravity: Float): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_joint_gravity", 3506521499)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr gravity])

proc getJointGravity*(self: SpringBoneSimulator3D; index: int32; joint: int32): Float =
  expandMethodBind(className SpringBoneSimulator3D, "get_joint_gravity", 3085491603)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(Float)

proc setJointGravityDirection*(self: SpringBoneSimulator3D; index: int32; joint: int32; gravityDirection: Vector3): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_joint_gravity_direction", 2866752138)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr gravityDirection])

proc getJointGravityDirection*(self: SpringBoneSimulator3D; index: int32; joint: int32): Vector3 =
  expandMethodBind(className SpringBoneSimulator3D, "get_joint_gravity_direction", 1592972041)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(Vector3)

proc getJointCount*(self: SpringBoneSimulator3D; index: int32): int32 =
  expandMethodBind(className SpringBoneSimulator3D, "get_joint_count", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setEnableAllChildCollisions*(self: SpringBoneSimulator3D; index: int32; enabled: bool): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_enable_all_child_collisions", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc areAllChildCollisionsEnabled*(self: SpringBoneSimulator3D; index: int32): bool =
  expandMethodBind(className SpringBoneSimulator3D, "are_all_child_collisions_enabled", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setExcludeCollisionPath*(self: SpringBoneSimulator3D; index: int32; collision: int32; nodePath: NodePath): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_exclude_collision_path", 132481804)
  methodbind.ptrcall(self, [getPtr index, getPtr collision, getPtr nodePath])

proc getExcludeCollisionPath*(self: SpringBoneSimulator3D; index: int32; collision: int32): NodePath =
  expandMethodBind(className SpringBoneSimulator3D, "get_exclude_collision_path", 464924783)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr index, getPtr collision], addr ret)
  (addr ret).decode_result(NodePath)

proc setExcludeCollisionCount*(self: SpringBoneSimulator3D; index: int32; count: int32): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_exclude_collision_count", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr count])

proc getExcludeCollisionCount*(self: SpringBoneSimulator3D; index: int32): int32 =
  expandMethodBind(className SpringBoneSimulator3D, "get_exclude_collision_count", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc clearExcludeCollisions*(self: SpringBoneSimulator3D; index: int32): void =
  expandMethodBind(className SpringBoneSimulator3D, "clear_exclude_collisions", 1286410249)
  methodbind.ptrcall(self, [getPtr index])

proc setCollisionPath*(self: SpringBoneSimulator3D; index: int32; collision: int32; nodePath: NodePath): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_collision_path", 132481804)
  methodbind.ptrcall(self, [getPtr index, getPtr collision, getPtr nodePath])

proc getCollisionPath*(self: SpringBoneSimulator3D; index: int32; collision: int32): NodePath =
  expandMethodBind(className SpringBoneSimulator3D, "get_collision_path", 464924783)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr index, getPtr collision], addr ret)
  (addr ret).decode_result(NodePath)

proc setCollisionCount*(self: SpringBoneSimulator3D; index: int32; count: int32): void =
  expandMethodBind(className SpringBoneSimulator3D, "set_collision_count", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr count])

proc getCollisionCount*(self: SpringBoneSimulator3D; index: int32): int32 =
  expandMethodBind(className SpringBoneSimulator3D, "get_collision_count", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc clearCollisions*(self: SpringBoneSimulator3D; index: int32): void =
  expandMethodBind(className SpringBoneSimulator3D, "clear_collisions", 1286410249)
  methodbind.ptrcall(self, [getPtr index])

proc reset*(self: SpringBoneSimulator3D): void =
  expandMethodBind(className SpringBoneSimulator3D, "reset", 3218959716)
  methodbind.ptrcall(self, [])

template settingCount*(self: SpringBoneSimulator3D): untyped = self.getSettingCount()
template `settingCount=`*(self: SpringBoneSimulator3D; value) = self.setSettingCount(value)

const SpringBoneSimulator3D_vmap =
  SkeletonModifier3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SpringBoneSimulator3D]): Table[string, string] = SpringBoneSimulator3D_vmap
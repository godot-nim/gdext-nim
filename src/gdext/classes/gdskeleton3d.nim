{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(Skeleton3D, Node3D)

const NotificationUpdateSkeleton* = 50

proc addBone*(self: Skeleton3D; name: String): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "add_bone", 1597066294)
  methodbind.ptrcall(self, [getPtr name], int32)

proc findBone*(self: Skeleton3D; name: String): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "find_bone", 1321353865)
  methodbind.ptrcall(self, [getPtr name], int32)

proc getBoneName*(self: Skeleton3D; boneIdx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_name", 844755477)
  methodbind.ptrcall(self, [getPtr boneIdx], String)

proc setBoneName*(self: Skeleton3D; boneIdx: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr name], void)

proc getBoneMeta*(self: Skeleton3D; boneIdx: int32; key: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_meta", 203112058)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr key], Variant)

proc getBoneMetaList*(self: Skeleton3D; boneIdx: int32): TypedArray[StringName] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_meta_list", 663333327)
  methodbind.ptrcall(self, [getPtr boneIdx], TypedArray[StringName])

proc hasBoneMeta*(self: Skeleton3D; boneIdx: int32; key: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "has_bone_meta", 921227809)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr key], bool)

proc setBoneMeta*(self: Skeleton3D; boneIdx: int32; key: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_bone_meta", 702482756)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr key, getPtr value], void)

proc getConcatenatedBoneNames*(self: Skeleton3D): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_concatenated_bone_names", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc getBoneParent*(self: Skeleton3D; boneIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_parent", 923996154)
  methodbind.ptrcall(self, [getPtr boneIdx], int32)

proc setBoneParent*(self: Skeleton3D; boneIdx: int32; parentIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_bone_parent", 3937882851)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr parentIdx], void)

proc getBoneCount*(self: Skeleton3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getVersion*(self: Skeleton3D): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_version", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc unparentBoneAndRest*(self: Skeleton3D; boneIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "unparent_bone_and_rest", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIdx], void)

proc getBoneChildren*(self: Skeleton3D; boneIdx: int32): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_children", 1706082319)
  methodbind.ptrcall(self, [getPtr boneIdx], PackedInt32Array)

proc getParentlessBones*(self: Skeleton3D): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_parentless_bones", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc getBoneRest*(self: Skeleton3D; boneIdx: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_rest", 1965739696)
  methodbind.ptrcall(self, [getPtr boneIdx], Transform3D)

proc setBoneRest*(self: Skeleton3D; boneIdx: int32; rest: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_bone_rest", 3616898986)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr rest], void)

proc getBoneGlobalRest*(self: Skeleton3D; boneIdx: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_global_rest", 1965739696)
  methodbind.ptrcall(self, [getPtr boneIdx], Transform3D)

proc createSkinFromRestTransforms*(self: Skeleton3D): gdref Skin =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "create_skin_from_rest_transforms", 1032037385)
  methodbind.ptrcall(self, [], gdref Skin)

proc registerSkin*(self: Skeleton3D; skin: gdref Skin): gdref SkinReference =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "register_skin", 3405789568)
  methodbind.ptrcall(self, [getPtr skin], gdref SkinReference)

proc localizeRests*(self: Skeleton3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "localize_rests", 3218959716)
  methodbind.ptrcall(self, [], void)

proc clearBones*(self: Skeleton3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "clear_bones", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getBonePose*(self: Skeleton3D; boneIdx: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_pose", 1965739696)
  methodbind.ptrcall(self, [getPtr boneIdx], Transform3D)

proc setBonePose*(self: Skeleton3D; boneIdx: int32; pose: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_bone_pose", 3616898986)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr pose], void)

proc setBonePosePosition*(self: Skeleton3D; boneIdx: int32; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_bone_pose_position", 1530502735)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr position], void)

proc setBonePoseRotation*(self: Skeleton3D; boneIdx: int32; rotation: Quaternion): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_bone_pose_rotation", 2823819782)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr rotation], void)

proc setBonePoseScale*(self: Skeleton3D; boneIdx: int32; scale: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_bone_pose_scale", 1530502735)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr scale], void)

proc getBonePosePosition*(self: Skeleton3D; boneIdx: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_pose_position", 711720468)
  methodbind.ptrcall(self, [getPtr boneIdx], Vector3)

proc getBonePoseRotation*(self: Skeleton3D; boneIdx: int32): Quaternion =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_pose_rotation", 476865136)
  methodbind.ptrcall(self, [getPtr boneIdx], Quaternion)

proc getBonePoseScale*(self: Skeleton3D; boneIdx: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_pose_scale", 711720468)
  methodbind.ptrcall(self, [getPtr boneIdx], Vector3)

proc resetBonePose*(self: Skeleton3D; boneIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "reset_bone_pose", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIdx], void)

proc resetBonePoses*(self: Skeleton3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "reset_bone_poses", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isBoneEnabled*(self: Skeleton3D; boneIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "is_bone_enabled", 1116898809)
  methodbind.ptrcall(self, [getPtr boneIdx], bool)

proc setBoneEnabled*(self: Skeleton3D; boneIdx: int32; enabled: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_bone_enabled", 972357352)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr enabled], void)

proc getBoneGlobalPose*(self: Skeleton3D; boneIdx: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_global_pose", 1965739696)
  methodbind.ptrcall(self, [getPtr boneIdx], Transform3D)

proc setBoneGlobalPose*(self: Skeleton3D; boneIdx: int32; pose: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_bone_global_pose", 3616898986)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr pose], void)

proc forceUpdateAllBoneTransforms*(self: Skeleton3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "force_update_all_bone_transforms", 3218959716)
  methodbind.ptrcall(self, [], void)

proc forceUpdateBoneChildTransform*(self: Skeleton3D; boneIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "force_update_bone_child_transform", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIdx], void)

proc setMotionScale*(self: Skeleton3D; motionScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_motion_scale", 373806689)
  methodbind.ptrcall(self, [getPtr motionScale], void)

proc getMotionScale*(self: Skeleton3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_motion_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setShowRestOnly*(self: Skeleton3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_show_rest_only", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isShowRestOnly*(self: Skeleton3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "is_show_rest_only", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setModifierCallbackModeProcess*(self: Skeleton3D; mode: Skeleton3D_ModifierCallbackModeProcess): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_modifier_callback_mode_process", 3916362634)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getModifierCallbackModeProcess*(self: Skeleton3D): Skeleton3D_ModifierCallbackModeProcess =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_modifier_callback_mode_process", 997182536)
  methodbind.ptrcall(self, [], Skeleton3D_ModifierCallbackModeProcess)

proc advance*(self: Skeleton3D; delta: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "advance", 373806689)
  methodbind.ptrcall(self, [getPtr delta], void)

proc clearBonesGlobalPoseOverride*(self: Skeleton3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "clear_bones_global_pose_override", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setBoneGlobalPoseOverride*(self: Skeleton3D; boneIdx: int32; pose: Transform3D; amount: Float; persistent: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_bone_global_pose_override", 3483398371)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr pose, getPtr amount, getPtr persistent], void)

proc getBoneGlobalPoseOverride*(self: Skeleton3D; boneIdx: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_global_pose_override", 1965739696)
  methodbind.ptrcall(self, [getPtr boneIdx], Transform3D)

proc getBoneGlobalPoseNoOverride*(self: Skeleton3D; boneIdx: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_bone_global_pose_no_override", 1965739696)
  methodbind.ptrcall(self, [getPtr boneIdx], Transform3D)

proc setAnimatePhysicalBones*(self: Skeleton3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "set_animate_physical_bones", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getAnimatePhysicalBones*(self: Skeleton3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "get_animate_physical_bones", 36873697)
  methodbind.ptrcall(self, [], bool)

proc physicalBonesStopSimulation*(self: Skeleton3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "physical_bones_stop_simulation", 3218959716)
  methodbind.ptrcall(self, [], void)

proc physicalBonesStartSimulation*(self: Skeleton3D; bones: TypedArray[StringName] = newTypedArray[StringName]()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "physical_bones_start_simulation", 2787316981)
  methodbind.ptrcall(self, [getPtr bones], void)

proc physicalBonesAddCollisionException*(self: Skeleton3D; exception: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "physical_bones_add_collision_exception", 2722037293)
  methodbind.ptrcall(self, [getPtr exception], void)

proc physicalBonesRemoveCollisionException*(self: Skeleton3D; exception: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton3D, "physical_bones_remove_collision_exception", 2722037293)
  methodbind.ptrcall(self, [getPtr exception], void)

template motionScale*(self: Skeleton3D): untyped = self.getMotionScale()
template `motionScale=`*(self: Skeleton3D; value) = self.setMotionScale(value)

template showRestOnly*(self: Skeleton3D): untyped = self.isShowRestOnly()
template `showRestOnly=`*(self: Skeleton3D; value) = self.setShowRestOnly(value)

template modifierCallbackModeProcess*(self: Skeleton3D): untyped = self.getModifierCallbackModeProcess()
template `modifierCallbackModeProcess=`*(self: Skeleton3D; value) = self.setModifierCallbackModeProcess(value)

template animatePhysicalBones*(self: Skeleton3D): untyped = self.getAnimatePhysicalBones()
template `animatePhysicalBones=`*(self: Skeleton3D; value) = self.setAnimatePhysicalBones(value)

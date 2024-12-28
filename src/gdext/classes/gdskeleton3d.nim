{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc addBone*(self: Skeleton3D; name: String): int32 =
  expandMethodBind(className Skeleton3D, "add_bone", 1597066294)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(int32)

proc findBone*(self: Skeleton3D; name: String): int32 =
  expandMethodBind(className Skeleton3D, "find_bone", 1321353865)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(int32)

proc getBoneName*(self: Skeleton3D; boneIdx: int32): String =
  expandMethodBind(className Skeleton3D, "get_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr boneIdx], addr ret)
  (addr ret).decode_result(String)

proc setBoneName*(self: Skeleton3D; boneIdx: int32; name: String): void =
  expandMethodBind(className Skeleton3D, "set_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr name])

proc getConcatenatedBoneNames*(self: Skeleton3D): StringName =
  expandMethodBind(className Skeleton3D, "get_concatenated_bone_names", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc getBoneParent*(self: Skeleton3D; boneIdx: int32): int32 =
  expandMethodBind(className Skeleton3D, "get_bone_parent", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr boneIdx], addr ret)
  (addr ret).decode_result(int32)

proc setBoneParent*(self: Skeleton3D; boneIdx: int32; parentIdx: int32): void =
  expandMethodBind(className Skeleton3D, "set_bone_parent", 3937882851)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr parentIdx])

proc getBoneCount*(self: Skeleton3D): int32 =
  expandMethodBind(className Skeleton3D, "get_bone_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getVersion*(self: Skeleton3D): uint64 =
  expandMethodBind(className Skeleton3D, "get_version", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc unparentBoneAndRest*(self: Skeleton3D; boneIdx: int32): void =
  expandMethodBind(className Skeleton3D, "unparent_bone_and_rest", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIdx])

proc getBoneChildren*(self: Skeleton3D; boneIdx: int32): PackedInt32Array =
  expandMethodBind(className Skeleton3D, "get_bone_children", 1706082319)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr boneIdx], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getParentlessBones*(self: Skeleton3D): PackedInt32Array =
  expandMethodBind(className Skeleton3D, "get_parentless_bones", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getBoneRest*(self: Skeleton3D; boneIdx: int32): Transform3D =
  expandMethodBind(className Skeleton3D, "get_bone_rest", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr boneIdx], addr ret)
  (addr ret).decode_result(Transform3D)

proc setBoneRest*(self: Skeleton3D; boneIdx: int32; rest: Transform3D): void =
  expandMethodBind(className Skeleton3D, "set_bone_rest", 3616898986)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr rest])

proc getBoneGlobalRest*(self: Skeleton3D; boneIdx: int32): Transform3D =
  expandMethodBind(className Skeleton3D, "get_bone_global_rest", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr boneIdx], addr ret)
  (addr ret).decode_result(Transform3D)

proc createSkinFromRestTransforms*(self: Skeleton3D): gdref Skin =
  expandMethodBind(className Skeleton3D, "create_skin_from_rest_transforms", 1032037385)
  var ret: encoded gdref Skin
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Skin)

proc registerSkin*(self: Skeleton3D; skin: gdref Skin): gdref SkinReference =
  expandMethodBind(className Skeleton3D, "register_skin", 3405789568)
  var ret: encoded gdref SkinReference
  methodbind.ptrcall(self, [getPtr skin], addr ret)
  (addr ret).decode_result(gdref SkinReference)

proc localizeRests*(self: Skeleton3D): void =
  expandMethodBind(className Skeleton3D, "localize_rests", 3218959716)
  methodbind.ptrcall(self, [])

proc clearBones*(self: Skeleton3D): void =
  expandMethodBind(className Skeleton3D, "clear_bones", 3218959716)
  methodbind.ptrcall(self, [])

proc getBonePose*(self: Skeleton3D; boneIdx: int32): Transform3D =
  expandMethodBind(className Skeleton3D, "get_bone_pose", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr boneIdx], addr ret)
  (addr ret).decode_result(Transform3D)

proc setBonePose*(self: Skeleton3D; boneIdx: int32; pose: Transform3D): void =
  expandMethodBind(className Skeleton3D, "set_bone_pose", 3616898986)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr pose])

proc setBonePosePosition*(self: Skeleton3D; boneIdx: int32; position: Vector3): void =
  expandMethodBind(className Skeleton3D, "set_bone_pose_position", 1530502735)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr position])

proc setBonePoseRotation*(self: Skeleton3D; boneIdx: int32; rotation: Quaternion): void =
  expandMethodBind(className Skeleton3D, "set_bone_pose_rotation", 2823819782)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr rotation])

proc setBonePoseScale*(self: Skeleton3D; boneIdx: int32; scale: Vector3): void =
  expandMethodBind(className Skeleton3D, "set_bone_pose_scale", 1530502735)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr scale])

proc getBonePosePosition*(self: Skeleton3D; boneIdx: int32): Vector3 =
  expandMethodBind(className Skeleton3D, "get_bone_pose_position", 711720468)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr boneIdx], addr ret)
  (addr ret).decode_result(Vector3)

proc getBonePoseRotation*(self: Skeleton3D; boneIdx: int32): Quaternion =
  expandMethodBind(className Skeleton3D, "get_bone_pose_rotation", 476865136)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, [getPtr boneIdx], addr ret)
  (addr ret).decode_result(Quaternion)

proc getBonePoseScale*(self: Skeleton3D; boneIdx: int32): Vector3 =
  expandMethodBind(className Skeleton3D, "get_bone_pose_scale", 711720468)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr boneIdx], addr ret)
  (addr ret).decode_result(Vector3)

proc resetBonePose*(self: Skeleton3D; boneIdx: int32): void =
  expandMethodBind(className Skeleton3D, "reset_bone_pose", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIdx])

proc resetBonePoses*(self: Skeleton3D): void =
  expandMethodBind(className Skeleton3D, "reset_bone_poses", 3218959716)
  methodbind.ptrcall(self, [])

proc isBoneEnabled*(self: Skeleton3D; boneIdx: int32): bool =
  expandMethodBind(className Skeleton3D, "is_bone_enabled", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr boneIdx], addr ret)
  (addr ret).decode_result(bool)

proc setBoneEnabled*(self: Skeleton3D; boneIdx: int32; enabled: bool = true): void =
  expandMethodBind(className Skeleton3D, "set_bone_enabled", 972357352)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr enabled])

proc getBoneGlobalPose*(self: Skeleton3D; boneIdx: int32): Transform3D =
  expandMethodBind(className Skeleton3D, "get_bone_global_pose", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr boneIdx], addr ret)
  (addr ret).decode_result(Transform3D)

proc setBoneGlobalPose*(self: Skeleton3D; boneIdx: int32; pose: Transform3D): void =
  expandMethodBind(className Skeleton3D, "set_bone_global_pose", 3616898986)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr pose])

proc forceUpdateAllBoneTransforms*(self: Skeleton3D): void =
  expandMethodBind(className Skeleton3D, "force_update_all_bone_transforms", 3218959716)
  methodbind.ptrcall(self, [])

proc forceUpdateBoneChildTransform*(self: Skeleton3D; boneIdx: int32): void =
  expandMethodBind(className Skeleton3D, "force_update_bone_child_transform", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIdx])

proc setMotionScale*(self: Skeleton3D; motionScale: Float): void =
  expandMethodBind(className Skeleton3D, "set_motion_scale", 373806689)
  methodbind.ptrcall(self, [getPtr motionScale])

proc getMotionScale*(self: Skeleton3D): Float =
  expandMethodBind(className Skeleton3D, "get_motion_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setShowRestOnly*(self: Skeleton3D; enabled: bool): void =
  expandMethodBind(className Skeleton3D, "set_show_rest_only", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isShowRestOnly*(self: Skeleton3D): bool =
  expandMethodBind(className Skeleton3D, "is_show_rest_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setModifierCallbackModeProcess*(self: Skeleton3D; mode: Skeleton3D_ModifierCallbackModeProcess): void =
  expandMethodBind(className Skeleton3D, "set_modifier_callback_mode_process", 3916362634)
  methodbind.ptrcall(self, [getPtr mode])

proc getModifierCallbackModeProcess*(self: Skeleton3D): Skeleton3D_ModifierCallbackModeProcess =
  expandMethodBind(className Skeleton3D, "get_modifier_callback_mode_process", 997182536)
  var ret: encoded Skeleton3D_ModifierCallbackModeProcess
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Skeleton3D_ModifierCallbackModeProcess)

proc clearBonesGlobalPoseOverride*(self: Skeleton3D): void =
  expandMethodBind(className Skeleton3D, "clear_bones_global_pose_override", 3218959716)
  methodbind.ptrcall(self, [])

proc setBoneGlobalPoseOverride*(self: Skeleton3D; boneIdx: int32; pose: Transform3D; amount: Float; persistent: bool = false): void =
  expandMethodBind(className Skeleton3D, "set_bone_global_pose_override", 3483398371)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr pose, getPtr amount, getPtr persistent])

proc getBoneGlobalPoseOverride*(self: Skeleton3D; boneIdx: int32): Transform3D =
  expandMethodBind(className Skeleton3D, "get_bone_global_pose_override", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr boneIdx], addr ret)
  (addr ret).decode_result(Transform3D)

proc getBoneGlobalPoseNoOverride*(self: Skeleton3D; boneIdx: int32): Transform3D =
  expandMethodBind(className Skeleton3D, "get_bone_global_pose_no_override", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr boneIdx], addr ret)
  (addr ret).decode_result(Transform3D)

proc setAnimatePhysicalBones*(self: Skeleton3D; enabled: bool): void =
  expandMethodBind(className Skeleton3D, "set_animate_physical_bones", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getAnimatePhysicalBones*(self: Skeleton3D): bool =
  expandMethodBind(className Skeleton3D, "get_animate_physical_bones", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc physicalBonesStopSimulation*(self: Skeleton3D): void =
  expandMethodBind(className Skeleton3D, "physical_bones_stop_simulation", 3218959716)
  methodbind.ptrcall(self, [])

proc physicalBonesStartSimulation*(self: Skeleton3D; bones: TypedArray[StringName] = TypedArray[StringName](gdarray())): void =
  expandMethodBind(className Skeleton3D, "physical_bones_start_simulation", 2787316981)
  methodbind.ptrcall(self, [getPtr bones])

proc physicalBonesAddCollisionException*(self: Skeleton3D; exception: RID): void =
  expandMethodBind(className Skeleton3D, "physical_bones_add_collision_exception", 2722037293)
  methodbind.ptrcall(self, [getPtr exception])

proc physicalBonesRemoveCollisionException*(self: Skeleton3D; exception: RID): void =
  expandMethodBind(className Skeleton3D, "physical_bones_remove_collision_exception", 2722037293)
  methodbind.ptrcall(self, [getPtr exception])

template motionScale*(self: Skeleton3D): untyped = self.getMotionScale()
template `motionScale=`*(self: Skeleton3D; value) = self.setMotionScale(value)

template showRestOnly*(self: Skeleton3D): untyped = self.isShowRestOnly()
template `showRestOnly=`*(self: Skeleton3D; value) = self.setShowRestOnly(value)

template modifierCallbackModeProcess*(self: Skeleton3D): untyped = self.getModifierCallbackModeProcess()
template `modifierCallbackModeProcess=`*(self: Skeleton3D; value) = self.setModifierCallbackModeProcess(value)

template animatePhysicalBones*(self: Skeleton3D): untyped = self.getAnimatePhysicalBones()
template `animatePhysicalBones=`*(self: Skeleton3D; value) = self.setAnimatePhysicalBones(value)

const Skeleton3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Skeleton3D]): Table[string, string] = Skeleton3D_vmap

proc poseUpdated*(self: Skeleton3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pose_updated")
  self.emitSignal(signalname)

proc skeletonUpdated*(self: Skeleton3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("skeleton_updated")
  self.emitSignal(signalname)

proc boneEnabledChanged*(self: Skeleton3D; boneIdx: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("bone_enabled_changed")
  let args = [boneIdx]
  self.emitSignal(signalname, args)

proc boneListChanged*(self: Skeleton3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("bone_list_changed")
  self.emitSignal(signalname)

proc showRestOnlyChanged*(self: Skeleton3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("show_rest_only_changed")
  self.emitSignal(signalname)
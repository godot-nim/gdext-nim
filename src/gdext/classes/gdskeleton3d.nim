{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc addBone*(self: Skeleton3D; name: String): int32 =
  expandMethodBind(className Skeleton3D, "add_bone", 1597066294)
  var `?param` = [getPtr name]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc findBone*(self: Skeleton3D; name: String): int32 =
  expandMethodBind(className Skeleton3D, "find_bone", 1321353865)
  var `?param` = [getPtr name]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getBoneName*(self: Skeleton3D; boneIdx: int32): String =
  expandMethodBind(className Skeleton3D, "get_bone_name", 844755477)
  var `?param` = [getPtr boneIdx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setBoneName*(self: Skeleton3D; boneIdx: int32; name: String): void =
  expandMethodBind(className Skeleton3D, "set_bone_name", 501894301)
  var `?param` = [getPtr boneIdx, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConcatenatedBoneNames*(self: Skeleton3D): StringName =
  expandMethodBind(className Skeleton3D, "get_concatenated_bone_names", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc getBoneParent*(self: Skeleton3D; boneIdx: int32): int32 =
  expandMethodBind(className Skeleton3D, "get_bone_parent", 923996154)
  var `?param` = [getPtr boneIdx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setBoneParent*(self: Skeleton3D; boneIdx: int32; parentIdx: int32): void =
  expandMethodBind(className Skeleton3D, "set_bone_parent", 3937882851)
  var `?param` = [getPtr boneIdx, getPtr parentIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneCount*(self: Skeleton3D): int32 =
  expandMethodBind(className Skeleton3D, "get_bone_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getVersion*(self: Skeleton3D): uint64 =
  expandMethodBind(className Skeleton3D, "get_version", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc unparentBoneAndRest*(self: Skeleton3D; boneIdx: int32): void =
  expandMethodBind(className Skeleton3D, "unparent_bone_and_rest", 1286410249)
  var `?param` = [getPtr boneIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneChildren*(self: Skeleton3D; boneIdx: int32): PackedInt32Array =
  expandMethodBind(className Skeleton3D, "get_bone_children", 1706082319)
  var `?param` = [getPtr boneIdx]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getParentlessBones*(self: Skeleton3D): PackedInt32Array =
  expandMethodBind(className Skeleton3D, "get_parentless_bones", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getBoneRest*(self: Skeleton3D; boneIdx: int32): Transform3D =
  expandMethodBind(className Skeleton3D, "get_bone_rest", 1965739696)
  var `?param` = [getPtr boneIdx]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc setBoneRest*(self: Skeleton3D; boneIdx: int32; rest: Transform3D): void =
  expandMethodBind(className Skeleton3D, "set_bone_rest", 3616898986)
  var `?param` = [getPtr boneIdx, getPtr rest]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneGlobalRest*(self: Skeleton3D; boneIdx: int32): Transform3D =
  expandMethodBind(className Skeleton3D, "get_bone_global_rest", 1965739696)
  var `?param` = [getPtr boneIdx]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc createSkinFromRestTransforms*(self: Skeleton3D): gdref Skin =
  expandMethodBind(className Skeleton3D, "create_skin_from_rest_transforms", 1032037385)
  var ret: encoded gdref Skin
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Skin)

proc registerSkin*(self: Skeleton3D; skin: gdref Skin): gdref SkinReference =
  expandMethodBind(className Skeleton3D, "register_skin", 3405789568)
  var `?param` = [getPtr skin]
  var ret: encoded gdref SkinReference
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref SkinReference)

proc localizeRests*(self: Skeleton3D): void =
  expandMethodBind(className Skeleton3D, "localize_rests", 3218959716)
  methodbind.ptrcall(self, nil)

proc clearBones*(self: Skeleton3D): void =
  expandMethodBind(className Skeleton3D, "clear_bones", 3218959716)
  methodbind.ptrcall(self, nil)

proc getBonePose*(self: Skeleton3D; boneIdx: int32): Transform3D =
  expandMethodBind(className Skeleton3D, "get_bone_pose", 1965739696)
  var `?param` = [getPtr boneIdx]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc setBonePose*(self: Skeleton3D; boneIdx: int32; pose: Transform3D): void =
  expandMethodBind(className Skeleton3D, "set_bone_pose", 3616898986)
  var `?param` = [getPtr boneIdx, getPtr pose]
  methodbind.ptrcall(self, addr `?param`[0])

proc setBonePosePosition*(self: Skeleton3D; boneIdx: int32; position: Vector3): void =
  expandMethodBind(className Skeleton3D, "set_bone_pose_position", 1530502735)
  var `?param` = [getPtr boneIdx, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc setBonePoseRotation*(self: Skeleton3D; boneIdx: int32; rotation: Quaternion): void =
  expandMethodBind(className Skeleton3D, "set_bone_pose_rotation", 2823819782)
  var `?param` = [getPtr boneIdx, getPtr rotation]
  methodbind.ptrcall(self, addr `?param`[0])

proc setBonePoseScale*(self: Skeleton3D; boneIdx: int32; scale: Vector3): void =
  expandMethodBind(className Skeleton3D, "set_bone_pose_scale", 1530502735)
  var `?param` = [getPtr boneIdx, getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBonePosePosition*(self: Skeleton3D; boneIdx: int32): Vector3 =
  expandMethodBind(className Skeleton3D, "get_bone_pose_position", 711720468)
  var `?param` = [getPtr boneIdx]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getBonePoseRotation*(self: Skeleton3D; boneIdx: int32): Quaternion =
  expandMethodBind(className Skeleton3D, "get_bone_pose_rotation", 476865136)
  var `?param` = [getPtr boneIdx]
  var ret: encoded Quaternion
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Quaternion)

proc getBonePoseScale*(self: Skeleton3D; boneIdx: int32): Vector3 =
  expandMethodBind(className Skeleton3D, "get_bone_pose_scale", 711720468)
  var `?param` = [getPtr boneIdx]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc resetBonePose*(self: Skeleton3D; boneIdx: int32): void =
  expandMethodBind(className Skeleton3D, "reset_bone_pose", 1286410249)
  var `?param` = [getPtr boneIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc resetBonePoses*(self: Skeleton3D): void =
  expandMethodBind(className Skeleton3D, "reset_bone_poses", 3218959716)
  methodbind.ptrcall(self, nil)

proc isBoneEnabled*(self: Skeleton3D; boneIdx: int32): bool =
  expandMethodBind(className Skeleton3D, "is_bone_enabled", 1116898809)
  var `?param` = [getPtr boneIdx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setBoneEnabled*(self: Skeleton3D; boneIdx: int32; enabled: bool = true): void =
  expandMethodBind(className Skeleton3D, "set_bone_enabled", 972357352)
  var `?param` = [getPtr boneIdx, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneGlobalPose*(self: Skeleton3D; boneIdx: int32): Transform3D =
  expandMethodBind(className Skeleton3D, "get_bone_global_pose", 1965739696)
  var `?param` = [getPtr boneIdx]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc setBoneGlobalPose*(self: Skeleton3D; boneIdx: int32; pose: Transform3D): void =
  expandMethodBind(className Skeleton3D, "set_bone_global_pose", 3616898986)
  var `?param` = [getPtr boneIdx, getPtr pose]
  methodbind.ptrcall(self, addr `?param`[0])

proc forceUpdateAllBoneTransforms*(self: Skeleton3D): void =
  expandMethodBind(className Skeleton3D, "force_update_all_bone_transforms", 3218959716)
  methodbind.ptrcall(self, nil)

proc forceUpdateBoneChildTransform*(self: Skeleton3D; boneIdx: int32): void =
  expandMethodBind(className Skeleton3D, "force_update_bone_child_transform", 1286410249)
  var `?param` = [getPtr boneIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc setMotionScale*(self: Skeleton3D; motionScale: Float): void =
  expandMethodBind(className Skeleton3D, "set_motion_scale", 373806689)
  var `?param` = [getPtr motionScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMotionScale*(self: Skeleton3D): Float =
  expandMethodBind(className Skeleton3D, "get_motion_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setShowRestOnly*(self: Skeleton3D; enabled: bool): void =
  expandMethodBind(className Skeleton3D, "set_show_rest_only", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShowRestOnly*(self: Skeleton3D): bool =
  expandMethodBind(className Skeleton3D, "is_show_rest_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setModifierCallbackModeProcess*(self: Skeleton3D; mode: Skeleton3D_ModifierCallbackModeProcess): void =
  expandMethodBind(className Skeleton3D, "set_modifier_callback_mode_process", 3916362634)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getModifierCallbackModeProcess*(self: Skeleton3D): Skeleton3D_ModifierCallbackModeProcess =
  expandMethodBind(className Skeleton3D, "get_modifier_callback_mode_process", 997182536)
  var ret: encoded Skeleton3D_ModifierCallbackModeProcess
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Skeleton3D_ModifierCallbackModeProcess)

proc clearBonesGlobalPoseOverride*(self: Skeleton3D): void =
  expandMethodBind(className Skeleton3D, "clear_bones_global_pose_override", 3218959716)
  methodbind.ptrcall(self, nil)

proc setBoneGlobalPoseOverride*(self: Skeleton3D; boneIdx: int32; pose: Transform3D; amount: Float; persistent: bool = false): void =
  expandMethodBind(className Skeleton3D, "set_bone_global_pose_override", 3483398371)
  var `?param` = [getPtr boneIdx, getPtr pose, getPtr amount, getPtr persistent]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneGlobalPoseOverride*(self: Skeleton3D; boneIdx: int32): Transform3D =
  expandMethodBind(className Skeleton3D, "get_bone_global_pose_override", 1965739696)
  var `?param` = [getPtr boneIdx]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc getBoneGlobalPoseNoOverride*(self: Skeleton3D; boneIdx: int32): Transform3D =
  expandMethodBind(className Skeleton3D, "get_bone_global_pose_no_override", 1965739696)
  var `?param` = [getPtr boneIdx]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc setAnimatePhysicalBones*(self: Skeleton3D; enabled: bool): void =
  expandMethodBind(className Skeleton3D, "set_animate_physical_bones", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAnimatePhysicalBones*(self: Skeleton3D): bool =
  expandMethodBind(className Skeleton3D, "get_animate_physical_bones", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc physicalBonesStopSimulation*(self: Skeleton3D): void =
  expandMethodBind(className Skeleton3D, "physical_bones_stop_simulation", 3218959716)
  methodbind.ptrcall(self, nil)

proc physicalBonesStartSimulation*(self: Skeleton3D; bones: TypedArray[StringName] = typedArray[[]]()): void =
  expandMethodBind(className Skeleton3D, "physical_bones_start_simulation", 2787316981)
  var `?param` = [getPtr bones]
  methodbind.ptrcall(self, addr `?param`[0])

proc physicalBonesAddCollisionException*(self: Skeleton3D; exception: Rid): void =
  expandMethodBind(className Skeleton3D, "physical_bones_add_collision_exception", 2722037293)
  var `?param` = [getPtr exception]
  methodbind.ptrcall(self, addr `?param`[0])

proc physicalBonesRemoveCollisionException*(self: Skeleton3D; exception: Rid): void =
  expandMethodBind(className Skeleton3D, "physical_bones_remove_collision_exception", 2722037293)
  var `?param` = [getPtr exception]
  methodbind.ptrcall(self, addr `?param`[0])

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
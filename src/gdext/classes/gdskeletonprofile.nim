{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setRootBone*(self: SkeletonProfile; boneName: StringName): void =
  expandMethodBind(className SkeletonProfile, "set_root_bone", 3304788590)
  var `?param` = [getPtr boneName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRootBone*(self: SkeletonProfile): StringName =
  expandMethodBind(className SkeletonProfile, "get_root_bone", 2737447660)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setScaleBaseBone*(self: SkeletonProfile; boneName: StringName): void =
  expandMethodBind(className SkeletonProfile, "set_scale_base_bone", 3304788590)
  var `?param` = [getPtr boneName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScaleBaseBone*(self: SkeletonProfile): StringName =
  expandMethodBind(className SkeletonProfile, "get_scale_base_bone", 2737447660)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setGroupSize*(self: SkeletonProfile; size: int32): void =
  expandMethodBind(className SkeletonProfile, "set_group_size", 1286410249)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGroupSize*(self: SkeletonProfile): int32 =
  expandMethodBind(className SkeletonProfile, "get_group_size", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getGroupName*(self: SkeletonProfile; groupIdx: int32): StringName =
  expandMethodBind(className SkeletonProfile, "get_group_name", 659327637)
  var `?param` = [getPtr groupIdx]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc setGroupName*(self: SkeletonProfile; groupIdx: int32; groupName: StringName): void =
  expandMethodBind(className SkeletonProfile, "set_group_name", 3780747571)
  var `?param` = [getPtr groupIdx, getPtr groupName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: SkeletonProfile; groupIdx: int32): gdref Texture2D =
  expandMethodBind(className SkeletonProfile, "get_texture", 3536238170)
  var `?param` = [getPtr groupIdx]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setTexture*(self: SkeletonProfile; groupIdx: int32; texture: gdref Texture2D): void =
  expandMethodBind(className SkeletonProfile, "set_texture", 666127730)
  var `?param` = [getPtr groupIdx, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc setBoneSize*(self: SkeletonProfile; size: int32): void =
  expandMethodBind(className SkeletonProfile, "set_bone_size", 1286410249)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneSize*(self: SkeletonProfile): int32 =
  expandMethodBind(className SkeletonProfile, "get_bone_size", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc findBone*(self: SkeletonProfile; boneName: StringName): int32 =
  expandMethodBind(className SkeletonProfile, "find_bone", 2458036349)
  var `?param` = [getPtr boneName]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getBoneName*(self: SkeletonProfile; boneIdx: int32): StringName =
  expandMethodBind(className SkeletonProfile, "get_bone_name", 659327637)
  var `?param` = [getPtr boneIdx]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc setBoneName*(self: SkeletonProfile; boneIdx: int32; boneName: StringName): void =
  expandMethodBind(className SkeletonProfile, "set_bone_name", 3780747571)
  var `?param` = [getPtr boneIdx, getPtr boneName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneParent*(self: SkeletonProfile; boneIdx: int32): StringName =
  expandMethodBind(className SkeletonProfile, "get_bone_parent", 659327637)
  var `?param` = [getPtr boneIdx]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc setBoneParent*(self: SkeletonProfile; boneIdx: int32; boneParent: StringName): void =
  expandMethodBind(className SkeletonProfile, "set_bone_parent", 3780747571)
  var `?param` = [getPtr boneIdx, getPtr boneParent]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTailDirection*(self: SkeletonProfile; boneIdx: int32): SkeletonProfile_TailDirection =
  expandMethodBind(className SkeletonProfile, "get_tail_direction", 2675997574)
  var `?param` = [getPtr boneIdx]
  var ret: encoded SkeletonProfile_TailDirection
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(SkeletonProfile_TailDirection)

proc setTailDirection*(self: SkeletonProfile; boneIdx: int32; tailDirection: SkeletonProfile_TailDirection): void =
  expandMethodBind(className SkeletonProfile, "set_tail_direction", 1231951015)
  var `?param` = [getPtr boneIdx, getPtr tailDirection]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneTail*(self: SkeletonProfile; boneIdx: int32): StringName =
  expandMethodBind(className SkeletonProfile, "get_bone_tail", 659327637)
  var `?param` = [getPtr boneIdx]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc setBoneTail*(self: SkeletonProfile; boneIdx: int32; boneTail: StringName): void =
  expandMethodBind(className SkeletonProfile, "set_bone_tail", 3780747571)
  var `?param` = [getPtr boneIdx, getPtr boneTail]
  methodbind.ptrcall(self, addr `?param`[0])

proc getReferencePose*(self: SkeletonProfile; boneIdx: int32): Transform3D =
  expandMethodBind(className SkeletonProfile, "get_reference_pose", 1965739696)
  var `?param` = [getPtr boneIdx]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc setReferencePose*(self: SkeletonProfile; boneIdx: int32; boneName: Transform3D): void =
  expandMethodBind(className SkeletonProfile, "set_reference_pose", 3616898986)
  var `?param` = [getPtr boneIdx, getPtr boneName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandleOffset*(self: SkeletonProfile; boneIdx: int32): Vector2 =
  expandMethodBind(className SkeletonProfile, "get_handle_offset", 2299179447)
  var `?param` = [getPtr boneIdx]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc setHandleOffset*(self: SkeletonProfile; boneIdx: int32; handleOffset: Vector2): void =
  expandMethodBind(className SkeletonProfile, "set_handle_offset", 163021252)
  var `?param` = [getPtr boneIdx, getPtr handleOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGroup*(self: SkeletonProfile; boneIdx: int32): StringName =
  expandMethodBind(className SkeletonProfile, "get_group", 659327637)
  var `?param` = [getPtr boneIdx]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc setGroup*(self: SkeletonProfile; boneIdx: int32; group: StringName): void =
  expandMethodBind(className SkeletonProfile, "set_group", 3780747571)
  var `?param` = [getPtr boneIdx, getPtr group]
  methodbind.ptrcall(self, addr `?param`[0])

proc isRequired*(self: SkeletonProfile; boneIdx: int32): bool =
  expandMethodBind(className SkeletonProfile, "is_required", 1116898809)
  var `?param` = [getPtr boneIdx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setRequired*(self: SkeletonProfile; boneIdx: int32; required: bool): void =
  expandMethodBind(className SkeletonProfile, "set_required", 300928843)
  var `?param` = [getPtr boneIdx, getPtr required]
  methodbind.ptrcall(self, addr `?param`[0])

template rootBone*(self: SkeletonProfile): untyped = self.getRootBone()
template `rootBone=`*(self: SkeletonProfile; value) = self.setRootBone(value)

template scaleBaseBone*(self: SkeletonProfile): untyped = self.getScaleBaseBone()
template `scaleBaseBone=`*(self: SkeletonProfile; value) = self.setScaleBaseBone(value)

template groupSize*(self: SkeletonProfile): untyped = self.getGroupSize()
template `groupSize=`*(self: SkeletonProfile; value) = self.setGroupSize(value)

template boneSize*(self: SkeletonProfile): untyped = self.getBoneSize()
template `boneSize=`*(self: SkeletonProfile; value) = self.setBoneSize(value)

const SkeletonProfile_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkeletonProfile]): Table[string, string] = SkeletonProfile_vmap

proc profileUpdated*(self: SkeletonProfile): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("profile_updated")
  self.emitSignal(signalname)
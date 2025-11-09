{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(SkeletonProfile, Resource)

proc setRootBone*(self: SkeletonProfile; boneName: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "set_root_bone", 3304788590)
  methodbind.ptrcall(self, [getPtr boneName], void)

proc getRootBone*(self: SkeletonProfile): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "get_root_bone", 2737447660)
  methodbind.ptrcall(self, [], StringName)

proc setScaleBaseBone*(self: SkeletonProfile; boneName: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "set_scale_base_bone", 3304788590)
  methodbind.ptrcall(self, [getPtr boneName], void)

proc getScaleBaseBone*(self: SkeletonProfile): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "get_scale_base_bone", 2737447660)
  methodbind.ptrcall(self, [], StringName)

proc setGroupSize*(self: SkeletonProfile; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "set_group_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc getGroupSize*(self: SkeletonProfile): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "get_group_size", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc getGroupName*(self: SkeletonProfile; groupIdx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "get_group_name", 659327637)
  methodbind.ptrcall(self, [getPtr groupIdx], StringName)

proc setGroupName*(self: SkeletonProfile; groupIdx: int32; groupName: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "set_group_name", 3780747571)
  methodbind.ptrcall(self, [getPtr groupIdx, getPtr groupName], void)

proc getTexture*(self: SkeletonProfile; groupIdx: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "get_texture", 3536238170)
  methodbind.ptrcall(self, [getPtr groupIdx], gdref Texture2D)

proc setTexture*(self: SkeletonProfile; groupIdx: int32; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "set_texture", 666127730)
  methodbind.ptrcall(self, [getPtr groupIdx, getPtr texture], void)

proc setBoneSize*(self: SkeletonProfile; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "set_bone_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc getBoneSize*(self: SkeletonProfile): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "get_bone_size", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc findBone*(self: SkeletonProfile; boneName: StringName): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "find_bone", 2458036349)
  methodbind.ptrcall(self, [getPtr boneName], int32)

proc getBoneName*(self: SkeletonProfile; boneIdx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "get_bone_name", 659327637)
  methodbind.ptrcall(self, [getPtr boneIdx], StringName)

proc setBoneName*(self: SkeletonProfile; boneIdx: int32; boneName: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "set_bone_name", 3780747571)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr boneName], void)

proc getBoneParent*(self: SkeletonProfile; boneIdx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "get_bone_parent", 659327637)
  methodbind.ptrcall(self, [getPtr boneIdx], StringName)

proc setBoneParent*(self: SkeletonProfile; boneIdx: int32; boneParent: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "set_bone_parent", 3780747571)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr boneParent], void)

proc getTailDirection*(self: SkeletonProfile; boneIdx: int32): SkeletonProfile_TailDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "get_tail_direction", 2675997574)
  methodbind.ptrcall(self, [getPtr boneIdx], SkeletonProfile_TailDirection)

proc setTailDirection*(self: SkeletonProfile; boneIdx: int32; tailDirection: SkeletonProfile_TailDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "set_tail_direction", 1231951015)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr tailDirection], void)

proc getBoneTail*(self: SkeletonProfile; boneIdx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "get_bone_tail", 659327637)
  methodbind.ptrcall(self, [getPtr boneIdx], StringName)

proc setBoneTail*(self: SkeletonProfile; boneIdx: int32; boneTail: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "set_bone_tail", 3780747571)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr boneTail], void)

proc getReferencePose*(self: SkeletonProfile; boneIdx: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "get_reference_pose", 1965739696)
  methodbind.ptrcall(self, [getPtr boneIdx], Transform3D)

proc setReferencePose*(self: SkeletonProfile; boneIdx: int32; boneName: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "set_reference_pose", 3616898986)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr boneName], void)

proc getHandleOffset*(self: SkeletonProfile; boneIdx: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "get_handle_offset", 2299179447)
  methodbind.ptrcall(self, [getPtr boneIdx], Vector2)

proc setHandleOffset*(self: SkeletonProfile; boneIdx: int32; handleOffset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "set_handle_offset", 163021252)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr handleOffset], void)

proc getGroup*(self: SkeletonProfile; boneIdx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "get_group", 659327637)
  methodbind.ptrcall(self, [getPtr boneIdx], StringName)

proc setGroup*(self: SkeletonProfile; boneIdx: int32; group: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "set_group", 3780747571)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr group], void)

proc isRequired*(self: SkeletonProfile; boneIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "is_required", 1116898809)
  methodbind.ptrcall(self, [getPtr boneIdx], bool)

proc setRequired*(self: SkeletonProfile; boneIdx: int32; required: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonProfile, "set_required", 300928843)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr required], void)

template rootBone*(self: SkeletonProfile): untyped = self.getRootBone()
template `rootBone=`*(self: SkeletonProfile; value) = self.setRootBone(value)

template scaleBaseBone*(self: SkeletonProfile): untyped = self.getScaleBaseBone()
template `scaleBaseBone=`*(self: SkeletonProfile; value) = self.setScaleBaseBone(value)

template groupSize*(self: SkeletonProfile): untyped = self.getGroupSize()
template `groupSize=`*(self: SkeletonProfile; value) = self.setGroupSize(value)

template boneSize*(self: SkeletonProfile): untyped = self.getBoneSize()
template `boneSize=`*(self: SkeletonProfile; value) = self.setBoneSize(value)

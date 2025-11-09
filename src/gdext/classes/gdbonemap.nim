{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(BoneMap, Resource)

proc getProfile*(self: BoneMap): gdref SkeletonProfile =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneMap, "get_profile", 4291782652)
  methodbind.ptrcall(self, [], gdref SkeletonProfile)

proc setProfile*(self: BoneMap; profile: gdref SkeletonProfile): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneMap, "set_profile", 3870374136)
  methodbind.ptrcall(self, [getPtr profile], void)

proc getSkeletonBoneName*(self: BoneMap; profileBoneName: StringName): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneMap, "get_skeleton_bone_name", 1965194235)
  methodbind.ptrcall(self, [getPtr profileBoneName], StringName)

proc setSkeletonBoneName*(self: BoneMap; profileBoneName: StringName; skeletonBoneName: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneMap, "set_skeleton_bone_name", 3740211285)
  methodbind.ptrcall(self, [getPtr profileBoneName, getPtr skeletonBoneName], void)

proc findProfileBoneName*(self: BoneMap; skeletonBoneName: StringName): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneMap, "find_profile_bone_name", 1965194235)
  methodbind.ptrcall(self, [getPtr skeletonBoneName], StringName)

template profile*(self: BoneMap): untyped = self.getProfile()
template `profile=`*(self: BoneMap; value) = self.setProfile(value)

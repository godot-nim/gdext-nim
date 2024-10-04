{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc getProfile*(self: BoneMap): gdref SkeletonProfile =
  expandMethodBind(className BoneMap, "get_profile", 4291782652)
  var ret: encoded gdref SkeletonProfile
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref SkeletonProfile)

proc setProfile*(self: BoneMap; profile: gdref SkeletonProfile): void =
  expandMethodBind(className BoneMap, "set_profile", 3870374136)
  var `?param` = [getPtr profile]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkeletonBoneName*(self: BoneMap; profileBoneName: StringName): StringName =
  expandMethodBind(className BoneMap, "get_skeleton_bone_name", 1965194235)
  var `?param` = [getPtr profileBoneName]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc setSkeletonBoneName*(self: BoneMap; profileBoneName: StringName; skeletonBoneName: StringName): void =
  expandMethodBind(className BoneMap, "set_skeleton_bone_name", 3740211285)
  var `?param` = [getPtr profileBoneName, getPtr skeletonBoneName]
  methodbind.ptrcall(self, addr `?param`[0])

proc findProfileBoneName*(self: BoneMap; skeletonBoneName: StringName): StringName =
  expandMethodBind(className BoneMap, "find_profile_bone_name", 1965194235)
  var `?param` = [getPtr skeletonBoneName]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

template profile*(self: BoneMap): untyped = self.getProfile()
template `profile=`*(self: BoneMap; value) = self.setProfile(value)

const BoneMap_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[BoneMap]): Table[string, string] = BoneMap_vmap

proc boneMapUpdated*(self: BoneMap): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("bone_map_updated")
  self.emitSignal(signalname)

proc profileUpdated*(self: BoneMap): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("profile_updated")
  self.emitSignal(signalname)
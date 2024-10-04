{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc getSkinRoot*(self: GltfSkin): int32 =
  expandMethodBind(className GltfSkin, "get_skin_root", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSkinRoot*(self: GltfSkin; skinRoot: int32): void =
  expandMethodBind(className GltfSkin, "set_skin_root", 1286410249)
  var `?param` = [getPtr skinRoot]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJointsOriginal*(self: GltfSkin): PackedInt32Array =
  expandMethodBind(className GltfSkin, "get_joints_original", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setJointsOriginal*(self: GltfSkin; jointsOriginal: PackedInt32Array): void =
  expandMethodBind(className GltfSkin, "set_joints_original", 3614634198)
  var `?param` = [getPtr jointsOriginal]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInverseBinds*(self: GltfSkin): TypedArray[Transform3D] =
  expandMethodBind(className GltfSkin, "get_inverse_binds", 2915620761)
  var ret: encoded TypedArray[Transform3D]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Transform3D])

proc setInverseBinds*(self: GltfSkin; inverseBinds: TypedArray[Transform3D]): void =
  expandMethodBind(className GltfSkin, "set_inverse_binds", 381264803)
  var `?param` = [getPtr inverseBinds]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJoints*(self: GltfSkin): PackedInt32Array =
  expandMethodBind(className GltfSkin, "get_joints", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setJoints*(self: GltfSkin; joints: PackedInt32Array): void =
  expandMethodBind(className GltfSkin, "set_joints", 3614634198)
  var `?param` = [getPtr joints]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNonJoints*(self: GltfSkin): PackedInt32Array =
  expandMethodBind(className GltfSkin, "get_non_joints", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setNonJoints*(self: GltfSkin; nonJoints: PackedInt32Array): void =
  expandMethodBind(className GltfSkin, "set_non_joints", 3614634198)
  var `?param` = [getPtr nonJoints]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRoots*(self: GltfSkin): PackedInt32Array =
  expandMethodBind(className GltfSkin, "get_roots", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setRoots*(self: GltfSkin; roots: PackedInt32Array): void =
  expandMethodBind(className GltfSkin, "set_roots", 3614634198)
  var `?param` = [getPtr roots]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkeleton*(self: GltfSkin): int32 =
  expandMethodBind(className GltfSkin, "get_skeleton", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSkeleton*(self: GltfSkin; skeleton: int32): void =
  expandMethodBind(className GltfSkin, "set_skeleton", 1286410249)
  var `?param` = [getPtr skeleton]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJointIToBoneI*(self: GltfSkin): Dictionary =
  expandMethodBind(className GltfSkin, "get_joint_i_to_bone_i", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc setJointIToBoneI*(self: GltfSkin; jointIToBoneI: Dictionary): void =
  expandMethodBind(className GltfSkin, "set_joint_i_to_bone_i", 4155329257)
  var `?param` = [getPtr jointIToBoneI]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJointIToName*(self: GltfSkin): Dictionary =
  expandMethodBind(className GltfSkin, "get_joint_i_to_name", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc setJointIToName*(self: GltfSkin; jointIToName: Dictionary): void =
  expandMethodBind(className GltfSkin, "set_joint_i_to_name", 4155329257)
  var `?param` = [getPtr jointIToName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGodotSkin*(self: GltfSkin): gdref Skin =
  expandMethodBind(className GltfSkin, "get_godot_skin", 1032037385)
  var ret: encoded gdref Skin
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Skin)

proc setGodotSkin*(self: GltfSkin; godotSkin: gdref Skin): void =
  expandMethodBind(className GltfSkin, "set_godot_skin", 3971435618)
  var `?param` = [getPtr godotSkin]
  methodbind.ptrcall(self, addr `?param`[0])

template skinRoot*(self: GltfSkin): untyped = self.getSkinRoot()
template `skinRoot=`*(self: GltfSkin; value) = self.setSkinRoot(value)

template jointsOriginal*(self: GltfSkin): untyped = self.getJointsOriginal()
template `jointsOriginal=`*(self: GltfSkin; value) = self.setJointsOriginal(value)

template inverseBinds*(self: GltfSkin): untyped = self.getInverseBinds()
template `inverseBinds=`*(self: GltfSkin; value) = self.setInverseBinds(value)

template joints*(self: GltfSkin): untyped = self.getJoints()
template `joints=`*(self: GltfSkin; value) = self.setJoints(value)

template nonJoints*(self: GltfSkin): untyped = self.getNonJoints()
template `nonJoints=`*(self: GltfSkin; value) = self.setNonJoints(value)

template roots*(self: GltfSkin): untyped = self.getRoots()
template `roots=`*(self: GltfSkin; value) = self.setRoots(value)

template skeleton*(self: GltfSkin): untyped = self.getSkeleton()
template `skeleton=`*(self: GltfSkin; value) = self.setSkeleton(value)

template jointIToBoneI*(self: GltfSkin): untyped = self.getJointIToBoneI()
template `jointIToBoneI=`*(self: GltfSkin; value) = self.setJointIToBoneI(value)

template jointIToName*(self: GltfSkin): untyped = self.getJointIToName()
template `jointIToName=`*(self: GltfSkin; value) = self.setJointIToName(value)

template godotSkin*(self: GltfSkin): untyped = self.getGodotSkin()
template `godotSkin=`*(self: GltfSkin; value) = self.setGodotSkin(value)

const GltfSkin_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfSkin]): Table[string, string] = GltfSkin_vmap
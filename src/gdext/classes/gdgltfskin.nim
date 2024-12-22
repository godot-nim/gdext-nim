{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getSkinRoot*(self: GLTFSkin): int32 =
  expandMethodBind(className GLTFSkin, "get_skin_root", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSkinRoot*(self: GLTFSkin; skinRoot: int32): void =
  expandMethodBind(className GLTFSkin, "set_skin_root", 1286410249)
  var `?param` = [getPtr skinRoot]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJointsOriginal*(self: GLTFSkin): PackedInt32Array =
  expandMethodBind(className GLTFSkin, "get_joints_original", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setJointsOriginal*(self: GLTFSkin; jointsOriginal: PackedInt32Array): void =
  expandMethodBind(className GLTFSkin, "set_joints_original", 3614634198)
  var `?param` = [getPtr jointsOriginal]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInverseBinds*(self: GLTFSkin): TypedArray[Transform3D] =
  expandMethodBind(className GLTFSkin, "get_inverse_binds", 2915620761)
  var ret: encoded TypedArray[Transform3D]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Transform3D])

proc setInverseBinds*(self: GLTFSkin; inverseBinds: TypedArray[Transform3D]): void =
  expandMethodBind(className GLTFSkin, "set_inverse_binds", 381264803)
  var `?param` = [getPtr inverseBinds]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJoints*(self: GLTFSkin): PackedInt32Array =
  expandMethodBind(className GLTFSkin, "get_joints", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setJoints*(self: GLTFSkin; joints: PackedInt32Array): void =
  expandMethodBind(className GLTFSkin, "set_joints", 3614634198)
  var `?param` = [getPtr joints]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNonJoints*(self: GLTFSkin): PackedInt32Array =
  expandMethodBind(className GLTFSkin, "get_non_joints", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setNonJoints*(self: GLTFSkin; nonJoints: PackedInt32Array): void =
  expandMethodBind(className GLTFSkin, "set_non_joints", 3614634198)
  var `?param` = [getPtr nonJoints]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRoots*(self: GLTFSkin): PackedInt32Array =
  expandMethodBind(className GLTFSkin, "get_roots", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setRoots*(self: GLTFSkin; roots: PackedInt32Array): void =
  expandMethodBind(className GLTFSkin, "set_roots", 3614634198)
  var `?param` = [getPtr roots]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkeleton*(self: GLTFSkin): int32 =
  expandMethodBind(className GLTFSkin, "get_skeleton", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSkeleton*(self: GLTFSkin; skeleton: int32): void =
  expandMethodBind(className GLTFSkin, "set_skeleton", 1286410249)
  var `?param` = [getPtr skeleton]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJointIToBoneI*(self: GLTFSkin): Dictionary =
  expandMethodBind(className GLTFSkin, "get_joint_i_to_bone_i", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc setJointIToBoneI*(self: GLTFSkin; jointIToBoneI: Dictionary): void =
  expandMethodBind(className GLTFSkin, "set_joint_i_to_bone_i", 4155329257)
  var `?param` = [getPtr jointIToBoneI]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJointIToName*(self: GLTFSkin): Dictionary =
  expandMethodBind(className GLTFSkin, "get_joint_i_to_name", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc setJointIToName*(self: GLTFSkin; jointIToName: Dictionary): void =
  expandMethodBind(className GLTFSkin, "set_joint_i_to_name", 4155329257)
  var `?param` = [getPtr jointIToName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGodotSkin*(self: GLTFSkin): gdref Skin =
  expandMethodBind(className GLTFSkin, "get_godot_skin", 1032037385)
  var ret: encoded gdref Skin
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Skin)

proc setGodotSkin*(self: GLTFSkin; godotSkin: gdref Skin): void =
  expandMethodBind(className GLTFSkin, "set_godot_skin", 3971435618)
  var `?param` = [getPtr godotSkin]
  methodbind.ptrcall(self, addr `?param`[0])

template skinRoot*(self: GLTFSkin): untyped = self.getSkinRoot()
template `skinRoot=`*(self: GLTFSkin; value) = self.setSkinRoot(value)

template jointsOriginal*(self: GLTFSkin): untyped = self.getJointsOriginal()
template `jointsOriginal=`*(self: GLTFSkin; value) = self.setJointsOriginal(value)

template inverseBinds*(self: GLTFSkin): untyped = self.getInverseBinds()
template `inverseBinds=`*(self: GLTFSkin; value) = self.setInverseBinds(value)

template joints*(self: GLTFSkin): untyped = self.getJoints()
template `joints=`*(self: GLTFSkin; value) = self.setJoints(value)

template nonJoints*(self: GLTFSkin): untyped = self.getNonJoints()
template `nonJoints=`*(self: GLTFSkin; value) = self.setNonJoints(value)

template roots*(self: GLTFSkin): untyped = self.getRoots()
template `roots=`*(self: GLTFSkin; value) = self.setRoots(value)

template skeleton*(self: GLTFSkin): untyped = self.getSkeleton()
template `skeleton=`*(self: GLTFSkin; value) = self.setSkeleton(value)

template jointIToBoneI*(self: GLTFSkin): untyped = self.getJointIToBoneI()
template `jointIToBoneI=`*(self: GLTFSkin; value) = self.setJointIToBoneI(value)

template jointIToName*(self: GLTFSkin): untyped = self.getJointIToName()
template `jointIToName=`*(self: GLTFSkin; value) = self.setJointIToName(value)

template godotSkin*(self: GLTFSkin): untyped = self.getGodotSkin()
template `godotSkin=`*(self: GLTFSkin; value) = self.setGodotSkin(value)

const GLTFSkin_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFSkin]): Table[string, string] = GLTFSkin_vmap
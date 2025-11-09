{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFSkin, Resource)

proc getSkinRoot*(self: GLTFSkin): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "get_skin_root", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setSkinRoot*(self: GLTFSkin; skinRoot: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "set_skin_root", 1286410249)
  methodbind.ptrcall(self, [getPtr skinRoot], void)

proc getJointsOriginal*(self: GLTFSkin): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "get_joints_original", 969006518)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setJointsOriginal*(self: GLTFSkin; jointsOriginal: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "set_joints_original", 3614634198)
  methodbind.ptrcall(self, [getPtr jointsOriginal], void)

proc getInverseBinds*(self: GLTFSkin): TypedArray[Transform3D] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "get_inverse_binds", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[Transform3D])

proc setInverseBinds*(self: GLTFSkin; inverseBinds: TypedArray[Transform3D]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "set_inverse_binds", 381264803)
  methodbind.ptrcall(self, [getPtr inverseBinds], void)

proc getJoints*(self: GLTFSkin): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "get_joints", 969006518)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setJoints*(self: GLTFSkin; joints: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "set_joints", 3614634198)
  methodbind.ptrcall(self, [getPtr joints], void)

proc getNonJoints*(self: GLTFSkin): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "get_non_joints", 969006518)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setNonJoints*(self: GLTFSkin; nonJoints: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "set_non_joints", 3614634198)
  methodbind.ptrcall(self, [getPtr nonJoints], void)

proc getRoots*(self: GLTFSkin): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "get_roots", 969006518)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setRoots*(self: GLTFSkin; roots: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "set_roots", 3614634198)
  methodbind.ptrcall(self, [getPtr roots], void)

proc getSkeleton*(self: GLTFSkin): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "get_skeleton", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setSkeleton*(self: GLTFSkin; skeleton: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "set_skeleton", 1286410249)
  methodbind.ptrcall(self, [getPtr skeleton], void)

proc getJointIToBoneI*(self: GLTFSkin): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "get_joint_i_to_bone_i", 2382534195)
  methodbind.ptrcall(self, [], Dictionary)

proc setJointIToBoneI*(self: GLTFSkin; jointIToBoneI: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "set_joint_i_to_bone_i", 4155329257)
  methodbind.ptrcall(self, [getPtr jointIToBoneI], void)

proc getJointIToName*(self: GLTFSkin): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "get_joint_i_to_name", 2382534195)
  methodbind.ptrcall(self, [], Dictionary)

proc setJointIToName*(self: GLTFSkin; jointIToName: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "set_joint_i_to_name", 4155329257)
  methodbind.ptrcall(self, [getPtr jointIToName], void)

proc getGodotSkin*(self: GLTFSkin): gdref Skin =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "get_godot_skin", 1032037385)
  methodbind.ptrcall(self, [], gdref Skin)

proc setGodotSkin*(self: GLTFSkin; godotSkin: gdref Skin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFSkin, "set_godot_skin", 3971435618)
  methodbind.ptrcall(self, [getPtr godotSkin], void)

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

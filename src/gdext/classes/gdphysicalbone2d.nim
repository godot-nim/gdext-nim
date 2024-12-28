{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrigidbody2d; export gdrigidbody2d

proc getJoint*(self: PhysicalBone2D): Joint2D =
  expandMethodBind(className PhysicalBone2D, "get_joint", 3582132112)
  var ret: encoded Joint2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Joint2D)

proc getAutoConfigureJoint*(self: PhysicalBone2D): bool =
  expandMethodBind(className PhysicalBone2D, "get_auto_configure_joint", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAutoConfigureJoint*(self: PhysicalBone2D; autoConfigureJoint: bool): void =
  expandMethodBind(className PhysicalBone2D, "set_auto_configure_joint", 2586408642)
  methodbind.ptrcall(self, [getPtr autoConfigureJoint])

proc setSimulatePhysics*(self: PhysicalBone2D; simulatePhysics: bool): void =
  expandMethodBind(className PhysicalBone2D, "set_simulate_physics", 2586408642)
  methodbind.ptrcall(self, [getPtr simulatePhysics])

proc getSimulatePhysics*(self: PhysicalBone2D): bool =
  expandMethodBind(className PhysicalBone2D, "get_simulate_physics", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isSimulatingPhysics*(self: PhysicalBone2D): bool =
  expandMethodBind(className PhysicalBone2D, "is_simulating_physics", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setBone2dNodepath*(self: PhysicalBone2D; nodepath: NodePath): void =
  expandMethodBind(className PhysicalBone2D, "set_bone2d_nodepath", 1348162250)
  methodbind.ptrcall(self, [getPtr nodepath])

proc getBone2dNodepath*(self: PhysicalBone2D): NodePath =
  expandMethodBind(className PhysicalBone2D, "get_bone2d_nodepath", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setBone2dIndex*(self: PhysicalBone2D; boneIndex: int32): void =
  expandMethodBind(className PhysicalBone2D, "set_bone2d_index", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIndex])

proc getBone2dIndex*(self: PhysicalBone2D): int32 =
  expandMethodBind(className PhysicalBone2D, "get_bone2d_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setFollowBoneWhenSimulating*(self: PhysicalBone2D; followBone: bool): void =
  expandMethodBind(className PhysicalBone2D, "set_follow_bone_when_simulating", 2586408642)
  methodbind.ptrcall(self, [getPtr followBone])

proc getFollowBoneWhenSimulating*(self: PhysicalBone2D): bool =
  expandMethodBind(className PhysicalBone2D, "get_follow_bone_when_simulating", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template bone2dNodepath*(self: PhysicalBone2D): untyped = self.getBone2dNodepath()
template `bone2dNodepath=`*(self: PhysicalBone2D; value) = self.setBone2dNodepath(value)

template bone2dIndex*(self: PhysicalBone2D): untyped = self.getBone2dIndex()
template `bone2dIndex=`*(self: PhysicalBone2D; value) = self.setBone2dIndex(value)

template autoConfigureJoint*(self: PhysicalBone2D): untyped = self.getAutoConfigureJoint()
template `autoConfigureJoint=`*(self: PhysicalBone2D; value) = self.setAutoConfigureJoint(value)

template simulatePhysics*(self: PhysicalBone2D): untyped = self.getSimulatePhysics()
template `simulatePhysics=`*(self: PhysicalBone2D; value) = self.setSimulatePhysics(value)

template followBoneWhenSimulating*(self: PhysicalBone2D): untyped = self.getFollowBoneWhenSimulating()
template `followBoneWhenSimulating=`*(self: PhysicalBone2D; value) = self.setFollowBoneWhenSimulating(value)

const PhysicalBone2D_vmap =
  RigidBody2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicalBone2D]): Table[string, string] = PhysicalBone2D_vmap
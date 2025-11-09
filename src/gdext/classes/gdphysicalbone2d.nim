{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrigidbody2d; export gdrigidbody2d

expandOnClassImported(PhysicalBone2D, RigidBody2D)

proc getJoint*(self: PhysicalBone2D): Joint2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone2D, "get_joint", 3582132112)
  methodbind.ptrcall(self, [], Joint2D)

proc getAutoConfigureJoint*(self: PhysicalBone2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone2D, "get_auto_configure_joint", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutoConfigureJoint*(self: PhysicalBone2D; autoConfigureJoint: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone2D, "set_auto_configure_joint", 2586408642)
  methodbind.ptrcall(self, [getPtr autoConfigureJoint], void)

proc setSimulatePhysics*(self: PhysicalBone2D; simulatePhysics: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone2D, "set_simulate_physics", 2586408642)
  methodbind.ptrcall(self, [getPtr simulatePhysics], void)

proc getSimulatePhysics*(self: PhysicalBone2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone2D, "get_simulate_physics", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isSimulatingPhysics*(self: PhysicalBone2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone2D, "is_simulating_physics", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setBone2dNodepath*(self: PhysicalBone2D; nodepath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone2D, "set_bone2d_nodepath", 1348162250)
  methodbind.ptrcall(self, [getPtr nodepath], void)

proc getBone2dNodepath*(self: PhysicalBone2D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone2D, "get_bone2d_nodepath", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setBone2dIndex*(self: PhysicalBone2D; boneIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone2D, "set_bone2d_index", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIndex], void)

proc getBone2dIndex*(self: PhysicalBone2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone2D, "get_bone2d_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFollowBoneWhenSimulating*(self: PhysicalBone2D; followBone: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone2D, "set_follow_bone_when_simulating", 2586408642)
  methodbind.ptrcall(self, [getPtr followBone], void)

proc getFollowBoneWhenSimulating*(self: PhysicalBone2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone2D, "get_follow_bone_when_simulating", 36873697)
  methodbind.ptrcall(self, [], bool)

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

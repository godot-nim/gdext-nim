{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(SpringBoneCollision3D, Node3D)

proc getSkeleton*(self: SpringBoneCollision3D): Skeleton3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollision3D, "get_skeleton", 1488626673)
  methodbind.ptrcall(self, [], Skeleton3D)

proc setBoneName*(self: SpringBoneCollision3D; boneName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollision3D, "set_bone_name", 83702148)
  methodbind.ptrcall(self, [getPtr boneName], void)

proc getBoneName*(self: SpringBoneCollision3D): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollision3D, "get_bone_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc setBone*(self: SpringBoneCollision3D; bone: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollision3D, "set_bone", 1286410249)
  methodbind.ptrcall(self, [getPtr bone], void)

proc getBone*(self: SpringBoneCollision3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollision3D, "get_bone", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPositionOffset*(self: SpringBoneCollision3D; offset: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollision3D, "set_position_offset", 3460891852)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getPositionOffset*(self: SpringBoneCollision3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollision3D, "get_position_offset", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setRotationOffset*(self: SpringBoneCollision3D; offset: Quaternion): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollision3D, "set_rotation_offset", 1727505552)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getRotationOffset*(self: SpringBoneCollision3D): Quaternion =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringBoneCollision3D, "get_rotation_offset", 1222331677)
  methodbind.ptrcall(self, [], Quaternion)

template boneName*(self: SpringBoneCollision3D): untyped = self.getBoneName()
template `boneName=`*(self: SpringBoneCollision3D; value) = self.setBoneName(value)

template bone*(self: SpringBoneCollision3D): untyped = self.getBone()
template `bone=`*(self: SpringBoneCollision3D; value) = self.setBone(value)

template positionOffset*(self: SpringBoneCollision3D): untyped = self.getPositionOffset()
template `positionOffset=`*(self: SpringBoneCollision3D; value) = self.setPositionOffset(value)

template rotationOffset*(self: SpringBoneCollision3D): untyped = self.getRotationOffset()
template `rotationOffset=`*(self: SpringBoneCollision3D; value) = self.setRotationOffset(value)

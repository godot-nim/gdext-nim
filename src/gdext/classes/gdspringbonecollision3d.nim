{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc getSkeleton*(self: SpringBoneCollision3D): Skeleton3D =
  expandMethodBind(className SpringBoneCollision3D, "get_skeleton", 1488626673)
  var ret: encoded Skeleton3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Skeleton3D)

proc setBoneName*(self: SpringBoneCollision3D; boneName: String): void =
  expandMethodBind(className SpringBoneCollision3D, "set_bone_name", 83702148)
  methodbind.ptrcall(self, [getPtr boneName])

proc getBoneName*(self: SpringBoneCollision3D): String =
  expandMethodBind(className SpringBoneCollision3D, "get_bone_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setBone*(self: SpringBoneCollision3D; bone: int32): void =
  expandMethodBind(className SpringBoneCollision3D, "set_bone", 1286410249)
  methodbind.ptrcall(self, [getPtr bone])

proc getBone*(self: SpringBoneCollision3D): int32 =
  expandMethodBind(className SpringBoneCollision3D, "get_bone", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setPositionOffset*(self: SpringBoneCollision3D; offset: Vector3): void =
  expandMethodBind(className SpringBoneCollision3D, "set_position_offset", 3460891852)
  methodbind.ptrcall(self, [getPtr offset])

proc getPositionOffset*(self: SpringBoneCollision3D): Vector3 =
  expandMethodBind(className SpringBoneCollision3D, "get_position_offset", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setRotationOffset*(self: SpringBoneCollision3D; offset: Quaternion): void =
  expandMethodBind(className SpringBoneCollision3D, "set_rotation_offset", 1727505552)
  methodbind.ptrcall(self, [getPtr offset])

proc getRotationOffset*(self: SpringBoneCollision3D): Quaternion =
  expandMethodBind(className SpringBoneCollision3D, "get_rotation_offset", 1222331677)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Quaternion)

template boneName*(self: SpringBoneCollision3D): untyped = self.getBoneName()
template `boneName=`*(self: SpringBoneCollision3D; value) = self.setBoneName(value)

template bone*(self: SpringBoneCollision3D): untyped = self.getBone()
template `bone=`*(self: SpringBoneCollision3D; value) = self.setBone(value)

template positionOffset*(self: SpringBoneCollision3D): untyped = self.getPositionOffset()
template `positionOffset=`*(self: SpringBoneCollision3D; value) = self.setPositionOffset(value)

template rotationOffset*(self: SpringBoneCollision3D): untyped = self.getRotationOffset()
template `rotationOffset=`*(self: SpringBoneCollision3D; value) = self.setRotationOffset(value)

const SpringBoneCollision3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SpringBoneCollision3D]): Table[string, string] = SpringBoneCollision3D_vmap
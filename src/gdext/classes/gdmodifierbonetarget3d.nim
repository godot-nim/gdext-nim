{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

expandOnClassImported(ModifierBoneTarget3D, SkeletonModifier3D)

proc setBoneName*(self: ModifierBoneTarget3D; boneName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ModifierBoneTarget3D, "set_bone_name", 83702148)
  methodbind.ptrcall(self, [getPtr boneName], void)

proc getBoneName*(self: ModifierBoneTarget3D): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ModifierBoneTarget3D, "get_bone_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc setBone*(self: ModifierBoneTarget3D; bone: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ModifierBoneTarget3D, "set_bone", 1286410249)
  methodbind.ptrcall(self, [getPtr bone], void)

proc getBone*(self: ModifierBoneTarget3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ModifierBoneTarget3D, "get_bone", 3905245786)
  methodbind.ptrcall(self, [], int32)

template boneName*(self: ModifierBoneTarget3D): untyped = self.getBoneName()
template `boneName=`*(self: ModifierBoneTarget3D; value) = self.setBoneName(value)

template bone*(self: ModifierBoneTarget3D): untyped = self.getBone()
template `bone=`*(self: ModifierBoneTarget3D; value) = self.setBone(value)

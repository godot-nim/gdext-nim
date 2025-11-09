{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

expandOnClassImported(SkeletonModification2DPhysicalBones, SkeletonModification2D)

proc setPhysicalBoneChainLength*(self: SkeletonModification2DPhysicalBones; length: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DPhysicalBones, "set_physical_bone_chain_length", 1286410249)
  methodbind.ptrcall(self, [getPtr length], void)

proc getPhysicalBoneChainLength*(self: SkeletonModification2DPhysicalBones): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DPhysicalBones, "get_physical_bone_chain_length", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setPhysicalBoneNode*(self: SkeletonModification2DPhysicalBones; jointIdx: int32; physicalbone2dNode: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DPhysicalBones, "set_physical_bone_node", 2761262315)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr physicalbone2dNode], void)

proc getPhysicalBoneNode*(self: SkeletonModification2DPhysicalBones; jointIdx: int32): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DPhysicalBones, "get_physical_bone_node", 408788394)
  methodbind.ptrcall(self, [getPtr jointIdx], NodePath)

proc fetchPhysicalBones*(self: SkeletonModification2DPhysicalBones): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DPhysicalBones, "fetch_physical_bones", 3218959716)
  methodbind.ptrcall(self, [], void)

proc startSimulation*(self: SkeletonModification2DPhysicalBones; bones: TypedArray[StringName] = newTypedArray[StringName]()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DPhysicalBones, "start_simulation", 2787316981)
  methodbind.ptrcall(self, [getPtr bones], void)

proc stopSimulation*(self: SkeletonModification2DPhysicalBones; bones: TypedArray[StringName] = newTypedArray[StringName]()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DPhysicalBones, "stop_simulation", 2787316981)
  methodbind.ptrcall(self, [getPtr bones], void)

template physicalBoneChainLength*(self: SkeletonModification2DPhysicalBones): untyped = self.getPhysicalBoneChainLength()
template `physicalBoneChainLength=`*(self: SkeletonModification2DPhysicalBones; value) = self.setPhysicalBoneChainLength(value)

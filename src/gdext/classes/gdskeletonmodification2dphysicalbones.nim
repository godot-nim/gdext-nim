{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

proc setPhysicalBoneChainLength*(self: SkeletonModification2DPhysicalBones; length: int32): void =
  expandMethodBind(className SkeletonModification2DPhysicalBones, "set_physical_bone_chain_length", 1286410249)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicalBoneChainLength*(self: SkeletonModification2DPhysicalBones): int32 =
  expandMethodBind(className SkeletonModification2DPhysicalBones, "get_physical_bone_chain_length", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setPhysicalBoneNode*(self: SkeletonModification2DPhysicalBones; jointIdx: int32; physicalbone2dNode: NodePath): void =
  expandMethodBind(className SkeletonModification2DPhysicalBones, "set_physical_bone_node", 2761262315)
  var `?param` = [getPtr jointIdx, getPtr physicalbone2dNode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicalBoneNode*(self: SkeletonModification2DPhysicalBones; jointIdx: int32): NodePath =
  expandMethodBind(className SkeletonModification2DPhysicalBones, "get_physical_bone_node", 408788394)
  var `?param` = [getPtr jointIdx]
  var ret: encoded NodePath
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(NodePath)

proc fetchPhysicalBones*(self: SkeletonModification2DPhysicalBones): void =
  expandMethodBind(className SkeletonModification2DPhysicalBones, "fetch_physical_bones", 3218959716)
  methodbind.ptrcall(self, nil)

proc startSimulation*(self: SkeletonModification2DPhysicalBones; bones: TypedArray[StringName] = TypedArray[StringName](gdarray())): void =
  expandMethodBind(className SkeletonModification2DPhysicalBones, "start_simulation", 2787316981)
  var `?param` = [getPtr bones]
  methodbind.ptrcall(self, addr `?param`[0])

proc stopSimulation*(self: SkeletonModification2DPhysicalBones; bones: TypedArray[StringName] = TypedArray[StringName](gdarray())): void =
  expandMethodBind(className SkeletonModification2DPhysicalBones, "stop_simulation", 2787316981)
  var `?param` = [getPtr bones]
  methodbind.ptrcall(self, addr `?param`[0])

template physicalBoneChainLength*(self: SkeletonModification2DPhysicalBones): untyped = self.getPhysicalBoneChainLength()
template `physicalBoneChainLength=`*(self: SkeletonModification2DPhysicalBones; value) = self.setPhysicalBoneChainLength(value)

const SkeletonModification2DPhysicalBones_vmap =
  SkeletonModification2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkeletonModification2DPhysicalBones]): Table[string, string] = SkeletonModification2DPhysicalBones_vmap
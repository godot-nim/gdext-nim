{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(GridMap, Node3D)

const InvalidCellItem* = -1

proc setCollisionLayer*(self: GridMap; layer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_collision_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layer], void)

proc getCollisionLayer*(self: GridMap): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_collision_layer", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionMask*(self: GridMap; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCollisionMask*(self: GridMap): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionMaskValue*(self: GridMap; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_collision_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCollisionMaskValue*(self: GridMap; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_collision_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setCollisionLayerValue*(self: GridMap; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_collision_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCollisionLayerValue*(self: GridMap; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_collision_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setCollisionPriority*(self: GridMap; priority: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_collision_priority", 373806689)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getCollisionPriority*(self: GridMap): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_collision_priority", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPhysicsMaterial*(self: GridMap; material: gdref PhysicsMaterial): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_physics_material", 1784508650)
  methodbind.ptrcall(self, [getPtr material], void)

proc getPhysicsMaterial*(self: GridMap): gdref PhysicsMaterial =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_physics_material", 2521850424)
  methodbind.ptrcall(self, [], gdref PhysicsMaterial)

proc setBakeNavigation*(self: GridMap; bakeNavigation: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_bake_navigation", 2586408642)
  methodbind.ptrcall(self, [getPtr bakeNavigation], void)

proc isBakingNavigation*(self: GridMap): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "is_baking_navigation", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setNavigationMap*(self: GridMap; navigationMap: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_navigation_map", 2722037293)
  methodbind.ptrcall(self, [getPtr navigationMap], void)

proc getNavigationMap*(self: GridMap): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_navigation_map", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setMeshLibrary*(self: GridMap; meshLibrary: gdref MeshLibrary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_mesh_library", 1488083439)
  methodbind.ptrcall(self, [getPtr meshLibrary], void)

proc getMeshLibrary*(self: GridMap): gdref MeshLibrary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_mesh_library", 3350993772)
  methodbind.ptrcall(self, [], gdref MeshLibrary)

proc setCellSize*(self: GridMap; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_cell_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getCellSize*(self: GridMap): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_cell_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setCellScale*(self: GridMap; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_cell_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getCellScale*(self: GridMap): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_cell_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setOctantSize*(self: GridMap; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_octant_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc getOctantSize*(self: GridMap): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_octant_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setCellItem*(self: GridMap; position: Vector3i; item: int32; orientation: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_cell_item", 3449088946)
  methodbind.ptrcall(self, [getPtr position, getPtr item, getPtr orientation], void)

proc getCellItem*(self: GridMap; position: Vector3i): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_cell_item", 3724960147)
  methodbind.ptrcall(self, [getPtr position], int32)

proc getCellItemOrientation*(self: GridMap; position: Vector3i): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_cell_item_orientation", 3724960147)
  methodbind.ptrcall(self, [getPtr position], int32)

proc getCellItemBasis*(self: GridMap; position: Vector3i): Basis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_cell_item_basis", 3493604918)
  methodbind.ptrcall(self, [getPtr position], Basis)

proc getBasisWithOrthogonalIndex*(self: GridMap; index: int32): Basis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_basis_with_orthogonal_index", 2816196998)
  methodbind.ptrcall(self, [getPtr index], Basis)

proc getOrthogonalIndexFromBasis*(self: GridMap; basis: Basis): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_orthogonal_index_from_basis", 4210359952)
  methodbind.ptrcall(self, [getPtr basis], int32)

proc localToMap*(self: GridMap; localPosition: Vector3): Vector3i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "local_to_map", 1257687843)
  methodbind.ptrcall(self, [getPtr localPosition], Vector3i)

proc mapToLocal*(self: GridMap; mapPosition: Vector3i): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "map_to_local", 1088329196)
  methodbind.ptrcall(self, [getPtr mapPosition], Vector3)

proc resourceChanged*(self: GridMap; resource: gdref Resource): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "resource_changed", 968641751)
  methodbind.ptrcall(self, [getPtr resource], void)

proc setCenterX*(self: GridMap; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_center_x", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getCenterX*(self: GridMap): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_center_x", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCenterY*(self: GridMap; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_center_y", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getCenterY*(self: GridMap): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_center_y", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCenterZ*(self: GridMap; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "set_center_z", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getCenterZ*(self: GridMap): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_center_z", 36873697)
  methodbind.ptrcall(self, [], bool)

proc clear*(self: GridMap): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getUsedCells*(self: GridMap): TypedArray[Vector3i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_used_cells", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Vector3i])

proc getUsedCellsByItem*(self: GridMap; item: int32): TypedArray[Vector3i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_used_cells_by_item", 663333327)
  methodbind.ptrcall(self, [getPtr item], TypedArray[Vector3i])

proc getMeshes*(self: GridMap): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_meshes", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc getBakeMeshes*(self: GridMap): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_bake_meshes", 2915620761)
  methodbind.ptrcall(self, [], Array)

proc getBakeMeshInstance*(self: GridMap; idx: int32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "get_bake_mesh_instance", 937000113)
  methodbind.ptrcall(self, [getPtr idx], RID)

proc clearBakedMeshes*(self: GridMap): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "clear_baked_meshes", 3218959716)
  methodbind.ptrcall(self, [], void)

proc makeBakedMeshes*(self: GridMap; genLightmapUv: bool = false; lightmapUvTexelSize: Float = 0.1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GridMap, "make_baked_meshes", 3609286057)
  methodbind.ptrcall(self, [getPtr genLightmapUv, getPtr lightmapUvTexelSize], void)

template meshLibrary*(self: GridMap): untyped = self.getMeshLibrary()
template `meshLibrary=`*(self: GridMap; value) = self.setMeshLibrary(value)

template physicsMaterial*(self: GridMap): untyped = self.getPhysicsMaterial()
template `physicsMaterial=`*(self: GridMap; value) = self.setPhysicsMaterial(value)

template cellSize*(self: GridMap): untyped = self.getCellSize()
template `cellSize=`*(self: GridMap; value) = self.setCellSize(value)

template cellOctantSize*(self: GridMap): untyped = self.getOctantSize()
template `cellOctantSize=`*(self: GridMap; value) = self.setOctantSize(value)

template cellCenterX*(self: GridMap): untyped = self.getCenterX()
template `cellCenterX=`*(self: GridMap; value) = self.setCenterX(value)

template cellCenterY*(self: GridMap): untyped = self.getCenterY()
template `cellCenterY=`*(self: GridMap; value) = self.setCenterY(value)

template cellCenterZ*(self: GridMap): untyped = self.getCenterZ()
template `cellCenterZ=`*(self: GridMap; value) = self.setCenterZ(value)

template cellScale*(self: GridMap): untyped = self.getCellScale()
template `cellScale=`*(self: GridMap; value) = self.setCellScale(value)

template collisionLayer*(self: GridMap): untyped = self.getCollisionLayer()
template `collisionLayer=`*(self: GridMap; value) = self.setCollisionLayer(value)

template collisionMask*(self: GridMap): untyped = self.getCollisionMask()
template `collisionMask=`*(self: GridMap; value) = self.setCollisionMask(value)

template collisionPriority*(self: GridMap): untyped = self.getCollisionPriority()
template `collisionPriority=`*(self: GridMap; value) = self.setCollisionPriority(value)

template bakeNavigation*(self: GridMap): untyped = self.isBakingNavigation()
template `bakeNavigation=`*(self: GridMap; value) = self.setBakeNavigation(value)

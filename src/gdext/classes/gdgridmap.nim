{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setCollisionLayer*(self: GridMap; layer: uint32): void =
  expandMethodBind(className GridMap, "set_collision_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layer])

proc getCollisionLayer*(self: GridMap): uint32 =
  expandMethodBind(className GridMap, "get_collision_layer", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionMask*(self: GridMap; mask: uint32): void =
  expandMethodBind(className GridMap, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask])

proc getCollisionMask*(self: GridMap): uint32 =
  expandMethodBind(className GridMap, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionMaskValue*(self: GridMap; layerNumber: int32; value: bool): void =
  expandMethodBind(className GridMap, "set_collision_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value])

proc getCollisionMaskValue*(self: GridMap; layerNumber: int32): bool =
  expandMethodBind(className GridMap, "get_collision_mask_value", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr layerNumber], addr ret)
  (addr ret).decode_result(bool)

proc setCollisionLayerValue*(self: GridMap; layerNumber: int32; value: bool): void =
  expandMethodBind(className GridMap, "set_collision_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value])

proc getCollisionLayerValue*(self: GridMap; layerNumber: int32): bool =
  expandMethodBind(className GridMap, "get_collision_layer_value", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr layerNumber], addr ret)
  (addr ret).decode_result(bool)

proc setCollisionPriority*(self: GridMap; priority: Float): void =
  expandMethodBind(className GridMap, "set_collision_priority", 373806689)
  methodbind.ptrcall(self, [getPtr priority])

proc getCollisionPriority*(self: GridMap): Float =
  expandMethodBind(className GridMap, "get_collision_priority", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPhysicsMaterial*(self: GridMap; material: gdref PhysicsMaterial): void =
  expandMethodBind(className GridMap, "set_physics_material", 1784508650)
  methodbind.ptrcall(self, [getPtr material])

proc getPhysicsMaterial*(self: GridMap): gdref PhysicsMaterial =
  expandMethodBind(className GridMap, "get_physics_material", 2521850424)
  var ret: encoded gdref PhysicsMaterial
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref PhysicsMaterial)

proc setBakeNavigation*(self: GridMap; bakeNavigation: bool): void =
  expandMethodBind(className GridMap, "set_bake_navigation", 2586408642)
  methodbind.ptrcall(self, [getPtr bakeNavigation])

proc isBakingNavigation*(self: GridMap): bool =
  expandMethodBind(className GridMap, "is_baking_navigation", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setNavigationMap*(self: GridMap; navigationMap: RID): void =
  expandMethodBind(className GridMap, "set_navigation_map", 2722037293)
  methodbind.ptrcall(self, [getPtr navigationMap])

proc getNavigationMap*(self: GridMap): RID =
  expandMethodBind(className GridMap, "get_navigation_map", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setMeshLibrary*(self: GridMap; meshLibrary: gdref MeshLibrary): void =
  expandMethodBind(className GridMap, "set_mesh_library", 1488083439)
  methodbind.ptrcall(self, [getPtr meshLibrary])

proc getMeshLibrary*(self: GridMap): gdref MeshLibrary =
  expandMethodBind(className GridMap, "get_mesh_library", 3350993772)
  var ret: encoded gdref MeshLibrary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref MeshLibrary)

proc setCellSize*(self: GridMap; size: Vector3): void =
  expandMethodBind(className GridMap, "set_cell_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size])

proc getCellSize*(self: GridMap): Vector3 =
  expandMethodBind(className GridMap, "get_cell_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setCellScale*(self: GridMap; scale: Float): void =
  expandMethodBind(className GridMap, "set_cell_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale])

proc getCellScale*(self: GridMap): Float =
  expandMethodBind(className GridMap, "get_cell_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setOctantSize*(self: GridMap; size: int32): void =
  expandMethodBind(className GridMap, "set_octant_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size])

proc getOctantSize*(self: GridMap): int32 =
  expandMethodBind(className GridMap, "get_octant_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setCellItem*(self: GridMap; position: Vector3i; item: int32; orientation: int32 = 0): void =
  expandMethodBind(className GridMap, "set_cell_item", 3449088946)
  methodbind.ptrcall(self, [getPtr position, getPtr item, getPtr orientation])

proc getCellItem*(self: GridMap; position: Vector3i): int32 =
  expandMethodBind(className GridMap, "get_cell_item", 3724960147)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr position], addr ret)
  (addr ret).decode_result(int32)

proc getCellItemOrientation*(self: GridMap; position: Vector3i): int32 =
  expandMethodBind(className GridMap, "get_cell_item_orientation", 3724960147)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr position], addr ret)
  (addr ret).decode_result(int32)

proc getCellItemBasis*(self: GridMap; position: Vector3i): Basis =
  expandMethodBind(className GridMap, "get_cell_item_basis", 3493604918)
  var ret: encoded Basis
  methodbind.ptrcall(self, [getPtr position], addr ret)
  (addr ret).decode_result(Basis)

proc getBasisWithOrthogonalIndex*(self: GridMap; index: int32): Basis =
  expandMethodBind(className GridMap, "get_basis_with_orthogonal_index", 2816196998)
  var ret: encoded Basis
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Basis)

proc getOrthogonalIndexFromBasis*(self: GridMap; basis: Basis): int32 =
  expandMethodBind(className GridMap, "get_orthogonal_index_from_basis", 4210359952)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr basis], addr ret)
  (addr ret).decode_result(int32)

proc localToMap*(self: GridMap; localPosition: Vector3): Vector3i =
  expandMethodBind(className GridMap, "local_to_map", 1257687843)
  var ret: encoded Vector3i
  methodbind.ptrcall(self, [getPtr localPosition], addr ret)
  (addr ret).decode_result(Vector3i)

proc mapToLocal*(self: GridMap; mapPosition: Vector3i): Vector3 =
  expandMethodBind(className GridMap, "map_to_local", 1088329196)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr mapPosition], addr ret)
  (addr ret).decode_result(Vector3)

proc resourceChanged*(self: GridMap; resource: gdref Resource): void =
  expandMethodBind(className GridMap, "resource_changed", 968641751)
  methodbind.ptrcall(self, [getPtr resource])

proc setCenterX*(self: GridMap; enable: bool): void =
  expandMethodBind(className GridMap, "set_center_x", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getCenterX*(self: GridMap): bool =
  expandMethodBind(className GridMap, "get_center_x", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCenterY*(self: GridMap; enable: bool): void =
  expandMethodBind(className GridMap, "set_center_y", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getCenterY*(self: GridMap): bool =
  expandMethodBind(className GridMap, "get_center_y", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCenterZ*(self: GridMap; enable: bool): void =
  expandMethodBind(className GridMap, "set_center_z", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getCenterZ*(self: GridMap): bool =
  expandMethodBind(className GridMap, "get_center_z", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc clear*(self: GridMap): void =
  expandMethodBind(className GridMap, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc getUsedCells*(self: GridMap): TypedArray[Vector3i] =
  expandMethodBind(className GridMap, "get_used_cells", 3995934104)
  var ret: encoded TypedArray[Vector3i]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[Vector3i])

proc getUsedCellsByItem*(self: GridMap; item: int32): TypedArray[Vector3i] =
  expandMethodBind(className GridMap, "get_used_cells_by_item", 663333327)
  var ret: encoded TypedArray[Vector3i]
  methodbind.ptrcall(self, [getPtr item], addr ret)
  (addr ret).decode_result(TypedArray[Vector3i])

proc getMeshes*(self: GridMap): Array =
  expandMethodBind(className GridMap, "get_meshes", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

proc getBakeMeshes*(self: GridMap): Array =
  expandMethodBind(className GridMap, "get_bake_meshes", 2915620761)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

proc getBakeMeshInstance*(self: GridMap; idx: int32): RID =
  expandMethodBind(className GridMap, "get_bake_mesh_instance", 937000113)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(RID)

proc clearBakedMeshes*(self: GridMap): void =
  expandMethodBind(className GridMap, "clear_baked_meshes", 3218959716)
  methodbind.ptrcall(self, [])

proc makeBakedMeshes*(self: GridMap; genLightmapUv: bool = false; lightmapUvTexelSize: Float = 0.1): void =
  expandMethodBind(className GridMap, "make_baked_meshes", 3609286057)
  methodbind.ptrcall(self, [getPtr genLightmapUv, getPtr lightmapUvTexelSize])

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

const GridMap_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GridMap]): Table[string, string] = GridMap_vmap

proc cellSizeChanged*(self: GridMap; cellSize: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("cell_size_changed")
  let args = [cellSize]
  self.emitSignal(signalname, args)

proc changed*(self: GridMap): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("changed")
  self.emitSignal(signalname)
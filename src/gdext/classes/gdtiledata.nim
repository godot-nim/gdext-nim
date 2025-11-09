{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(TileData, Object)

proc setFlipH*(self: TileData; flipH: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_flip_h", 2586408642)
  methodbind.ptrcall(self, [getPtr flipH], void)

proc getFlipH*(self: TileData): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_flip_h", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFlipV*(self: TileData; flipV: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_flip_v", 2586408642)
  methodbind.ptrcall(self, [getPtr flipV], void)

proc getFlipV*(self: TileData): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_flip_v", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTranspose*(self: TileData; transpose: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_transpose", 2586408642)
  methodbind.ptrcall(self, [getPtr transpose], void)

proc getTranspose*(self: TileData): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_transpose", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMaterial*(self: TileData; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getMaterial*(self: TileData): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_material", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

proc setTextureOrigin*(self: TileData; textureOrigin: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_texture_origin", 1130785943)
  methodbind.ptrcall(self, [getPtr textureOrigin], void)

proc getTextureOrigin*(self: TileData): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_texture_origin", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setModulate*(self: TileData; modulate: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_modulate", 2920490490)
  methodbind.ptrcall(self, [getPtr modulate], void)

proc getModulate*(self: TileData): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_modulate", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setZIndex*(self: TileData; zIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_z_index", 1286410249)
  methodbind.ptrcall(self, [getPtr zIndex], void)

proc getZIndex*(self: TileData): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_z_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setYSortOrigin*(self: TileData; ySortOrigin: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_y_sort_origin", 1286410249)
  methodbind.ptrcall(self, [getPtr ySortOrigin], void)

proc getYSortOrigin*(self: TileData): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_y_sort_origin", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setOccluderPolygonsCount*(self: TileData; layerId: int32; polygonsCount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_occluder_polygons_count", 3937882851)
  methodbind.ptrcall(self, [getPtr layerId, getPtr polygonsCount], void)

proc getOccluderPolygonsCount*(self: TileData; layerId: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_occluder_polygons_count", 923996154)
  methodbind.ptrcall(self, [getPtr layerId], int32)

proc addOccluderPolygon*(self: TileData; layerId: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "add_occluder_polygon", 1286410249)
  methodbind.ptrcall(self, [getPtr layerId], void)

proc removeOccluderPolygon*(self: TileData; layerId: int32; polygonIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "remove_occluder_polygon", 3937882851)
  methodbind.ptrcall(self, [getPtr layerId, getPtr polygonIndex], void)

proc setOccluderPolygon*(self: TileData; layerId: int32; polygonIndex: int32; polygon: gdref OccluderPolygon2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_occluder_polygon", 164249167)
  methodbind.ptrcall(self, [getPtr layerId, getPtr polygonIndex, getPtr polygon], void)

proc getOccluderPolygon*(self: TileData; layerId: int32; polygonIndex: int32; flipH: bool = false; flipV: bool = false; transpose: bool = false): gdref OccluderPolygon2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_occluder_polygon", 971166743)
  methodbind.ptrcall(self, [getPtr layerId, getPtr polygonIndex, getPtr flipH, getPtr flipV, getPtr transpose], gdref OccluderPolygon2D)

proc setOccluder*(self: TileData; layerId: int32; occluderPolygon: gdref OccluderPolygon2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_occluder", 914399637)
  methodbind.ptrcall(self, [getPtr layerId, getPtr occluderPolygon], void)

proc getOccluder*(self: TileData; layerId: int32; flipH: bool = false; flipV: bool = false; transpose: bool = false): gdref OccluderPolygon2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_occluder", 2377324099)
  methodbind.ptrcall(self, [getPtr layerId, getPtr flipH, getPtr flipV, getPtr transpose], gdref OccluderPolygon2D)

proc setConstantLinearVelocity*(self: TileData; layerId: int32; velocity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_constant_linear_velocity", 163021252)
  methodbind.ptrcall(self, [getPtr layerId, getPtr velocity], void)

proc getConstantLinearVelocity*(self: TileData; layerId: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_constant_linear_velocity", 2299179447)
  methodbind.ptrcall(self, [getPtr layerId], Vector2)

proc setConstantAngularVelocity*(self: TileData; layerId: int32; velocity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_constant_angular_velocity", 1602489585)
  methodbind.ptrcall(self, [getPtr layerId, getPtr velocity], void)

proc getConstantAngularVelocity*(self: TileData; layerId: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_constant_angular_velocity", 2339986948)
  methodbind.ptrcall(self, [getPtr layerId], Float)

proc setCollisionPolygonsCount*(self: TileData; layerId: int32; polygonsCount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_collision_polygons_count", 3937882851)
  methodbind.ptrcall(self, [getPtr layerId, getPtr polygonsCount], void)

proc getCollisionPolygonsCount*(self: TileData; layerId: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_collision_polygons_count", 923996154)
  methodbind.ptrcall(self, [getPtr layerId], int32)

proc addCollisionPolygon*(self: TileData; layerId: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "add_collision_polygon", 1286410249)
  methodbind.ptrcall(self, [getPtr layerId], void)

proc removeCollisionPolygon*(self: TileData; layerId: int32; polygonIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "remove_collision_polygon", 3937882851)
  methodbind.ptrcall(self, [getPtr layerId, getPtr polygonIndex], void)

proc setCollisionPolygonPoints*(self: TileData; layerId: int32; polygonIndex: int32; polygon: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_collision_polygon_points", 3230546541)
  methodbind.ptrcall(self, [getPtr layerId, getPtr polygonIndex, getPtr polygon], void)

proc getCollisionPolygonPoints*(self: TileData; layerId: int32; polygonIndex: int32): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_collision_polygon_points", 103942801)
  methodbind.ptrcall(self, [getPtr layerId, getPtr polygonIndex], PackedVector2Array)

proc setCollisionPolygonOneWay*(self: TileData; layerId: int32; polygonIndex: int32; oneWay: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_collision_polygon_one_way", 1383440665)
  methodbind.ptrcall(self, [getPtr layerId, getPtr polygonIndex, getPtr oneWay], void)

proc isCollisionPolygonOneWay*(self: TileData; layerId: int32; polygonIndex: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "is_collision_polygon_one_way", 2522259332)
  methodbind.ptrcall(self, [getPtr layerId, getPtr polygonIndex], bool)

proc setCollisionPolygonOneWayMargin*(self: TileData; layerId: int32; polygonIndex: int32; oneWayMargin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_collision_polygon_one_way_margin", 3506521499)
  methodbind.ptrcall(self, [getPtr layerId, getPtr polygonIndex, getPtr oneWayMargin], void)

proc getCollisionPolygonOneWayMargin*(self: TileData; layerId: int32; polygonIndex: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_collision_polygon_one_way_margin", 3085491603)
  methodbind.ptrcall(self, [getPtr layerId, getPtr polygonIndex], Float)

proc setTerrainSet*(self: TileData; terrainSet: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_terrain_set", 1286410249)
  methodbind.ptrcall(self, [getPtr terrainSet], void)

proc getTerrainSet*(self: TileData): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_terrain_set", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setTerrain*(self: TileData; terrain: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_terrain", 1286410249)
  methodbind.ptrcall(self, [getPtr terrain], void)

proc getTerrain*(self: TileData): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_terrain", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setTerrainPeeringBit*(self: TileData; peeringBit: TileSet_CellNeighbor; terrain: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_terrain_peering_bit", 1084452308)
  methodbind.ptrcall(self, [getPtr peeringBit, getPtr terrain], void)

proc getTerrainPeeringBit*(self: TileData; peeringBit: TileSet_CellNeighbor): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_terrain_peering_bit", 3831796792)
  methodbind.ptrcall(self, [getPtr peeringBit], int32)

proc isValidTerrainPeeringBit*(self: TileData; peeringBit: TileSet_CellNeighbor): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "is_valid_terrain_peering_bit", 845723972)
  methodbind.ptrcall(self, [getPtr peeringBit], bool)

proc setNavigationPolygon*(self: TileData; layerId: int32; navigationPolygon: gdref NavigationPolygon): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_navigation_polygon", 2224691167)
  methodbind.ptrcall(self, [getPtr layerId, getPtr navigationPolygon], void)

proc getNavigationPolygon*(self: TileData; layerId: int32; flipH: bool = false; flipV: bool = false; transpose: bool = false): gdref NavigationPolygon =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_navigation_polygon", 2907127272)
  methodbind.ptrcall(self, [getPtr layerId, getPtr flipH, getPtr flipV, getPtr transpose], gdref NavigationPolygon)

proc setProbability*(self: TileData; probability: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_probability", 373806689)
  methodbind.ptrcall(self, [getPtr probability], void)

proc getProbability*(self: TileData): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_probability", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setCustomData*(self: TileData; layerName: String; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_custom_data", 402577236)
  methodbind.ptrcall(self, [getPtr layerName, getPtr value], void)

proc getCustomData*(self: TileData; layerName: String): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_custom_data", 1868160156)
  methodbind.ptrcall(self, [getPtr layerName], Variant)

proc hasCustomData*(self: TileData; layerName: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "has_custom_data", 3927539163)
  methodbind.ptrcall(self, [getPtr layerName], bool)

proc setCustomDataByLayerId*(self: TileData; layerId: int32; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "set_custom_data_by_layer_id", 2152698145)
  methodbind.ptrcall(self, [getPtr layerId, getPtr value], void)

proc getCustomDataByLayerId*(self: TileData; layerId: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileData, "get_custom_data_by_layer_id", 4227898402)
  methodbind.ptrcall(self, [getPtr layerId], Variant)

template flipH*(self: TileData): untyped = self.getFlipH()
template `flipH=`*(self: TileData; value) = self.setFlipH(value)

template flipV*(self: TileData): untyped = self.getFlipV()
template `flipV=`*(self: TileData; value) = self.setFlipV(value)

template transpose*(self: TileData): untyped = self.getTranspose()
template `transpose=`*(self: TileData; value) = self.setTranspose(value)

template textureOrigin*(self: TileData): untyped = self.getTextureOrigin()
template `textureOrigin=`*(self: TileData; value) = self.setTextureOrigin(value)

template modulate*(self: TileData): untyped = self.getModulate()
template `modulate=`*(self: TileData; value) = self.setModulate(value)

template material*(self: TileData): untyped = self.getMaterial()
template `material=`*(self: TileData; value) = self.setMaterial(value)

template zIndex*(self: TileData): untyped = self.getZIndex()
template `zIndex=`*(self: TileData; value) = self.setZIndex(value)

template ySortOrigin*(self: TileData): untyped = self.getYSortOrigin()
template `ySortOrigin=`*(self: TileData; value) = self.setYSortOrigin(value)

template terrainSet*(self: TileData): untyped = self.getTerrainSet()
template `terrainSet=`*(self: TileData; value) = self.setTerrainSet(value)

template terrain*(self: TileData): untyped = self.getTerrain()
template `terrain=`*(self: TileData; value) = self.setTerrain(value)

template probability*(self: TileData): untyped = self.getProbability()
template `probability=`*(self: TileData; value) = self.setProbability(value)

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc setFlipH*(self: TileData; flipH: bool): void =
  expandMethodBind(className TileData, "set_flip_h", 2586408642)
  var `?param` = [getPtr flipH]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFlipH*(self: TileData): bool =
  expandMethodBind(className TileData, "get_flip_h", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFlipV*(self: TileData; flipV: bool): void =
  expandMethodBind(className TileData, "set_flip_v", 2586408642)
  var `?param` = [getPtr flipV]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFlipV*(self: TileData): bool =
  expandMethodBind(className TileData, "get_flip_v", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setTranspose*(self: TileData; transpose: bool): void =
  expandMethodBind(className TileData, "set_transpose", 2586408642)
  var `?param` = [getPtr transpose]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTranspose*(self: TileData): bool =
  expandMethodBind(className TileData, "get_transpose", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMaterial*(self: TileData; material: gdref Material): void =
  expandMethodBind(className TileData, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaterial*(self: TileData): gdref Material =
  expandMethodBind(className TileData, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

proc setTextureOrigin*(self: TileData; textureOrigin: Vector2i): void =
  expandMethodBind(className TileData, "set_texture_origin", 1130785943)
  var `?param` = [getPtr textureOrigin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureOrigin*(self: TileData): Vector2i =
  expandMethodBind(className TileData, "get_texture_origin", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc setModulate*(self: TileData; modulate: Color): void =
  expandMethodBind(className TileData, "set_modulate", 2920490490)
  var `?param` = [getPtr modulate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getModulate*(self: TileData): Color =
  expandMethodBind(className TileData, "get_modulate", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setZIndex*(self: TileData; zIndex: int32): void =
  expandMethodBind(className TileData, "set_z_index", 1286410249)
  var `?param` = [getPtr zIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getZIndex*(self: TileData): int32 =
  expandMethodBind(className TileData, "get_z_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setYSortOrigin*(self: TileData; ySortOrigin: int32): void =
  expandMethodBind(className TileData, "set_y_sort_origin", 1286410249)
  var `?param` = [getPtr ySortOrigin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getYSortOrigin*(self: TileData): int32 =
  expandMethodBind(className TileData, "get_y_sort_origin", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setOccluder*(self: TileData; layerId: int32; occluderPolygon: gdref OccluderPolygon2D): void =
  expandMethodBind(className TileData, "set_occluder", 914399637)
  var `?param` = [getPtr layerId, getPtr occluderPolygon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOccluder*(self: TileData; layerId: int32; flipH: bool = false; flipV: bool = false; transpose: bool = false): gdref OccluderPolygon2D =
  expandMethodBind(className TileData, "get_occluder", 2377324099)
  var `?param` = [getPtr layerId, getPtr flipH, getPtr flipV, getPtr transpose]
  var ret: encoded gdref OccluderPolygon2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref OccluderPolygon2D)

proc setConstantLinearVelocity*(self: TileData; layerId: int32; velocity: Vector2): void =
  expandMethodBind(className TileData, "set_constant_linear_velocity", 163021252)
  var `?param` = [getPtr layerId, getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstantLinearVelocity*(self: TileData; layerId: int32): Vector2 =
  expandMethodBind(className TileData, "get_constant_linear_velocity", 2299179447)
  var `?param` = [getPtr layerId]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc setConstantAngularVelocity*(self: TileData; layerId: int32; velocity: Float): void =
  expandMethodBind(className TileData, "set_constant_angular_velocity", 1602489585)
  var `?param` = [getPtr layerId, getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstantAngularVelocity*(self: TileData; layerId: int32): Float =
  expandMethodBind(className TileData, "get_constant_angular_velocity", 2339986948)
  var `?param` = [getPtr layerId]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setCollisionPolygonsCount*(self: TileData; layerId: int32; polygonsCount: int32): void =
  expandMethodBind(className TileData, "set_collision_polygons_count", 3937882851)
  var `?param` = [getPtr layerId, getPtr polygonsCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionPolygonsCount*(self: TileData; layerId: int32): int32 =
  expandMethodBind(className TileData, "get_collision_polygons_count", 923996154)
  var `?param` = [getPtr layerId]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc addCollisionPolygon*(self: TileData; layerId: int32): void =
  expandMethodBind(className TileData, "add_collision_polygon", 1286410249)
  var `?param` = [getPtr layerId]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeCollisionPolygon*(self: TileData; layerId: int32; polygonIndex: int32): void =
  expandMethodBind(className TileData, "remove_collision_polygon", 3937882851)
  var `?param` = [getPtr layerId, getPtr polygonIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCollisionPolygonPoints*(self: TileData; layerId: int32; polygonIndex: int32; polygon: PackedVector2Array): void =
  expandMethodBind(className TileData, "set_collision_polygon_points", 3230546541)
  var `?param` = [getPtr layerId, getPtr polygonIndex, getPtr polygon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionPolygonPoints*(self: TileData; layerId: int32; polygonIndex: int32): PackedVector2Array =
  expandMethodBind(className TileData, "get_collision_polygon_points", 103942801)
  var `?param` = [getPtr layerId, getPtr polygonIndex]
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc setCollisionPolygonOneWay*(self: TileData; layerId: int32; polygonIndex: int32; oneWay: bool): void =
  expandMethodBind(className TileData, "set_collision_polygon_one_way", 1383440665)
  var `?param` = [getPtr layerId, getPtr polygonIndex, getPtr oneWay]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollisionPolygonOneWay*(self: TileData; layerId: int32; polygonIndex: int32): bool =
  expandMethodBind(className TileData, "is_collision_polygon_one_way", 2522259332)
  var `?param` = [getPtr layerId, getPtr polygonIndex]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setCollisionPolygonOneWayMargin*(self: TileData; layerId: int32; polygonIndex: int32; oneWayMargin: Float): void =
  expandMethodBind(className TileData, "set_collision_polygon_one_way_margin", 3506521499)
  var `?param` = [getPtr layerId, getPtr polygonIndex, getPtr oneWayMargin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionPolygonOneWayMargin*(self: TileData; layerId: int32; polygonIndex: int32): Float =
  expandMethodBind(className TileData, "get_collision_polygon_one_way_margin", 3085491603)
  var `?param` = [getPtr layerId, getPtr polygonIndex]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setTerrainSet*(self: TileData; terrainSet: int32): void =
  expandMethodBind(className TileData, "set_terrain_set", 1286410249)
  var `?param` = [getPtr terrainSet]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTerrainSet*(self: TileData): int32 =
  expandMethodBind(className TileData, "get_terrain_set", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setTerrain*(self: TileData; terrain: int32): void =
  expandMethodBind(className TileData, "set_terrain", 1286410249)
  var `?param` = [getPtr terrain]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTerrain*(self: TileData): int32 =
  expandMethodBind(className TileData, "get_terrain", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setTerrainPeeringBit*(self: TileData; peeringBit: TileSet_CellNeighbor; terrain: int32): void =
  expandMethodBind(className TileData, "set_terrain_peering_bit", 1084452308)
  var `?param` = [getPtr peeringBit, getPtr terrain]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTerrainPeeringBit*(self: TileData; peeringBit: TileSet_CellNeighbor): int32 =
  expandMethodBind(className TileData, "get_terrain_peering_bit", 3831796792)
  var `?param` = [getPtr peeringBit]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc isValidTerrainPeeringBit*(self: TileData; peeringBit: TileSet_CellNeighbor): bool =
  expandMethodBind(className TileData, "is_valid_terrain_peering_bit", 845723972)
  var `?param` = [getPtr peeringBit]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setNavigationPolygon*(self: TileData; layerId: int32; navigationPolygon: gdref NavigationPolygon): void =
  expandMethodBind(className TileData, "set_navigation_polygon", 2224691167)
  var `?param` = [getPtr layerId, getPtr navigationPolygon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationPolygon*(self: TileData; layerId: int32; flipH: bool = false; flipV: bool = false; transpose: bool = false): gdref NavigationPolygon =
  expandMethodBind(className TileData, "get_navigation_polygon", 2907127272)
  var `?param` = [getPtr layerId, getPtr flipH, getPtr flipV, getPtr transpose]
  var ret: encoded gdref NavigationPolygon
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref NavigationPolygon)

proc setProbability*(self: TileData; probability: Float): void =
  expandMethodBind(className TileData, "set_probability", 373806689)
  var `?param` = [getPtr probability]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProbability*(self: TileData): Float =
  expandMethodBind(className TileData, "get_probability", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCustomData*(self: TileData; layerName: String; value: Variant): void =
  expandMethodBind(className TileData, "set_custom_data", 402577236)
  var `?param` = [getPtr layerName, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomData*(self: TileData; layerName: String): Variant =
  expandMethodBind(className TileData, "get_custom_data", 1868160156)
  var `?param` = [getPtr layerName]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setCustomDataByLayerId*(self: TileData; layerId: int32; value: Variant): void =
  expandMethodBind(className TileData, "set_custom_data_by_layer_id", 2152698145)
  var `?param` = [getPtr layerId, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomDataByLayerId*(self: TileData; layerId: int32): Variant =
  expandMethodBind(className TileData, "get_custom_data_by_layer_id", 4227898402)
  var `?param` = [getPtr layerId]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

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

const TileData_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TileData]): Table[string, string] = TileData_vmap

proc changed*(self: TileData): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("changed")
  self.emitSignal(signalname)
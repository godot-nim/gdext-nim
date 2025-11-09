{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(TileSet, Resource)

proc getNextSourceId*(self: TileSet): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_next_source_id", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc addSource*(self: TileSet; source: gdref TileSetSource; atlasSourceIdOverride: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "add_source", 1059186179)
  methodbind.ptrcall(self, [getPtr source, getPtr atlasSourceIdOverride], int32)

proc removeSource*(self: TileSet; sourceId: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "remove_source", 1286410249)
  methodbind.ptrcall(self, [getPtr sourceId], void)

proc setSourceId*(self: TileSet; sourceId: int32; newSourceId: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_source_id", 3937882851)
  methodbind.ptrcall(self, [getPtr sourceId, getPtr newSourceId], void)

proc getSourceCount*(self: TileSet): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_source_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSourceId*(self: TileSet; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_source_id", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc hasSource*(self: TileSet; sourceId: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "has_source", 1116898809)
  methodbind.ptrcall(self, [getPtr sourceId], bool)

proc getSource*(self: TileSet; sourceId: int32): gdref TileSetSource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_source", 1763540252)
  methodbind.ptrcall(self, [getPtr sourceId], gdref TileSetSource)

proc setTileShape*(self: TileSet; shape: TileSet_TileShape): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_tile_shape", 2131427112)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getTileShape*(self: TileSet): TileSet_TileShape =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_tile_shape", 716918169)
  methodbind.ptrcall(self, [], TileSet_TileShape)

proc setTileLayout*(self: TileSet; layout: TileSet_TileLayout): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_tile_layout", 1071216679)
  methodbind.ptrcall(self, [getPtr layout], void)

proc getTileLayout*(self: TileSet): TileSet_TileLayout =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_tile_layout", 194628839)
  methodbind.ptrcall(self, [], TileSet_TileLayout)

proc setTileOffsetAxis*(self: TileSet; alignment: TileSet_TileOffsetAxis): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_tile_offset_axis", 3300198521)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getTileOffsetAxis*(self: TileSet): TileSet_TileOffsetAxis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_tile_offset_axis", 762494114)
  methodbind.ptrcall(self, [], TileSet_TileOffsetAxis)

proc setTileSize*(self: TileSet; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_tile_size", 1130785943)
  methodbind.ptrcall(self, [getPtr size], void)

proc getTileSize*(self: TileSet): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_tile_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setUvClipping*(self: TileSet; uvClipping: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_uv_clipping", 2586408642)
  methodbind.ptrcall(self, [getPtr uvClipping], void)

proc isUvClipping*(self: TileSet): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "is_uv_clipping", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getOcclusionLayersCount*(self: TileSet): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_occlusion_layers_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc addOcclusionLayer*(self: TileSet; toPosition: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "add_occlusion_layer", 1025054187)
  methodbind.ptrcall(self, [getPtr toPosition], void)

proc moveOcclusionLayer*(self: TileSet; layerIndex: int32; toPosition: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "move_occlusion_layer", 3937882851)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr toPosition], void)

proc removeOcclusionLayer*(self: TileSet; layerIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "remove_occlusion_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layerIndex], void)

proc setOcclusionLayerLightMask*(self: TileSet; layerIndex: int32; lightMask: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_occlusion_layer_light_mask", 3937882851)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr lightMask], void)

proc getOcclusionLayerLightMask*(self: TileSet; layerIndex: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_occlusion_layer_light_mask", 923996154)
  methodbind.ptrcall(self, [getPtr layerIndex], int32)

proc setOcclusionLayerSdfCollision*(self: TileSet; layerIndex: int32; sdfCollision: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_occlusion_layer_sdf_collision", 300928843)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr sdfCollision], void)

proc getOcclusionLayerSdfCollision*(self: TileSet; layerIndex: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_occlusion_layer_sdf_collision", 1116898809)
  methodbind.ptrcall(self, [getPtr layerIndex], bool)

proc getPhysicsLayersCount*(self: TileSet): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_physics_layers_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc addPhysicsLayer*(self: TileSet; toPosition: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "add_physics_layer", 1025054187)
  methodbind.ptrcall(self, [getPtr toPosition], void)

proc movePhysicsLayer*(self: TileSet; layerIndex: int32; toPosition: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "move_physics_layer", 3937882851)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr toPosition], void)

proc removePhysicsLayer*(self: TileSet; layerIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "remove_physics_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layerIndex], void)

proc setPhysicsLayerCollisionLayer*(self: TileSet; layerIndex: int32; layer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_physics_layer_collision_layer", 3937882851)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr layer], void)

proc getPhysicsLayerCollisionLayer*(self: TileSet; layerIndex: int32): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_physics_layer_collision_layer", 923996154)
  methodbind.ptrcall(self, [getPtr layerIndex], uint32)

proc setPhysicsLayerCollisionMask*(self: TileSet; layerIndex: int32; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_physics_layer_collision_mask", 3937882851)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr mask], void)

proc getPhysicsLayerCollisionMask*(self: TileSet; layerIndex: int32): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_physics_layer_collision_mask", 923996154)
  methodbind.ptrcall(self, [getPtr layerIndex], uint32)

proc setPhysicsLayerCollisionPriority*(self: TileSet; layerIndex: int32; priority: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_physics_layer_collision_priority", 1602489585)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr priority], void)

proc getPhysicsLayerCollisionPriority*(self: TileSet; layerIndex: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_physics_layer_collision_priority", 2339986948)
  methodbind.ptrcall(self, [getPtr layerIndex], Float)

proc setPhysicsLayerPhysicsMaterial*(self: TileSet; layerIndex: int32; physicsMaterial: gdref PhysicsMaterial): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_physics_layer_physics_material", 1018687357)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr physicsMaterial], void)

proc getPhysicsLayerPhysicsMaterial*(self: TileSet; layerIndex: int32): gdref PhysicsMaterial =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_physics_layer_physics_material", 788318639)
  methodbind.ptrcall(self, [getPtr layerIndex], gdref PhysicsMaterial)

proc getTerrainSetsCount*(self: TileSet): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_terrain_sets_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc addTerrainSet*(self: TileSet; toPosition: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "add_terrain_set", 1025054187)
  methodbind.ptrcall(self, [getPtr toPosition], void)

proc moveTerrainSet*(self: TileSet; terrainSet: int32; toPosition: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "move_terrain_set", 3937882851)
  methodbind.ptrcall(self, [getPtr terrainSet, getPtr toPosition], void)

proc removeTerrainSet*(self: TileSet; terrainSet: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "remove_terrain_set", 1286410249)
  methodbind.ptrcall(self, [getPtr terrainSet], void)

proc setTerrainSetMode*(self: TileSet; terrainSet: int32; mode: TileSet_TerrainMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_terrain_set_mode", 3943003916)
  methodbind.ptrcall(self, [getPtr terrainSet, getPtr mode], void)

proc getTerrainSetMode*(self: TileSet; terrainSet: int32): TileSet_TerrainMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_terrain_set_mode", 2084469411)
  methodbind.ptrcall(self, [getPtr terrainSet], TileSet_TerrainMode)

proc getTerrainsCount*(self: TileSet; terrainSet: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_terrains_count", 923996154)
  methodbind.ptrcall(self, [getPtr terrainSet], int32)

proc addTerrain*(self: TileSet; terrainSet: int32; toPosition: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "add_terrain", 1230568737)
  methodbind.ptrcall(self, [getPtr terrainSet, getPtr toPosition], void)

proc moveTerrain*(self: TileSet; terrainSet: int32; terrainIndex: int32; toPosition: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "move_terrain", 1649997291)
  methodbind.ptrcall(self, [getPtr terrainSet, getPtr terrainIndex, getPtr toPosition], void)

proc removeTerrain*(self: TileSet; terrainSet: int32; terrainIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "remove_terrain", 3937882851)
  methodbind.ptrcall(self, [getPtr terrainSet, getPtr terrainIndex], void)

proc setTerrainName*(self: TileSet; terrainSet: int32; terrainIndex: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_terrain_name", 2285447957)
  methodbind.ptrcall(self, [getPtr terrainSet, getPtr terrainIndex, getPtr name], void)

proc getTerrainName*(self: TileSet; terrainSet: int32; terrainIndex: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_terrain_name", 1391810591)
  methodbind.ptrcall(self, [getPtr terrainSet, getPtr terrainIndex], String)

proc setTerrainColor*(self: TileSet; terrainSet: int32; terrainIndex: int32; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_terrain_color", 3733378741)
  methodbind.ptrcall(self, [getPtr terrainSet, getPtr terrainIndex, getPtr color], void)

proc getTerrainColor*(self: TileSet; terrainSet: int32; terrainIndex: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_terrain_color", 2165839948)
  methodbind.ptrcall(self, [getPtr terrainSet, getPtr terrainIndex], Color)

proc getNavigationLayersCount*(self: TileSet): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_navigation_layers_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc addNavigationLayer*(self: TileSet; toPosition: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "add_navigation_layer", 1025054187)
  methodbind.ptrcall(self, [getPtr toPosition], void)

proc moveNavigationLayer*(self: TileSet; layerIndex: int32; toPosition: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "move_navigation_layer", 3937882851)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr toPosition], void)

proc removeNavigationLayer*(self: TileSet; layerIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "remove_navigation_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layerIndex], void)

proc setNavigationLayerLayers*(self: TileSet; layerIndex: int32; layers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_navigation_layer_layers", 3937882851)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr layers], void)

proc getNavigationLayerLayers*(self: TileSet; layerIndex: int32): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_navigation_layer_layers", 923996154)
  methodbind.ptrcall(self, [getPtr layerIndex], uint32)

proc setNavigationLayerLayerValue*(self: TileSet; layerIndex: int32; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_navigation_layer_layer_value", 1383440665)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr layerNumber, getPtr value], void)

proc getNavigationLayerLayerValue*(self: TileSet; layerIndex: int32; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_navigation_layer_layer_value", 2522259332)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr layerNumber], bool)

proc getCustomDataLayersCount*(self: TileSet): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_custom_data_layers_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc addCustomDataLayer*(self: TileSet; toPosition: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "add_custom_data_layer", 1025054187)
  methodbind.ptrcall(self, [getPtr toPosition], void)

proc moveCustomDataLayer*(self: TileSet; layerIndex: int32; toPosition: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "move_custom_data_layer", 3937882851)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr toPosition], void)

proc removeCustomDataLayer*(self: TileSet; layerIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "remove_custom_data_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layerIndex], void)

proc getCustomDataLayerByName*(self: TileSet; layerName: String): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_custom_data_layer_by_name", 1321353865)
  methodbind.ptrcall(self, [getPtr layerName], int32)

proc setCustomDataLayerName*(self: TileSet; layerIndex: int32; layerName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_custom_data_layer_name", 501894301)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr layerName], void)

proc hasCustomDataLayerByName*(self: TileSet; layerName: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "has_custom_data_layer_by_name", 3927539163)
  methodbind.ptrcall(self, [getPtr layerName], bool)

proc getCustomDataLayerName*(self: TileSet; layerIndex: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_custom_data_layer_name", 844755477)
  methodbind.ptrcall(self, [getPtr layerIndex], String)

proc setCustomDataLayerType*(self: TileSet; layerIndex: int32; layerType: Variant_Type): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_custom_data_layer_type", 3492912874)
  methodbind.ptrcall(self, [getPtr layerIndex, getPtr layerType], void)

proc getCustomDataLayerType*(self: TileSet; layerIndex: int32): Variant_Type =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_custom_data_layer_type", 2990820875)
  methodbind.ptrcall(self, [getPtr layerIndex], Variant_Type)

proc setSourceLevelTileProxy*(self: TileSet; sourceFrom: int32; sourceTo: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_source_level_tile_proxy", 3937882851)
  methodbind.ptrcall(self, [getPtr sourceFrom, getPtr sourceTo], void)

proc getSourceLevelTileProxy*(self: TileSet; sourceFrom: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_source_level_tile_proxy", 3744713108)
  methodbind.ptrcall(self, [getPtr sourceFrom], int32)

proc hasSourceLevelTileProxy*(self: TileSet; sourceFrom: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "has_source_level_tile_proxy", 3067735520)
  methodbind.ptrcall(self, [getPtr sourceFrom], bool)

proc removeSourceLevelTileProxy*(self: TileSet; sourceFrom: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "remove_source_level_tile_proxy", 1286410249)
  methodbind.ptrcall(self, [getPtr sourceFrom], void)

proc setCoordsLevelTileProxy*(self: TileSet; pSourceFrom: int32; coordsFrom: Vector2i; sourceTo: int32; coordsTo: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_coords_level_tile_proxy", 1769939278)
  methodbind.ptrcall(self, [getPtr pSourceFrom, getPtr coordsFrom, getPtr sourceTo, getPtr coordsTo], void)

proc getCoordsLevelTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_coords_level_tile_proxy", 2856536371)
  methodbind.ptrcall(self, [getPtr sourceFrom, getPtr coordsFrom], Array)

proc hasCoordsLevelTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "has_coords_level_tile_proxy", 3957903770)
  methodbind.ptrcall(self, [getPtr sourceFrom, getPtr coordsFrom], bool)

proc removeCoordsLevelTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "remove_coords_level_tile_proxy", 2311374912)
  methodbind.ptrcall(self, [getPtr sourceFrom, getPtr coordsFrom], void)

proc setAlternativeLevelTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i; alternativeFrom: int32; sourceTo: int32; coordsTo: Vector2i; alternativeTo: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "set_alternative_level_tile_proxy", 3862385460)
  methodbind.ptrcall(self, [getPtr sourceFrom, getPtr coordsFrom, getPtr alternativeFrom, getPtr sourceTo, getPtr coordsTo, getPtr alternativeTo], void)

proc getAlternativeLevelTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i; alternativeFrom: int32): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_alternative_level_tile_proxy", 2303761075)
  methodbind.ptrcall(self, [getPtr sourceFrom, getPtr coordsFrom, getPtr alternativeFrom], Array)

proc hasAlternativeLevelTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i; alternativeFrom: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "has_alternative_level_tile_proxy", 180086755)
  methodbind.ptrcall(self, [getPtr sourceFrom, getPtr coordsFrom, getPtr alternativeFrom], bool)

proc removeAlternativeLevelTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i; alternativeFrom: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "remove_alternative_level_tile_proxy", 2328951467)
  methodbind.ptrcall(self, [getPtr sourceFrom, getPtr coordsFrom, getPtr alternativeFrom], void)

proc mapTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i; alternativeFrom: int32): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "map_tile_proxy", 4267935328)
  methodbind.ptrcall(self, [getPtr sourceFrom, getPtr coordsFrom, getPtr alternativeFrom], Array)

proc cleanupInvalidTileProxies*(self: TileSet): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "cleanup_invalid_tile_proxies", 3218959716)
  methodbind.ptrcall(self, [], void)

proc clearTileProxies*(self: TileSet): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "clear_tile_proxies", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addPattern*(self: TileSet; pattern: gdref TileMapPattern; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "add_pattern", 763712015)
  methodbind.ptrcall(self, [getPtr pattern, getPtr index], int32)

proc getPattern*(self: TileSet; index: int32 = -1): gdref TileMapPattern =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_pattern", 4207737510)
  methodbind.ptrcall(self, [getPtr index], gdref TileMapPattern)

proc removePattern*(self: TileSet; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "remove_pattern", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc getPatternsCount*(self: TileSet): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSet, "get_patterns_count", 2455072627)
  methodbind.ptrcall(self, [], int32)

template tileShape*(self: TileSet): untyped = self.getTileShape()
template `tileShape=`*(self: TileSet; value) = self.setTileShape(value)

template tileLayout*(self: TileSet): untyped = self.getTileLayout()
template `tileLayout=`*(self: TileSet; value) = self.setTileLayout(value)

template tileOffsetAxis*(self: TileSet): untyped = self.getTileOffsetAxis()
template `tileOffsetAxis=`*(self: TileSet; value) = self.setTileOffsetAxis(value)

template tileSize*(self: TileSet): untyped = self.getTileSize()
template `tileSize=`*(self: TileSet; value) = self.setTileSize(value)

template uvClipping*(self: TileSet): untyped = self.isUvClipping()
template `uvClipping=`*(self: TileSet; value) = self.setUvClipping(value)

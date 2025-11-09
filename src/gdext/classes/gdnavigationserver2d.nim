{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(NavigationServer2D, Object)

proc getMaps*(self: NavigationServer2D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "get_maps", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc mapCreate*(self: NavigationServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc mapSetActive*(self: NavigationServer2D; map: RID; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_set_active", 1265174801)
  methodbind.ptrcall(self, [getPtr map, getPtr active], void)

proc mapIsActive*(self: NavigationServer2D; map: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_is_active", 4155700596)
  methodbind.ptrcall(self, [getPtr map], bool)

proc mapSetCellSize*(self: NavigationServer2D; map: RID; cellSize: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_set_cell_size", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr cellSize], void)

proc mapGetCellSize*(self: NavigationServer2D; map: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_cell_size", 866169185)
  methodbind.ptrcall(self, [getPtr map], Float)

proc mapSetMergeRasterizerCellScale*(self: NavigationServer2D; map: RID; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_set_merge_rasterizer_cell_scale", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr scale], void)

proc mapGetMergeRasterizerCellScale*(self: NavigationServer2D; map: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_merge_rasterizer_cell_scale", 866169185)
  methodbind.ptrcall(self, [getPtr map], Float)

proc mapSetUseEdgeConnections*(self: NavigationServer2D; map: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_set_use_edge_connections", 1265174801)
  methodbind.ptrcall(self, [getPtr map, getPtr enabled], void)

proc mapGetUseEdgeConnections*(self: NavigationServer2D; map: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_use_edge_connections", 4155700596)
  methodbind.ptrcall(self, [getPtr map], bool)

proc mapSetEdgeConnectionMargin*(self: NavigationServer2D; map: RID; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_set_edge_connection_margin", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr margin], void)

proc mapGetEdgeConnectionMargin*(self: NavigationServer2D; map: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_edge_connection_margin", 866169185)
  methodbind.ptrcall(self, [getPtr map], Float)

proc mapSetLinkConnectionRadius*(self: NavigationServer2D; map: RID; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_set_link_connection_radius", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr radius], void)

proc mapGetLinkConnectionRadius*(self: NavigationServer2D; map: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_link_connection_radius", 866169185)
  methodbind.ptrcall(self, [getPtr map], Float)

proc mapGetPath*(self: NavigationServer2D; map: RID; origin: Vector2; destination: Vector2; optimize: bool; navigationLayers: uint32 = 1'u32): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_path", 1279824844)
  methodbind.ptrcall(self, [getPtr map, getPtr origin, getPtr destination, getPtr optimize, getPtr navigationLayers], PackedVector2Array)

proc mapGetClosestPoint*(self: NavigationServer2D; map: RID; toPoint: Vector2): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_closest_point", 1358334418)
  methodbind.ptrcall(self, [getPtr map, getPtr toPoint], Vector2)

proc mapGetClosestPointOwner*(self: NavigationServer2D; map: RID; toPoint: Vector2): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_closest_point_owner", 1353467510)
  methodbind.ptrcall(self, [getPtr map, getPtr toPoint], RID)

proc mapGetLinks*(self: NavigationServer2D; map: RID): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_links", 2684255073)
  methodbind.ptrcall(self, [getPtr map], TypedArray[RID])

proc mapGetRegions*(self: NavigationServer2D; map: RID): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_regions", 2684255073)
  methodbind.ptrcall(self, [getPtr map], TypedArray[RID])

proc mapGetAgents*(self: NavigationServer2D; map: RID): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_agents", 2684255073)
  methodbind.ptrcall(self, [getPtr map], TypedArray[RID])

proc mapGetObstacles*(self: NavigationServer2D; map: RID): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_obstacles", 2684255073)
  methodbind.ptrcall(self, [getPtr map], TypedArray[RID])

proc mapForceUpdate*(self: NavigationServer2D; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_force_update", 2722037293)
  methodbind.ptrcall(self, [getPtr map], void)

proc mapGetIterationId*(self: NavigationServer2D; map: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_iteration_id", 2198884583)
  methodbind.ptrcall(self, [getPtr map], uint32)

proc mapSetUseAsyncIterations*(self: NavigationServer2D; map: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_set_use_async_iterations", 1265174801)
  methodbind.ptrcall(self, [getPtr map, getPtr enabled], void)

proc mapGetUseAsyncIterations*(self: NavigationServer2D; map: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_use_async_iterations", 4155700596)
  methodbind.ptrcall(self, [getPtr map], bool)

proc mapGetRandomPoint*(self: NavigationServer2D; map: RID; navigationLayers: uint32; uniformly: bool): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "map_get_random_point", 3271000763)
  methodbind.ptrcall(self, [getPtr map, getPtr navigationLayers, getPtr uniformly], Vector2)

proc queryPath*(self: NavigationServer2D; parameters: gdref NavigationPathQueryParameters2D; retval: gdref NavigationPathQueryResult2D; callback: Callable = callable()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "query_path", 1254915886)
  methodbind.ptrcall(self, [getPtr parameters, getPtr retval, getPtr callback], void)

proc regionCreate*(self: NavigationServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc regionGetIterationId*(self: NavigationServer2D; region: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_iteration_id", 2198884583)
  methodbind.ptrcall(self, [getPtr region], uint32)

proc regionSetUseAsyncIterations*(self: NavigationServer2D; region: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_set_use_async_iterations", 1265174801)
  methodbind.ptrcall(self, [getPtr region, getPtr enabled], void)

proc regionGetUseAsyncIterations*(self: NavigationServer2D; region: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_use_async_iterations", 4155700596)
  methodbind.ptrcall(self, [getPtr region], bool)

proc regionSetEnabled*(self: NavigationServer2D; region: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_set_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr region, getPtr enabled], void)

proc regionGetEnabled*(self: NavigationServer2D; region: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_enabled", 4155700596)
  methodbind.ptrcall(self, [getPtr region], bool)

proc regionSetUseEdgeConnections*(self: NavigationServer2D; region: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_set_use_edge_connections", 1265174801)
  methodbind.ptrcall(self, [getPtr region, getPtr enabled], void)

proc regionGetUseEdgeConnections*(self: NavigationServer2D; region: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_use_edge_connections", 4155700596)
  methodbind.ptrcall(self, [getPtr region], bool)

proc regionSetEnterCost*(self: NavigationServer2D; region: RID; enterCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_set_enter_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr region, getPtr enterCost], void)

proc regionGetEnterCost*(self: NavigationServer2D; region: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_enter_cost", 866169185)
  methodbind.ptrcall(self, [getPtr region], Float)

proc regionSetTravelCost*(self: NavigationServer2D; region: RID; travelCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_set_travel_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr region, getPtr travelCost], void)

proc regionGetTravelCost*(self: NavigationServer2D; region: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_travel_cost", 866169185)
  methodbind.ptrcall(self, [getPtr region], Float)

proc regionSetOwnerId*(self: NavigationServer2D; region: RID; ownerId: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_set_owner_id", 3411492887)
  methodbind.ptrcall(self, [getPtr region, getPtr ownerId], void)

proc regionGetOwnerId*(self: NavigationServer2D; region: RID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_owner_id", 2198884583)
  methodbind.ptrcall(self, [getPtr region], uint64)

proc regionOwnsPoint*(self: NavigationServer2D; region: RID; point: Vector2): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_owns_point", 219849798)
  methodbind.ptrcall(self, [getPtr region, getPtr point], bool)

proc regionSetMap*(self: NavigationServer2D; region: RID; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr region, getPtr map], void)

proc regionGetMap*(self: NavigationServer2D; region: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_map", 3814569979)
  methodbind.ptrcall(self, [getPtr region], RID)

proc regionSetNavigationLayers*(self: NavigationServer2D; region: RID; navigationLayers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_set_navigation_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr region, getPtr navigationLayers], void)

proc regionGetNavigationLayers*(self: NavigationServer2D; region: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_navigation_layers", 2198884583)
  methodbind.ptrcall(self, [getPtr region], uint32)

proc regionSetTransform*(self: NavigationServer2D; region: RID; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr region, getPtr transform], void)

proc regionGetTransform*(self: NavigationServer2D; region: RID): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_transform", 213527486)
  methodbind.ptrcall(self, [getPtr region], Transform2D)

proc regionSetNavigationPolygon*(self: NavigationServer2D; region: RID; navigationPolygon: gdref NavigationPolygon): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_set_navigation_polygon", 3633623451)
  methodbind.ptrcall(self, [getPtr region, getPtr navigationPolygon], void)

proc regionGetConnectionsCount*(self: NavigationServer2D; region: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_connections_count", 2198884583)
  methodbind.ptrcall(self, [getPtr region], int32)

proc regionGetConnectionPathwayStart*(self: NavigationServer2D; region: RID; connection: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_connection_pathway_start", 2546185844)
  methodbind.ptrcall(self, [getPtr region, getPtr connection], Vector2)

proc regionGetConnectionPathwayEnd*(self: NavigationServer2D; region: RID; connection: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_connection_pathway_end", 2546185844)
  methodbind.ptrcall(self, [getPtr region, getPtr connection], Vector2)

proc regionGetClosestPoint*(self: NavigationServer2D; region: RID; toPoint: Vector2): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_closest_point", 1358334418)
  methodbind.ptrcall(self, [getPtr region, getPtr toPoint], Vector2)

proc regionGetRandomPoint*(self: NavigationServer2D; region: RID; navigationLayers: uint32; uniformly: bool): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_random_point", 3271000763)
  methodbind.ptrcall(self, [getPtr region, getPtr navigationLayers, getPtr uniformly], Vector2)

proc regionGetBounds*(self: NavigationServer2D; region: RID): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "region_get_bounds", 1097232729)
  methodbind.ptrcall(self, [getPtr region], Rect2)

proc linkCreate*(self: NavigationServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc linkGetIterationId*(self: NavigationServer2D; link: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_get_iteration_id", 2198884583)
  methodbind.ptrcall(self, [getPtr link], uint32)

proc linkSetMap*(self: NavigationServer2D; link: RID; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr link, getPtr map], void)

proc linkGetMap*(self: NavigationServer2D; link: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_get_map", 3814569979)
  methodbind.ptrcall(self, [getPtr link], RID)

proc linkSetEnabled*(self: NavigationServer2D; link: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_set_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr link, getPtr enabled], void)

proc linkGetEnabled*(self: NavigationServer2D; link: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_get_enabled", 4155700596)
  methodbind.ptrcall(self, [getPtr link], bool)

proc linkSetBidirectional*(self: NavigationServer2D; link: RID; bidirectional: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_set_bidirectional", 1265174801)
  methodbind.ptrcall(self, [getPtr link, getPtr bidirectional], void)

proc linkIsBidirectional*(self: NavigationServer2D; link: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_is_bidirectional", 4155700596)
  methodbind.ptrcall(self, [getPtr link], bool)

proc linkSetNavigationLayers*(self: NavigationServer2D; link: RID; navigationLayers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_set_navigation_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr link, getPtr navigationLayers], void)

proc linkGetNavigationLayers*(self: NavigationServer2D; link: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_get_navigation_layers", 2198884583)
  methodbind.ptrcall(self, [getPtr link], uint32)

proc linkSetStartPosition*(self: NavigationServer2D; link: RID; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_set_start_position", 3201125042)
  methodbind.ptrcall(self, [getPtr link, getPtr position], void)

proc linkGetStartPosition*(self: NavigationServer2D; link: RID): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_get_start_position", 2440833711)
  methodbind.ptrcall(self, [getPtr link], Vector2)

proc linkSetEndPosition*(self: NavigationServer2D; link: RID; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_set_end_position", 3201125042)
  methodbind.ptrcall(self, [getPtr link, getPtr position], void)

proc linkGetEndPosition*(self: NavigationServer2D; link: RID): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_get_end_position", 2440833711)
  methodbind.ptrcall(self, [getPtr link], Vector2)

proc linkSetEnterCost*(self: NavigationServer2D; link: RID; enterCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_set_enter_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr link, getPtr enterCost], void)

proc linkGetEnterCost*(self: NavigationServer2D; link: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_get_enter_cost", 866169185)
  methodbind.ptrcall(self, [getPtr link], Float)

proc linkSetTravelCost*(self: NavigationServer2D; link: RID; travelCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_set_travel_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr link, getPtr travelCost], void)

proc linkGetTravelCost*(self: NavigationServer2D; link: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_get_travel_cost", 866169185)
  methodbind.ptrcall(self, [getPtr link], Float)

proc linkSetOwnerId*(self: NavigationServer2D; link: RID; ownerId: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_set_owner_id", 3411492887)
  methodbind.ptrcall(self, [getPtr link, getPtr ownerId], void)

proc linkGetOwnerId*(self: NavigationServer2D; link: RID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "link_get_owner_id", 2198884583)
  methodbind.ptrcall(self, [getPtr link], uint64)

proc agentCreate*(self: NavigationServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc agentSetAvoidanceEnabled*(self: NavigationServer2D; agent: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_avoidance_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr agent, getPtr enabled], void)

proc agentGetAvoidanceEnabled*(self: NavigationServer2D; agent: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_get_avoidance_enabled", 4155700596)
  methodbind.ptrcall(self, [getPtr agent], bool)

proc agentSetMap*(self: NavigationServer2D; agent: RID; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr agent, getPtr map], void)

proc agentGetMap*(self: NavigationServer2D; agent: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_get_map", 3814569979)
  methodbind.ptrcall(self, [getPtr agent], RID)

proc agentSetPaused*(self: NavigationServer2D; agent: RID; paused: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_paused", 1265174801)
  methodbind.ptrcall(self, [getPtr agent, getPtr paused], void)

proc agentGetPaused*(self: NavigationServer2D; agent: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_get_paused", 4155700596)
  methodbind.ptrcall(self, [getPtr agent], bool)

proc agentSetNeighborDistance*(self: NavigationServer2D; agent: RID; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_neighbor_distance", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr distance], void)

proc agentGetNeighborDistance*(self: NavigationServer2D; agent: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_get_neighbor_distance", 866169185)
  methodbind.ptrcall(self, [getPtr agent], Float)

proc agentSetMaxNeighbors*(self: NavigationServer2D; agent: RID; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_max_neighbors", 3411492887)
  methodbind.ptrcall(self, [getPtr agent, getPtr count], void)

proc agentGetMaxNeighbors*(self: NavigationServer2D; agent: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_get_max_neighbors", 2198884583)
  methodbind.ptrcall(self, [getPtr agent], int32)

proc agentSetTimeHorizonAgents*(self: NavigationServer2D; agent: RID; timeHorizon: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_time_horizon_agents", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr timeHorizon], void)

proc agentGetTimeHorizonAgents*(self: NavigationServer2D; agent: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_get_time_horizon_agents", 866169185)
  methodbind.ptrcall(self, [getPtr agent], Float)

proc agentSetTimeHorizonObstacles*(self: NavigationServer2D; agent: RID; timeHorizon: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_time_horizon_obstacles", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr timeHorizon], void)

proc agentGetTimeHorizonObstacles*(self: NavigationServer2D; agent: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_get_time_horizon_obstacles", 866169185)
  methodbind.ptrcall(self, [getPtr agent], Float)

proc agentSetRadius*(self: NavigationServer2D; agent: RID; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_radius", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr radius], void)

proc agentGetRadius*(self: NavigationServer2D; agent: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_get_radius", 866169185)
  methodbind.ptrcall(self, [getPtr agent], Float)

proc agentSetMaxSpeed*(self: NavigationServer2D; agent: RID; maxSpeed: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_max_speed", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr maxSpeed], void)

proc agentGetMaxSpeed*(self: NavigationServer2D; agent: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_get_max_speed", 866169185)
  methodbind.ptrcall(self, [getPtr agent], Float)

proc agentSetVelocityForced*(self: NavigationServer2D; agent: RID; velocity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_velocity_forced", 3201125042)
  methodbind.ptrcall(self, [getPtr agent, getPtr velocity], void)

proc agentSetVelocity*(self: NavigationServer2D; agent: RID; velocity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_velocity", 3201125042)
  methodbind.ptrcall(self, [getPtr agent, getPtr velocity], void)

proc agentGetVelocity*(self: NavigationServer2D; agent: RID): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_get_velocity", 2440833711)
  methodbind.ptrcall(self, [getPtr agent], Vector2)

proc agentSetPosition*(self: NavigationServer2D; agent: RID; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_position", 3201125042)
  methodbind.ptrcall(self, [getPtr agent, getPtr position], void)

proc agentGetPosition*(self: NavigationServer2D; agent: RID): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_get_position", 2440833711)
  methodbind.ptrcall(self, [getPtr agent], Vector2)

proc agentIsMapChanged*(self: NavigationServer2D; agent: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_is_map_changed", 4155700596)
  methodbind.ptrcall(self, [getPtr agent], bool)

proc agentSetAvoidanceCallback*(self: NavigationServer2D; agent: RID; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_avoidance_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr agent, getPtr callback], void)

proc agentHasAvoidanceCallback*(self: NavigationServer2D; agent: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_has_avoidance_callback", 4155700596)
  methodbind.ptrcall(self, [getPtr agent], bool)

proc agentSetAvoidanceLayers*(self: NavigationServer2D; agent: RID; layers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_avoidance_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr agent, getPtr layers], void)

proc agentGetAvoidanceLayers*(self: NavigationServer2D; agent: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_get_avoidance_layers", 2198884583)
  methodbind.ptrcall(self, [getPtr agent], uint32)

proc agentSetAvoidanceMask*(self: NavigationServer2D; agent: RID; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_avoidance_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr agent, getPtr mask], void)

proc agentGetAvoidanceMask*(self: NavigationServer2D; agent: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_get_avoidance_mask", 2198884583)
  methodbind.ptrcall(self, [getPtr agent], uint32)

proc agentSetAvoidancePriority*(self: NavigationServer2D; agent: RID; priority: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_set_avoidance_priority", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr priority], void)

proc agentGetAvoidancePriority*(self: NavigationServer2D; agent: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "agent_get_avoidance_priority", 866169185)
  methodbind.ptrcall(self, [getPtr agent], Float)

proc obstacleCreate*(self: NavigationServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc obstacleSetAvoidanceEnabled*(self: NavigationServer2D; obstacle: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_set_avoidance_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr enabled], void)

proc obstacleGetAvoidanceEnabled*(self: NavigationServer2D; obstacle: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_get_avoidance_enabled", 4155700596)
  methodbind.ptrcall(self, [getPtr obstacle], bool)

proc obstacleSetMap*(self: NavigationServer2D; obstacle: RID; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr map], void)

proc obstacleGetMap*(self: NavigationServer2D; obstacle: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_get_map", 3814569979)
  methodbind.ptrcall(self, [getPtr obstacle], RID)

proc obstacleSetPaused*(self: NavigationServer2D; obstacle: RID; paused: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_set_paused", 1265174801)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr paused], void)

proc obstacleGetPaused*(self: NavigationServer2D; obstacle: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_get_paused", 4155700596)
  methodbind.ptrcall(self, [getPtr obstacle], bool)

proc obstacleSetRadius*(self: NavigationServer2D; obstacle: RID; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_set_radius", 1794382983)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr radius], void)

proc obstacleGetRadius*(self: NavigationServer2D; obstacle: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_get_radius", 866169185)
  methodbind.ptrcall(self, [getPtr obstacle], Float)

proc obstacleSetVelocity*(self: NavigationServer2D; obstacle: RID; velocity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_set_velocity", 3201125042)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr velocity], void)

proc obstacleGetVelocity*(self: NavigationServer2D; obstacle: RID): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_get_velocity", 2440833711)
  methodbind.ptrcall(self, [getPtr obstacle], Vector2)

proc obstacleSetPosition*(self: NavigationServer2D; obstacle: RID; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_set_position", 3201125042)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr position], void)

proc obstacleGetPosition*(self: NavigationServer2D; obstacle: RID): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_get_position", 2440833711)
  methodbind.ptrcall(self, [getPtr obstacle], Vector2)

proc obstacleSetVertices*(self: NavigationServer2D; obstacle: RID; vertices: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_set_vertices", 29476483)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr vertices], void)

proc obstacleGetVertices*(self: NavigationServer2D; obstacle: RID): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_get_vertices", 2222557395)
  methodbind.ptrcall(self, [getPtr obstacle], PackedVector2Array)

proc obstacleSetAvoidanceLayers*(self: NavigationServer2D; obstacle: RID; layers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_set_avoidance_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr layers], void)

proc obstacleGetAvoidanceLayers*(self: NavigationServer2D; obstacle: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "obstacle_get_avoidance_layers", 2198884583)
  methodbind.ptrcall(self, [getPtr obstacle], uint32)

proc parseSourceGeometryData*(self: NavigationServer2D; navigationPolygon: gdref NavigationPolygon; sourceGeometryData: gdref NavigationMeshSourceGeometryData2D; rootNode: Node; callback: Callable = callable()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "parse_source_geometry_data", 1766905497)
  methodbind.ptrcall(self, [getPtr navigationPolygon, getPtr sourceGeometryData, getPtr rootNode, getPtr callback], void)

proc bakeFromSourceGeometryData*(self: NavigationServer2D; navigationPolygon: gdref NavigationPolygon; sourceGeometryData: gdref NavigationMeshSourceGeometryData2D; callback: Callable = callable()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "bake_from_source_geometry_data", 2179660022)
  methodbind.ptrcall(self, [getPtr navigationPolygon, getPtr sourceGeometryData, getPtr callback], void)

proc bakeFromSourceGeometryDataAsync*(self: NavigationServer2D; navigationPolygon: gdref NavigationPolygon; sourceGeometryData: gdref NavigationMeshSourceGeometryData2D; callback: Callable = callable()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "bake_from_source_geometry_data_async", 2179660022)
  methodbind.ptrcall(self, [getPtr navigationPolygon, getPtr sourceGeometryData, getPtr callback], void)

proc isBakingNavigationPolygon*(self: NavigationServer2D; navigationPolygon: gdref NavigationPolygon): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "is_baking_navigation_polygon", 3729405808)
  methodbind.ptrcall(self, [getPtr navigationPolygon], bool)

proc sourceGeometryParserCreate*(self: NavigationServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "source_geometry_parser_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc sourceGeometryParserSetCallback*(self: NavigationServer2D; parser: RID; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "source_geometry_parser_set_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr parser, getPtr callback], void)

proc simplifyPath*(self: NavigationServer2D; path: PackedVector2Array; epsilon: Float): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "simplify_path", 2457191505)
  methodbind.ptrcall(self, [getPtr path, getPtr epsilon], PackedVector2Array)

proc freeRid*(self: NavigationServer2D; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "free_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc setActive*(self: NavigationServer2D; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "set_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active], void)

proc setDebugEnabled*(self: NavigationServer2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "set_debug_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getDebugEnabled*(self: NavigationServer2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "get_debug_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getProcessInfo*(self: NavigationServer2D; processInfo: NavigationServer2D_ProcessInfo): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer2D, "get_process_info", 1640219858)
  methodbind.ptrcall(self, [getPtr processInfo], int32)

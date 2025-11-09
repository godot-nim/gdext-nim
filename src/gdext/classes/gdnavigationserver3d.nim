{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(NavigationServer3D, Object)

proc getMaps*(self: NavigationServer3D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "get_maps", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc mapCreate*(self: NavigationServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc mapSetActive*(self: NavigationServer3D; map: RID; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_set_active", 1265174801)
  methodbind.ptrcall(self, [getPtr map, getPtr active], void)

proc mapIsActive*(self: NavigationServer3D; map: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_is_active", 4155700596)
  methodbind.ptrcall(self, [getPtr map], bool)

proc mapSetUp*(self: NavigationServer3D; map: RID; up: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_set_up", 3227306858)
  methodbind.ptrcall(self, [getPtr map, getPtr up], void)

proc mapGetUp*(self: NavigationServer3D; map: RID): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_up", 531438156)
  methodbind.ptrcall(self, [getPtr map], Vector3)

proc mapSetCellSize*(self: NavigationServer3D; map: RID; cellSize: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_set_cell_size", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr cellSize], void)

proc mapGetCellSize*(self: NavigationServer3D; map: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_cell_size", 866169185)
  methodbind.ptrcall(self, [getPtr map], Float)

proc mapSetCellHeight*(self: NavigationServer3D; map: RID; cellHeight: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_set_cell_height", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr cellHeight], void)

proc mapGetCellHeight*(self: NavigationServer3D; map: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_cell_height", 866169185)
  methodbind.ptrcall(self, [getPtr map], Float)

proc mapSetMergeRasterizerCellScale*(self: NavigationServer3D; map: RID; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_set_merge_rasterizer_cell_scale", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr scale], void)

proc mapGetMergeRasterizerCellScale*(self: NavigationServer3D; map: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_merge_rasterizer_cell_scale", 866169185)
  methodbind.ptrcall(self, [getPtr map], Float)

proc mapSetUseEdgeConnections*(self: NavigationServer3D; map: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_set_use_edge_connections", 1265174801)
  methodbind.ptrcall(self, [getPtr map, getPtr enabled], void)

proc mapGetUseEdgeConnections*(self: NavigationServer3D; map: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_use_edge_connections", 4155700596)
  methodbind.ptrcall(self, [getPtr map], bool)

proc mapSetEdgeConnectionMargin*(self: NavigationServer3D; map: RID; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_set_edge_connection_margin", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr margin], void)

proc mapGetEdgeConnectionMargin*(self: NavigationServer3D; map: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_edge_connection_margin", 866169185)
  methodbind.ptrcall(self, [getPtr map], Float)

proc mapSetLinkConnectionRadius*(self: NavigationServer3D; map: RID; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_set_link_connection_radius", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr radius], void)

proc mapGetLinkConnectionRadius*(self: NavigationServer3D; map: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_link_connection_radius", 866169185)
  methodbind.ptrcall(self, [getPtr map], Float)

proc mapGetPath*(self: NavigationServer3D; map: RID; origin: Vector3; destination: Vector3; optimize: bool; navigationLayers: uint32 = 1'u32): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_path", 276783190)
  methodbind.ptrcall(self, [getPtr map, getPtr origin, getPtr destination, getPtr optimize, getPtr navigationLayers], PackedVector3Array)

proc mapGetClosestPointToSegment*(self: NavigationServer3D; map: RID; start: Vector3; `end`: Vector3; useCollision: bool = false): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_closest_point_to_segment", 3830095642)
  methodbind.ptrcall(self, [getPtr map, getPtr start, getPtr `end`, getPtr useCollision], Vector3)

proc mapGetClosestPoint*(self: NavigationServer3D; map: RID; toPoint: Vector3): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_closest_point", 2056183332)
  methodbind.ptrcall(self, [getPtr map, getPtr toPoint], Vector3)

proc mapGetClosestPointNormal*(self: NavigationServer3D; map: RID; toPoint: Vector3): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_closest_point_normal", 2056183332)
  methodbind.ptrcall(self, [getPtr map, getPtr toPoint], Vector3)

proc mapGetClosestPointOwner*(self: NavigationServer3D; map: RID; toPoint: Vector3): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_closest_point_owner", 553364610)
  methodbind.ptrcall(self, [getPtr map, getPtr toPoint], RID)

proc mapGetLinks*(self: NavigationServer3D; map: RID): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_links", 2684255073)
  methodbind.ptrcall(self, [getPtr map], TypedArray[RID])

proc mapGetRegions*(self: NavigationServer3D; map: RID): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_regions", 2684255073)
  methodbind.ptrcall(self, [getPtr map], TypedArray[RID])

proc mapGetAgents*(self: NavigationServer3D; map: RID): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_agents", 2684255073)
  methodbind.ptrcall(self, [getPtr map], TypedArray[RID])

proc mapGetObstacles*(self: NavigationServer3D; map: RID): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_obstacles", 2684255073)
  methodbind.ptrcall(self, [getPtr map], TypedArray[RID])

proc mapForceUpdate*(self: NavigationServer3D; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_force_update", 2722037293)
  methodbind.ptrcall(self, [getPtr map], void)

proc mapGetIterationId*(self: NavigationServer3D; map: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_iteration_id", 2198884583)
  methodbind.ptrcall(self, [getPtr map], uint32)

proc mapSetUseAsyncIterations*(self: NavigationServer3D; map: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_set_use_async_iterations", 1265174801)
  methodbind.ptrcall(self, [getPtr map, getPtr enabled], void)

proc mapGetUseAsyncIterations*(self: NavigationServer3D; map: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_use_async_iterations", 4155700596)
  methodbind.ptrcall(self, [getPtr map], bool)

proc mapGetRandomPoint*(self: NavigationServer3D; map: RID; navigationLayers: uint32; uniformly: bool): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "map_get_random_point", 722801526)
  methodbind.ptrcall(self, [getPtr map, getPtr navigationLayers, getPtr uniformly], Vector3)

proc queryPath*(self: NavigationServer3D; parameters: gdref NavigationPathQueryParameters3D; retval: gdref NavigationPathQueryResult3D; callback: Callable = callable()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "query_path", 2146930868)
  methodbind.ptrcall(self, [getPtr parameters, getPtr retval, getPtr callback], void)

proc regionCreate*(self: NavigationServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc regionGetIterationId*(self: NavigationServer3D; region: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_iteration_id", 2198884583)
  methodbind.ptrcall(self, [getPtr region], uint32)

proc regionSetUseAsyncIterations*(self: NavigationServer3D; region: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_set_use_async_iterations", 1265174801)
  methodbind.ptrcall(self, [getPtr region, getPtr enabled], void)

proc regionGetUseAsyncIterations*(self: NavigationServer3D; region: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_use_async_iterations", 4155700596)
  methodbind.ptrcall(self, [getPtr region], bool)

proc regionSetEnabled*(self: NavigationServer3D; region: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_set_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr region, getPtr enabled], void)

proc regionGetEnabled*(self: NavigationServer3D; region: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_enabled", 4155700596)
  methodbind.ptrcall(self, [getPtr region], bool)

proc regionSetUseEdgeConnections*(self: NavigationServer3D; region: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_set_use_edge_connections", 1265174801)
  methodbind.ptrcall(self, [getPtr region, getPtr enabled], void)

proc regionGetUseEdgeConnections*(self: NavigationServer3D; region: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_use_edge_connections", 4155700596)
  methodbind.ptrcall(self, [getPtr region], bool)

proc regionSetEnterCost*(self: NavigationServer3D; region: RID; enterCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_set_enter_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr region, getPtr enterCost], void)

proc regionGetEnterCost*(self: NavigationServer3D; region: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_enter_cost", 866169185)
  methodbind.ptrcall(self, [getPtr region], Float)

proc regionSetTravelCost*(self: NavigationServer3D; region: RID; travelCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_set_travel_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr region, getPtr travelCost], void)

proc regionGetTravelCost*(self: NavigationServer3D; region: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_travel_cost", 866169185)
  methodbind.ptrcall(self, [getPtr region], Float)

proc regionSetOwnerId*(self: NavigationServer3D; region: RID; ownerId: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_set_owner_id", 3411492887)
  methodbind.ptrcall(self, [getPtr region, getPtr ownerId], void)

proc regionGetOwnerId*(self: NavigationServer3D; region: RID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_owner_id", 2198884583)
  methodbind.ptrcall(self, [getPtr region], uint64)

proc regionOwnsPoint*(self: NavigationServer3D; region: RID; point: Vector3): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_owns_point", 2360011153)
  methodbind.ptrcall(self, [getPtr region, getPtr point], bool)

proc regionSetMap*(self: NavigationServer3D; region: RID; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr region, getPtr map], void)

proc regionGetMap*(self: NavigationServer3D; region: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_map", 3814569979)
  methodbind.ptrcall(self, [getPtr region], RID)

proc regionSetNavigationLayers*(self: NavigationServer3D; region: RID; navigationLayers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_set_navigation_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr region, getPtr navigationLayers], void)

proc regionGetNavigationLayers*(self: NavigationServer3D; region: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_navigation_layers", 2198884583)
  methodbind.ptrcall(self, [getPtr region], uint32)

proc regionSetTransform*(self: NavigationServer3D; region: RID; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_set_transform", 3935195649)
  methodbind.ptrcall(self, [getPtr region, getPtr transform], void)

proc regionGetTransform*(self: NavigationServer3D; region: RID): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_transform", 1128465797)
  methodbind.ptrcall(self, [getPtr region], Transform3D)

proc regionSetNavigationMesh*(self: NavigationServer3D; region: RID; navigationMesh: gdref NavigationMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_set_navigation_mesh", 2764952978)
  methodbind.ptrcall(self, [getPtr region, getPtr navigationMesh], void)

proc regionBakeNavigationMesh*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh; rootNode: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_bake_navigation_mesh", 1401173477)
  methodbind.ptrcall(self, [getPtr navigationMesh, getPtr rootNode], void)

proc regionGetConnectionsCount*(self: NavigationServer3D; region: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_connections_count", 2198884583)
  methodbind.ptrcall(self, [getPtr region], int32)

proc regionGetConnectionPathwayStart*(self: NavigationServer3D; region: RID; connection: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_connection_pathway_start", 3440143363)
  methodbind.ptrcall(self, [getPtr region, getPtr connection], Vector3)

proc regionGetConnectionPathwayEnd*(self: NavigationServer3D; region: RID; connection: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_connection_pathway_end", 3440143363)
  methodbind.ptrcall(self, [getPtr region, getPtr connection], Vector3)

proc regionGetClosestPointToSegment*(self: NavigationServer3D; region: RID; start: Vector3; `end`: Vector3; useCollision: bool = false): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_closest_point_to_segment", 3830095642)
  methodbind.ptrcall(self, [getPtr region, getPtr start, getPtr `end`, getPtr useCollision], Vector3)

proc regionGetClosestPoint*(self: NavigationServer3D; region: RID; toPoint: Vector3): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_closest_point", 2056183332)
  methodbind.ptrcall(self, [getPtr region, getPtr toPoint], Vector3)

proc regionGetClosestPointNormal*(self: NavigationServer3D; region: RID; toPoint: Vector3): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_closest_point_normal", 2056183332)
  methodbind.ptrcall(self, [getPtr region, getPtr toPoint], Vector3)

proc regionGetRandomPoint*(self: NavigationServer3D; region: RID; navigationLayers: uint32; uniformly: bool): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_random_point", 722801526)
  methodbind.ptrcall(self, [getPtr region, getPtr navigationLayers, getPtr uniformly], Vector3)

proc regionGetBounds*(self: NavigationServer3D; region: RID): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "region_get_bounds", 974181306)
  methodbind.ptrcall(self, [getPtr region], AABB)

proc linkCreate*(self: NavigationServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc linkGetIterationId*(self: NavigationServer3D; link: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_get_iteration_id", 2198884583)
  methodbind.ptrcall(self, [getPtr link], uint32)

proc linkSetMap*(self: NavigationServer3D; link: RID; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr link, getPtr map], void)

proc linkGetMap*(self: NavigationServer3D; link: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_get_map", 3814569979)
  methodbind.ptrcall(self, [getPtr link], RID)

proc linkSetEnabled*(self: NavigationServer3D; link: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_set_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr link, getPtr enabled], void)

proc linkGetEnabled*(self: NavigationServer3D; link: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_get_enabled", 4155700596)
  methodbind.ptrcall(self, [getPtr link], bool)

proc linkSetBidirectional*(self: NavigationServer3D; link: RID; bidirectional: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_set_bidirectional", 1265174801)
  methodbind.ptrcall(self, [getPtr link, getPtr bidirectional], void)

proc linkIsBidirectional*(self: NavigationServer3D; link: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_is_bidirectional", 4155700596)
  methodbind.ptrcall(self, [getPtr link], bool)

proc linkSetNavigationLayers*(self: NavigationServer3D; link: RID; navigationLayers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_set_navigation_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr link, getPtr navigationLayers], void)

proc linkGetNavigationLayers*(self: NavigationServer3D; link: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_get_navigation_layers", 2198884583)
  methodbind.ptrcall(self, [getPtr link], uint32)

proc linkSetStartPosition*(self: NavigationServer3D; link: RID; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_set_start_position", 3227306858)
  methodbind.ptrcall(self, [getPtr link, getPtr position], void)

proc linkGetStartPosition*(self: NavigationServer3D; link: RID): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_get_start_position", 531438156)
  methodbind.ptrcall(self, [getPtr link], Vector3)

proc linkSetEndPosition*(self: NavigationServer3D; link: RID; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_set_end_position", 3227306858)
  methodbind.ptrcall(self, [getPtr link, getPtr position], void)

proc linkGetEndPosition*(self: NavigationServer3D; link: RID): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_get_end_position", 531438156)
  methodbind.ptrcall(self, [getPtr link], Vector3)

proc linkSetEnterCost*(self: NavigationServer3D; link: RID; enterCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_set_enter_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr link, getPtr enterCost], void)

proc linkGetEnterCost*(self: NavigationServer3D; link: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_get_enter_cost", 866169185)
  methodbind.ptrcall(self, [getPtr link], Float)

proc linkSetTravelCost*(self: NavigationServer3D; link: RID; travelCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_set_travel_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr link, getPtr travelCost], void)

proc linkGetTravelCost*(self: NavigationServer3D; link: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_get_travel_cost", 866169185)
  methodbind.ptrcall(self, [getPtr link], Float)

proc linkSetOwnerId*(self: NavigationServer3D; link: RID; ownerId: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_set_owner_id", 3411492887)
  methodbind.ptrcall(self, [getPtr link, getPtr ownerId], void)

proc linkGetOwnerId*(self: NavigationServer3D; link: RID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "link_get_owner_id", 2198884583)
  methodbind.ptrcall(self, [getPtr link], uint64)

proc agentCreate*(self: NavigationServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc agentSetAvoidanceEnabled*(self: NavigationServer3D; agent: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_avoidance_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr agent, getPtr enabled], void)

proc agentGetAvoidanceEnabled*(self: NavigationServer3D; agent: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_avoidance_enabled", 4155700596)
  methodbind.ptrcall(self, [getPtr agent], bool)

proc agentSetUse3DAvoidance*(self: NavigationServer3D; agent: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_use_3d_avoidance", 1265174801)
  methodbind.ptrcall(self, [getPtr agent, getPtr enabled], void)

proc agentGetUse3DAvoidance*(self: NavigationServer3D; agent: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_use_3d_avoidance", 4155700596)
  methodbind.ptrcall(self, [getPtr agent], bool)

proc agentSetMap*(self: NavigationServer3D; agent: RID; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr agent, getPtr map], void)

proc agentGetMap*(self: NavigationServer3D; agent: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_map", 3814569979)
  methodbind.ptrcall(self, [getPtr agent], RID)

proc agentSetPaused*(self: NavigationServer3D; agent: RID; paused: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_paused", 1265174801)
  methodbind.ptrcall(self, [getPtr agent, getPtr paused], void)

proc agentGetPaused*(self: NavigationServer3D; agent: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_paused", 4155700596)
  methodbind.ptrcall(self, [getPtr agent], bool)

proc agentSetNeighborDistance*(self: NavigationServer3D; agent: RID; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_neighbor_distance", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr distance], void)

proc agentGetNeighborDistance*(self: NavigationServer3D; agent: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_neighbor_distance", 866169185)
  methodbind.ptrcall(self, [getPtr agent], Float)

proc agentSetMaxNeighbors*(self: NavigationServer3D; agent: RID; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_max_neighbors", 3411492887)
  methodbind.ptrcall(self, [getPtr agent, getPtr count], void)

proc agentGetMaxNeighbors*(self: NavigationServer3D; agent: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_max_neighbors", 2198884583)
  methodbind.ptrcall(self, [getPtr agent], int32)

proc agentSetTimeHorizonAgents*(self: NavigationServer3D; agent: RID; timeHorizon: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_time_horizon_agents", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr timeHorizon], void)

proc agentGetTimeHorizonAgents*(self: NavigationServer3D; agent: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_time_horizon_agents", 866169185)
  methodbind.ptrcall(self, [getPtr agent], Float)

proc agentSetTimeHorizonObstacles*(self: NavigationServer3D; agent: RID; timeHorizon: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_time_horizon_obstacles", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr timeHorizon], void)

proc agentGetTimeHorizonObstacles*(self: NavigationServer3D; agent: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_time_horizon_obstacles", 866169185)
  methodbind.ptrcall(self, [getPtr agent], Float)

proc agentSetRadius*(self: NavigationServer3D; agent: RID; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_radius", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr radius], void)

proc agentGetRadius*(self: NavigationServer3D; agent: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_radius", 866169185)
  methodbind.ptrcall(self, [getPtr agent], Float)

proc agentSetHeight*(self: NavigationServer3D; agent: RID; height: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_height", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr height], void)

proc agentGetHeight*(self: NavigationServer3D; agent: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_height", 866169185)
  methodbind.ptrcall(self, [getPtr agent], Float)

proc agentSetMaxSpeed*(self: NavigationServer3D; agent: RID; maxSpeed: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_max_speed", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr maxSpeed], void)

proc agentGetMaxSpeed*(self: NavigationServer3D; agent: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_max_speed", 866169185)
  methodbind.ptrcall(self, [getPtr agent], Float)

proc agentSetVelocityForced*(self: NavigationServer3D; agent: RID; velocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_velocity_forced", 3227306858)
  methodbind.ptrcall(self, [getPtr agent, getPtr velocity], void)

proc agentSetVelocity*(self: NavigationServer3D; agent: RID; velocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_velocity", 3227306858)
  methodbind.ptrcall(self, [getPtr agent, getPtr velocity], void)

proc agentGetVelocity*(self: NavigationServer3D; agent: RID): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_velocity", 531438156)
  methodbind.ptrcall(self, [getPtr agent], Vector3)

proc agentSetPosition*(self: NavigationServer3D; agent: RID; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_position", 3227306858)
  methodbind.ptrcall(self, [getPtr agent, getPtr position], void)

proc agentGetPosition*(self: NavigationServer3D; agent: RID): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_position", 531438156)
  methodbind.ptrcall(self, [getPtr agent], Vector3)

proc agentIsMapChanged*(self: NavigationServer3D; agent: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_is_map_changed", 4155700596)
  methodbind.ptrcall(self, [getPtr agent], bool)

proc agentSetAvoidanceCallback*(self: NavigationServer3D; agent: RID; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_avoidance_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr agent, getPtr callback], void)

proc agentHasAvoidanceCallback*(self: NavigationServer3D; agent: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_has_avoidance_callback", 4155700596)
  methodbind.ptrcall(self, [getPtr agent], bool)

proc agentSetAvoidanceLayers*(self: NavigationServer3D; agent: RID; layers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_avoidance_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr agent, getPtr layers], void)

proc agentGetAvoidanceLayers*(self: NavigationServer3D; agent: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_avoidance_layers", 2198884583)
  methodbind.ptrcall(self, [getPtr agent], uint32)

proc agentSetAvoidanceMask*(self: NavigationServer3D; agent: RID; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_avoidance_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr agent, getPtr mask], void)

proc agentGetAvoidanceMask*(self: NavigationServer3D; agent: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_avoidance_mask", 2198884583)
  methodbind.ptrcall(self, [getPtr agent], uint32)

proc agentSetAvoidancePriority*(self: NavigationServer3D; agent: RID; priority: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_set_avoidance_priority", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr priority], void)

proc agentGetAvoidancePriority*(self: NavigationServer3D; agent: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "agent_get_avoidance_priority", 866169185)
  methodbind.ptrcall(self, [getPtr agent], Float)

proc obstacleCreate*(self: NavigationServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc obstacleSetAvoidanceEnabled*(self: NavigationServer3D; obstacle: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_set_avoidance_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr enabled], void)

proc obstacleGetAvoidanceEnabled*(self: NavigationServer3D; obstacle: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_get_avoidance_enabled", 4155700596)
  methodbind.ptrcall(self, [getPtr obstacle], bool)

proc obstacleSetUse3DAvoidance*(self: NavigationServer3D; obstacle: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_set_use_3d_avoidance", 1265174801)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr enabled], void)

proc obstacleGetUse3DAvoidance*(self: NavigationServer3D; obstacle: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_get_use_3d_avoidance", 4155700596)
  methodbind.ptrcall(self, [getPtr obstacle], bool)

proc obstacleSetMap*(self: NavigationServer3D; obstacle: RID; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr map], void)

proc obstacleGetMap*(self: NavigationServer3D; obstacle: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_get_map", 3814569979)
  methodbind.ptrcall(self, [getPtr obstacle], RID)

proc obstacleSetPaused*(self: NavigationServer3D; obstacle: RID; paused: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_set_paused", 1265174801)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr paused], void)

proc obstacleGetPaused*(self: NavigationServer3D; obstacle: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_get_paused", 4155700596)
  methodbind.ptrcall(self, [getPtr obstacle], bool)

proc obstacleSetRadius*(self: NavigationServer3D; obstacle: RID; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_set_radius", 1794382983)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr radius], void)

proc obstacleGetRadius*(self: NavigationServer3D; obstacle: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_get_radius", 866169185)
  methodbind.ptrcall(self, [getPtr obstacle], Float)

proc obstacleSetHeight*(self: NavigationServer3D; obstacle: RID; height: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_set_height", 1794382983)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr height], void)

proc obstacleGetHeight*(self: NavigationServer3D; obstacle: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_get_height", 866169185)
  methodbind.ptrcall(self, [getPtr obstacle], Float)

proc obstacleSetVelocity*(self: NavigationServer3D; obstacle: RID; velocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_set_velocity", 3227306858)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr velocity], void)

proc obstacleGetVelocity*(self: NavigationServer3D; obstacle: RID): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_get_velocity", 531438156)
  methodbind.ptrcall(self, [getPtr obstacle], Vector3)

proc obstacleSetPosition*(self: NavigationServer3D; obstacle: RID; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_set_position", 3227306858)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr position], void)

proc obstacleGetPosition*(self: NavigationServer3D; obstacle: RID): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_get_position", 531438156)
  methodbind.ptrcall(self, [getPtr obstacle], Vector3)

proc obstacleSetVertices*(self: NavigationServer3D; obstacle: RID; vertices: PackedVector3Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_set_vertices", 4030257846)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr vertices], void)

proc obstacleGetVertices*(self: NavigationServer3D; obstacle: RID): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_get_vertices", 808965560)
  methodbind.ptrcall(self, [getPtr obstacle], PackedVector3Array)

proc obstacleSetAvoidanceLayers*(self: NavigationServer3D; obstacle: RID; layers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_set_avoidance_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr layers], void)

proc obstacleGetAvoidanceLayers*(self: NavigationServer3D; obstacle: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "obstacle_get_avoidance_layers", 2198884583)
  methodbind.ptrcall(self, [getPtr obstacle], uint32)

proc parseSourceGeometryData*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; rootNode: Node; callback: Callable = callable()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "parse_source_geometry_data", 3172802542)
  methodbind.ptrcall(self, [getPtr navigationMesh, getPtr sourceGeometryData, getPtr rootNode, getPtr callback], void)

proc bakeFromSourceGeometryData*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; callback: Callable = callable()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "bake_from_source_geometry_data", 1286748856)
  methodbind.ptrcall(self, [getPtr navigationMesh, getPtr sourceGeometryData, getPtr callback], void)

proc bakeFromSourceGeometryDataAsync*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; callback: Callable = callable()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "bake_from_source_geometry_data_async", 1286748856)
  methodbind.ptrcall(self, [getPtr navigationMesh, getPtr sourceGeometryData, getPtr callback], void)

proc isBakingNavigationMesh*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "is_baking_navigation_mesh", 3142026141)
  methodbind.ptrcall(self, [getPtr navigationMesh], bool)

proc sourceGeometryParserCreate*(self: NavigationServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "source_geometry_parser_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc sourceGeometryParserSetCallback*(self: NavigationServer3D; parser: RID; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "source_geometry_parser_set_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr parser, getPtr callback], void)

proc simplifyPath*(self: NavigationServer3D; path: PackedVector3Array; epsilon: Float): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "simplify_path", 2344122170)
  methodbind.ptrcall(self, [getPtr path, getPtr epsilon], PackedVector3Array)

proc freeRid*(self: NavigationServer3D; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "free_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc setActive*(self: NavigationServer3D; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "set_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active], void)

proc setDebugEnabled*(self: NavigationServer3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "set_debug_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getDebugEnabled*(self: NavigationServer3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "get_debug_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getProcessInfo*(self: NavigationServer3D; processInfo: NavigationServer3D_ProcessInfo): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationServer3D, "get_process_info", 1938440894)
  methodbind.ptrcall(self, [getPtr processInfo], int32)

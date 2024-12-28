{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getMaps*(self: NavigationServer2D): TypedArray[RID] =
  expandMethodBind(className NavigationServer2D, "get_maps", 3995934104)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapCreate*(self: NavigationServer2D): RID =
  expandMethodBind(className NavigationServer2D, "map_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc mapSetActive*(self: NavigationServer2D; map: RID; active: bool): void =
  expandMethodBind(className NavigationServer2D, "map_set_active", 1265174801)
  methodbind.ptrcall(self, [getPtr map, getPtr active])

proc mapIsActive*(self: NavigationServer2D; map: RID): bool =
  expandMethodBind(className NavigationServer2D, "map_is_active", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(bool)

proc mapSetCellSize*(self: NavigationServer2D; map: RID; cellSize: Float): void =
  expandMethodBind(className NavigationServer2D, "map_set_cell_size", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr cellSize])

proc mapGetCellSize*(self: NavigationServer2D; map: RID): Float =
  expandMethodBind(className NavigationServer2D, "map_get_cell_size", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(Float)

proc mapSetUseEdgeConnections*(self: NavigationServer2D; map: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer2D, "map_set_use_edge_connections", 1265174801)
  methodbind.ptrcall(self, [getPtr map, getPtr enabled])

proc mapGetUseEdgeConnections*(self: NavigationServer2D; map: RID): bool =
  expandMethodBind(className NavigationServer2D, "map_get_use_edge_connections", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(bool)

proc mapSetEdgeConnectionMargin*(self: NavigationServer2D; map: RID; margin: Float): void =
  expandMethodBind(className NavigationServer2D, "map_set_edge_connection_margin", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr margin])

proc mapGetEdgeConnectionMargin*(self: NavigationServer2D; map: RID): Float =
  expandMethodBind(className NavigationServer2D, "map_get_edge_connection_margin", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(Float)

proc mapSetLinkConnectionRadius*(self: NavigationServer2D; map: RID; radius: Float): void =
  expandMethodBind(className NavigationServer2D, "map_set_link_connection_radius", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr radius])

proc mapGetLinkConnectionRadius*(self: NavigationServer2D; map: RID): Float =
  expandMethodBind(className NavigationServer2D, "map_get_link_connection_radius", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(Float)

proc mapGetPath*(self: NavigationServer2D; map: RID; origin: Vector2; destination: Vector2; optimize: bool; navigationLayers: uint32 = 1'u32): PackedVector2Array =
  expandMethodBind(className NavigationServer2D, "map_get_path", 3146466012)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr map, getPtr origin, getPtr destination, getPtr optimize, getPtr navigationLayers], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc mapGetClosestPoint*(self: NavigationServer2D; map: RID; toPoint: Vector2): Vector2 =
  expandMethodBind(className NavigationServer2D, "map_get_closest_point", 1358334418)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr map, getPtr toPoint], addr ret)
  (addr ret).decode_result(Vector2)

proc mapGetClosestPointOwner*(self: NavigationServer2D; map: RID; toPoint: Vector2): RID =
  expandMethodBind(className NavigationServer2D, "map_get_closest_point_owner", 1353467510)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr map, getPtr toPoint], addr ret)
  (addr ret).decode_result(RID)

proc mapGetLinks*(self: NavigationServer2D; map: RID): TypedArray[RID] =
  expandMethodBind(className NavigationServer2D, "map_get_links", 2684255073)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapGetRegions*(self: NavigationServer2D; map: RID): TypedArray[RID] =
  expandMethodBind(className NavigationServer2D, "map_get_regions", 2684255073)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapGetAgents*(self: NavigationServer2D; map: RID): TypedArray[RID] =
  expandMethodBind(className NavigationServer2D, "map_get_agents", 2684255073)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapGetObstacles*(self: NavigationServer2D; map: RID): TypedArray[RID] =
  expandMethodBind(className NavigationServer2D, "map_get_obstacles", 2684255073)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapForceUpdate*(self: NavigationServer2D; map: RID): void =
  expandMethodBind(className NavigationServer2D, "map_force_update", 2722037293)
  methodbind.ptrcall(self, [getPtr map])

proc mapGetIterationId*(self: NavigationServer2D; map: RID): uint32 =
  expandMethodBind(className NavigationServer2D, "map_get_iteration_id", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(uint32)

proc mapGetRandomPoint*(self: NavigationServer2D; map: RID; navigationLayers: uint32; uniformly: bool): Vector2 =
  expandMethodBind(className NavigationServer2D, "map_get_random_point", 3271000763)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr map, getPtr navigationLayers, getPtr uniformly], addr ret)
  (addr ret).decode_result(Vector2)

proc queryPath*(self: NavigationServer2D; parameters: gdref NavigationPathQueryParameters2D; retval: gdref NavigationPathQueryResult2D): void =
  expandMethodBind(className NavigationServer2D, "query_path", 3394638789)
  methodbind.ptrcall(self, [getPtr parameters, getPtr retval])

proc regionCreate*(self: NavigationServer2D): RID =
  expandMethodBind(className NavigationServer2D, "region_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc regionSetEnabled*(self: NavigationServer2D; region: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer2D, "region_set_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr region, getPtr enabled])

proc regionGetEnabled*(self: NavigationServer2D; region: RID): bool =
  expandMethodBind(className NavigationServer2D, "region_get_enabled", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(bool)

proc regionSetUseEdgeConnections*(self: NavigationServer2D; region: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer2D, "region_set_use_edge_connections", 1265174801)
  methodbind.ptrcall(self, [getPtr region, getPtr enabled])

proc regionGetUseEdgeConnections*(self: NavigationServer2D; region: RID): bool =
  expandMethodBind(className NavigationServer2D, "region_get_use_edge_connections", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(bool)

proc regionSetEnterCost*(self: NavigationServer2D; region: RID; enterCost: Float): void =
  expandMethodBind(className NavigationServer2D, "region_set_enter_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr region, getPtr enterCost])

proc regionGetEnterCost*(self: NavigationServer2D; region: RID): Float =
  expandMethodBind(className NavigationServer2D, "region_get_enter_cost", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(Float)

proc regionSetTravelCost*(self: NavigationServer2D; region: RID; travelCost: Float): void =
  expandMethodBind(className NavigationServer2D, "region_set_travel_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr region, getPtr travelCost])

proc regionGetTravelCost*(self: NavigationServer2D; region: RID): Float =
  expandMethodBind(className NavigationServer2D, "region_get_travel_cost", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(Float)

proc regionSetOwnerId*(self: NavigationServer2D; region: RID; ownerId: uint64): void =
  expandMethodBind(className NavigationServer2D, "region_set_owner_id", 3411492887)
  methodbind.ptrcall(self, [getPtr region, getPtr ownerId])

proc regionGetOwnerId*(self: NavigationServer2D; region: RID): uint64 =
  expandMethodBind(className NavigationServer2D, "region_get_owner_id", 2198884583)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(uint64)

proc regionOwnsPoint*(self: NavigationServer2D; region: RID; point: Vector2): bool =
  expandMethodBind(className NavigationServer2D, "region_owns_point", 219849798)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr region, getPtr point], addr ret)
  (addr ret).decode_result(bool)

proc regionSetMap*(self: NavigationServer2D; region: RID; map: RID): void =
  expandMethodBind(className NavigationServer2D, "region_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr region, getPtr map])

proc regionGetMap*(self: NavigationServer2D; region: RID): RID =
  expandMethodBind(className NavigationServer2D, "region_get_map", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(RID)

proc regionSetNavigationLayers*(self: NavigationServer2D; region: RID; navigationLayers: uint32): void =
  expandMethodBind(className NavigationServer2D, "region_set_navigation_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr region, getPtr navigationLayers])

proc regionGetNavigationLayers*(self: NavigationServer2D; region: RID): uint32 =
  expandMethodBind(className NavigationServer2D, "region_get_navigation_layers", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(uint32)

proc regionSetTransform*(self: NavigationServer2D; region: RID; transform: Transform2D): void =
  expandMethodBind(className NavigationServer2D, "region_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr region, getPtr transform])

proc regionGetTransform*(self: NavigationServer2D; region: RID): Transform2D =
  expandMethodBind(className NavigationServer2D, "region_get_transform", 213527486)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(Transform2D)

proc regionSetNavigationPolygon*(self: NavigationServer2D; region: RID; navigationPolygon: gdref NavigationPolygon): void =
  expandMethodBind(className NavigationServer2D, "region_set_navigation_polygon", 3633623451)
  methodbind.ptrcall(self, [getPtr region, getPtr navigationPolygon])

proc regionGetConnectionsCount*(self: NavigationServer2D; region: RID): int32 =
  expandMethodBind(className NavigationServer2D, "region_get_connections_count", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(int32)

proc regionGetConnectionPathwayStart*(self: NavigationServer2D; region: RID; connection: int32): Vector2 =
  expandMethodBind(className NavigationServer2D, "region_get_connection_pathway_start", 2546185844)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr region, getPtr connection], addr ret)
  (addr ret).decode_result(Vector2)

proc regionGetConnectionPathwayEnd*(self: NavigationServer2D; region: RID; connection: int32): Vector2 =
  expandMethodBind(className NavigationServer2D, "region_get_connection_pathway_end", 2546185844)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr region, getPtr connection], addr ret)
  (addr ret).decode_result(Vector2)

proc regionGetRandomPoint*(self: NavigationServer2D; region: RID; navigationLayers: uint32; uniformly: bool): Vector2 =
  expandMethodBind(className NavigationServer2D, "region_get_random_point", 3271000763)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr region, getPtr navigationLayers, getPtr uniformly], addr ret)
  (addr ret).decode_result(Vector2)

proc linkCreate*(self: NavigationServer2D): RID =
  expandMethodBind(className NavigationServer2D, "link_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc linkSetMap*(self: NavigationServer2D; link: RID; map: RID): void =
  expandMethodBind(className NavigationServer2D, "link_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr link, getPtr map])

proc linkGetMap*(self: NavigationServer2D; link: RID): RID =
  expandMethodBind(className NavigationServer2D, "link_get_map", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(RID)

proc linkSetEnabled*(self: NavigationServer2D; link: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer2D, "link_set_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr link, getPtr enabled])

proc linkGetEnabled*(self: NavigationServer2D; link: RID): bool =
  expandMethodBind(className NavigationServer2D, "link_get_enabled", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(bool)

proc linkSetBidirectional*(self: NavigationServer2D; link: RID; bidirectional: bool): void =
  expandMethodBind(className NavigationServer2D, "link_set_bidirectional", 1265174801)
  methodbind.ptrcall(self, [getPtr link, getPtr bidirectional])

proc linkIsBidirectional*(self: NavigationServer2D; link: RID): bool =
  expandMethodBind(className NavigationServer2D, "link_is_bidirectional", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(bool)

proc linkSetNavigationLayers*(self: NavigationServer2D; link: RID; navigationLayers: uint32): void =
  expandMethodBind(className NavigationServer2D, "link_set_navigation_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr link, getPtr navigationLayers])

proc linkGetNavigationLayers*(self: NavigationServer2D; link: RID): uint32 =
  expandMethodBind(className NavigationServer2D, "link_get_navigation_layers", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(uint32)

proc linkSetStartPosition*(self: NavigationServer2D; link: RID; position: Vector2): void =
  expandMethodBind(className NavigationServer2D, "link_set_start_position", 3201125042)
  methodbind.ptrcall(self, [getPtr link, getPtr position])

proc linkGetStartPosition*(self: NavigationServer2D; link: RID): Vector2 =
  expandMethodBind(className NavigationServer2D, "link_get_start_position", 2440833711)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(Vector2)

proc linkSetEndPosition*(self: NavigationServer2D; link: RID; position: Vector2): void =
  expandMethodBind(className NavigationServer2D, "link_set_end_position", 3201125042)
  methodbind.ptrcall(self, [getPtr link, getPtr position])

proc linkGetEndPosition*(self: NavigationServer2D; link: RID): Vector2 =
  expandMethodBind(className NavigationServer2D, "link_get_end_position", 2440833711)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(Vector2)

proc linkSetEnterCost*(self: NavigationServer2D; link: RID; enterCost: Float): void =
  expandMethodBind(className NavigationServer2D, "link_set_enter_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr link, getPtr enterCost])

proc linkGetEnterCost*(self: NavigationServer2D; link: RID): Float =
  expandMethodBind(className NavigationServer2D, "link_get_enter_cost", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(Float)

proc linkSetTravelCost*(self: NavigationServer2D; link: RID; travelCost: Float): void =
  expandMethodBind(className NavigationServer2D, "link_set_travel_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr link, getPtr travelCost])

proc linkGetTravelCost*(self: NavigationServer2D; link: RID): Float =
  expandMethodBind(className NavigationServer2D, "link_get_travel_cost", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(Float)

proc linkSetOwnerId*(self: NavigationServer2D; link: RID; ownerId: uint64): void =
  expandMethodBind(className NavigationServer2D, "link_set_owner_id", 3411492887)
  methodbind.ptrcall(self, [getPtr link, getPtr ownerId])

proc linkGetOwnerId*(self: NavigationServer2D; link: RID): uint64 =
  expandMethodBind(className NavigationServer2D, "link_get_owner_id", 2198884583)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(uint64)

proc agentCreate*(self: NavigationServer2D): RID =
  expandMethodBind(className NavigationServer2D, "agent_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc agentSetAvoidanceEnabled*(self: NavigationServer2D; agent: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer2D, "agent_set_avoidance_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr agent, getPtr enabled])

proc agentGetAvoidanceEnabled*(self: NavigationServer2D; agent: RID): bool =
  expandMethodBind(className NavigationServer2D, "agent_get_avoidance_enabled", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(bool)

proc agentSetMap*(self: NavigationServer2D; agent: RID; map: RID): void =
  expandMethodBind(className NavigationServer2D, "agent_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr agent, getPtr map])

proc agentGetMap*(self: NavigationServer2D; agent: RID): RID =
  expandMethodBind(className NavigationServer2D, "agent_get_map", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(RID)

proc agentSetPaused*(self: NavigationServer2D; agent: RID; paused: bool): void =
  expandMethodBind(className NavigationServer2D, "agent_set_paused", 1265174801)
  methodbind.ptrcall(self, [getPtr agent, getPtr paused])

proc agentGetPaused*(self: NavigationServer2D; agent: RID): bool =
  expandMethodBind(className NavigationServer2D, "agent_get_paused", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(bool)

proc agentSetNeighborDistance*(self: NavigationServer2D; agent: RID; distance: Float): void =
  expandMethodBind(className NavigationServer2D, "agent_set_neighbor_distance", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr distance])

proc agentGetNeighborDistance*(self: NavigationServer2D; agent: RID): Float =
  expandMethodBind(className NavigationServer2D, "agent_get_neighbor_distance", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Float)

proc agentSetMaxNeighbors*(self: NavigationServer2D; agent: RID; count: int32): void =
  expandMethodBind(className NavigationServer2D, "agent_set_max_neighbors", 3411492887)
  methodbind.ptrcall(self, [getPtr agent, getPtr count])

proc agentGetMaxNeighbors*(self: NavigationServer2D; agent: RID): int32 =
  expandMethodBind(className NavigationServer2D, "agent_get_max_neighbors", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(int32)

proc agentSetTimeHorizonAgents*(self: NavigationServer2D; agent: RID; timeHorizon: Float): void =
  expandMethodBind(className NavigationServer2D, "agent_set_time_horizon_agents", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr timeHorizon])

proc agentGetTimeHorizonAgents*(self: NavigationServer2D; agent: RID): Float =
  expandMethodBind(className NavigationServer2D, "agent_get_time_horizon_agents", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Float)

proc agentSetTimeHorizonObstacles*(self: NavigationServer2D; agent: RID; timeHorizon: Float): void =
  expandMethodBind(className NavigationServer2D, "agent_set_time_horizon_obstacles", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr timeHorizon])

proc agentGetTimeHorizonObstacles*(self: NavigationServer2D; agent: RID): Float =
  expandMethodBind(className NavigationServer2D, "agent_get_time_horizon_obstacles", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Float)

proc agentSetRadius*(self: NavigationServer2D; agent: RID; radius: Float): void =
  expandMethodBind(className NavigationServer2D, "agent_set_radius", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr radius])

proc agentGetRadius*(self: NavigationServer2D; agent: RID): Float =
  expandMethodBind(className NavigationServer2D, "agent_get_radius", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Float)

proc agentSetMaxSpeed*(self: NavigationServer2D; agent: RID; maxSpeed: Float): void =
  expandMethodBind(className NavigationServer2D, "agent_set_max_speed", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr maxSpeed])

proc agentGetMaxSpeed*(self: NavigationServer2D; agent: RID): Float =
  expandMethodBind(className NavigationServer2D, "agent_get_max_speed", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Float)

proc agentSetVelocityForced*(self: NavigationServer2D; agent: RID; velocity: Vector2): void =
  expandMethodBind(className NavigationServer2D, "agent_set_velocity_forced", 3201125042)
  methodbind.ptrcall(self, [getPtr agent, getPtr velocity])

proc agentSetVelocity*(self: NavigationServer2D; agent: RID; velocity: Vector2): void =
  expandMethodBind(className NavigationServer2D, "agent_set_velocity", 3201125042)
  methodbind.ptrcall(self, [getPtr agent, getPtr velocity])

proc agentGetVelocity*(self: NavigationServer2D; agent: RID): Vector2 =
  expandMethodBind(className NavigationServer2D, "agent_get_velocity", 2440833711)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Vector2)

proc agentSetPosition*(self: NavigationServer2D; agent: RID; position: Vector2): void =
  expandMethodBind(className NavigationServer2D, "agent_set_position", 3201125042)
  methodbind.ptrcall(self, [getPtr agent, getPtr position])

proc agentGetPosition*(self: NavigationServer2D; agent: RID): Vector2 =
  expandMethodBind(className NavigationServer2D, "agent_get_position", 2440833711)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Vector2)

proc agentIsMapChanged*(self: NavigationServer2D; agent: RID): bool =
  expandMethodBind(className NavigationServer2D, "agent_is_map_changed", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(bool)

proc agentSetAvoidanceCallback*(self: NavigationServer2D; agent: RID; callback: Callable): void =
  expandMethodBind(className NavigationServer2D, "agent_set_avoidance_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr agent, getPtr callback])

proc agentHasAvoidanceCallback*(self: NavigationServer2D; agent: RID): bool =
  expandMethodBind(className NavigationServer2D, "agent_has_avoidance_callback", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(bool)

proc agentSetAvoidanceLayers*(self: NavigationServer2D; agent: RID; layers: uint32): void =
  expandMethodBind(className NavigationServer2D, "agent_set_avoidance_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr agent, getPtr layers])

proc agentGetAvoidanceLayers*(self: NavigationServer2D; agent: RID): uint32 =
  expandMethodBind(className NavigationServer2D, "agent_get_avoidance_layers", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(uint32)

proc agentSetAvoidanceMask*(self: NavigationServer2D; agent: RID; mask: uint32): void =
  expandMethodBind(className NavigationServer2D, "agent_set_avoidance_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr agent, getPtr mask])

proc agentGetAvoidanceMask*(self: NavigationServer2D; agent: RID): uint32 =
  expandMethodBind(className NavigationServer2D, "agent_get_avoidance_mask", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(uint32)

proc agentSetAvoidancePriority*(self: NavigationServer2D; agent: RID; priority: Float): void =
  expandMethodBind(className NavigationServer2D, "agent_set_avoidance_priority", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr priority])

proc agentGetAvoidancePriority*(self: NavigationServer2D; agent: RID): Float =
  expandMethodBind(className NavigationServer2D, "agent_get_avoidance_priority", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Float)

proc obstacleCreate*(self: NavigationServer2D): RID =
  expandMethodBind(className NavigationServer2D, "obstacle_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc obstacleSetAvoidanceEnabled*(self: NavigationServer2D; obstacle: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer2D, "obstacle_set_avoidance_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr enabled])

proc obstacleGetAvoidanceEnabled*(self: NavigationServer2D; obstacle: RID): bool =
  expandMethodBind(className NavigationServer2D, "obstacle_get_avoidance_enabled", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(bool)

proc obstacleSetMap*(self: NavigationServer2D; obstacle: RID; map: RID): void =
  expandMethodBind(className NavigationServer2D, "obstacle_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr map])

proc obstacleGetMap*(self: NavigationServer2D; obstacle: RID): RID =
  expandMethodBind(className NavigationServer2D, "obstacle_get_map", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(RID)

proc obstacleSetPaused*(self: NavigationServer2D; obstacle: RID; paused: bool): void =
  expandMethodBind(className NavigationServer2D, "obstacle_set_paused", 1265174801)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr paused])

proc obstacleGetPaused*(self: NavigationServer2D; obstacle: RID): bool =
  expandMethodBind(className NavigationServer2D, "obstacle_get_paused", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(bool)

proc obstacleSetRadius*(self: NavigationServer2D; obstacle: RID; radius: Float): void =
  expandMethodBind(className NavigationServer2D, "obstacle_set_radius", 1794382983)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr radius])

proc obstacleGetRadius*(self: NavigationServer2D; obstacle: RID): Float =
  expandMethodBind(className NavigationServer2D, "obstacle_get_radius", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(Float)

proc obstacleSetVelocity*(self: NavigationServer2D; obstacle: RID; velocity: Vector2): void =
  expandMethodBind(className NavigationServer2D, "obstacle_set_velocity", 3201125042)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr velocity])

proc obstacleGetVelocity*(self: NavigationServer2D; obstacle: RID): Vector2 =
  expandMethodBind(className NavigationServer2D, "obstacle_get_velocity", 2440833711)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(Vector2)

proc obstacleSetPosition*(self: NavigationServer2D; obstacle: RID; position: Vector2): void =
  expandMethodBind(className NavigationServer2D, "obstacle_set_position", 3201125042)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr position])

proc obstacleGetPosition*(self: NavigationServer2D; obstacle: RID): Vector2 =
  expandMethodBind(className NavigationServer2D, "obstacle_get_position", 2440833711)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(Vector2)

proc obstacleSetVertices*(self: NavigationServer2D; obstacle: RID; vertices: PackedVector2Array): void =
  expandMethodBind(className NavigationServer2D, "obstacle_set_vertices", 29476483)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr vertices])

proc obstacleGetVertices*(self: NavigationServer2D; obstacle: RID): PackedVector2Array =
  expandMethodBind(className NavigationServer2D, "obstacle_get_vertices", 2222557395)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc obstacleSetAvoidanceLayers*(self: NavigationServer2D; obstacle: RID; layers: uint32): void =
  expandMethodBind(className NavigationServer2D, "obstacle_set_avoidance_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr layers])

proc obstacleGetAvoidanceLayers*(self: NavigationServer2D; obstacle: RID): uint32 =
  expandMethodBind(className NavigationServer2D, "obstacle_get_avoidance_layers", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(uint32)

proc parseSourceGeometryData*(self: NavigationServer2D; navigationPolygon: gdref NavigationPolygon; sourceGeometryData: gdref NavigationMeshSourceGeometryData2D; rootNode: Node; callback: Callable = callable()): void =
  expandMethodBind(className NavigationServer2D, "parse_source_geometry_data", 1176164995)
  methodbind.ptrcall(self, [getPtr navigationPolygon, getPtr sourceGeometryData, getPtr rootNode, getPtr callback])

proc bakeFromSourceGeometryData*(self: NavigationServer2D; navigationPolygon: gdref NavigationPolygon; sourceGeometryData: gdref NavigationMeshSourceGeometryData2D; callback: Callable = callable()): void =
  expandMethodBind(className NavigationServer2D, "bake_from_source_geometry_data", 2909414286)
  methodbind.ptrcall(self, [getPtr navigationPolygon, getPtr sourceGeometryData, getPtr callback])

proc bakeFromSourceGeometryDataAsync*(self: NavigationServer2D; navigationPolygon: gdref NavigationPolygon; sourceGeometryData: gdref NavigationMeshSourceGeometryData2D; callback: Callable = callable()): void =
  expandMethodBind(className NavigationServer2D, "bake_from_source_geometry_data_async", 2909414286)
  methodbind.ptrcall(self, [getPtr navigationPolygon, getPtr sourceGeometryData, getPtr callback])

proc isBakingNavigationPolygon*(self: NavigationServer2D; navigationPolygon: gdref NavigationPolygon): bool =
  expandMethodBind(className NavigationServer2D, "is_baking_navigation_polygon", 3729405808)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr navigationPolygon], addr ret)
  (addr ret).decode_result(bool)

proc sourceGeometryParserCreate*(self: NavigationServer2D): RID =
  expandMethodBind(className NavigationServer2D, "source_geometry_parser_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc sourceGeometryParserSetCallback*(self: NavigationServer2D; parser: RID; callback: Callable): void =
  expandMethodBind(className NavigationServer2D, "source_geometry_parser_set_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr parser, getPtr callback])

proc simplifyPath*(self: NavigationServer2D; path: PackedVector2Array; epsilon: Float): PackedVector2Array =
  expandMethodBind(className NavigationServer2D, "simplify_path", 2457191505)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr path, getPtr epsilon], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc freeRid*(self: NavigationServer2D; rid: RID): void =
  expandMethodBind(className NavigationServer2D, "free_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid])

proc setDebugEnabled*(self: NavigationServer2D; enabled: bool): void =
  expandMethodBind(className NavigationServer2D, "set_debug_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getDebugEnabled*(self: NavigationServer2D): bool =
  expandMethodBind(className NavigationServer2D, "get_debug_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

const NavigationServer2D_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationServer2D]): Table[string, string] = NavigationServer2D_vmap

proc mapChanged*(self: NavigationServer2D; map: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("map_changed")
  let args = [map]
  self.emitSignal(signalname, args)

proc navigationDebugChanged*(self: NavigationServer2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("navigation_debug_changed")
  self.emitSignal(signalname)
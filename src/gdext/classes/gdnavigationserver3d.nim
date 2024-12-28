{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getMaps*(self: NavigationServer3D): TypedArray[RID] =
  expandMethodBind(className NavigationServer3D, "get_maps", 3995934104)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapCreate*(self: NavigationServer3D): RID =
  expandMethodBind(className NavigationServer3D, "map_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc mapSetActive*(self: NavigationServer3D; map: RID; active: bool): void =
  expandMethodBind(className NavigationServer3D, "map_set_active", 1265174801)
  methodbind.ptrcall(self, [getPtr map, getPtr active])

proc mapIsActive*(self: NavigationServer3D; map: RID): bool =
  expandMethodBind(className NavigationServer3D, "map_is_active", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(bool)

proc mapSetUp*(self: NavigationServer3D; map: RID; up: Vector3): void =
  expandMethodBind(className NavigationServer3D, "map_set_up", 3227306858)
  methodbind.ptrcall(self, [getPtr map, getPtr up])

proc mapGetUp*(self: NavigationServer3D; map: RID): Vector3 =
  expandMethodBind(className NavigationServer3D, "map_get_up", 531438156)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(Vector3)

proc mapSetCellSize*(self: NavigationServer3D; map: RID; cellSize: Float): void =
  expandMethodBind(className NavigationServer3D, "map_set_cell_size", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr cellSize])

proc mapGetCellSize*(self: NavigationServer3D; map: RID): Float =
  expandMethodBind(className NavigationServer3D, "map_get_cell_size", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(Float)

proc mapSetCellHeight*(self: NavigationServer3D; map: RID; cellHeight: Float): void =
  expandMethodBind(className NavigationServer3D, "map_set_cell_height", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr cellHeight])

proc mapGetCellHeight*(self: NavigationServer3D; map: RID): Float =
  expandMethodBind(className NavigationServer3D, "map_get_cell_height", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(Float)

proc mapSetMergeRasterizerCellScale*(self: NavigationServer3D; map: RID; scale: Float): void =
  expandMethodBind(className NavigationServer3D, "map_set_merge_rasterizer_cell_scale", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr scale])

proc mapGetMergeRasterizerCellScale*(self: NavigationServer3D; map: RID): Float =
  expandMethodBind(className NavigationServer3D, "map_get_merge_rasterizer_cell_scale", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(Float)

proc mapSetUseEdgeConnections*(self: NavigationServer3D; map: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "map_set_use_edge_connections", 1265174801)
  methodbind.ptrcall(self, [getPtr map, getPtr enabled])

proc mapGetUseEdgeConnections*(self: NavigationServer3D; map: RID): bool =
  expandMethodBind(className NavigationServer3D, "map_get_use_edge_connections", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(bool)

proc mapSetEdgeConnectionMargin*(self: NavigationServer3D; map: RID; margin: Float): void =
  expandMethodBind(className NavigationServer3D, "map_set_edge_connection_margin", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr margin])

proc mapGetEdgeConnectionMargin*(self: NavigationServer3D; map: RID): Float =
  expandMethodBind(className NavigationServer3D, "map_get_edge_connection_margin", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(Float)

proc mapSetLinkConnectionRadius*(self: NavigationServer3D; map: RID; radius: Float): void =
  expandMethodBind(className NavigationServer3D, "map_set_link_connection_radius", 1794382983)
  methodbind.ptrcall(self, [getPtr map, getPtr radius])

proc mapGetLinkConnectionRadius*(self: NavigationServer3D; map: RID): Float =
  expandMethodBind(className NavigationServer3D, "map_get_link_connection_radius", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(Float)

proc mapGetPath*(self: NavigationServer3D; map: RID; origin: Vector3; destination: Vector3; optimize: bool; navigationLayers: uint32 = 1'u32): PackedVector3Array =
  expandMethodBind(className NavigationServer3D, "map_get_path", 1187418690)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [getPtr map, getPtr origin, getPtr destination, getPtr optimize, getPtr navigationLayers], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc mapGetClosestPointToSegment*(self: NavigationServer3D; map: RID; start: Vector3; `end`: Vector3; useCollision: bool = false): Vector3 =
  expandMethodBind(className NavigationServer3D, "map_get_closest_point_to_segment", 3830095642)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr map, getPtr start, getPtr `end`, getPtr useCollision], addr ret)
  (addr ret).decode_result(Vector3)

proc mapGetClosestPoint*(self: NavigationServer3D; map: RID; toPoint: Vector3): Vector3 =
  expandMethodBind(className NavigationServer3D, "map_get_closest_point", 2056183332)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr map, getPtr toPoint], addr ret)
  (addr ret).decode_result(Vector3)

proc mapGetClosestPointNormal*(self: NavigationServer3D; map: RID; toPoint: Vector3): Vector3 =
  expandMethodBind(className NavigationServer3D, "map_get_closest_point_normal", 2056183332)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr map, getPtr toPoint], addr ret)
  (addr ret).decode_result(Vector3)

proc mapGetClosestPointOwner*(self: NavigationServer3D; map: RID; toPoint: Vector3): RID =
  expandMethodBind(className NavigationServer3D, "map_get_closest_point_owner", 553364610)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr map, getPtr toPoint], addr ret)
  (addr ret).decode_result(RID)

proc mapGetLinks*(self: NavigationServer3D; map: RID): TypedArray[RID] =
  expandMethodBind(className NavigationServer3D, "map_get_links", 2684255073)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapGetRegions*(self: NavigationServer3D; map: RID): TypedArray[RID] =
  expandMethodBind(className NavigationServer3D, "map_get_regions", 2684255073)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapGetAgents*(self: NavigationServer3D; map: RID): TypedArray[RID] =
  expandMethodBind(className NavigationServer3D, "map_get_agents", 2684255073)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapGetObstacles*(self: NavigationServer3D; map: RID): TypedArray[RID] =
  expandMethodBind(className NavigationServer3D, "map_get_obstacles", 2684255073)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapForceUpdate*(self: NavigationServer3D; map: RID): void =
  expandMethodBind(className NavigationServer3D, "map_force_update", 2722037293)
  methodbind.ptrcall(self, [getPtr map])

proc mapGetIterationId*(self: NavigationServer3D; map: RID): uint32 =
  expandMethodBind(className NavigationServer3D, "map_get_iteration_id", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr map], addr ret)
  (addr ret).decode_result(uint32)

proc mapGetRandomPoint*(self: NavigationServer3D; map: RID; navigationLayers: uint32; uniformly: bool): Vector3 =
  expandMethodBind(className NavigationServer3D, "map_get_random_point", 722801526)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr map, getPtr navigationLayers, getPtr uniformly], addr ret)
  (addr ret).decode_result(Vector3)

proc queryPath*(self: NavigationServer3D; parameters: gdref NavigationPathQueryParameters3D; retval: gdref NavigationPathQueryResult3D): void =
  expandMethodBind(className NavigationServer3D, "query_path", 3415008901)
  methodbind.ptrcall(self, [getPtr parameters, getPtr retval])

proc regionCreate*(self: NavigationServer3D): RID =
  expandMethodBind(className NavigationServer3D, "region_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc regionSetEnabled*(self: NavigationServer3D; region: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "region_set_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr region, getPtr enabled])

proc regionGetEnabled*(self: NavigationServer3D; region: RID): bool =
  expandMethodBind(className NavigationServer3D, "region_get_enabled", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(bool)

proc regionSetUseEdgeConnections*(self: NavigationServer3D; region: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "region_set_use_edge_connections", 1265174801)
  methodbind.ptrcall(self, [getPtr region, getPtr enabled])

proc regionGetUseEdgeConnections*(self: NavigationServer3D; region: RID): bool =
  expandMethodBind(className NavigationServer3D, "region_get_use_edge_connections", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(bool)

proc regionSetEnterCost*(self: NavigationServer3D; region: RID; enterCost: Float): void =
  expandMethodBind(className NavigationServer3D, "region_set_enter_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr region, getPtr enterCost])

proc regionGetEnterCost*(self: NavigationServer3D; region: RID): Float =
  expandMethodBind(className NavigationServer3D, "region_get_enter_cost", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(Float)

proc regionSetTravelCost*(self: NavigationServer3D; region: RID; travelCost: Float): void =
  expandMethodBind(className NavigationServer3D, "region_set_travel_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr region, getPtr travelCost])

proc regionGetTravelCost*(self: NavigationServer3D; region: RID): Float =
  expandMethodBind(className NavigationServer3D, "region_get_travel_cost", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(Float)

proc regionSetOwnerId*(self: NavigationServer3D; region: RID; ownerId: uint64): void =
  expandMethodBind(className NavigationServer3D, "region_set_owner_id", 3411492887)
  methodbind.ptrcall(self, [getPtr region, getPtr ownerId])

proc regionGetOwnerId*(self: NavigationServer3D; region: RID): uint64 =
  expandMethodBind(className NavigationServer3D, "region_get_owner_id", 2198884583)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(uint64)

proc regionOwnsPoint*(self: NavigationServer3D; region: RID; point: Vector3): bool =
  expandMethodBind(className NavigationServer3D, "region_owns_point", 2360011153)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr region, getPtr point], addr ret)
  (addr ret).decode_result(bool)

proc regionSetMap*(self: NavigationServer3D; region: RID; map: RID): void =
  expandMethodBind(className NavigationServer3D, "region_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr region, getPtr map])

proc regionGetMap*(self: NavigationServer3D; region: RID): RID =
  expandMethodBind(className NavigationServer3D, "region_get_map", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(RID)

proc regionSetNavigationLayers*(self: NavigationServer3D; region: RID; navigationLayers: uint32): void =
  expandMethodBind(className NavigationServer3D, "region_set_navigation_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr region, getPtr navigationLayers])

proc regionGetNavigationLayers*(self: NavigationServer3D; region: RID): uint32 =
  expandMethodBind(className NavigationServer3D, "region_get_navigation_layers", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(uint32)

proc regionSetTransform*(self: NavigationServer3D; region: RID; transform: Transform3D): void =
  expandMethodBind(className NavigationServer3D, "region_set_transform", 3935195649)
  methodbind.ptrcall(self, [getPtr region, getPtr transform])

proc regionGetTransform*(self: NavigationServer3D; region: RID): Transform3D =
  expandMethodBind(className NavigationServer3D, "region_get_transform", 1128465797)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(Transform3D)

proc regionSetNavigationMesh*(self: NavigationServer3D; region: RID; navigationMesh: gdref NavigationMesh): void =
  expandMethodBind(className NavigationServer3D, "region_set_navigation_mesh", 2764952978)
  methodbind.ptrcall(self, [getPtr region, getPtr navigationMesh])

proc regionBakeNavigationMesh*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh; rootNode: Node): void =
  expandMethodBind(className NavigationServer3D, "region_bake_navigation_mesh", 1401173477)
  methodbind.ptrcall(self, [getPtr navigationMesh, getPtr rootNode])

proc regionGetConnectionsCount*(self: NavigationServer3D; region: RID): int32 =
  expandMethodBind(className NavigationServer3D, "region_get_connections_count", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(int32)

proc regionGetConnectionPathwayStart*(self: NavigationServer3D; region: RID; connection: int32): Vector3 =
  expandMethodBind(className NavigationServer3D, "region_get_connection_pathway_start", 3440143363)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr region, getPtr connection], addr ret)
  (addr ret).decode_result(Vector3)

proc regionGetConnectionPathwayEnd*(self: NavigationServer3D; region: RID; connection: int32): Vector3 =
  expandMethodBind(className NavigationServer3D, "region_get_connection_pathway_end", 3440143363)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr region, getPtr connection], addr ret)
  (addr ret).decode_result(Vector3)

proc regionGetRandomPoint*(self: NavigationServer3D; region: RID; navigationLayers: uint32; uniformly: bool): Vector3 =
  expandMethodBind(className NavigationServer3D, "region_get_random_point", 722801526)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr region, getPtr navigationLayers, getPtr uniformly], addr ret)
  (addr ret).decode_result(Vector3)

proc linkCreate*(self: NavigationServer3D): RID =
  expandMethodBind(className NavigationServer3D, "link_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc linkSetMap*(self: NavigationServer3D; link: RID; map: RID): void =
  expandMethodBind(className NavigationServer3D, "link_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr link, getPtr map])

proc linkGetMap*(self: NavigationServer3D; link: RID): RID =
  expandMethodBind(className NavigationServer3D, "link_get_map", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(RID)

proc linkSetEnabled*(self: NavigationServer3D; link: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "link_set_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr link, getPtr enabled])

proc linkGetEnabled*(self: NavigationServer3D; link: RID): bool =
  expandMethodBind(className NavigationServer3D, "link_get_enabled", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(bool)

proc linkSetBidirectional*(self: NavigationServer3D; link: RID; bidirectional: bool): void =
  expandMethodBind(className NavigationServer3D, "link_set_bidirectional", 1265174801)
  methodbind.ptrcall(self, [getPtr link, getPtr bidirectional])

proc linkIsBidirectional*(self: NavigationServer3D; link: RID): bool =
  expandMethodBind(className NavigationServer3D, "link_is_bidirectional", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(bool)

proc linkSetNavigationLayers*(self: NavigationServer3D; link: RID; navigationLayers: uint32): void =
  expandMethodBind(className NavigationServer3D, "link_set_navigation_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr link, getPtr navigationLayers])

proc linkGetNavigationLayers*(self: NavigationServer3D; link: RID): uint32 =
  expandMethodBind(className NavigationServer3D, "link_get_navigation_layers", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(uint32)

proc linkSetStartPosition*(self: NavigationServer3D; link: RID; position: Vector3): void =
  expandMethodBind(className NavigationServer3D, "link_set_start_position", 3227306858)
  methodbind.ptrcall(self, [getPtr link, getPtr position])

proc linkGetStartPosition*(self: NavigationServer3D; link: RID): Vector3 =
  expandMethodBind(className NavigationServer3D, "link_get_start_position", 531438156)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(Vector3)

proc linkSetEndPosition*(self: NavigationServer3D; link: RID; position: Vector3): void =
  expandMethodBind(className NavigationServer3D, "link_set_end_position", 3227306858)
  methodbind.ptrcall(self, [getPtr link, getPtr position])

proc linkGetEndPosition*(self: NavigationServer3D; link: RID): Vector3 =
  expandMethodBind(className NavigationServer3D, "link_get_end_position", 531438156)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(Vector3)

proc linkSetEnterCost*(self: NavigationServer3D; link: RID; enterCost: Float): void =
  expandMethodBind(className NavigationServer3D, "link_set_enter_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr link, getPtr enterCost])

proc linkGetEnterCost*(self: NavigationServer3D; link: RID): Float =
  expandMethodBind(className NavigationServer3D, "link_get_enter_cost", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(Float)

proc linkSetTravelCost*(self: NavigationServer3D; link: RID; travelCost: Float): void =
  expandMethodBind(className NavigationServer3D, "link_set_travel_cost", 1794382983)
  methodbind.ptrcall(self, [getPtr link, getPtr travelCost])

proc linkGetTravelCost*(self: NavigationServer3D; link: RID): Float =
  expandMethodBind(className NavigationServer3D, "link_get_travel_cost", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(Float)

proc linkSetOwnerId*(self: NavigationServer3D; link: RID; ownerId: uint64): void =
  expandMethodBind(className NavigationServer3D, "link_set_owner_id", 3411492887)
  methodbind.ptrcall(self, [getPtr link, getPtr ownerId])

proc linkGetOwnerId*(self: NavigationServer3D; link: RID): uint64 =
  expandMethodBind(className NavigationServer3D, "link_get_owner_id", 2198884583)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr link], addr ret)
  (addr ret).decode_result(uint64)

proc agentCreate*(self: NavigationServer3D): RID =
  expandMethodBind(className NavigationServer3D, "agent_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc agentSetAvoidanceEnabled*(self: NavigationServer3D; agent: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "agent_set_avoidance_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr agent, getPtr enabled])

proc agentGetAvoidanceEnabled*(self: NavigationServer3D; agent: RID): bool =
  expandMethodBind(className NavigationServer3D, "agent_get_avoidance_enabled", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(bool)

proc agentSetUse3DAvoidance*(self: NavigationServer3D; agent: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "agent_set_use_3d_avoidance", 1265174801)
  methodbind.ptrcall(self, [getPtr agent, getPtr enabled])

proc agentGetUse3DAvoidance*(self: NavigationServer3D; agent: RID): bool =
  expandMethodBind(className NavigationServer3D, "agent_get_use_3d_avoidance", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(bool)

proc agentSetMap*(self: NavigationServer3D; agent: RID; map: RID): void =
  expandMethodBind(className NavigationServer3D, "agent_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr agent, getPtr map])

proc agentGetMap*(self: NavigationServer3D; agent: RID): RID =
  expandMethodBind(className NavigationServer3D, "agent_get_map", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(RID)

proc agentSetPaused*(self: NavigationServer3D; agent: RID; paused: bool): void =
  expandMethodBind(className NavigationServer3D, "agent_set_paused", 1265174801)
  methodbind.ptrcall(self, [getPtr agent, getPtr paused])

proc agentGetPaused*(self: NavigationServer3D; agent: RID): bool =
  expandMethodBind(className NavigationServer3D, "agent_get_paused", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(bool)

proc agentSetNeighborDistance*(self: NavigationServer3D; agent: RID; distance: Float): void =
  expandMethodBind(className NavigationServer3D, "agent_set_neighbor_distance", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr distance])

proc agentGetNeighborDistance*(self: NavigationServer3D; agent: RID): Float =
  expandMethodBind(className NavigationServer3D, "agent_get_neighbor_distance", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Float)

proc agentSetMaxNeighbors*(self: NavigationServer3D; agent: RID; count: int32): void =
  expandMethodBind(className NavigationServer3D, "agent_set_max_neighbors", 3411492887)
  methodbind.ptrcall(self, [getPtr agent, getPtr count])

proc agentGetMaxNeighbors*(self: NavigationServer3D; agent: RID): int32 =
  expandMethodBind(className NavigationServer3D, "agent_get_max_neighbors", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(int32)

proc agentSetTimeHorizonAgents*(self: NavigationServer3D; agent: RID; timeHorizon: Float): void =
  expandMethodBind(className NavigationServer3D, "agent_set_time_horizon_agents", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr timeHorizon])

proc agentGetTimeHorizonAgents*(self: NavigationServer3D; agent: RID): Float =
  expandMethodBind(className NavigationServer3D, "agent_get_time_horizon_agents", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Float)

proc agentSetTimeHorizonObstacles*(self: NavigationServer3D; agent: RID; timeHorizon: Float): void =
  expandMethodBind(className NavigationServer3D, "agent_set_time_horizon_obstacles", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr timeHorizon])

proc agentGetTimeHorizonObstacles*(self: NavigationServer3D; agent: RID): Float =
  expandMethodBind(className NavigationServer3D, "agent_get_time_horizon_obstacles", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Float)

proc agentSetRadius*(self: NavigationServer3D; agent: RID; radius: Float): void =
  expandMethodBind(className NavigationServer3D, "agent_set_radius", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr radius])

proc agentGetRadius*(self: NavigationServer3D; agent: RID): Float =
  expandMethodBind(className NavigationServer3D, "agent_get_radius", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Float)

proc agentSetHeight*(self: NavigationServer3D; agent: RID; height: Float): void =
  expandMethodBind(className NavigationServer3D, "agent_set_height", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr height])

proc agentGetHeight*(self: NavigationServer3D; agent: RID): Float =
  expandMethodBind(className NavigationServer3D, "agent_get_height", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Float)

proc agentSetMaxSpeed*(self: NavigationServer3D; agent: RID; maxSpeed: Float): void =
  expandMethodBind(className NavigationServer3D, "agent_set_max_speed", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr maxSpeed])

proc agentGetMaxSpeed*(self: NavigationServer3D; agent: RID): Float =
  expandMethodBind(className NavigationServer3D, "agent_get_max_speed", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Float)

proc agentSetVelocityForced*(self: NavigationServer3D; agent: RID; velocity: Vector3): void =
  expandMethodBind(className NavigationServer3D, "agent_set_velocity_forced", 3227306858)
  methodbind.ptrcall(self, [getPtr agent, getPtr velocity])

proc agentSetVelocity*(self: NavigationServer3D; agent: RID; velocity: Vector3): void =
  expandMethodBind(className NavigationServer3D, "agent_set_velocity", 3227306858)
  methodbind.ptrcall(self, [getPtr agent, getPtr velocity])

proc agentGetVelocity*(self: NavigationServer3D; agent: RID): Vector3 =
  expandMethodBind(className NavigationServer3D, "agent_get_velocity", 531438156)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Vector3)

proc agentSetPosition*(self: NavigationServer3D; agent: RID; position: Vector3): void =
  expandMethodBind(className NavigationServer3D, "agent_set_position", 3227306858)
  methodbind.ptrcall(self, [getPtr agent, getPtr position])

proc agentGetPosition*(self: NavigationServer3D; agent: RID): Vector3 =
  expandMethodBind(className NavigationServer3D, "agent_get_position", 531438156)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Vector3)

proc agentIsMapChanged*(self: NavigationServer3D; agent: RID): bool =
  expandMethodBind(className NavigationServer3D, "agent_is_map_changed", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(bool)

proc agentSetAvoidanceCallback*(self: NavigationServer3D; agent: RID; callback: Callable): void =
  expandMethodBind(className NavigationServer3D, "agent_set_avoidance_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr agent, getPtr callback])

proc agentHasAvoidanceCallback*(self: NavigationServer3D; agent: RID): bool =
  expandMethodBind(className NavigationServer3D, "agent_has_avoidance_callback", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(bool)

proc agentSetAvoidanceLayers*(self: NavigationServer3D; agent: RID; layers: uint32): void =
  expandMethodBind(className NavigationServer3D, "agent_set_avoidance_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr agent, getPtr layers])

proc agentGetAvoidanceLayers*(self: NavigationServer3D; agent: RID): uint32 =
  expandMethodBind(className NavigationServer3D, "agent_get_avoidance_layers", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(uint32)

proc agentSetAvoidanceMask*(self: NavigationServer3D; agent: RID; mask: uint32): void =
  expandMethodBind(className NavigationServer3D, "agent_set_avoidance_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr agent, getPtr mask])

proc agentGetAvoidanceMask*(self: NavigationServer3D; agent: RID): uint32 =
  expandMethodBind(className NavigationServer3D, "agent_get_avoidance_mask", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(uint32)

proc agentSetAvoidancePriority*(self: NavigationServer3D; agent: RID; priority: Float): void =
  expandMethodBind(className NavigationServer3D, "agent_set_avoidance_priority", 1794382983)
  methodbind.ptrcall(self, [getPtr agent, getPtr priority])

proc agentGetAvoidancePriority*(self: NavigationServer3D; agent: RID): Float =
  expandMethodBind(className NavigationServer3D, "agent_get_avoidance_priority", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr agent], addr ret)
  (addr ret).decode_result(Float)

proc obstacleCreate*(self: NavigationServer3D): RID =
  expandMethodBind(className NavigationServer3D, "obstacle_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc obstacleSetAvoidanceEnabled*(self: NavigationServer3D; obstacle: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_avoidance_enabled", 1265174801)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr enabled])

proc obstacleGetAvoidanceEnabled*(self: NavigationServer3D; obstacle: RID): bool =
  expandMethodBind(className NavigationServer3D, "obstacle_get_avoidance_enabled", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(bool)

proc obstacleSetUse3DAvoidance*(self: NavigationServer3D; obstacle: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_use_3d_avoidance", 1265174801)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr enabled])

proc obstacleGetUse3DAvoidance*(self: NavigationServer3D; obstacle: RID): bool =
  expandMethodBind(className NavigationServer3D, "obstacle_get_use_3d_avoidance", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(bool)

proc obstacleSetMap*(self: NavigationServer3D; obstacle: RID; map: RID): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_map", 395945892)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr map])

proc obstacleGetMap*(self: NavigationServer3D; obstacle: RID): RID =
  expandMethodBind(className NavigationServer3D, "obstacle_get_map", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(RID)

proc obstacleSetPaused*(self: NavigationServer3D; obstacle: RID; paused: bool): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_paused", 1265174801)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr paused])

proc obstacleGetPaused*(self: NavigationServer3D; obstacle: RID): bool =
  expandMethodBind(className NavigationServer3D, "obstacle_get_paused", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(bool)

proc obstacleSetRadius*(self: NavigationServer3D; obstacle: RID; radius: Float): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_radius", 1794382983)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr radius])

proc obstacleGetRadius*(self: NavigationServer3D; obstacle: RID): Float =
  expandMethodBind(className NavigationServer3D, "obstacle_get_radius", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(Float)

proc obstacleSetHeight*(self: NavigationServer3D; obstacle: RID; height: Float): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_height", 1794382983)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr height])

proc obstacleGetHeight*(self: NavigationServer3D; obstacle: RID): Float =
  expandMethodBind(className NavigationServer3D, "obstacle_get_height", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(Float)

proc obstacleSetVelocity*(self: NavigationServer3D; obstacle: RID; velocity: Vector3): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_velocity", 3227306858)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr velocity])

proc obstacleGetVelocity*(self: NavigationServer3D; obstacle: RID): Vector3 =
  expandMethodBind(className NavigationServer3D, "obstacle_get_velocity", 531438156)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(Vector3)

proc obstacleSetPosition*(self: NavigationServer3D; obstacle: RID; position: Vector3): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_position", 3227306858)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr position])

proc obstacleGetPosition*(self: NavigationServer3D; obstacle: RID): Vector3 =
  expandMethodBind(className NavigationServer3D, "obstacle_get_position", 531438156)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(Vector3)

proc obstacleSetVertices*(self: NavigationServer3D; obstacle: RID; vertices: PackedVector3Array): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_vertices", 4030257846)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr vertices])

proc obstacleGetVertices*(self: NavigationServer3D; obstacle: RID): PackedVector3Array =
  expandMethodBind(className NavigationServer3D, "obstacle_get_vertices", 808965560)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc obstacleSetAvoidanceLayers*(self: NavigationServer3D; obstacle: RID; layers: uint32): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_avoidance_layers", 3411492887)
  methodbind.ptrcall(self, [getPtr obstacle, getPtr layers])

proc obstacleGetAvoidanceLayers*(self: NavigationServer3D; obstacle: RID): uint32 =
  expandMethodBind(className NavigationServer3D, "obstacle_get_avoidance_layers", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr obstacle], addr ret)
  (addr ret).decode_result(uint32)

proc parseSourceGeometryData*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; rootNode: Node; callback: Callable = callable()): void =
  expandMethodBind(className NavigationServer3D, "parse_source_geometry_data", 685862123)
  methodbind.ptrcall(self, [getPtr navigationMesh, getPtr sourceGeometryData, getPtr rootNode, getPtr callback])

proc bakeFromSourceGeometryData*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; callback: Callable = callable()): void =
  expandMethodBind(className NavigationServer3D, "bake_from_source_geometry_data", 2469318639)
  methodbind.ptrcall(self, [getPtr navigationMesh, getPtr sourceGeometryData, getPtr callback])

proc bakeFromSourceGeometryDataAsync*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; callback: Callable = callable()): void =
  expandMethodBind(className NavigationServer3D, "bake_from_source_geometry_data_async", 2469318639)
  methodbind.ptrcall(self, [getPtr navigationMesh, getPtr sourceGeometryData, getPtr callback])

proc isBakingNavigationMesh*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh): bool =
  expandMethodBind(className NavigationServer3D, "is_baking_navigation_mesh", 3142026141)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr navigationMesh], addr ret)
  (addr ret).decode_result(bool)

proc sourceGeometryParserCreate*(self: NavigationServer3D): RID =
  expandMethodBind(className NavigationServer3D, "source_geometry_parser_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc sourceGeometryParserSetCallback*(self: NavigationServer3D; parser: RID; callback: Callable): void =
  expandMethodBind(className NavigationServer3D, "source_geometry_parser_set_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr parser, getPtr callback])

proc simplifyPath*(self: NavigationServer3D; path: PackedVector3Array; epsilon: Float): PackedVector3Array =
  expandMethodBind(className NavigationServer3D, "simplify_path", 2344122170)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [getPtr path, getPtr epsilon], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc freeRid*(self: NavigationServer3D; rid: RID): void =
  expandMethodBind(className NavigationServer3D, "free_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid])

proc setActive*(self: NavigationServer3D; active: bool): void =
  expandMethodBind(className NavigationServer3D, "set_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active])

proc setDebugEnabled*(self: NavigationServer3D; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "set_debug_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getDebugEnabled*(self: NavigationServer3D): bool =
  expandMethodBind(className NavigationServer3D, "get_debug_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getProcessInfo*(self: NavigationServer3D; processInfo: NavigationServer3D_ProcessInfo): int32 =
  expandMethodBind(className NavigationServer3D, "get_process_info", 1938440894)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr processInfo], addr ret)
  (addr ret).decode_result(int32)

const NavigationServer3D_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationServer3D]): Table[string, string] = NavigationServer3D_vmap

proc mapChanged*(self: NavigationServer3D; map: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("map_changed")
  let args = [map]
  self.emitSignal(signalname, args)

proc navigationDebugChanged*(self: NavigationServer3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("navigation_debug_changed")
  self.emitSignal(signalname)

proc avoidanceDebugChanged*(self: NavigationServer3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("avoidance_debug_changed")
  self.emitSignal(signalname)
{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getMaps*(self: NavigationServer3D): TypedArray[RID] =
  expandMethodBind(className NavigationServer3D, "get_maps", 3995934104)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapCreate*(self: NavigationServer3D): RID =
  expandMethodBind(className NavigationServer3D, "map_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc mapSetActive*(self: NavigationServer3D; map: RID; active: bool): void =
  expandMethodBind(className NavigationServer3D, "map_set_active", 1265174801)
  var `?param` = [getPtr map, getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc mapIsActive*(self: NavigationServer3D; map: RID): bool =
  expandMethodBind(className NavigationServer3D, "map_is_active", 4155700596)
  var `?param` = [getPtr map]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc mapSetUp*(self: NavigationServer3D; map: RID; up: Vector3): void =
  expandMethodBind(className NavigationServer3D, "map_set_up", 3227306858)
  var `?param` = [getPtr map, getPtr up]
  methodbind.ptrcall(self, addr `?param`[0])

proc mapGetUp*(self: NavigationServer3D; map: RID): Vector3 =
  expandMethodBind(className NavigationServer3D, "map_get_up", 531438156)
  var `?param` = [getPtr map]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc mapSetCellSize*(self: NavigationServer3D; map: RID; cellSize: Float): void =
  expandMethodBind(className NavigationServer3D, "map_set_cell_size", 1794382983)
  var `?param` = [getPtr map, getPtr cellSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc mapGetCellSize*(self: NavigationServer3D; map: RID): Float =
  expandMethodBind(className NavigationServer3D, "map_get_cell_size", 866169185)
  var `?param` = [getPtr map]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc mapSetCellHeight*(self: NavigationServer3D; map: RID; cellHeight: Float): void =
  expandMethodBind(className NavigationServer3D, "map_set_cell_height", 1794382983)
  var `?param` = [getPtr map, getPtr cellHeight]
  methodbind.ptrcall(self, addr `?param`[0])

proc mapGetCellHeight*(self: NavigationServer3D; map: RID): Float =
  expandMethodBind(className NavigationServer3D, "map_get_cell_height", 866169185)
  var `?param` = [getPtr map]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc mapSetMergeRasterizerCellScale*(self: NavigationServer3D; map: RID; scale: Float): void =
  expandMethodBind(className NavigationServer3D, "map_set_merge_rasterizer_cell_scale", 1794382983)
  var `?param` = [getPtr map, getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc mapGetMergeRasterizerCellScale*(self: NavigationServer3D; map: RID): Float =
  expandMethodBind(className NavigationServer3D, "map_get_merge_rasterizer_cell_scale", 866169185)
  var `?param` = [getPtr map]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc mapSetUseEdgeConnections*(self: NavigationServer3D; map: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "map_set_use_edge_connections", 1265174801)
  var `?param` = [getPtr map, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc mapGetUseEdgeConnections*(self: NavigationServer3D; map: RID): bool =
  expandMethodBind(className NavigationServer3D, "map_get_use_edge_connections", 4155700596)
  var `?param` = [getPtr map]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc mapSetEdgeConnectionMargin*(self: NavigationServer3D; map: RID; margin: Float): void =
  expandMethodBind(className NavigationServer3D, "map_set_edge_connection_margin", 1794382983)
  var `?param` = [getPtr map, getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc mapGetEdgeConnectionMargin*(self: NavigationServer3D; map: RID): Float =
  expandMethodBind(className NavigationServer3D, "map_get_edge_connection_margin", 866169185)
  var `?param` = [getPtr map]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc mapSetLinkConnectionRadius*(self: NavigationServer3D; map: RID; radius: Float): void =
  expandMethodBind(className NavigationServer3D, "map_set_link_connection_radius", 1794382983)
  var `?param` = [getPtr map, getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc mapGetLinkConnectionRadius*(self: NavigationServer3D; map: RID): Float =
  expandMethodBind(className NavigationServer3D, "map_get_link_connection_radius", 866169185)
  var `?param` = [getPtr map]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc mapGetPath*(self: NavigationServer3D; map: RID; origin: Vector3; destination: Vector3; optimize: bool; navigationLayers: uint32 = 1'u32): PackedVector3Array =
  expandMethodBind(className NavigationServer3D, "map_get_path", 1187418690)
  var `?param` = [getPtr map, getPtr origin, getPtr destination, getPtr optimize, getPtr navigationLayers]
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc mapGetClosestPointToSegment*(self: NavigationServer3D; map: RID; start: Vector3; `end`: Vector3; useCollision: bool = false): Vector3 =
  expandMethodBind(className NavigationServer3D, "map_get_closest_point_to_segment", 3830095642)
  var `?param` = [getPtr map, getPtr start, getPtr `end`, getPtr useCollision]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc mapGetClosestPoint*(self: NavigationServer3D; map: RID; toPoint: Vector3): Vector3 =
  expandMethodBind(className NavigationServer3D, "map_get_closest_point", 2056183332)
  var `?param` = [getPtr map, getPtr toPoint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc mapGetClosestPointNormal*(self: NavigationServer3D; map: RID; toPoint: Vector3): Vector3 =
  expandMethodBind(className NavigationServer3D, "map_get_closest_point_normal", 2056183332)
  var `?param` = [getPtr map, getPtr toPoint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc mapGetClosestPointOwner*(self: NavigationServer3D; map: RID; toPoint: Vector3): RID =
  expandMethodBind(className NavigationServer3D, "map_get_closest_point_owner", 553364610)
  var `?param` = [getPtr map, getPtr toPoint]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc mapGetLinks*(self: NavigationServer3D; map: RID): TypedArray[RID] =
  expandMethodBind(className NavigationServer3D, "map_get_links", 2684255073)
  var `?param` = [getPtr map]
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapGetRegions*(self: NavigationServer3D; map: RID): TypedArray[RID] =
  expandMethodBind(className NavigationServer3D, "map_get_regions", 2684255073)
  var `?param` = [getPtr map]
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapGetAgents*(self: NavigationServer3D; map: RID): TypedArray[RID] =
  expandMethodBind(className NavigationServer3D, "map_get_agents", 2684255073)
  var `?param` = [getPtr map]
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapGetObstacles*(self: NavigationServer3D; map: RID): TypedArray[RID] =
  expandMethodBind(className NavigationServer3D, "map_get_obstacles", 2684255073)
  var `?param` = [getPtr map]
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc mapForceUpdate*(self: NavigationServer3D; map: RID): void =
  expandMethodBind(className NavigationServer3D, "map_force_update", 2722037293)
  var `?param` = [getPtr map]
  methodbind.ptrcall(self, addr `?param`[0])

proc mapGetIterationId*(self: NavigationServer3D; map: RID): uint32 =
  expandMethodBind(className NavigationServer3D, "map_get_iteration_id", 2198884583)
  var `?param` = [getPtr map]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc mapGetRandomPoint*(self: NavigationServer3D; map: RID; navigationLayers: uint32; uniformly: bool): Vector3 =
  expandMethodBind(className NavigationServer3D, "map_get_random_point", 722801526)
  var `?param` = [getPtr map, getPtr navigationLayers, getPtr uniformly]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc queryPath*(self: NavigationServer3D; parameters: gdref NavigationPathQueryParameters3D; retval: gdref NavigationPathQueryResult3D): void =
  expandMethodBind(className NavigationServer3D, "query_path", 3415008901)
  var `?param` = [getPtr parameters, getPtr retval]
  methodbind.ptrcall(self, addr `?param`[0])

proc regionCreate*(self: NavigationServer3D): RID =
  expandMethodBind(className NavigationServer3D, "region_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc regionSetEnabled*(self: NavigationServer3D; region: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "region_set_enabled", 1265174801)
  var `?param` = [getPtr region, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc regionGetEnabled*(self: NavigationServer3D; region: RID): bool =
  expandMethodBind(className NavigationServer3D, "region_get_enabled", 4155700596)
  var `?param` = [getPtr region]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc regionSetUseEdgeConnections*(self: NavigationServer3D; region: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "region_set_use_edge_connections", 1265174801)
  var `?param` = [getPtr region, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc regionGetUseEdgeConnections*(self: NavigationServer3D; region: RID): bool =
  expandMethodBind(className NavigationServer3D, "region_get_use_edge_connections", 4155700596)
  var `?param` = [getPtr region]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc regionSetEnterCost*(self: NavigationServer3D; region: RID; enterCost: Float): void =
  expandMethodBind(className NavigationServer3D, "region_set_enter_cost", 1794382983)
  var `?param` = [getPtr region, getPtr enterCost]
  methodbind.ptrcall(self, addr `?param`[0])

proc regionGetEnterCost*(self: NavigationServer3D; region: RID): Float =
  expandMethodBind(className NavigationServer3D, "region_get_enter_cost", 866169185)
  var `?param` = [getPtr region]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc regionSetTravelCost*(self: NavigationServer3D; region: RID; travelCost: Float): void =
  expandMethodBind(className NavigationServer3D, "region_set_travel_cost", 1794382983)
  var `?param` = [getPtr region, getPtr travelCost]
  methodbind.ptrcall(self, addr `?param`[0])

proc regionGetTravelCost*(self: NavigationServer3D; region: RID): Float =
  expandMethodBind(className NavigationServer3D, "region_get_travel_cost", 866169185)
  var `?param` = [getPtr region]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc regionSetOwnerId*(self: NavigationServer3D; region: RID; ownerId: uint64): void =
  expandMethodBind(className NavigationServer3D, "region_set_owner_id", 3411492887)
  var `?param` = [getPtr region, getPtr ownerId]
  methodbind.ptrcall(self, addr `?param`[0])

proc regionGetOwnerId*(self: NavigationServer3D; region: RID): uint64 =
  expandMethodBind(className NavigationServer3D, "region_get_owner_id", 2198884583)
  var `?param` = [getPtr region]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc regionOwnsPoint*(self: NavigationServer3D; region: RID; point: Vector3): bool =
  expandMethodBind(className NavigationServer3D, "region_owns_point", 2360011153)
  var `?param` = [getPtr region, getPtr point]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc regionSetMap*(self: NavigationServer3D; region: RID; map: RID): void =
  expandMethodBind(className NavigationServer3D, "region_set_map", 395945892)
  var `?param` = [getPtr region, getPtr map]
  methodbind.ptrcall(self, addr `?param`[0])

proc regionGetMap*(self: NavigationServer3D; region: RID): RID =
  expandMethodBind(className NavigationServer3D, "region_get_map", 3814569979)
  var `?param` = [getPtr region]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc regionSetNavigationLayers*(self: NavigationServer3D; region: RID; navigationLayers: uint32): void =
  expandMethodBind(className NavigationServer3D, "region_set_navigation_layers", 3411492887)
  var `?param` = [getPtr region, getPtr navigationLayers]
  methodbind.ptrcall(self, addr `?param`[0])

proc regionGetNavigationLayers*(self: NavigationServer3D; region: RID): uint32 =
  expandMethodBind(className NavigationServer3D, "region_get_navigation_layers", 2198884583)
  var `?param` = [getPtr region]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc regionSetTransform*(self: NavigationServer3D; region: RID; transform: Transform3D): void =
  expandMethodBind(className NavigationServer3D, "region_set_transform", 3935195649)
  var `?param` = [getPtr region, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc regionGetTransform*(self: NavigationServer3D; region: RID): Transform3D =
  expandMethodBind(className NavigationServer3D, "region_get_transform", 1128465797)
  var `?param` = [getPtr region]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc regionSetNavigationMesh*(self: NavigationServer3D; region: RID; navigationMesh: gdref NavigationMesh): void =
  expandMethodBind(className NavigationServer3D, "region_set_navigation_mesh", 2764952978)
  var `?param` = [getPtr region, getPtr navigationMesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc regionBakeNavigationMesh*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh; rootNode: Node): void =
  expandMethodBind(className NavigationServer3D, "region_bake_navigation_mesh", 1401173477)
  var `?param` = [getPtr navigationMesh, getPtr rootNode]
  methodbind.ptrcall(self, addr `?param`[0])

proc regionGetConnectionsCount*(self: NavigationServer3D; region: RID): int32 =
  expandMethodBind(className NavigationServer3D, "region_get_connections_count", 2198884583)
  var `?param` = [getPtr region]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc regionGetConnectionPathwayStart*(self: NavigationServer3D; region: RID; connection: int32): Vector3 =
  expandMethodBind(className NavigationServer3D, "region_get_connection_pathway_start", 3440143363)
  var `?param` = [getPtr region, getPtr connection]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc regionGetConnectionPathwayEnd*(self: NavigationServer3D; region: RID; connection: int32): Vector3 =
  expandMethodBind(className NavigationServer3D, "region_get_connection_pathway_end", 3440143363)
  var `?param` = [getPtr region, getPtr connection]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc regionGetRandomPoint*(self: NavigationServer3D; region: RID; navigationLayers: uint32; uniformly: bool): Vector3 =
  expandMethodBind(className NavigationServer3D, "region_get_random_point", 722801526)
  var `?param` = [getPtr region, getPtr navigationLayers, getPtr uniformly]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc linkCreate*(self: NavigationServer3D): RID =
  expandMethodBind(className NavigationServer3D, "link_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc linkSetMap*(self: NavigationServer3D; link: RID; map: RID): void =
  expandMethodBind(className NavigationServer3D, "link_set_map", 395945892)
  var `?param` = [getPtr link, getPtr map]
  methodbind.ptrcall(self, addr `?param`[0])

proc linkGetMap*(self: NavigationServer3D; link: RID): RID =
  expandMethodBind(className NavigationServer3D, "link_get_map", 3814569979)
  var `?param` = [getPtr link]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc linkSetEnabled*(self: NavigationServer3D; link: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "link_set_enabled", 1265174801)
  var `?param` = [getPtr link, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc linkGetEnabled*(self: NavigationServer3D; link: RID): bool =
  expandMethodBind(className NavigationServer3D, "link_get_enabled", 4155700596)
  var `?param` = [getPtr link]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc linkSetBidirectional*(self: NavigationServer3D; link: RID; bidirectional: bool): void =
  expandMethodBind(className NavigationServer3D, "link_set_bidirectional", 1265174801)
  var `?param` = [getPtr link, getPtr bidirectional]
  methodbind.ptrcall(self, addr `?param`[0])

proc linkIsBidirectional*(self: NavigationServer3D; link: RID): bool =
  expandMethodBind(className NavigationServer3D, "link_is_bidirectional", 4155700596)
  var `?param` = [getPtr link]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc linkSetNavigationLayers*(self: NavigationServer3D; link: RID; navigationLayers: uint32): void =
  expandMethodBind(className NavigationServer3D, "link_set_navigation_layers", 3411492887)
  var `?param` = [getPtr link, getPtr navigationLayers]
  methodbind.ptrcall(self, addr `?param`[0])

proc linkGetNavigationLayers*(self: NavigationServer3D; link: RID): uint32 =
  expandMethodBind(className NavigationServer3D, "link_get_navigation_layers", 2198884583)
  var `?param` = [getPtr link]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc linkSetStartPosition*(self: NavigationServer3D; link: RID; position: Vector3): void =
  expandMethodBind(className NavigationServer3D, "link_set_start_position", 3227306858)
  var `?param` = [getPtr link, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc linkGetStartPosition*(self: NavigationServer3D; link: RID): Vector3 =
  expandMethodBind(className NavigationServer3D, "link_get_start_position", 531438156)
  var `?param` = [getPtr link]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc linkSetEndPosition*(self: NavigationServer3D; link: RID; position: Vector3): void =
  expandMethodBind(className NavigationServer3D, "link_set_end_position", 3227306858)
  var `?param` = [getPtr link, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc linkGetEndPosition*(self: NavigationServer3D; link: RID): Vector3 =
  expandMethodBind(className NavigationServer3D, "link_get_end_position", 531438156)
  var `?param` = [getPtr link]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc linkSetEnterCost*(self: NavigationServer3D; link: RID; enterCost: Float): void =
  expandMethodBind(className NavigationServer3D, "link_set_enter_cost", 1794382983)
  var `?param` = [getPtr link, getPtr enterCost]
  methodbind.ptrcall(self, addr `?param`[0])

proc linkGetEnterCost*(self: NavigationServer3D; link: RID): Float =
  expandMethodBind(className NavigationServer3D, "link_get_enter_cost", 866169185)
  var `?param` = [getPtr link]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc linkSetTravelCost*(self: NavigationServer3D; link: RID; travelCost: Float): void =
  expandMethodBind(className NavigationServer3D, "link_set_travel_cost", 1794382983)
  var `?param` = [getPtr link, getPtr travelCost]
  methodbind.ptrcall(self, addr `?param`[0])

proc linkGetTravelCost*(self: NavigationServer3D; link: RID): Float =
  expandMethodBind(className NavigationServer3D, "link_get_travel_cost", 866169185)
  var `?param` = [getPtr link]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc linkSetOwnerId*(self: NavigationServer3D; link: RID; ownerId: uint64): void =
  expandMethodBind(className NavigationServer3D, "link_set_owner_id", 3411492887)
  var `?param` = [getPtr link, getPtr ownerId]
  methodbind.ptrcall(self, addr `?param`[0])

proc linkGetOwnerId*(self: NavigationServer3D; link: RID): uint64 =
  expandMethodBind(className NavigationServer3D, "link_get_owner_id", 2198884583)
  var `?param` = [getPtr link]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc agentCreate*(self: NavigationServer3D): RID =
  expandMethodBind(className NavigationServer3D, "agent_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc agentSetAvoidanceEnabled*(self: NavigationServer3D; agent: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "agent_set_avoidance_enabled", 1265174801)
  var `?param` = [getPtr agent, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetAvoidanceEnabled*(self: NavigationServer3D; agent: RID): bool =
  expandMethodBind(className NavigationServer3D, "agent_get_avoidance_enabled", 4155700596)
  var `?param` = [getPtr agent]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc agentSetUse3DAvoidance*(self: NavigationServer3D; agent: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "agent_set_use_3d_avoidance", 1265174801)
  var `?param` = [getPtr agent, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetUse3DAvoidance*(self: NavigationServer3D; agent: RID): bool =
  expandMethodBind(className NavigationServer3D, "agent_get_use_3d_avoidance", 4155700596)
  var `?param` = [getPtr agent]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc agentSetMap*(self: NavigationServer3D; agent: RID; map: RID): void =
  expandMethodBind(className NavigationServer3D, "agent_set_map", 395945892)
  var `?param` = [getPtr agent, getPtr map]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetMap*(self: NavigationServer3D; agent: RID): RID =
  expandMethodBind(className NavigationServer3D, "agent_get_map", 3814569979)
  var `?param` = [getPtr agent]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc agentSetPaused*(self: NavigationServer3D; agent: RID; paused: bool): void =
  expandMethodBind(className NavigationServer3D, "agent_set_paused", 1265174801)
  var `?param` = [getPtr agent, getPtr paused]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetPaused*(self: NavigationServer3D; agent: RID): bool =
  expandMethodBind(className NavigationServer3D, "agent_get_paused", 4155700596)
  var `?param` = [getPtr agent]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc agentSetNeighborDistance*(self: NavigationServer3D; agent: RID; distance: Float): void =
  expandMethodBind(className NavigationServer3D, "agent_set_neighbor_distance", 1794382983)
  var `?param` = [getPtr agent, getPtr distance]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetNeighborDistance*(self: NavigationServer3D; agent: RID): Float =
  expandMethodBind(className NavigationServer3D, "agent_get_neighbor_distance", 866169185)
  var `?param` = [getPtr agent]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc agentSetMaxNeighbors*(self: NavigationServer3D; agent: RID; count: int32): void =
  expandMethodBind(className NavigationServer3D, "agent_set_max_neighbors", 3411492887)
  var `?param` = [getPtr agent, getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetMaxNeighbors*(self: NavigationServer3D; agent: RID): int32 =
  expandMethodBind(className NavigationServer3D, "agent_get_max_neighbors", 2198884583)
  var `?param` = [getPtr agent]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc agentSetTimeHorizonAgents*(self: NavigationServer3D; agent: RID; timeHorizon: Float): void =
  expandMethodBind(className NavigationServer3D, "agent_set_time_horizon_agents", 1794382983)
  var `?param` = [getPtr agent, getPtr timeHorizon]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetTimeHorizonAgents*(self: NavigationServer3D; agent: RID): Float =
  expandMethodBind(className NavigationServer3D, "agent_get_time_horizon_agents", 866169185)
  var `?param` = [getPtr agent]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc agentSetTimeHorizonObstacles*(self: NavigationServer3D; agent: RID; timeHorizon: Float): void =
  expandMethodBind(className NavigationServer3D, "agent_set_time_horizon_obstacles", 1794382983)
  var `?param` = [getPtr agent, getPtr timeHorizon]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetTimeHorizonObstacles*(self: NavigationServer3D; agent: RID): Float =
  expandMethodBind(className NavigationServer3D, "agent_get_time_horizon_obstacles", 866169185)
  var `?param` = [getPtr agent]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc agentSetRadius*(self: NavigationServer3D; agent: RID; radius: Float): void =
  expandMethodBind(className NavigationServer3D, "agent_set_radius", 1794382983)
  var `?param` = [getPtr agent, getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetRadius*(self: NavigationServer3D; agent: RID): Float =
  expandMethodBind(className NavigationServer3D, "agent_get_radius", 866169185)
  var `?param` = [getPtr agent]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc agentSetHeight*(self: NavigationServer3D; agent: RID; height: Float): void =
  expandMethodBind(className NavigationServer3D, "agent_set_height", 1794382983)
  var `?param` = [getPtr agent, getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetHeight*(self: NavigationServer3D; agent: RID): Float =
  expandMethodBind(className NavigationServer3D, "agent_get_height", 866169185)
  var `?param` = [getPtr agent]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc agentSetMaxSpeed*(self: NavigationServer3D; agent: RID; maxSpeed: Float): void =
  expandMethodBind(className NavigationServer3D, "agent_set_max_speed", 1794382983)
  var `?param` = [getPtr agent, getPtr maxSpeed]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetMaxSpeed*(self: NavigationServer3D; agent: RID): Float =
  expandMethodBind(className NavigationServer3D, "agent_get_max_speed", 866169185)
  var `?param` = [getPtr agent]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc agentSetVelocityForced*(self: NavigationServer3D; agent: RID; velocity: Vector3): void =
  expandMethodBind(className NavigationServer3D, "agent_set_velocity_forced", 3227306858)
  var `?param` = [getPtr agent, getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentSetVelocity*(self: NavigationServer3D; agent: RID; velocity: Vector3): void =
  expandMethodBind(className NavigationServer3D, "agent_set_velocity", 3227306858)
  var `?param` = [getPtr agent, getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetVelocity*(self: NavigationServer3D; agent: RID): Vector3 =
  expandMethodBind(className NavigationServer3D, "agent_get_velocity", 531438156)
  var `?param` = [getPtr agent]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc agentSetPosition*(self: NavigationServer3D; agent: RID; position: Vector3): void =
  expandMethodBind(className NavigationServer3D, "agent_set_position", 3227306858)
  var `?param` = [getPtr agent, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetPosition*(self: NavigationServer3D; agent: RID): Vector3 =
  expandMethodBind(className NavigationServer3D, "agent_get_position", 531438156)
  var `?param` = [getPtr agent]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc agentIsMapChanged*(self: NavigationServer3D; agent: RID): bool =
  expandMethodBind(className NavigationServer3D, "agent_is_map_changed", 4155700596)
  var `?param` = [getPtr agent]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc agentSetAvoidanceCallback*(self: NavigationServer3D; agent: RID; callback: Callable): void =
  expandMethodBind(className NavigationServer3D, "agent_set_avoidance_callback", 3379118538)
  var `?param` = [getPtr agent, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentHasAvoidanceCallback*(self: NavigationServer3D; agent: RID): bool =
  expandMethodBind(className NavigationServer3D, "agent_has_avoidance_callback", 4155700596)
  var `?param` = [getPtr agent]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc agentSetAvoidanceLayers*(self: NavigationServer3D; agent: RID; layers: uint32): void =
  expandMethodBind(className NavigationServer3D, "agent_set_avoidance_layers", 3411492887)
  var `?param` = [getPtr agent, getPtr layers]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetAvoidanceLayers*(self: NavigationServer3D; agent: RID): uint32 =
  expandMethodBind(className NavigationServer3D, "agent_get_avoidance_layers", 2198884583)
  var `?param` = [getPtr agent]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc agentSetAvoidanceMask*(self: NavigationServer3D; agent: RID; mask: uint32): void =
  expandMethodBind(className NavigationServer3D, "agent_set_avoidance_mask", 3411492887)
  var `?param` = [getPtr agent, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetAvoidanceMask*(self: NavigationServer3D; agent: RID): uint32 =
  expandMethodBind(className NavigationServer3D, "agent_get_avoidance_mask", 2198884583)
  var `?param` = [getPtr agent]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc agentSetAvoidancePriority*(self: NavigationServer3D; agent: RID; priority: Float): void =
  expandMethodBind(className NavigationServer3D, "agent_set_avoidance_priority", 1794382983)
  var `?param` = [getPtr agent, getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc agentGetAvoidancePriority*(self: NavigationServer3D; agent: RID): Float =
  expandMethodBind(className NavigationServer3D, "agent_get_avoidance_priority", 866169185)
  var `?param` = [getPtr agent]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc obstacleCreate*(self: NavigationServer3D): RID =
  expandMethodBind(className NavigationServer3D, "obstacle_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc obstacleSetAvoidanceEnabled*(self: NavigationServer3D; obstacle: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_avoidance_enabled", 1265174801)
  var `?param` = [getPtr obstacle, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc obstacleGetAvoidanceEnabled*(self: NavigationServer3D; obstacle: RID): bool =
  expandMethodBind(className NavigationServer3D, "obstacle_get_avoidance_enabled", 4155700596)
  var `?param` = [getPtr obstacle]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc obstacleSetUse3DAvoidance*(self: NavigationServer3D; obstacle: RID; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_use_3d_avoidance", 1265174801)
  var `?param` = [getPtr obstacle, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc obstacleGetUse3DAvoidance*(self: NavigationServer3D; obstacle: RID): bool =
  expandMethodBind(className NavigationServer3D, "obstacle_get_use_3d_avoidance", 4155700596)
  var `?param` = [getPtr obstacle]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc obstacleSetMap*(self: NavigationServer3D; obstacle: RID; map: RID): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_map", 395945892)
  var `?param` = [getPtr obstacle, getPtr map]
  methodbind.ptrcall(self, addr `?param`[0])

proc obstacleGetMap*(self: NavigationServer3D; obstacle: RID): RID =
  expandMethodBind(className NavigationServer3D, "obstacle_get_map", 3814569979)
  var `?param` = [getPtr obstacle]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc obstacleSetPaused*(self: NavigationServer3D; obstacle: RID; paused: bool): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_paused", 1265174801)
  var `?param` = [getPtr obstacle, getPtr paused]
  methodbind.ptrcall(self, addr `?param`[0])

proc obstacleGetPaused*(self: NavigationServer3D; obstacle: RID): bool =
  expandMethodBind(className NavigationServer3D, "obstacle_get_paused", 4155700596)
  var `?param` = [getPtr obstacle]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc obstacleSetRadius*(self: NavigationServer3D; obstacle: RID; radius: Float): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_radius", 1794382983)
  var `?param` = [getPtr obstacle, getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc obstacleGetRadius*(self: NavigationServer3D; obstacle: RID): Float =
  expandMethodBind(className NavigationServer3D, "obstacle_get_radius", 866169185)
  var `?param` = [getPtr obstacle]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc obstacleSetHeight*(self: NavigationServer3D; obstacle: RID; height: Float): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_height", 1794382983)
  var `?param` = [getPtr obstacle, getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc obstacleGetHeight*(self: NavigationServer3D; obstacle: RID): Float =
  expandMethodBind(className NavigationServer3D, "obstacle_get_height", 866169185)
  var `?param` = [getPtr obstacle]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc obstacleSetVelocity*(self: NavigationServer3D; obstacle: RID; velocity: Vector3): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_velocity", 3227306858)
  var `?param` = [getPtr obstacle, getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc obstacleGetVelocity*(self: NavigationServer3D; obstacle: RID): Vector3 =
  expandMethodBind(className NavigationServer3D, "obstacle_get_velocity", 531438156)
  var `?param` = [getPtr obstacle]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc obstacleSetPosition*(self: NavigationServer3D; obstacle: RID; position: Vector3): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_position", 3227306858)
  var `?param` = [getPtr obstacle, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc obstacleGetPosition*(self: NavigationServer3D; obstacle: RID): Vector3 =
  expandMethodBind(className NavigationServer3D, "obstacle_get_position", 531438156)
  var `?param` = [getPtr obstacle]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc obstacleSetVertices*(self: NavigationServer3D; obstacle: RID; vertices: PackedVector3Array): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_vertices", 4030257846)
  var `?param` = [getPtr obstacle, getPtr vertices]
  methodbind.ptrcall(self, addr `?param`[0])

proc obstacleGetVertices*(self: NavigationServer3D; obstacle: RID): PackedVector3Array =
  expandMethodBind(className NavigationServer3D, "obstacle_get_vertices", 808965560)
  var `?param` = [getPtr obstacle]
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc obstacleSetAvoidanceLayers*(self: NavigationServer3D; obstacle: RID; layers: uint32): void =
  expandMethodBind(className NavigationServer3D, "obstacle_set_avoidance_layers", 3411492887)
  var `?param` = [getPtr obstacle, getPtr layers]
  methodbind.ptrcall(self, addr `?param`[0])

proc obstacleGetAvoidanceLayers*(self: NavigationServer3D; obstacle: RID): uint32 =
  expandMethodBind(className NavigationServer3D, "obstacle_get_avoidance_layers", 2198884583)
  var `?param` = [getPtr obstacle]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc parseSourceGeometryData*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; rootNode: Node; callback: Callable = callable()): void =
  expandMethodBind(className NavigationServer3D, "parse_source_geometry_data", 685862123)
  var `?param` = [getPtr navigationMesh, getPtr sourceGeometryData, getPtr rootNode, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc bakeFromSourceGeometryData*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; callback: Callable = callable()): void =
  expandMethodBind(className NavigationServer3D, "bake_from_source_geometry_data", 2469318639)
  var `?param` = [getPtr navigationMesh, getPtr sourceGeometryData, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc bakeFromSourceGeometryDataAsync*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; callback: Callable = callable()): void =
  expandMethodBind(className NavigationServer3D, "bake_from_source_geometry_data_async", 2469318639)
  var `?param` = [getPtr navigationMesh, getPtr sourceGeometryData, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc isBakingNavigationMesh*(self: NavigationServer3D; navigationMesh: gdref NavigationMesh): bool =
  expandMethodBind(className NavigationServer3D, "is_baking_navigation_mesh", 3142026141)
  var `?param` = [getPtr navigationMesh]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc sourceGeometryParserCreate*(self: NavigationServer3D): RID =
  expandMethodBind(className NavigationServer3D, "source_geometry_parser_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc sourceGeometryParserSetCallback*(self: NavigationServer3D; parser: RID; callback: Callable): void =
  expandMethodBind(className NavigationServer3D, "source_geometry_parser_set_callback", 3379118538)
  var `?param` = [getPtr parser, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc simplifyPath*(self: NavigationServer3D; path: PackedVector3Array; epsilon: Float): PackedVector3Array =
  expandMethodBind(className NavigationServer3D, "simplify_path", 2344122170)
  var `?param` = [getPtr path, getPtr epsilon]
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc freeRid*(self: NavigationServer3D; rid: RID): void =
  expandMethodBind(className NavigationServer3D, "free_rid", 2722037293)
  var `?param` = [getPtr rid]
  methodbind.ptrcall(self, addr `?param`[0])

proc setActive*(self: NavigationServer3D; active: bool): void =
  expandMethodBind(className NavigationServer3D, "set_active", 2586408642)
  var `?param` = [getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc setDebugEnabled*(self: NavigationServer3D; enabled: bool): void =
  expandMethodBind(className NavigationServer3D, "set_debug_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDebugEnabled*(self: NavigationServer3D): bool =
  expandMethodBind(className NavigationServer3D, "get_debug_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getProcessInfo*(self: NavigationServer3D; processInfo: NavigationServer3D_ProcessInfo): int32 =
  expandMethodBind(className NavigationServer3D, "get_process_info", 1938440894)
  var `?param` = [getPtr processInfo]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
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
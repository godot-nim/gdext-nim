{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(NavigationAgent3D, Node)

proc getRid*(self: NavigationAgent3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setAvoidanceEnabled*(self: NavigationAgent3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_avoidance_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getAvoidanceEnabled*(self: NavigationAgent3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_avoidance_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPathDesiredDistance*(self: NavigationAgent3D; desiredDistance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_path_desired_distance", 373806689)
  methodbind.ptrcall(self, [getPtr desiredDistance], void)

proc getPathDesiredDistance*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_path_desired_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTargetDesiredDistance*(self: NavigationAgent3D; desiredDistance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_target_desired_distance", 373806689)
  methodbind.ptrcall(self, [getPtr desiredDistance], void)

proc getTargetDesiredDistance*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_target_desired_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRadius*(self: NavigationAgent3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHeight*(self: NavigationAgent3D; height: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height], void)

proc getHeight*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathHeightOffset*(self: NavigationAgent3D; pathHeightOffset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_path_height_offset", 373806689)
  methodbind.ptrcall(self, [getPtr pathHeightOffset], void)

proc getPathHeightOffset*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_path_height_offset", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setUse3DAvoidance*(self: NavigationAgent3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_use_3d_avoidance", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getUse3DAvoidance*(self: NavigationAgent3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_use_3d_avoidance", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setKeepYVelocity*(self: NavigationAgent3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_keep_y_velocity", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getKeepYVelocity*(self: NavigationAgent3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_keep_y_velocity", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNeighborDistance*(self: NavigationAgent3D; neighborDistance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_neighbor_distance", 373806689)
  methodbind.ptrcall(self, [getPtr neighborDistance], void)

proc getNeighborDistance*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_neighbor_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMaxNeighbors*(self: NavigationAgent3D; maxNeighbors: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_max_neighbors", 1286410249)
  methodbind.ptrcall(self, [getPtr maxNeighbors], void)

proc getMaxNeighbors*(self: NavigationAgent3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_max_neighbors", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setTimeHorizonAgents*(self: NavigationAgent3D; timeHorizon: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_time_horizon_agents", 373806689)
  methodbind.ptrcall(self, [getPtr timeHorizon], void)

proc getTimeHorizonAgents*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_time_horizon_agents", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTimeHorizonObstacles*(self: NavigationAgent3D; timeHorizon: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_time_horizon_obstacles", 373806689)
  methodbind.ptrcall(self, [getPtr timeHorizon], void)

proc getTimeHorizonObstacles*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_time_horizon_obstacles", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMaxSpeed*(self: NavigationAgent3D; maxSpeed: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_max_speed", 373806689)
  methodbind.ptrcall(self, [getPtr maxSpeed], void)

proc getMaxSpeed*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_max_speed", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathMaxDistance*(self: NavigationAgent3D; maxSpeed: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_path_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr maxSpeed], void)

proc getPathMaxDistance*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_path_max_distance", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setNavigationLayers*(self: NavigationAgent3D; navigationLayers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_navigation_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr navigationLayers], void)

proc getNavigationLayers*(self: NavigationAgent3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_navigation_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setNavigationLayerValue*(self: NavigationAgent3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_navigation_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getNavigationLayerValue*(self: NavigationAgent3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_navigation_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setPathfindingAlgorithm*(self: NavigationAgent3D; pathfindingAlgorithm: NavigationPathQueryParameters3D_PathfindingAlgorithm): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_pathfinding_algorithm", 394560454)
  methodbind.ptrcall(self, [getPtr pathfindingAlgorithm], void)

proc getPathfindingAlgorithm*(self: NavigationAgent3D): NavigationPathQueryParameters3D_PathfindingAlgorithm =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_pathfinding_algorithm", 3398491350)
  methodbind.ptrcall(self, [], NavigationPathQueryParameters3D_PathfindingAlgorithm)

proc setPathPostprocessing*(self: NavigationAgent3D; pathPostprocessing: NavigationPathQueryParameters3D_PathPostProcessing): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_path_postprocessing", 2267362344)
  methodbind.ptrcall(self, [getPtr pathPostprocessing], void)

proc getPathPostprocessing*(self: NavigationAgent3D): NavigationPathQueryParameters3D_PathPostProcessing =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_path_postprocessing", 3883858360)
  methodbind.ptrcall(self, [], NavigationPathQueryParameters3D_PathPostProcessing)

proc setPathMetadataFlags*(self: NavigationAgent3D; flags: set[NavigationPathQueryParameters3D_PathMetadataFlags]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_path_metadata_flags", 2713846708)
  methodbind.ptrcall(self, [getPtr flags], void)

proc getPathMetadataFlags*(self: NavigationAgent3D): set[NavigationPathQueryParameters3D_PathMetadataFlags] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_path_metadata_flags", 1582332802)
  methodbind.ptrcall(self, [], set[NavigationPathQueryParameters3D_PathMetadataFlags])

proc setNavigationMap*(self: NavigationAgent3D; navigationMap: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_navigation_map", 2722037293)
  methodbind.ptrcall(self, [getPtr navigationMap], void)

proc getNavigationMap*(self: NavigationAgent3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_navigation_map", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setTargetPosition*(self: NavigationAgent3D; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_target_position", 3460891852)
  methodbind.ptrcall(self, [getPtr position], void)

proc getTargetPosition*(self: NavigationAgent3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_target_position", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setSimplifyPath*(self: NavigationAgent3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_simplify_path", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getSimplifyPath*(self: NavigationAgent3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_simplify_path", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSimplifyEpsilon*(self: NavigationAgent3D; epsilon: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_simplify_epsilon", 373806689)
  methodbind.ptrcall(self, [getPtr epsilon], void)

proc getSimplifyEpsilon*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_simplify_epsilon", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathReturnMaxLength*(self: NavigationAgent3D; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_path_return_max_length", 373806689)
  methodbind.ptrcall(self, [getPtr length], void)

proc getPathReturnMaxLength*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_path_return_max_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathReturnMaxRadius*(self: NavigationAgent3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_path_return_max_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getPathReturnMaxRadius*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_path_return_max_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathSearchMaxPolygons*(self: NavigationAgent3D; maxPolygons: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_path_search_max_polygons", 1286410249)
  methodbind.ptrcall(self, [getPtr maxPolygons], void)

proc getPathSearchMaxPolygons*(self: NavigationAgent3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_path_search_max_polygons", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPathSearchMaxDistance*(self: NavigationAgent3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_path_search_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getPathSearchMaxDistance*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_path_search_max_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getPathLength*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_path_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getNextPathPosition*(self: NavigationAgent3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_next_path_position", 3783033775)
  methodbind.ptrcall(self, [], Vector3)

proc setVelocityForced*(self: NavigationAgent3D; velocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_velocity_forced", 3460891852)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc setVelocity*(self: NavigationAgent3D; velocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc getVelocity*(self: NavigationAgent3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_velocity", 3783033775)
  methodbind.ptrcall(self, [], Vector3)

proc distanceToTarget*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "distance_to_target", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getCurrentNavigationResult*(self: NavigationAgent3D): gdref NavigationPathQueryResult3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_current_navigation_result", 728825684)
  methodbind.ptrcall(self, [], gdref NavigationPathQueryResult3D)

proc getCurrentNavigationPath*(self: NavigationAgent3D): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_current_navigation_path", 497664490)
  methodbind.ptrcall(self, [], PackedVector3Array)

proc getCurrentNavigationPathIndex*(self: NavigationAgent3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_current_navigation_path_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc isTargetReached*(self: NavigationAgent3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "is_target_reached", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isTargetReachable*(self: NavigationAgent3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "is_target_reachable", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc isNavigationFinished*(self: NavigationAgent3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "is_navigation_finished", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc getFinalPosition*(self: NavigationAgent3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_final_position", 3783033775)
  methodbind.ptrcall(self, [], Vector3)

proc setAvoidanceLayers*(self: NavigationAgent3D; layers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_avoidance_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr layers], void)

proc getAvoidanceLayers*(self: NavigationAgent3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_avoidance_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setAvoidanceMask*(self: NavigationAgent3D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_avoidance_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getAvoidanceMask*(self: NavigationAgent3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_avoidance_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setAvoidanceLayerValue*(self: NavigationAgent3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_avoidance_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getAvoidanceLayerValue*(self: NavigationAgent3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_avoidance_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setAvoidanceMaskValue*(self: NavigationAgent3D; maskNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_avoidance_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr maskNumber, getPtr value], void)

proc getAvoidanceMaskValue*(self: NavigationAgent3D; maskNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_avoidance_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr maskNumber], bool)

proc setAvoidancePriority*(self: NavigationAgent3D; priority: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_avoidance_priority", 373806689)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getAvoidancePriority*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_avoidance_priority", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDebugEnabled*(self: NavigationAgent3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_debug_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getDebugEnabled*(self: NavigationAgent3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_debug_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDebugUseCustom*(self: NavigationAgent3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_debug_use_custom", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getDebugUseCustom*(self: NavigationAgent3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_debug_use_custom", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDebugPathCustomColor*(self: NavigationAgent3D; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_debug_path_custom_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getDebugPathCustomColor*(self: NavigationAgent3D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_debug_path_custom_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setDebugPathCustomPointSize*(self: NavigationAgent3D; pointSize: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "set_debug_path_custom_point_size", 373806689)
  methodbind.ptrcall(self, [getPtr pointSize], void)

proc getDebugPathCustomPointSize*(self: NavigationAgent3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent3D, "get_debug_path_custom_point_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

template targetPosition*(self: NavigationAgent3D): untyped = self.getTargetPosition()
template `targetPosition=`*(self: NavigationAgent3D; value) = self.setTargetPosition(value)

template pathDesiredDistance*(self: NavigationAgent3D): untyped = self.getPathDesiredDistance()
template `pathDesiredDistance=`*(self: NavigationAgent3D; value) = self.setPathDesiredDistance(value)

template targetDesiredDistance*(self: NavigationAgent3D): untyped = self.getTargetDesiredDistance()
template `targetDesiredDistance=`*(self: NavigationAgent3D; value) = self.setTargetDesiredDistance(value)

template pathHeightOffset*(self: NavigationAgent3D): untyped = self.getPathHeightOffset()
template `pathHeightOffset=`*(self: NavigationAgent3D; value) = self.setPathHeightOffset(value)

template pathMaxDistance*(self: NavigationAgent3D): untyped = self.getPathMaxDistance()
template `pathMaxDistance=`*(self: NavigationAgent3D; value) = self.setPathMaxDistance(value)

template navigationLayers*(self: NavigationAgent3D): untyped = self.getNavigationLayers()
template `navigationLayers=`*(self: NavigationAgent3D; value) = self.setNavigationLayers(value)

template pathfindingAlgorithm*(self: NavigationAgent3D): untyped = self.getPathfindingAlgorithm()
template `pathfindingAlgorithm=`*(self: NavigationAgent3D; value) = self.setPathfindingAlgorithm(value)

template pathPostprocessing*(self: NavigationAgent3D): untyped = self.getPathPostprocessing()
template `pathPostprocessing=`*(self: NavigationAgent3D; value) = self.setPathPostprocessing(value)

template pathMetadataFlags*(self: NavigationAgent3D): untyped = self.getPathMetadataFlags()
template `pathMetadataFlags=`*(self: NavigationAgent3D; value) = self.setPathMetadataFlags(value)

template simplifyPath*(self: NavigationAgent3D): untyped = self.getSimplifyPath()
template `simplifyPath=`*(self: NavigationAgent3D; value) = self.setSimplifyPath(value)

template simplifyEpsilon*(self: NavigationAgent3D): untyped = self.getSimplifyEpsilon()
template `simplifyEpsilon=`*(self: NavigationAgent3D; value) = self.setSimplifyEpsilon(value)

template pathReturnMaxLength*(self: NavigationAgent3D): untyped = self.getPathReturnMaxLength()
template `pathReturnMaxLength=`*(self: NavigationAgent3D; value) = self.setPathReturnMaxLength(value)

template pathReturnMaxRadius*(self: NavigationAgent3D): untyped = self.getPathReturnMaxRadius()
template `pathReturnMaxRadius=`*(self: NavigationAgent3D; value) = self.setPathReturnMaxRadius(value)

template pathSearchMaxPolygons*(self: NavigationAgent3D): untyped = self.getPathSearchMaxPolygons()
template `pathSearchMaxPolygons=`*(self: NavigationAgent3D; value) = self.setPathSearchMaxPolygons(value)

template pathSearchMaxDistance*(self: NavigationAgent3D): untyped = self.getPathSearchMaxDistance()
template `pathSearchMaxDistance=`*(self: NavigationAgent3D; value) = self.setPathSearchMaxDistance(value)

template avoidanceEnabled*(self: NavigationAgent3D): untyped = self.getAvoidanceEnabled()
template `avoidanceEnabled=`*(self: NavigationAgent3D; value) = self.setAvoidanceEnabled(value)

template velocity*(self: NavigationAgent3D): untyped = self.getVelocity()
template `velocity=`*(self: NavigationAgent3D; value) = self.setVelocity(value)

template height*(self: NavigationAgent3D): untyped = self.getHeight()
template `height=`*(self: NavigationAgent3D; value) = self.setHeight(value)

template radius*(self: NavigationAgent3D): untyped = self.getRadius()
template `radius=`*(self: NavigationAgent3D; value) = self.setRadius(value)

template neighborDistance*(self: NavigationAgent3D): untyped = self.getNeighborDistance()
template `neighborDistance=`*(self: NavigationAgent3D; value) = self.setNeighborDistance(value)

template maxNeighbors*(self: NavigationAgent3D): untyped = self.getMaxNeighbors()
template `maxNeighbors=`*(self: NavigationAgent3D; value) = self.setMaxNeighbors(value)

template timeHorizonAgents*(self: NavigationAgent3D): untyped = self.getTimeHorizonAgents()
template `timeHorizonAgents=`*(self: NavigationAgent3D; value) = self.setTimeHorizonAgents(value)

template timeHorizonObstacles*(self: NavigationAgent3D): untyped = self.getTimeHorizonObstacles()
template `timeHorizonObstacles=`*(self: NavigationAgent3D; value) = self.setTimeHorizonObstacles(value)

template maxSpeed*(self: NavigationAgent3D): untyped = self.getMaxSpeed()
template `maxSpeed=`*(self: NavigationAgent3D; value) = self.setMaxSpeed(value)

template use3DAvoidance*(self: NavigationAgent3D): untyped = self.getUse3DAvoidance()
template `use3DAvoidance=`*(self: NavigationAgent3D; value) = self.setUse3DAvoidance(value)

template keepYVelocity*(self: NavigationAgent3D): untyped = self.getKeepYVelocity()
template `keepYVelocity=`*(self: NavigationAgent3D; value) = self.setKeepYVelocity(value)

template avoidanceLayers*(self: NavigationAgent3D): untyped = self.getAvoidanceLayers()
template `avoidanceLayers=`*(self: NavigationAgent3D; value) = self.setAvoidanceLayers(value)

template avoidanceMask*(self: NavigationAgent3D): untyped = self.getAvoidanceMask()
template `avoidanceMask=`*(self: NavigationAgent3D; value) = self.setAvoidanceMask(value)

template avoidancePriority*(self: NavigationAgent3D): untyped = self.getAvoidancePriority()
template `avoidancePriority=`*(self: NavigationAgent3D; value) = self.setAvoidancePriority(value)

template debugEnabled*(self: NavigationAgent3D): untyped = self.getDebugEnabled()
template `debugEnabled=`*(self: NavigationAgent3D; value) = self.setDebugEnabled(value)

template debugUseCustom*(self: NavigationAgent3D): untyped = self.getDebugUseCustom()
template `debugUseCustom=`*(self: NavigationAgent3D; value) = self.setDebugUseCustom(value)

template debugPathCustomColor*(self: NavigationAgent3D): untyped = self.getDebugPathCustomColor()
template `debugPathCustomColor=`*(self: NavigationAgent3D; value) = self.setDebugPathCustomColor(value)

template debugPathCustomPointSize*(self: NavigationAgent3D): untyped = self.getDebugPathCustomPointSize()
template `debugPathCustomPointSize=`*(self: NavigationAgent3D; value) = self.setDebugPathCustomPointSize(value)

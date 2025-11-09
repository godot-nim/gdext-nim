{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(NavigationAgent2D, Node)

proc getRid*(self: NavigationAgent2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setAvoidanceEnabled*(self: NavigationAgent2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_avoidance_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getAvoidanceEnabled*(self: NavigationAgent2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_avoidance_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPathDesiredDistance*(self: NavigationAgent2D; desiredDistance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_path_desired_distance", 373806689)
  methodbind.ptrcall(self, [getPtr desiredDistance], void)

proc getPathDesiredDistance*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_path_desired_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTargetDesiredDistance*(self: NavigationAgent2D; desiredDistance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_target_desired_distance", 373806689)
  methodbind.ptrcall(self, [getPtr desiredDistance], void)

proc getTargetDesiredDistance*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_target_desired_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRadius*(self: NavigationAgent2D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setNeighborDistance*(self: NavigationAgent2D; neighborDistance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_neighbor_distance", 373806689)
  methodbind.ptrcall(self, [getPtr neighborDistance], void)

proc getNeighborDistance*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_neighbor_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMaxNeighbors*(self: NavigationAgent2D; maxNeighbors: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_max_neighbors", 1286410249)
  methodbind.ptrcall(self, [getPtr maxNeighbors], void)

proc getMaxNeighbors*(self: NavigationAgent2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_max_neighbors", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setTimeHorizonAgents*(self: NavigationAgent2D; timeHorizon: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_time_horizon_agents", 373806689)
  methodbind.ptrcall(self, [getPtr timeHorizon], void)

proc getTimeHorizonAgents*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_time_horizon_agents", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTimeHorizonObstacles*(self: NavigationAgent2D; timeHorizon: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_time_horizon_obstacles", 373806689)
  methodbind.ptrcall(self, [getPtr timeHorizon], void)

proc getTimeHorizonObstacles*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_time_horizon_obstacles", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMaxSpeed*(self: NavigationAgent2D; maxSpeed: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_max_speed", 373806689)
  methodbind.ptrcall(self, [getPtr maxSpeed], void)

proc getMaxSpeed*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_max_speed", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathMaxDistance*(self: NavigationAgent2D; maxSpeed: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_path_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr maxSpeed], void)

proc getPathMaxDistance*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_path_max_distance", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setNavigationLayers*(self: NavigationAgent2D; navigationLayers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_navigation_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr navigationLayers], void)

proc getNavigationLayers*(self: NavigationAgent2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_navigation_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setNavigationLayerValue*(self: NavigationAgent2D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_navigation_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getNavigationLayerValue*(self: NavigationAgent2D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_navigation_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setPathfindingAlgorithm*(self: NavigationAgent2D; pathfindingAlgorithm: NavigationPathQueryParameters2D_PathfindingAlgorithm): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_pathfinding_algorithm", 2783519915)
  methodbind.ptrcall(self, [getPtr pathfindingAlgorithm], void)

proc getPathfindingAlgorithm*(self: NavigationAgent2D): NavigationPathQueryParameters2D_PathfindingAlgorithm =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_pathfinding_algorithm", 3000421146)
  methodbind.ptrcall(self, [], NavigationPathQueryParameters2D_PathfindingAlgorithm)

proc setPathPostprocessing*(self: NavigationAgent2D; pathPostprocessing: NavigationPathQueryParameters2D_PathPostProcessing): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_path_postprocessing", 2864409082)
  methodbind.ptrcall(self, [getPtr pathPostprocessing], void)

proc getPathPostprocessing*(self: NavigationAgent2D): NavigationPathQueryParameters2D_PathPostProcessing =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_path_postprocessing", 3798118993)
  methodbind.ptrcall(self, [], NavigationPathQueryParameters2D_PathPostProcessing)

proc setPathMetadataFlags*(self: NavigationAgent2D; flags: set[NavigationPathQueryParameters2D_PathMetadataFlags]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_path_metadata_flags", 24274129)
  methodbind.ptrcall(self, [getPtr flags], void)

proc getPathMetadataFlags*(self: NavigationAgent2D): set[NavigationPathQueryParameters2D_PathMetadataFlags] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_path_metadata_flags", 488152976)
  methodbind.ptrcall(self, [], set[NavigationPathQueryParameters2D_PathMetadataFlags])

proc setNavigationMap*(self: NavigationAgent2D; navigationMap: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_navigation_map", 2722037293)
  methodbind.ptrcall(self, [getPtr navigationMap], void)

proc getNavigationMap*(self: NavigationAgent2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_navigation_map", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setTargetPosition*(self: NavigationAgent2D; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_target_position", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc getTargetPosition*(self: NavigationAgent2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_target_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setSimplifyPath*(self: NavigationAgent2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_simplify_path", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getSimplifyPath*(self: NavigationAgent2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_simplify_path", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSimplifyEpsilon*(self: NavigationAgent2D; epsilon: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_simplify_epsilon", 373806689)
  methodbind.ptrcall(self, [getPtr epsilon], void)

proc getSimplifyEpsilon*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_simplify_epsilon", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathReturnMaxLength*(self: NavigationAgent2D; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_path_return_max_length", 373806689)
  methodbind.ptrcall(self, [getPtr length], void)

proc getPathReturnMaxLength*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_path_return_max_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathReturnMaxRadius*(self: NavigationAgent2D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_path_return_max_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getPathReturnMaxRadius*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_path_return_max_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathSearchMaxPolygons*(self: NavigationAgent2D; maxPolygons: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_path_search_max_polygons", 1286410249)
  methodbind.ptrcall(self, [getPtr maxPolygons], void)

proc getPathSearchMaxPolygons*(self: NavigationAgent2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_path_search_max_polygons", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPathSearchMaxDistance*(self: NavigationAgent2D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_path_search_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getPathSearchMaxDistance*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_path_search_max_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getPathLength*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_path_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getNextPathPosition*(self: NavigationAgent2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_next_path_position", 1497962370)
  methodbind.ptrcall(self, [], Vector2)

proc setVelocityForced*(self: NavigationAgent2D; velocity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_velocity_forced", 743155724)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc setVelocity*(self: NavigationAgent2D; velocity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_velocity", 743155724)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc getVelocity*(self: NavigationAgent2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_velocity", 1497962370)
  methodbind.ptrcall(self, [], Vector2)

proc distanceToTarget*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "distance_to_target", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getCurrentNavigationResult*(self: NavigationAgent2D): gdref NavigationPathQueryResult2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_current_navigation_result", 166799483)
  methodbind.ptrcall(self, [], gdref NavigationPathQueryResult2D)

proc getCurrentNavigationPath*(self: NavigationAgent2D): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_current_navigation_path", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

proc getCurrentNavigationPathIndex*(self: NavigationAgent2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_current_navigation_path_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc isTargetReached*(self: NavigationAgent2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "is_target_reached", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isTargetReachable*(self: NavigationAgent2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "is_target_reachable", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc isNavigationFinished*(self: NavigationAgent2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "is_navigation_finished", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc getFinalPosition*(self: NavigationAgent2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_final_position", 1497962370)
  methodbind.ptrcall(self, [], Vector2)

proc setAvoidanceLayers*(self: NavigationAgent2D; layers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_avoidance_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr layers], void)

proc getAvoidanceLayers*(self: NavigationAgent2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_avoidance_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setAvoidanceMask*(self: NavigationAgent2D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_avoidance_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getAvoidanceMask*(self: NavigationAgent2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_avoidance_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setAvoidanceLayerValue*(self: NavigationAgent2D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_avoidance_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getAvoidanceLayerValue*(self: NavigationAgent2D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_avoidance_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setAvoidanceMaskValue*(self: NavigationAgent2D; maskNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_avoidance_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr maskNumber, getPtr value], void)

proc getAvoidanceMaskValue*(self: NavigationAgent2D; maskNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_avoidance_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr maskNumber], bool)

proc setAvoidancePriority*(self: NavigationAgent2D; priority: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_avoidance_priority", 373806689)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getAvoidancePriority*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_avoidance_priority", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDebugEnabled*(self: NavigationAgent2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_debug_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getDebugEnabled*(self: NavigationAgent2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_debug_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDebugUseCustom*(self: NavigationAgent2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_debug_use_custom", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getDebugUseCustom*(self: NavigationAgent2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_debug_use_custom", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDebugPathCustomColor*(self: NavigationAgent2D; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_debug_path_custom_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getDebugPathCustomColor*(self: NavigationAgent2D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_debug_path_custom_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setDebugPathCustomPointSize*(self: NavigationAgent2D; pointSize: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_debug_path_custom_point_size", 373806689)
  methodbind.ptrcall(self, [getPtr pointSize], void)

proc getDebugPathCustomPointSize*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_debug_path_custom_point_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDebugPathCustomLineWidth*(self: NavigationAgent2D; lineWidth: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "set_debug_path_custom_line_width", 373806689)
  methodbind.ptrcall(self, [getPtr lineWidth], void)

proc getDebugPathCustomLineWidth*(self: NavigationAgent2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationAgent2D, "get_debug_path_custom_line_width", 1740695150)
  methodbind.ptrcall(self, [], Float)

template targetPosition*(self: NavigationAgent2D): untyped = self.getTargetPosition()
template `targetPosition=`*(self: NavigationAgent2D; value) = self.setTargetPosition(value)

template pathDesiredDistance*(self: NavigationAgent2D): untyped = self.getPathDesiredDistance()
template `pathDesiredDistance=`*(self: NavigationAgent2D; value) = self.setPathDesiredDistance(value)

template targetDesiredDistance*(self: NavigationAgent2D): untyped = self.getTargetDesiredDistance()
template `targetDesiredDistance=`*(self: NavigationAgent2D; value) = self.setTargetDesiredDistance(value)

template pathMaxDistance*(self: NavigationAgent2D): untyped = self.getPathMaxDistance()
template `pathMaxDistance=`*(self: NavigationAgent2D; value) = self.setPathMaxDistance(value)

template navigationLayers*(self: NavigationAgent2D): untyped = self.getNavigationLayers()
template `navigationLayers=`*(self: NavigationAgent2D; value) = self.setNavigationLayers(value)

template pathfindingAlgorithm*(self: NavigationAgent2D): untyped = self.getPathfindingAlgorithm()
template `pathfindingAlgorithm=`*(self: NavigationAgent2D; value) = self.setPathfindingAlgorithm(value)

template pathPostprocessing*(self: NavigationAgent2D): untyped = self.getPathPostprocessing()
template `pathPostprocessing=`*(self: NavigationAgent2D; value) = self.setPathPostprocessing(value)

template pathMetadataFlags*(self: NavigationAgent2D): untyped = self.getPathMetadataFlags()
template `pathMetadataFlags=`*(self: NavigationAgent2D; value) = self.setPathMetadataFlags(value)

template simplifyPath*(self: NavigationAgent2D): untyped = self.getSimplifyPath()
template `simplifyPath=`*(self: NavigationAgent2D; value) = self.setSimplifyPath(value)

template simplifyEpsilon*(self: NavigationAgent2D): untyped = self.getSimplifyEpsilon()
template `simplifyEpsilon=`*(self: NavigationAgent2D; value) = self.setSimplifyEpsilon(value)

template pathReturnMaxLength*(self: NavigationAgent2D): untyped = self.getPathReturnMaxLength()
template `pathReturnMaxLength=`*(self: NavigationAgent2D; value) = self.setPathReturnMaxLength(value)

template pathReturnMaxRadius*(self: NavigationAgent2D): untyped = self.getPathReturnMaxRadius()
template `pathReturnMaxRadius=`*(self: NavigationAgent2D; value) = self.setPathReturnMaxRadius(value)

template pathSearchMaxPolygons*(self: NavigationAgent2D): untyped = self.getPathSearchMaxPolygons()
template `pathSearchMaxPolygons=`*(self: NavigationAgent2D; value) = self.setPathSearchMaxPolygons(value)

template pathSearchMaxDistance*(self: NavigationAgent2D): untyped = self.getPathSearchMaxDistance()
template `pathSearchMaxDistance=`*(self: NavigationAgent2D; value) = self.setPathSearchMaxDistance(value)

template avoidanceEnabled*(self: NavigationAgent2D): untyped = self.getAvoidanceEnabled()
template `avoidanceEnabled=`*(self: NavigationAgent2D; value) = self.setAvoidanceEnabled(value)

template velocity*(self: NavigationAgent2D): untyped = self.getVelocity()
template `velocity=`*(self: NavigationAgent2D; value) = self.setVelocity(value)

template radius*(self: NavigationAgent2D): untyped = self.getRadius()
template `radius=`*(self: NavigationAgent2D; value) = self.setRadius(value)

template neighborDistance*(self: NavigationAgent2D): untyped = self.getNeighborDistance()
template `neighborDistance=`*(self: NavigationAgent2D; value) = self.setNeighborDistance(value)

template maxNeighbors*(self: NavigationAgent2D): untyped = self.getMaxNeighbors()
template `maxNeighbors=`*(self: NavigationAgent2D; value) = self.setMaxNeighbors(value)

template timeHorizonAgents*(self: NavigationAgent2D): untyped = self.getTimeHorizonAgents()
template `timeHorizonAgents=`*(self: NavigationAgent2D; value) = self.setTimeHorizonAgents(value)

template timeHorizonObstacles*(self: NavigationAgent2D): untyped = self.getTimeHorizonObstacles()
template `timeHorizonObstacles=`*(self: NavigationAgent2D; value) = self.setTimeHorizonObstacles(value)

template maxSpeed*(self: NavigationAgent2D): untyped = self.getMaxSpeed()
template `maxSpeed=`*(self: NavigationAgent2D; value) = self.setMaxSpeed(value)

template avoidanceLayers*(self: NavigationAgent2D): untyped = self.getAvoidanceLayers()
template `avoidanceLayers=`*(self: NavigationAgent2D; value) = self.setAvoidanceLayers(value)

template avoidanceMask*(self: NavigationAgent2D): untyped = self.getAvoidanceMask()
template `avoidanceMask=`*(self: NavigationAgent2D; value) = self.setAvoidanceMask(value)

template avoidancePriority*(self: NavigationAgent2D): untyped = self.getAvoidancePriority()
template `avoidancePriority=`*(self: NavigationAgent2D; value) = self.setAvoidancePriority(value)

template debugEnabled*(self: NavigationAgent2D): untyped = self.getDebugEnabled()
template `debugEnabled=`*(self: NavigationAgent2D; value) = self.setDebugEnabled(value)

template debugUseCustom*(self: NavigationAgent2D): untyped = self.getDebugUseCustom()
template `debugUseCustom=`*(self: NavigationAgent2D; value) = self.setDebugUseCustom(value)

template debugPathCustomColor*(self: NavigationAgent2D): untyped = self.getDebugPathCustomColor()
template `debugPathCustomColor=`*(self: NavigationAgent2D; value) = self.setDebugPathCustomColor(value)

template debugPathCustomPointSize*(self: NavigationAgent2D): untyped = self.getDebugPathCustomPointSize()
template `debugPathCustomPointSize=`*(self: NavigationAgent2D; value) = self.setDebugPathCustomPointSize(value)

template debugPathCustomLineWidth*(self: NavigationAgent2D): untyped = self.getDebugPathCustomLineWidth()
template `debugPathCustomLineWidth=`*(self: NavigationAgent2D; value) = self.setDebugPathCustomLineWidth(value)

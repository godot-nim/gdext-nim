{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

proc getRid*(self: NavigationAgent2D): Rid =
  expandMethodBind(className NavigationAgent2D, "get_rid", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc setAvoidanceEnabled*(self: NavigationAgent2D; enabled: bool): void =
  expandMethodBind(className NavigationAgent2D, "set_avoidance_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAvoidanceEnabled*(self: NavigationAgent2D): bool =
  expandMethodBind(className NavigationAgent2D, "get_avoidance_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPathDesiredDistance*(self: NavigationAgent2D; desiredDistance: Float): void =
  expandMethodBind(className NavigationAgent2D, "set_path_desired_distance", 373806689)
  var `?param` = [getPtr desiredDistance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathDesiredDistance*(self: NavigationAgent2D): Float =
  expandMethodBind(className NavigationAgent2D, "get_path_desired_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTargetDesiredDistance*(self: NavigationAgent2D; desiredDistance: Float): void =
  expandMethodBind(className NavigationAgent2D, "set_target_desired_distance", 373806689)
  var `?param` = [getPtr desiredDistance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetDesiredDistance*(self: NavigationAgent2D): Float =
  expandMethodBind(className NavigationAgent2D, "get_target_desired_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRadius*(self: NavigationAgent2D; radius: Float): void =
  expandMethodBind(className NavigationAgent2D, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: NavigationAgent2D): Float =
  expandMethodBind(className NavigationAgent2D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setNeighborDistance*(self: NavigationAgent2D; neighborDistance: Float): void =
  expandMethodBind(className NavigationAgent2D, "set_neighbor_distance", 373806689)
  var `?param` = [getPtr neighborDistance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNeighborDistance*(self: NavigationAgent2D): Float =
  expandMethodBind(className NavigationAgent2D, "get_neighbor_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMaxNeighbors*(self: NavigationAgent2D; maxNeighbors: int32): void =
  expandMethodBind(className NavigationAgent2D, "set_max_neighbors", 1286410249)
  var `?param` = [getPtr maxNeighbors]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxNeighbors*(self: NavigationAgent2D): int32 =
  expandMethodBind(className NavigationAgent2D, "get_max_neighbors", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setTimeHorizonAgents*(self: NavigationAgent2D; timeHorizon: Float): void =
  expandMethodBind(className NavigationAgent2D, "set_time_horizon_agents", 373806689)
  var `?param` = [getPtr timeHorizon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTimeHorizonAgents*(self: NavigationAgent2D): Float =
  expandMethodBind(className NavigationAgent2D, "get_time_horizon_agents", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTimeHorizonObstacles*(self: NavigationAgent2D; timeHorizon: Float): void =
  expandMethodBind(className NavigationAgent2D, "set_time_horizon_obstacles", 373806689)
  var `?param` = [getPtr timeHorizon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTimeHorizonObstacles*(self: NavigationAgent2D): Float =
  expandMethodBind(className NavigationAgent2D, "get_time_horizon_obstacles", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMaxSpeed*(self: NavigationAgent2D; maxSpeed: Float): void =
  expandMethodBind(className NavigationAgent2D, "set_max_speed", 373806689)
  var `?param` = [getPtr maxSpeed]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxSpeed*(self: NavigationAgent2D): Float =
  expandMethodBind(className NavigationAgent2D, "get_max_speed", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPathMaxDistance*(self: NavigationAgent2D; maxSpeed: Float): void =
  expandMethodBind(className NavigationAgent2D, "set_path_max_distance", 373806689)
  var `?param` = [getPtr maxSpeed]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathMaxDistance*(self: NavigationAgent2D): Float =
  expandMethodBind(className NavigationAgent2D, "get_path_max_distance", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setNavigationLayers*(self: NavigationAgent2D; navigationLayers: uint32): void =
  expandMethodBind(className NavigationAgent2D, "set_navigation_layers", 1286410249)
  var `?param` = [getPtr navigationLayers]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationLayers*(self: NavigationAgent2D): uint32 =
  expandMethodBind(className NavigationAgent2D, "get_navigation_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setNavigationLayerValue*(self: NavigationAgent2D; layerNumber: int32; value: bool): void =
  expandMethodBind(className NavigationAgent2D, "set_navigation_layer_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationLayerValue*(self: NavigationAgent2D; layerNumber: int32): bool =
  expandMethodBind(className NavigationAgent2D, "get_navigation_layer_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setPathfindingAlgorithm*(self: NavigationAgent2D; pathfindingAlgorithm: NavigationPathQueryParameters2D_PathfindingAlgorithm): void =
  expandMethodBind(className NavigationAgent2D, "set_pathfinding_algorithm", 2783519915)
  var `?param` = [getPtr pathfindingAlgorithm]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathfindingAlgorithm*(self: NavigationAgent2D): NavigationPathQueryParameters2D_PathfindingAlgorithm =
  expandMethodBind(className NavigationAgent2D, "get_pathfinding_algorithm", 3000421146)
  var ret: encoded NavigationPathQueryParameters2D_PathfindingAlgorithm
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NavigationPathQueryParameters2D_PathfindingAlgorithm)

proc setPathPostprocessing*(self: NavigationAgent2D; pathPostprocessing: NavigationPathQueryParameters2D_PathPostProcessing): void =
  expandMethodBind(className NavigationAgent2D, "set_path_postprocessing", 2864409082)
  var `?param` = [getPtr pathPostprocessing]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathPostprocessing*(self: NavigationAgent2D): NavigationPathQueryParameters2D_PathPostProcessing =
  expandMethodBind(className NavigationAgent2D, "get_path_postprocessing", 3798118993)
  var ret: encoded NavigationPathQueryParameters2D_PathPostProcessing
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NavigationPathQueryParameters2D_PathPostProcessing)

proc setPathMetadataFlags*(self: NavigationAgent2D; flags: set[NavigationPathQueryParameters2D_PathMetadataFlags]): void =
  expandMethodBind(className NavigationAgent2D, "set_path_metadata_flags", 24274129)
  var `?param` = [getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathMetadataFlags*(self: NavigationAgent2D): set[NavigationPathQueryParameters2D_PathMetadataFlags] =
  expandMethodBind(className NavigationAgent2D, "get_path_metadata_flags", 488152976)
  var ret: encoded set[NavigationPathQueryParameters2D_PathMetadataFlags]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[NavigationPathQueryParameters2D_PathMetadataFlags])

proc setNavigationMap*(self: NavigationAgent2D; navigationMap: Rid): void =
  expandMethodBind(className NavigationAgent2D, "set_navigation_map", 2722037293)
  var `?param` = [getPtr navigationMap]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationMap*(self: NavigationAgent2D): Rid =
  expandMethodBind(className NavigationAgent2D, "get_navigation_map", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc setTargetPosition*(self: NavigationAgent2D; position: Vector2): void =
  expandMethodBind(className NavigationAgent2D, "set_target_position", 743155724)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetPosition*(self: NavigationAgent2D): Vector2 =
  expandMethodBind(className NavigationAgent2D, "get_target_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setSimplifyPath*(self: NavigationAgent2D; enabled: bool): void =
  expandMethodBind(className NavigationAgent2D, "set_simplify_path", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSimplifyPath*(self: NavigationAgent2D): bool =
  expandMethodBind(className NavigationAgent2D, "get_simplify_path", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSimplifyEpsilon*(self: NavigationAgent2D; epsilon: Float): void =
  expandMethodBind(className NavigationAgent2D, "set_simplify_epsilon", 373806689)
  var `?param` = [getPtr epsilon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSimplifyEpsilon*(self: NavigationAgent2D): Float =
  expandMethodBind(className NavigationAgent2D, "get_simplify_epsilon", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getNextPathPosition*(self: NavigationAgent2D): Vector2 =
  expandMethodBind(className NavigationAgent2D, "get_next_path_position", 1497962370)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setVelocityForced*(self: NavigationAgent2D; velocity: Vector2): void =
  expandMethodBind(className NavigationAgent2D, "set_velocity_forced", 743155724)
  var `?param` = [getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc setVelocity*(self: NavigationAgent2D; velocity: Vector2): void =
  expandMethodBind(className NavigationAgent2D, "set_velocity", 743155724)
  var `?param` = [getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVelocity*(self: NavigationAgent2D): Vector2 =
  expandMethodBind(className NavigationAgent2D, "get_velocity", 1497962370)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc distanceToTarget*(self: NavigationAgent2D): Float =
  expandMethodBind(className NavigationAgent2D, "distance_to_target", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getCurrentNavigationResult*(self: NavigationAgent2D): gdref NavigationPathQueryResult2D =
  expandMethodBind(className NavigationAgent2D, "get_current_navigation_result", 166799483)
  var ret: encoded gdref NavigationPathQueryResult2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref NavigationPathQueryResult2D)

proc getCurrentNavigationPath*(self: NavigationAgent2D): PackedVector2Array =
  expandMethodBind(className NavigationAgent2D, "get_current_navigation_path", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc getCurrentNavigationPathIndex*(self: NavigationAgent2D): int32 =
  expandMethodBind(className NavigationAgent2D, "get_current_navigation_path_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc isTargetReached*(self: NavigationAgent2D): bool =
  expandMethodBind(className NavigationAgent2D, "is_target_reached", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isTargetReachable*(self: NavigationAgent2D): bool =
  expandMethodBind(className NavigationAgent2D, "is_target_reachable", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isNavigationFinished*(self: NavigationAgent2D): bool =
  expandMethodBind(className NavigationAgent2D, "is_navigation_finished", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getFinalPosition*(self: NavigationAgent2D): Vector2 =
  expandMethodBind(className NavigationAgent2D, "get_final_position", 1497962370)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setAvoidanceLayers*(self: NavigationAgent2D; layers: uint32): void =
  expandMethodBind(className NavigationAgent2D, "set_avoidance_layers", 1286410249)
  var `?param` = [getPtr layers]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAvoidanceLayers*(self: NavigationAgent2D): uint32 =
  expandMethodBind(className NavigationAgent2D, "get_avoidance_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setAvoidanceMask*(self: NavigationAgent2D; mask: uint32): void =
  expandMethodBind(className NavigationAgent2D, "set_avoidance_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAvoidanceMask*(self: NavigationAgent2D): uint32 =
  expandMethodBind(className NavigationAgent2D, "get_avoidance_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setAvoidanceLayerValue*(self: NavigationAgent2D; layerNumber: int32; value: bool): void =
  expandMethodBind(className NavigationAgent2D, "set_avoidance_layer_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAvoidanceLayerValue*(self: NavigationAgent2D; layerNumber: int32): bool =
  expandMethodBind(className NavigationAgent2D, "get_avoidance_layer_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setAvoidanceMaskValue*(self: NavigationAgent2D; maskNumber: int32; value: bool): void =
  expandMethodBind(className NavigationAgent2D, "set_avoidance_mask_value", 300928843)
  var `?param` = [getPtr maskNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAvoidanceMaskValue*(self: NavigationAgent2D; maskNumber: int32): bool =
  expandMethodBind(className NavigationAgent2D, "get_avoidance_mask_value", 1116898809)
  var `?param` = [getPtr maskNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setAvoidancePriority*(self: NavigationAgent2D; priority: Float): void =
  expandMethodBind(className NavigationAgent2D, "set_avoidance_priority", 373806689)
  var `?param` = [getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAvoidancePriority*(self: NavigationAgent2D): Float =
  expandMethodBind(className NavigationAgent2D, "get_avoidance_priority", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDebugEnabled*(self: NavigationAgent2D; enabled: bool): void =
  expandMethodBind(className NavigationAgent2D, "set_debug_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDebugEnabled*(self: NavigationAgent2D): bool =
  expandMethodBind(className NavigationAgent2D, "get_debug_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDebugUseCustom*(self: NavigationAgent2D; enabled: bool): void =
  expandMethodBind(className NavigationAgent2D, "set_debug_use_custom", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDebugUseCustom*(self: NavigationAgent2D): bool =
  expandMethodBind(className NavigationAgent2D, "get_debug_use_custom", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDebugPathCustomColor*(self: NavigationAgent2D; color: Color): void =
  expandMethodBind(className NavigationAgent2D, "set_debug_path_custom_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDebugPathCustomColor*(self: NavigationAgent2D): Color =
  expandMethodBind(className NavigationAgent2D, "get_debug_path_custom_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setDebugPathCustomPointSize*(self: NavigationAgent2D; pointSize: Float): void =
  expandMethodBind(className NavigationAgent2D, "set_debug_path_custom_point_size", 373806689)
  var `?param` = [getPtr pointSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDebugPathCustomPointSize*(self: NavigationAgent2D): Float =
  expandMethodBind(className NavigationAgent2D, "get_debug_path_custom_point_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDebugPathCustomLineWidth*(self: NavigationAgent2D; lineWidth: Float): void =
  expandMethodBind(className NavigationAgent2D, "set_debug_path_custom_line_width", 373806689)
  var `?param` = [getPtr lineWidth]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDebugPathCustomLineWidth*(self: NavigationAgent2D): Float =
  expandMethodBind(className NavigationAgent2D, "get_debug_path_custom_line_width", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

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

const NavigationAgent2D_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationAgent2D]): Table[string, string] = NavigationAgent2D_vmap

proc pathChanged*(self: NavigationAgent2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("path_changed")
  self.emitSignal(signalname)

proc targetReached*(self: NavigationAgent2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("target_reached")
  self.emitSignal(signalname)

proc waypointReached*(self: NavigationAgent2D; details: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("waypoint_reached")
  let args = [details]
  self.emitSignal(signalname, args)

proc linkReached*(self: NavigationAgent2D; details: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("link_reached")
  let args = [details]
  self.emitSignal(signalname, args)

proc navigationFinished*(self: NavigationAgent2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("navigation_finished")
  self.emitSignal(signalname)

proc velocityComputed*(self: NavigationAgent2D; safeVelocity: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("velocity_computed")
  let args = [safeVelocity]
  self.emitSignal(signalname, args)
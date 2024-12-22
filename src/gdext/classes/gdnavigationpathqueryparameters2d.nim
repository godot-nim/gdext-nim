{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setPathfindingAlgorithm*(self: NavigationPathQueryParameters2D; pathfindingAlgorithm: NavigationPathQueryParameters2D_PathfindingAlgorithm): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_pathfinding_algorithm", 2783519915)
  var `?param` = [getPtr pathfindingAlgorithm]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathfindingAlgorithm*(self: NavigationPathQueryParameters2D): NavigationPathQueryParameters2D_PathfindingAlgorithm =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_pathfinding_algorithm", 3000421146)
  var ret: encoded NavigationPathQueryParameters2D_PathfindingAlgorithm
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NavigationPathQueryParameters2D_PathfindingAlgorithm)

proc setPathPostprocessing*(self: NavigationPathQueryParameters2D; pathPostprocessing: NavigationPathQueryParameters2D_PathPostProcessing): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_path_postprocessing", 2864409082)
  var `?param` = [getPtr pathPostprocessing]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathPostprocessing*(self: NavigationPathQueryParameters2D): NavigationPathQueryParameters2D_PathPostProcessing =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_path_postprocessing", 3798118993)
  var ret: encoded NavigationPathQueryParameters2D_PathPostProcessing
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NavigationPathQueryParameters2D_PathPostProcessing)

proc setMap*(self: NavigationPathQueryParameters2D; map: RID): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_map", 2722037293)
  var `?param` = [getPtr map]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMap*(self: NavigationPathQueryParameters2D): RID =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_map", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc setStartPosition*(self: NavigationPathQueryParameters2D; startPosition: Vector2): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_start_position", 743155724)
  var `?param` = [getPtr startPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStartPosition*(self: NavigationPathQueryParameters2D): Vector2 =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_start_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setTargetPosition*(self: NavigationPathQueryParameters2D; targetPosition: Vector2): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_target_position", 743155724)
  var `?param` = [getPtr targetPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetPosition*(self: NavigationPathQueryParameters2D): Vector2 =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_target_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setNavigationLayers*(self: NavigationPathQueryParameters2D; navigationLayers: uint32): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_navigation_layers", 1286410249)
  var `?param` = [getPtr navigationLayers]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationLayers*(self: NavigationPathQueryParameters2D): uint32 =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_navigation_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setMetadataFlags*(self: NavigationPathQueryParameters2D; flags: set[NavigationPathQueryParameters2D_PathMetadataFlags]): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_metadata_flags", 24274129)
  var `?param` = [getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMetadataFlags*(self: NavigationPathQueryParameters2D): set[NavigationPathQueryParameters2D_PathMetadataFlags] =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_metadata_flags", 488152976)
  var ret: encoded set[NavigationPathQueryParameters2D_PathMetadataFlags]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[NavigationPathQueryParameters2D_PathMetadataFlags])

proc setSimplifyPath*(self: NavigationPathQueryParameters2D; enabled: bool): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_simplify_path", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSimplifyPath*(self: NavigationPathQueryParameters2D): bool =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_simplify_path", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSimplifyEpsilon*(self: NavigationPathQueryParameters2D; epsilon: Float): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_simplify_epsilon", 373806689)
  var `?param` = [getPtr epsilon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSimplifyEpsilon*(self: NavigationPathQueryParameters2D): Float =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_simplify_epsilon", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template map*(self: NavigationPathQueryParameters2D): untyped = self.getMap()
template `map=`*(self: NavigationPathQueryParameters2D; value) = self.setMap(value)

template startPosition*(self: NavigationPathQueryParameters2D): untyped = self.getStartPosition()
template `startPosition=`*(self: NavigationPathQueryParameters2D; value) = self.setStartPosition(value)

template targetPosition*(self: NavigationPathQueryParameters2D): untyped = self.getTargetPosition()
template `targetPosition=`*(self: NavigationPathQueryParameters2D; value) = self.setTargetPosition(value)

template navigationLayers*(self: NavigationPathQueryParameters2D): untyped = self.getNavigationLayers()
template `navigationLayers=`*(self: NavigationPathQueryParameters2D; value) = self.setNavigationLayers(value)

template pathfindingAlgorithm*(self: NavigationPathQueryParameters2D): untyped = self.getPathfindingAlgorithm()
template `pathfindingAlgorithm=`*(self: NavigationPathQueryParameters2D; value) = self.setPathfindingAlgorithm(value)

template pathPostprocessing*(self: NavigationPathQueryParameters2D): untyped = self.getPathPostprocessing()
template `pathPostprocessing=`*(self: NavigationPathQueryParameters2D; value) = self.setPathPostprocessing(value)

template metadataFlags*(self: NavigationPathQueryParameters2D): untyped = self.getMetadataFlags()
template `metadataFlags=`*(self: NavigationPathQueryParameters2D; value) = self.setMetadataFlags(value)

template simplifyPath*(self: NavigationPathQueryParameters2D): untyped = self.getSimplifyPath()
template `simplifyPath=`*(self: NavigationPathQueryParameters2D; value) = self.setSimplifyPath(value)

template simplifyEpsilon*(self: NavigationPathQueryParameters2D): untyped = self.getSimplifyEpsilon()
template `simplifyEpsilon=`*(self: NavigationPathQueryParameters2D; value) = self.setSimplifyEpsilon(value)

const NavigationPathQueryParameters2D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationPathQueryParameters2D]): Table[string, string] = NavigationPathQueryParameters2D_vmap
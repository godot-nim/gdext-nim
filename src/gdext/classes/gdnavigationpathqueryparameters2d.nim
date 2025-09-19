{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(NavigationPathQueryParameters2D, RefCounted)

proc setPathfindingAlgorithm*(self: NavigationPathQueryParameters2D; pathfindingAlgorithm: NavigationPathQueryParameters2D_PathfindingAlgorithm): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_pathfinding_algorithm", 2783519915)
  methodbind.ptrcall(self, [getPtr pathfindingAlgorithm])

proc getPathfindingAlgorithm*(self: NavigationPathQueryParameters2D): NavigationPathQueryParameters2D_PathfindingAlgorithm =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_pathfinding_algorithm", 3000421146)
  var ret: encoded NavigationPathQueryParameters2D_PathfindingAlgorithm
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NavigationPathQueryParameters2D_PathfindingAlgorithm)

proc setPathPostprocessing*(self: NavigationPathQueryParameters2D; pathPostprocessing: NavigationPathQueryParameters2D_PathPostProcessing): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_path_postprocessing", 2864409082)
  methodbind.ptrcall(self, [getPtr pathPostprocessing])

proc getPathPostprocessing*(self: NavigationPathQueryParameters2D): NavigationPathQueryParameters2D_PathPostProcessing =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_path_postprocessing", 3798118993)
  var ret: encoded NavigationPathQueryParameters2D_PathPostProcessing
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NavigationPathQueryParameters2D_PathPostProcessing)

proc setMap*(self: NavigationPathQueryParameters2D; map: RID): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_map", 2722037293)
  methodbind.ptrcall(self, [getPtr map])

proc getMap*(self: NavigationPathQueryParameters2D): RID =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_map", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setStartPosition*(self: NavigationPathQueryParameters2D; startPosition: Vector2): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_start_position", 743155724)
  methodbind.ptrcall(self, [getPtr startPosition])

proc getStartPosition*(self: NavigationPathQueryParameters2D): Vector2 =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_start_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setTargetPosition*(self: NavigationPathQueryParameters2D; targetPosition: Vector2): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_target_position", 743155724)
  methodbind.ptrcall(self, [getPtr targetPosition])

proc getTargetPosition*(self: NavigationPathQueryParameters2D): Vector2 =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_target_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setNavigationLayers*(self: NavigationPathQueryParameters2D; navigationLayers: uint32): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_navigation_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr navigationLayers])

proc getNavigationLayers*(self: NavigationPathQueryParameters2D): uint32 =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_navigation_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setMetadataFlags*(self: NavigationPathQueryParameters2D; flags: set[NavigationPathQueryParameters2D_PathMetadataFlags]): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_metadata_flags", 24274129)
  methodbind.ptrcall(self, [getPtr flags])

proc getMetadataFlags*(self: NavigationPathQueryParameters2D): set[NavigationPathQueryParameters2D_PathMetadataFlags] =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_metadata_flags", 488152976)
  var ret: encoded set[NavigationPathQueryParameters2D_PathMetadataFlags]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(set[NavigationPathQueryParameters2D_PathMetadataFlags])

proc setSimplifyPath*(self: NavigationPathQueryParameters2D; enabled: bool): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_simplify_path", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getSimplifyPath*(self: NavigationPathQueryParameters2D): bool =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_simplify_path", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setSimplifyEpsilon*(self: NavigationPathQueryParameters2D; epsilon: Float): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_simplify_epsilon", 373806689)
  methodbind.ptrcall(self, [getPtr epsilon])

proc getSimplifyEpsilon*(self: NavigationPathQueryParameters2D): Float =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_simplify_epsilon", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setIncludedRegions*(self: NavigationPathQueryParameters2D; regions: TypedArray[RID]): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_included_regions", 381264803)
  methodbind.ptrcall(self, [getPtr regions])

proc getIncludedRegions*(self: NavigationPathQueryParameters2D): TypedArray[RID] =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_included_regions", 3995934104)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc setExcludedRegions*(self: NavigationPathQueryParameters2D; regions: TypedArray[RID]): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_excluded_regions", 381264803)
  methodbind.ptrcall(self, [getPtr regions])

proc getExcludedRegions*(self: NavigationPathQueryParameters2D): TypedArray[RID] =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_excluded_regions", 3995934104)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc setPathReturnMaxLength*(self: NavigationPathQueryParameters2D; length: Float): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_path_return_max_length", 373806689)
  methodbind.ptrcall(self, [getPtr length])

proc getPathReturnMaxLength*(self: NavigationPathQueryParameters2D): Float =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_path_return_max_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPathReturnMaxRadius*(self: NavigationPathQueryParameters2D; radius: Float): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_path_return_max_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getPathReturnMaxRadius*(self: NavigationPathQueryParameters2D): Float =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_path_return_max_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPathSearchMaxPolygons*(self: NavigationPathQueryParameters2D; maxPolygons: int32): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_path_search_max_polygons", 1286410249)
  methodbind.ptrcall(self, [getPtr maxPolygons])

proc getPathSearchMaxPolygons*(self: NavigationPathQueryParameters2D): int32 =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_path_search_max_polygons", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setPathSearchMaxDistance*(self: NavigationPathQueryParameters2D; distance: Float): void =
  expandMethodBind(className NavigationPathQueryParameters2D, "set_path_search_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getPathSearchMaxDistance*(self: NavigationPathQueryParameters2D): Float =
  expandMethodBind(className NavigationPathQueryParameters2D, "get_path_search_max_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
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

template excludedRegions*(self: NavigationPathQueryParameters2D): untyped = self.getExcludedRegions()
template `excludedRegions=`*(self: NavigationPathQueryParameters2D; value) = self.setExcludedRegions(value)

template includedRegions*(self: NavigationPathQueryParameters2D): untyped = self.getIncludedRegions()
template `includedRegions=`*(self: NavigationPathQueryParameters2D; value) = self.setIncludedRegions(value)

template pathReturnMaxLength*(self: NavigationPathQueryParameters2D): untyped = self.getPathReturnMaxLength()
template `pathReturnMaxLength=`*(self: NavigationPathQueryParameters2D; value) = self.setPathReturnMaxLength(value)

template pathReturnMaxRadius*(self: NavigationPathQueryParameters2D): untyped = self.getPathReturnMaxRadius()
template `pathReturnMaxRadius=`*(self: NavigationPathQueryParameters2D; value) = self.setPathReturnMaxRadius(value)

template pathSearchMaxPolygons*(self: NavigationPathQueryParameters2D): untyped = self.getPathSearchMaxPolygons()
template `pathSearchMaxPolygons=`*(self: NavigationPathQueryParameters2D; value) = self.setPathSearchMaxPolygons(value)

template pathSearchMaxDistance*(self: NavigationPathQueryParameters2D): untyped = self.getPathSearchMaxDistance()
template `pathSearchMaxDistance=`*(self: NavigationPathQueryParameters2D; value) = self.setPathSearchMaxDistance(value)

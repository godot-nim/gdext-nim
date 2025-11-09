{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(NavigationPathQueryParameters2D, RefCounted)

proc setPathfindingAlgorithm*(self: NavigationPathQueryParameters2D; pathfindingAlgorithm: NavigationPathQueryParameters2D_PathfindingAlgorithm): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_pathfinding_algorithm", 2783519915)
  methodbind.ptrcall(self, [getPtr pathfindingAlgorithm], void)

proc getPathfindingAlgorithm*(self: NavigationPathQueryParameters2D): NavigationPathQueryParameters2D_PathfindingAlgorithm =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_pathfinding_algorithm", 3000421146)
  methodbind.ptrcall(self, [], NavigationPathQueryParameters2D_PathfindingAlgorithm)

proc setPathPostprocessing*(self: NavigationPathQueryParameters2D; pathPostprocessing: NavigationPathQueryParameters2D_PathPostProcessing): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_path_postprocessing", 2864409082)
  methodbind.ptrcall(self, [getPtr pathPostprocessing], void)

proc getPathPostprocessing*(self: NavigationPathQueryParameters2D): NavigationPathQueryParameters2D_PathPostProcessing =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_path_postprocessing", 3798118993)
  methodbind.ptrcall(self, [], NavigationPathQueryParameters2D_PathPostProcessing)

proc setMap*(self: NavigationPathQueryParameters2D; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_map", 2722037293)
  methodbind.ptrcall(self, [getPtr map], void)

proc getMap*(self: NavigationPathQueryParameters2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_map", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setStartPosition*(self: NavigationPathQueryParameters2D; startPosition: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_start_position", 743155724)
  methodbind.ptrcall(self, [getPtr startPosition], void)

proc getStartPosition*(self: NavigationPathQueryParameters2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_start_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setTargetPosition*(self: NavigationPathQueryParameters2D; targetPosition: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_target_position", 743155724)
  methodbind.ptrcall(self, [getPtr targetPosition], void)

proc getTargetPosition*(self: NavigationPathQueryParameters2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_target_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setNavigationLayers*(self: NavigationPathQueryParameters2D; navigationLayers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_navigation_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr navigationLayers], void)

proc getNavigationLayers*(self: NavigationPathQueryParameters2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_navigation_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setMetadataFlags*(self: NavigationPathQueryParameters2D; flags: set[NavigationPathQueryParameters2D_PathMetadataFlags]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_metadata_flags", 24274129)
  methodbind.ptrcall(self, [getPtr flags], void)

proc getMetadataFlags*(self: NavigationPathQueryParameters2D): set[NavigationPathQueryParameters2D_PathMetadataFlags] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_metadata_flags", 488152976)
  methodbind.ptrcall(self, [], set[NavigationPathQueryParameters2D_PathMetadataFlags])

proc setSimplifyPath*(self: NavigationPathQueryParameters2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_simplify_path", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getSimplifyPath*(self: NavigationPathQueryParameters2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_simplify_path", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSimplifyEpsilon*(self: NavigationPathQueryParameters2D; epsilon: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_simplify_epsilon", 373806689)
  methodbind.ptrcall(self, [getPtr epsilon], void)

proc getSimplifyEpsilon*(self: NavigationPathQueryParameters2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_simplify_epsilon", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setIncludedRegions*(self: NavigationPathQueryParameters2D; regions: TypedArray[RID]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_included_regions", 381264803)
  methodbind.ptrcall(self, [getPtr regions], void)

proc getIncludedRegions*(self: NavigationPathQueryParameters2D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_included_regions", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc setExcludedRegions*(self: NavigationPathQueryParameters2D; regions: TypedArray[RID]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_excluded_regions", 381264803)
  methodbind.ptrcall(self, [getPtr regions], void)

proc getExcludedRegions*(self: NavigationPathQueryParameters2D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_excluded_regions", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc setPathReturnMaxLength*(self: NavigationPathQueryParameters2D; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_path_return_max_length", 373806689)
  methodbind.ptrcall(self, [getPtr length], void)

proc getPathReturnMaxLength*(self: NavigationPathQueryParameters2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_path_return_max_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathReturnMaxRadius*(self: NavigationPathQueryParameters2D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_path_return_max_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getPathReturnMaxRadius*(self: NavigationPathQueryParameters2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_path_return_max_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathSearchMaxPolygons*(self: NavigationPathQueryParameters2D; maxPolygons: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_path_search_max_polygons", 1286410249)
  methodbind.ptrcall(self, [getPtr maxPolygons], void)

proc getPathSearchMaxPolygons*(self: NavigationPathQueryParameters2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_path_search_max_polygons", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPathSearchMaxDistance*(self: NavigationPathQueryParameters2D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "set_path_search_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getPathSearchMaxDistance*(self: NavigationPathQueryParameters2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters2D, "get_path_search_max_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

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

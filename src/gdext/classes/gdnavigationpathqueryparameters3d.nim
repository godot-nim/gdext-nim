{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(NavigationPathQueryParameters3D, RefCounted)

proc setPathfindingAlgorithm*(self: NavigationPathQueryParameters3D; pathfindingAlgorithm: NavigationPathQueryParameters3D_PathfindingAlgorithm): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_pathfinding_algorithm", 394560454)
  methodbind.ptrcall(self, [getPtr pathfindingAlgorithm], void)

proc getPathfindingAlgorithm*(self: NavigationPathQueryParameters3D): NavigationPathQueryParameters3D_PathfindingAlgorithm =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_pathfinding_algorithm", 3398491350)
  methodbind.ptrcall(self, [], NavigationPathQueryParameters3D_PathfindingAlgorithm)

proc setPathPostprocessing*(self: NavigationPathQueryParameters3D; pathPostprocessing: NavigationPathQueryParameters3D_PathPostProcessing): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_path_postprocessing", 2267362344)
  methodbind.ptrcall(self, [getPtr pathPostprocessing], void)

proc getPathPostprocessing*(self: NavigationPathQueryParameters3D): NavigationPathQueryParameters3D_PathPostProcessing =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_path_postprocessing", 3883858360)
  methodbind.ptrcall(self, [], NavigationPathQueryParameters3D_PathPostProcessing)

proc setMap*(self: NavigationPathQueryParameters3D; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_map", 2722037293)
  methodbind.ptrcall(self, [getPtr map], void)

proc getMap*(self: NavigationPathQueryParameters3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_map", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setStartPosition*(self: NavigationPathQueryParameters3D; startPosition: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_start_position", 3460891852)
  methodbind.ptrcall(self, [getPtr startPosition], void)

proc getStartPosition*(self: NavigationPathQueryParameters3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_start_position", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setTargetPosition*(self: NavigationPathQueryParameters3D; targetPosition: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_target_position", 3460891852)
  methodbind.ptrcall(self, [getPtr targetPosition], void)

proc getTargetPosition*(self: NavigationPathQueryParameters3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_target_position", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setNavigationLayers*(self: NavigationPathQueryParameters3D; navigationLayers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_navigation_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr navigationLayers], void)

proc getNavigationLayers*(self: NavigationPathQueryParameters3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_navigation_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setMetadataFlags*(self: NavigationPathQueryParameters3D; flags: set[NavigationPathQueryParameters3D_PathMetadataFlags]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_metadata_flags", 2713846708)
  methodbind.ptrcall(self, [getPtr flags], void)

proc getMetadataFlags*(self: NavigationPathQueryParameters3D): set[NavigationPathQueryParameters3D_PathMetadataFlags] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_metadata_flags", 1582332802)
  methodbind.ptrcall(self, [], set[NavigationPathQueryParameters3D_PathMetadataFlags])

proc setSimplifyPath*(self: NavigationPathQueryParameters3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_simplify_path", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getSimplifyPath*(self: NavigationPathQueryParameters3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_simplify_path", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSimplifyEpsilon*(self: NavigationPathQueryParameters3D; epsilon: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_simplify_epsilon", 373806689)
  methodbind.ptrcall(self, [getPtr epsilon], void)

proc getSimplifyEpsilon*(self: NavigationPathQueryParameters3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_simplify_epsilon", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setIncludedRegions*(self: NavigationPathQueryParameters3D; regions: TypedArray[RID]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_included_regions", 381264803)
  methodbind.ptrcall(self, [getPtr regions], void)

proc getIncludedRegions*(self: NavigationPathQueryParameters3D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_included_regions", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc setExcludedRegions*(self: NavigationPathQueryParameters3D; regions: TypedArray[RID]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_excluded_regions", 381264803)
  methodbind.ptrcall(self, [getPtr regions], void)

proc getExcludedRegions*(self: NavigationPathQueryParameters3D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_excluded_regions", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc setPathReturnMaxLength*(self: NavigationPathQueryParameters3D; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_path_return_max_length", 373806689)
  methodbind.ptrcall(self, [getPtr length], void)

proc getPathReturnMaxLength*(self: NavigationPathQueryParameters3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_path_return_max_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathReturnMaxRadius*(self: NavigationPathQueryParameters3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_path_return_max_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getPathReturnMaxRadius*(self: NavigationPathQueryParameters3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_path_return_max_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathSearchMaxPolygons*(self: NavigationPathQueryParameters3D; maxPolygons: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_path_search_max_polygons", 1286410249)
  methodbind.ptrcall(self, [getPtr maxPolygons], void)

proc getPathSearchMaxPolygons*(self: NavigationPathQueryParameters3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_path_search_max_polygons", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPathSearchMaxDistance*(self: NavigationPathQueryParameters3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "set_path_search_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getPathSearchMaxDistance*(self: NavigationPathQueryParameters3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationPathQueryParameters3D, "get_path_search_max_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

template map*(self: NavigationPathQueryParameters3D): untyped = self.getMap()
template `map=`*(self: NavigationPathQueryParameters3D; value) = self.setMap(value)

template startPosition*(self: NavigationPathQueryParameters3D): untyped = self.getStartPosition()
template `startPosition=`*(self: NavigationPathQueryParameters3D; value) = self.setStartPosition(value)

template targetPosition*(self: NavigationPathQueryParameters3D): untyped = self.getTargetPosition()
template `targetPosition=`*(self: NavigationPathQueryParameters3D; value) = self.setTargetPosition(value)

template navigationLayers*(self: NavigationPathQueryParameters3D): untyped = self.getNavigationLayers()
template `navigationLayers=`*(self: NavigationPathQueryParameters3D; value) = self.setNavigationLayers(value)

template pathfindingAlgorithm*(self: NavigationPathQueryParameters3D): untyped = self.getPathfindingAlgorithm()
template `pathfindingAlgorithm=`*(self: NavigationPathQueryParameters3D; value) = self.setPathfindingAlgorithm(value)

template pathPostprocessing*(self: NavigationPathQueryParameters3D): untyped = self.getPathPostprocessing()
template `pathPostprocessing=`*(self: NavigationPathQueryParameters3D; value) = self.setPathPostprocessing(value)

template metadataFlags*(self: NavigationPathQueryParameters3D): untyped = self.getMetadataFlags()
template `metadataFlags=`*(self: NavigationPathQueryParameters3D; value) = self.setMetadataFlags(value)

template simplifyPath*(self: NavigationPathQueryParameters3D): untyped = self.getSimplifyPath()
template `simplifyPath=`*(self: NavigationPathQueryParameters3D; value) = self.setSimplifyPath(value)

template simplifyEpsilon*(self: NavigationPathQueryParameters3D): untyped = self.getSimplifyEpsilon()
template `simplifyEpsilon=`*(self: NavigationPathQueryParameters3D; value) = self.setSimplifyEpsilon(value)

template excludedRegions*(self: NavigationPathQueryParameters3D): untyped = self.getExcludedRegions()
template `excludedRegions=`*(self: NavigationPathQueryParameters3D; value) = self.setExcludedRegions(value)

template includedRegions*(self: NavigationPathQueryParameters3D): untyped = self.getIncludedRegions()
template `includedRegions=`*(self: NavigationPathQueryParameters3D; value) = self.setIncludedRegions(value)

template pathReturnMaxLength*(self: NavigationPathQueryParameters3D): untyped = self.getPathReturnMaxLength()
template `pathReturnMaxLength=`*(self: NavigationPathQueryParameters3D; value) = self.setPathReturnMaxLength(value)

template pathReturnMaxRadius*(self: NavigationPathQueryParameters3D): untyped = self.getPathReturnMaxRadius()
template `pathReturnMaxRadius=`*(self: NavigationPathQueryParameters3D; value) = self.setPathReturnMaxRadius(value)

template pathSearchMaxPolygons*(self: NavigationPathQueryParameters3D): untyped = self.getPathSearchMaxPolygons()
template `pathSearchMaxPolygons=`*(self: NavigationPathQueryParameters3D; value) = self.setPathSearchMaxPolygons(value)

template pathSearchMaxDistance*(self: NavigationPathQueryParameters3D): untyped = self.getPathSearchMaxDistance()
template `pathSearchMaxDistance=`*(self: NavigationPathQueryParameters3D; value) = self.setPathSearchMaxDistance(value)

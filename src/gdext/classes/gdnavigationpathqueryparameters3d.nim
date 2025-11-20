{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(NavigationPathQueryParameters3D, RefCounted)

proc setPathfindingAlgorithm*(self: NavigationPathQueryParameters3D; pathfindingAlgorithm: NavigationPathQueryParameters3D_PathfindingAlgorithm): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_pathfinding_algorithm", 394560454)
  methodbind.ptrcall(self, [getPtr pathfindingAlgorithm])

proc getPathfindingAlgorithm*(self: NavigationPathQueryParameters3D): NavigationPathQueryParameters3D_PathfindingAlgorithm =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_pathfinding_algorithm", 3398491350)
  var ret: encoded NavigationPathQueryParameters3D_PathfindingAlgorithm
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NavigationPathQueryParameters3D_PathfindingAlgorithm)

proc setPathPostprocessing*(self: NavigationPathQueryParameters3D; pathPostprocessing: NavigationPathQueryParameters3D_PathPostProcessing): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_path_postprocessing", 2267362344)
  methodbind.ptrcall(self, [getPtr pathPostprocessing])

proc getPathPostprocessing*(self: NavigationPathQueryParameters3D): NavigationPathQueryParameters3D_PathPostProcessing =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_path_postprocessing", 3883858360)
  var ret: encoded NavigationPathQueryParameters3D_PathPostProcessing
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NavigationPathQueryParameters3D_PathPostProcessing)

proc setMap*(self: NavigationPathQueryParameters3D; map: RID): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_map", 2722037293)
  methodbind.ptrcall(self, [getPtr map])

proc getMap*(self: NavigationPathQueryParameters3D): RID =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_map", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setStartPosition*(self: NavigationPathQueryParameters3D; startPosition: Vector3): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_start_position", 3460891852)
  methodbind.ptrcall(self, [getPtr startPosition])

proc getStartPosition*(self: NavigationPathQueryParameters3D): Vector3 =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_start_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setTargetPosition*(self: NavigationPathQueryParameters3D; targetPosition: Vector3): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_target_position", 3460891852)
  methodbind.ptrcall(self, [getPtr targetPosition])

proc getTargetPosition*(self: NavigationPathQueryParameters3D): Vector3 =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_target_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setNavigationLayers*(self: NavigationPathQueryParameters3D; navigationLayers: uint32): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_navigation_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr navigationLayers])

proc getNavigationLayers*(self: NavigationPathQueryParameters3D): uint32 =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_navigation_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setMetadataFlags*(self: NavigationPathQueryParameters3D; flags: set[NavigationPathQueryParameters3D_PathMetadataFlags]): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_metadata_flags", 2713846708)
  methodbind.ptrcall(self, [getPtr flags])

proc getMetadataFlags*(self: NavigationPathQueryParameters3D): set[NavigationPathQueryParameters3D_PathMetadataFlags] =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_metadata_flags", 1582332802)
  var ret: encoded set[NavigationPathQueryParameters3D_PathMetadataFlags]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(set[NavigationPathQueryParameters3D_PathMetadataFlags])

proc setSimplifyPath*(self: NavigationPathQueryParameters3D; enabled: bool): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_simplify_path", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getSimplifyPath*(self: NavigationPathQueryParameters3D): bool =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_simplify_path", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setSimplifyEpsilon*(self: NavigationPathQueryParameters3D; epsilon: Float): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_simplify_epsilon", 373806689)
  methodbind.ptrcall(self, [getPtr epsilon])

proc getSimplifyEpsilon*(self: NavigationPathQueryParameters3D): Float =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_simplify_epsilon", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setIncludedRegions*(self: NavigationPathQueryParameters3D; regions: TypedArray[RID]): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_included_regions", 381264803)
  nilCheck regions
  methodbind.ptrcall(self, [getPtr regions])

proc getIncludedRegions*(self: NavigationPathQueryParameters3D): TypedArray[RID] =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_included_regions", 3995934104)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc setExcludedRegions*(self: NavigationPathQueryParameters3D; regions: TypedArray[RID]): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_excluded_regions", 381264803)
  nilCheck regions
  methodbind.ptrcall(self, [getPtr regions])

proc getExcludedRegions*(self: NavigationPathQueryParameters3D): TypedArray[RID] =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_excluded_regions", 3995934104)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc setPathReturnMaxLength*(self: NavigationPathQueryParameters3D; length: Float): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_path_return_max_length", 373806689)
  methodbind.ptrcall(self, [getPtr length])

proc getPathReturnMaxLength*(self: NavigationPathQueryParameters3D): Float =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_path_return_max_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPathReturnMaxRadius*(self: NavigationPathQueryParameters3D; radius: Float): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_path_return_max_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getPathReturnMaxRadius*(self: NavigationPathQueryParameters3D): Float =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_path_return_max_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPathSearchMaxPolygons*(self: NavigationPathQueryParameters3D; maxPolygons: int32): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_path_search_max_polygons", 1286410249)
  methodbind.ptrcall(self, [getPtr maxPolygons])

proc getPathSearchMaxPolygons*(self: NavigationPathQueryParameters3D): int32 =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_path_search_max_polygons", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setPathSearchMaxDistance*(self: NavigationPathQueryParameters3D; distance: Float): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_path_search_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getPathSearchMaxDistance*(self: NavigationPathQueryParameters3D): Float =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_path_search_max_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

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

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setPathfindingAlgorithm*(self: NavigationPathQueryParameters3D; pathfindingAlgorithm: NavigationPathQueryParameters3D_PathfindingAlgorithm): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_pathfinding_algorithm", 394560454)
  var `?param` = [getPtr pathfindingAlgorithm]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathfindingAlgorithm*(self: NavigationPathQueryParameters3D): NavigationPathQueryParameters3D_PathfindingAlgorithm =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_pathfinding_algorithm", 3398491350)
  var ret: encoded NavigationPathQueryParameters3D_PathfindingAlgorithm
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NavigationPathQueryParameters3D_PathfindingAlgorithm)

proc setPathPostprocessing*(self: NavigationPathQueryParameters3D; pathPostprocessing: NavigationPathQueryParameters3D_PathPostProcessing): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_path_postprocessing", 2267362344)
  var `?param` = [getPtr pathPostprocessing]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPathPostprocessing*(self: NavigationPathQueryParameters3D): NavigationPathQueryParameters3D_PathPostProcessing =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_path_postprocessing", 3883858360)
  var ret: encoded NavigationPathQueryParameters3D_PathPostProcessing
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NavigationPathQueryParameters3D_PathPostProcessing)

proc setMap*(self: NavigationPathQueryParameters3D; map: Rid): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_map", 2722037293)
  var `?param` = [getPtr map]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMap*(self: NavigationPathQueryParameters3D): Rid =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_map", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc setStartPosition*(self: NavigationPathQueryParameters3D; startPosition: Vector3): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_start_position", 3460891852)
  var `?param` = [getPtr startPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStartPosition*(self: NavigationPathQueryParameters3D): Vector3 =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_start_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setTargetPosition*(self: NavigationPathQueryParameters3D; targetPosition: Vector3): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_target_position", 3460891852)
  var `?param` = [getPtr targetPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetPosition*(self: NavigationPathQueryParameters3D): Vector3 =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_target_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setNavigationLayers*(self: NavigationPathQueryParameters3D; navigationLayers: uint32): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_navigation_layers", 1286410249)
  var `?param` = [getPtr navigationLayers]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationLayers*(self: NavigationPathQueryParameters3D): uint32 =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_navigation_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setMetadataFlags*(self: NavigationPathQueryParameters3D; flags: set[NavigationPathQueryParameters3D_PathMetadataFlags]): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_metadata_flags", 2713846708)
  var `?param` = [getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMetadataFlags*(self: NavigationPathQueryParameters3D): set[NavigationPathQueryParameters3D_PathMetadataFlags] =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_metadata_flags", 1582332802)
  var ret: encoded set[NavigationPathQueryParameters3D_PathMetadataFlags]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[NavigationPathQueryParameters3D_PathMetadataFlags])

proc setSimplifyPath*(self: NavigationPathQueryParameters3D; enabled: bool): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_simplify_path", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSimplifyPath*(self: NavigationPathQueryParameters3D): bool =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_simplify_path", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSimplifyEpsilon*(self: NavigationPathQueryParameters3D; epsilon: Float): void =
  expandMethodBind(className NavigationPathQueryParameters3D, "set_simplify_epsilon", 373806689)
  var `?param` = [getPtr epsilon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSimplifyEpsilon*(self: NavigationPathQueryParameters3D): Float =
  expandMethodBind(className NavigationPathQueryParameters3D, "get_simplify_epsilon", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
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

const NavigationPathQueryParameters3D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationPathQueryParameters3D]): Table[string, string] = NavigationPathQueryParameters3D_vmap
{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc getRid*(self: NavigationObstacle2D): RID =
  expandMethodBind(className NavigationObstacle2D, "get_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setAvoidanceEnabled*(self: NavigationObstacle2D; enabled: bool): void =
  expandMethodBind(className NavigationObstacle2D, "set_avoidance_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getAvoidanceEnabled*(self: NavigationObstacle2D): bool =
  expandMethodBind(className NavigationObstacle2D, "get_avoidance_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setNavigationMap*(self: NavigationObstacle2D; navigationMap: RID): void =
  expandMethodBind(className NavigationObstacle2D, "set_navigation_map", 2722037293)
  methodbind.ptrcall(self, [getPtr navigationMap])

proc getNavigationMap*(self: NavigationObstacle2D): RID =
  expandMethodBind(className NavigationObstacle2D, "get_navigation_map", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setRadius*(self: NavigationObstacle2D; radius: Float): void =
  expandMethodBind(className NavigationObstacle2D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getRadius*(self: NavigationObstacle2D): Float =
  expandMethodBind(className NavigationObstacle2D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setVelocity*(self: NavigationObstacle2D; velocity: Vector2): void =
  expandMethodBind(className NavigationObstacle2D, "set_velocity", 743155724)
  methodbind.ptrcall(self, [getPtr velocity])

proc getVelocity*(self: NavigationObstacle2D): Vector2 =
  expandMethodBind(className NavigationObstacle2D, "get_velocity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setVertices*(self: NavigationObstacle2D; vertices: PackedVector2Array): void =
  expandMethodBind(className NavigationObstacle2D, "set_vertices", 1509147220)
  methodbind.ptrcall(self, [getPtr vertices])

proc getVertices*(self: NavigationObstacle2D): PackedVector2Array =
  expandMethodBind(className NavigationObstacle2D, "get_vertices", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc setAvoidanceLayers*(self: NavigationObstacle2D; layers: uint32): void =
  expandMethodBind(className NavigationObstacle2D, "set_avoidance_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr layers])

proc getAvoidanceLayers*(self: NavigationObstacle2D): uint32 =
  expandMethodBind(className NavigationObstacle2D, "get_avoidance_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setAvoidanceLayerValue*(self: NavigationObstacle2D; layerNumber: int32; value: bool): void =
  expandMethodBind(className NavigationObstacle2D, "set_avoidance_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value])

proc getAvoidanceLayerValue*(self: NavigationObstacle2D; layerNumber: int32): bool =
  expandMethodBind(className NavigationObstacle2D, "get_avoidance_layer_value", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr layerNumber], addr ret)
  (addr ret).decode_result(bool)

proc setAffectNavigationMesh*(self: NavigationObstacle2D; enabled: bool): void =
  expandMethodBind(className NavigationObstacle2D, "set_affect_navigation_mesh", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getAffectNavigationMesh*(self: NavigationObstacle2D): bool =
  expandMethodBind(className NavigationObstacle2D, "get_affect_navigation_mesh", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCarveNavigationMesh*(self: NavigationObstacle2D; enabled: bool): void =
  expandMethodBind(className NavigationObstacle2D, "set_carve_navigation_mesh", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getCarveNavigationMesh*(self: NavigationObstacle2D): bool =
  expandMethodBind(className NavigationObstacle2D, "get_carve_navigation_mesh", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template radius*(self: NavigationObstacle2D): untyped = self.getRadius()
template `radius=`*(self: NavigationObstacle2D; value) = self.setRadius(value)

template vertices*(self: NavigationObstacle2D): untyped = self.getVertices()
template `vertices=`*(self: NavigationObstacle2D; value) = self.setVertices(value)

template affectNavigationMesh*(self: NavigationObstacle2D): untyped = self.getAffectNavigationMesh()
template `affectNavigationMesh=`*(self: NavigationObstacle2D; value) = self.setAffectNavigationMesh(value)

template carveNavigationMesh*(self: NavigationObstacle2D): untyped = self.getCarveNavigationMesh()
template `carveNavigationMesh=`*(self: NavigationObstacle2D; value) = self.setCarveNavigationMesh(value)

template avoidanceEnabled*(self: NavigationObstacle2D): untyped = self.getAvoidanceEnabled()
template `avoidanceEnabled=`*(self: NavigationObstacle2D; value) = self.setAvoidanceEnabled(value)

template velocity*(self: NavigationObstacle2D): untyped = self.getVelocity()
template `velocity=`*(self: NavigationObstacle2D; value) = self.setVelocity(value)

template avoidanceLayers*(self: NavigationObstacle2D): untyped = self.getAvoidanceLayers()
template `avoidanceLayers=`*(self: NavigationObstacle2D; value) = self.setAvoidanceLayers(value)

const NavigationObstacle2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationObstacle2D]): Table[string, string] = NavigationObstacle2D_vmap
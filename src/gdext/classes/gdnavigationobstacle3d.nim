{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc getRid*(self: NavigationObstacle3D): RID =
  expandMethodBind(className NavigationObstacle3D, "get_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setAvoidanceEnabled*(self: NavigationObstacle3D; enabled: bool): void =
  expandMethodBind(className NavigationObstacle3D, "set_avoidance_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getAvoidanceEnabled*(self: NavigationObstacle3D): bool =
  expandMethodBind(className NavigationObstacle3D, "get_avoidance_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setNavigationMap*(self: NavigationObstacle3D; navigationMap: RID): void =
  expandMethodBind(className NavigationObstacle3D, "set_navigation_map", 2722037293)
  methodbind.ptrcall(self, [getPtr navigationMap])

proc getNavigationMap*(self: NavigationObstacle3D): RID =
  expandMethodBind(className NavigationObstacle3D, "get_navigation_map", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setRadius*(self: NavigationObstacle3D; radius: Float): void =
  expandMethodBind(className NavigationObstacle3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getRadius*(self: NavigationObstacle3D): Float =
  expandMethodBind(className NavigationObstacle3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setHeight*(self: NavigationObstacle3D; height: Float): void =
  expandMethodBind(className NavigationObstacle3D, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height])

proc getHeight*(self: NavigationObstacle3D): Float =
  expandMethodBind(className NavigationObstacle3D, "get_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setVelocity*(self: NavigationObstacle3D; velocity: Vector3): void =
  expandMethodBind(className NavigationObstacle3D, "set_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr velocity])

proc getVelocity*(self: NavigationObstacle3D): Vector3 =
  expandMethodBind(className NavigationObstacle3D, "get_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setVertices*(self: NavigationObstacle3D; vertices: PackedVector3Array): void =
  expandMethodBind(className NavigationObstacle3D, "set_vertices", 334873810)
  methodbind.ptrcall(self, [getPtr vertices])

proc getVertices*(self: NavigationObstacle3D): PackedVector3Array =
  expandMethodBind(className NavigationObstacle3D, "get_vertices", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc setAvoidanceLayers*(self: NavigationObstacle3D; layers: uint32): void =
  expandMethodBind(className NavigationObstacle3D, "set_avoidance_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr layers])

proc getAvoidanceLayers*(self: NavigationObstacle3D): uint32 =
  expandMethodBind(className NavigationObstacle3D, "get_avoidance_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setAvoidanceLayerValue*(self: NavigationObstacle3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className NavigationObstacle3D, "set_avoidance_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value])

proc getAvoidanceLayerValue*(self: NavigationObstacle3D; layerNumber: int32): bool =
  expandMethodBind(className NavigationObstacle3D, "get_avoidance_layer_value", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr layerNumber], addr ret)
  (addr ret).decode_result(bool)

proc setUse3DAvoidance*(self: NavigationObstacle3D; enabled: bool): void =
  expandMethodBind(className NavigationObstacle3D, "set_use_3d_avoidance", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getUse3DAvoidance*(self: NavigationObstacle3D): bool =
  expandMethodBind(className NavigationObstacle3D, "get_use_3d_avoidance", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAffectNavigationMesh*(self: NavigationObstacle3D; enabled: bool): void =
  expandMethodBind(className NavigationObstacle3D, "set_affect_navigation_mesh", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getAffectNavigationMesh*(self: NavigationObstacle3D): bool =
  expandMethodBind(className NavigationObstacle3D, "get_affect_navigation_mesh", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCarveNavigationMesh*(self: NavigationObstacle3D; enabled: bool): void =
  expandMethodBind(className NavigationObstacle3D, "set_carve_navigation_mesh", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getCarveNavigationMesh*(self: NavigationObstacle3D): bool =
  expandMethodBind(className NavigationObstacle3D, "get_carve_navigation_mesh", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template radius*(self: NavigationObstacle3D): untyped = self.getRadius()
template `radius=`*(self: NavigationObstacle3D; value) = self.setRadius(value)

template height*(self: NavigationObstacle3D): untyped = self.getHeight()
template `height=`*(self: NavigationObstacle3D; value) = self.setHeight(value)

template vertices*(self: NavigationObstacle3D): untyped = self.getVertices()
template `vertices=`*(self: NavigationObstacle3D; value) = self.setVertices(value)

template affectNavigationMesh*(self: NavigationObstacle3D): untyped = self.getAffectNavigationMesh()
template `affectNavigationMesh=`*(self: NavigationObstacle3D; value) = self.setAffectNavigationMesh(value)

template carveNavigationMesh*(self: NavigationObstacle3D): untyped = self.getCarveNavigationMesh()
template `carveNavigationMesh=`*(self: NavigationObstacle3D; value) = self.setCarveNavigationMesh(value)

template avoidanceEnabled*(self: NavigationObstacle3D): untyped = self.getAvoidanceEnabled()
template `avoidanceEnabled=`*(self: NavigationObstacle3D; value) = self.setAvoidanceEnabled(value)

template velocity*(self: NavigationObstacle3D): untyped = self.getVelocity()
template `velocity=`*(self: NavigationObstacle3D; value) = self.setVelocity(value)

template avoidanceLayers*(self: NavigationObstacle3D): untyped = self.getAvoidanceLayers()
template `avoidanceLayers=`*(self: NavigationObstacle3D; value) = self.setAvoidanceLayers(value)

template use3DAvoidance*(self: NavigationObstacle3D): untyped = self.getUse3DAvoidance()
template `use3DAvoidance=`*(self: NavigationObstacle3D; value) = self.setUse3DAvoidance(value)

const NavigationObstacle3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationObstacle3D]): Table[string, string] = NavigationObstacle3D_vmap
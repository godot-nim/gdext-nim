{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(NavigationObstacle3D, Node3D)

proc getRid*(self: NavigationObstacle3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setAvoidanceEnabled*(self: NavigationObstacle3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "set_avoidance_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getAvoidanceEnabled*(self: NavigationObstacle3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "get_avoidance_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNavigationMap*(self: NavigationObstacle3D; navigationMap: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "set_navigation_map", 2722037293)
  methodbind.ptrcall(self, [getPtr navigationMap], void)

proc getNavigationMap*(self: NavigationObstacle3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "get_navigation_map", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setRadius*(self: NavigationObstacle3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: NavigationObstacle3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHeight*(self: NavigationObstacle3D; height: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height], void)

proc getHeight*(self: NavigationObstacle3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "get_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVelocity*(self: NavigationObstacle3D; velocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "set_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc getVelocity*(self: NavigationObstacle3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "get_velocity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setVertices*(self: NavigationObstacle3D; vertices: PackedVector3Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "set_vertices", 334873810)
  methodbind.ptrcall(self, [getPtr vertices], void)

proc getVertices*(self: NavigationObstacle3D): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "get_vertices", 497664490)
  methodbind.ptrcall(self, [], PackedVector3Array)

proc setAvoidanceLayers*(self: NavigationObstacle3D; layers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "set_avoidance_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr layers], void)

proc getAvoidanceLayers*(self: NavigationObstacle3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "get_avoidance_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setAvoidanceLayerValue*(self: NavigationObstacle3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "set_avoidance_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getAvoidanceLayerValue*(self: NavigationObstacle3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "get_avoidance_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setUse3DAvoidance*(self: NavigationObstacle3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "set_use_3d_avoidance", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getUse3DAvoidance*(self: NavigationObstacle3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "get_use_3d_avoidance", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAffectNavigationMesh*(self: NavigationObstacle3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "set_affect_navigation_mesh", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getAffectNavigationMesh*(self: NavigationObstacle3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "get_affect_navigation_mesh", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCarveNavigationMesh*(self: NavigationObstacle3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "set_carve_navigation_mesh", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getCarveNavigationMesh*(self: NavigationObstacle3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle3D, "get_carve_navigation_mesh", 36873697)
  methodbind.ptrcall(self, [], bool)

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

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(NavigationObstacle2D, Node2D)

proc getRid*(self: NavigationObstacle2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setAvoidanceEnabled*(self: NavigationObstacle2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "set_avoidance_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getAvoidanceEnabled*(self: NavigationObstacle2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "get_avoidance_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNavigationMap*(self: NavigationObstacle2D; navigationMap: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "set_navigation_map", 2722037293)
  methodbind.ptrcall(self, [getPtr navigationMap], void)

proc getNavigationMap*(self: NavigationObstacle2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "get_navigation_map", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setRadius*(self: NavigationObstacle2D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: NavigationObstacle2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVelocity*(self: NavigationObstacle2D; velocity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "set_velocity", 743155724)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc getVelocity*(self: NavigationObstacle2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "get_velocity", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setVertices*(self: NavigationObstacle2D; vertices: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "set_vertices", 1509147220)
  methodbind.ptrcall(self, [getPtr vertices], void)

proc getVertices*(self: NavigationObstacle2D): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "get_vertices", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

proc setAvoidanceLayers*(self: NavigationObstacle2D; layers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "set_avoidance_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr layers], void)

proc getAvoidanceLayers*(self: NavigationObstacle2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "get_avoidance_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setAvoidanceLayerValue*(self: NavigationObstacle2D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "set_avoidance_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getAvoidanceLayerValue*(self: NavigationObstacle2D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "get_avoidance_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setAffectNavigationMesh*(self: NavigationObstacle2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "set_affect_navigation_mesh", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getAffectNavigationMesh*(self: NavigationObstacle2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "get_affect_navigation_mesh", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCarveNavigationMesh*(self: NavigationObstacle2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "set_carve_navigation_mesh", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getCarveNavigationMesh*(self: NavigationObstacle2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationObstacle2D, "get_carve_navigation_mesh", 36873697)
  methodbind.ptrcall(self, [], bool)

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

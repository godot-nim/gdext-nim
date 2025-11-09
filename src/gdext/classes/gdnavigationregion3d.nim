{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(NavigationRegion3D, Node3D)

proc getRid*(self: NavigationRegion3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setNavigationMesh*(self: NavigationRegion3D; navigationMesh: gdref NavigationMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "set_navigation_mesh", 2923361153)
  methodbind.ptrcall(self, [getPtr navigationMesh], void)

proc getNavigationMesh*(self: NavigationRegion3D): gdref NavigationMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "get_navigation_mesh", 1468720886)
  methodbind.ptrcall(self, [], gdref NavigationMesh)

proc setEnabled*(self: NavigationRegion3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isEnabled*(self: NavigationRegion3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "is_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNavigationMap*(self: NavigationRegion3D; navigationMap: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "set_navigation_map", 2722037293)
  methodbind.ptrcall(self, [getPtr navigationMap], void)

proc getNavigationMap*(self: NavigationRegion3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "get_navigation_map", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setUseEdgeConnections*(self: NavigationRegion3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "set_use_edge_connections", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getUseEdgeConnections*(self: NavigationRegion3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "get_use_edge_connections", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNavigationLayers*(self: NavigationRegion3D; navigationLayers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "set_navigation_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr navigationLayers], void)

proc getNavigationLayers*(self: NavigationRegion3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "get_navigation_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setNavigationLayerValue*(self: NavigationRegion3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "set_navigation_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getNavigationLayerValue*(self: NavigationRegion3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "get_navigation_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc getRegionRid*(self: NavigationRegion3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "get_region_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setEnterCost*(self: NavigationRegion3D; enterCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "set_enter_cost", 373806689)
  methodbind.ptrcall(self, [getPtr enterCost], void)

proc getEnterCost*(self: NavigationRegion3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "get_enter_cost", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTravelCost*(self: NavigationRegion3D; travelCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "set_travel_cost", 373806689)
  methodbind.ptrcall(self, [getPtr travelCost], void)

proc getTravelCost*(self: NavigationRegion3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "get_travel_cost", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc bakeNavigationMesh*(self: NavigationRegion3D; onThread: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "bake_navigation_mesh", 3216645846)
  methodbind.ptrcall(self, [getPtr onThread], void)

proc isBaking*(self: NavigationRegion3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "is_baking", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getBounds*(self: NavigationRegion3D): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion3D, "get_bounds", 1068685055)
  methodbind.ptrcall(self, [], AABB)

template navigationMesh*(self: NavigationRegion3D): untyped = self.getNavigationMesh()
template `navigationMesh=`*(self: NavigationRegion3D; value) = self.setNavigationMesh(value)

template enabled*(self: NavigationRegion3D): untyped = self.isEnabled()
template `enabled=`*(self: NavigationRegion3D; value) = self.setEnabled(value)

template useEdgeConnections*(self: NavigationRegion3D): untyped = self.getUseEdgeConnections()
template `useEdgeConnections=`*(self: NavigationRegion3D; value) = self.setUseEdgeConnections(value)

template navigationLayers*(self: NavigationRegion3D): untyped = self.getNavigationLayers()
template `navigationLayers=`*(self: NavigationRegion3D; value) = self.setNavigationLayers(value)

template enterCost*(self: NavigationRegion3D): untyped = self.getEnterCost()
template `enterCost=`*(self: NavigationRegion3D; value) = self.setEnterCost(value)

template travelCost*(self: NavigationRegion3D): untyped = self.getTravelCost()
template `travelCost=`*(self: NavigationRegion3D; value) = self.setTravelCost(value)

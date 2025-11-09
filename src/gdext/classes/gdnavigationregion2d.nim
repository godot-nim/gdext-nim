{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(NavigationRegion2D, Node2D)

proc getRid*(self: NavigationRegion2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setNavigationPolygon*(self: NavigationRegion2D; navigationPolygon: gdref NavigationPolygon): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "set_navigation_polygon", 1515040758)
  methodbind.ptrcall(self, [getPtr navigationPolygon], void)

proc getNavigationPolygon*(self: NavigationRegion2D): gdref NavigationPolygon =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "get_navigation_polygon", 1046532237)
  methodbind.ptrcall(self, [], gdref NavigationPolygon)

proc setEnabled*(self: NavigationRegion2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isEnabled*(self: NavigationRegion2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "is_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNavigationMap*(self: NavigationRegion2D; navigationMap: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "set_navigation_map", 2722037293)
  methodbind.ptrcall(self, [getPtr navigationMap], void)

proc getNavigationMap*(self: NavigationRegion2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "get_navigation_map", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setUseEdgeConnections*(self: NavigationRegion2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "set_use_edge_connections", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getUseEdgeConnections*(self: NavigationRegion2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "get_use_edge_connections", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNavigationLayers*(self: NavigationRegion2D; navigationLayers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "set_navigation_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr navigationLayers], void)

proc getNavigationLayers*(self: NavigationRegion2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "get_navigation_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setNavigationLayerValue*(self: NavigationRegion2D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "set_navigation_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getNavigationLayerValue*(self: NavigationRegion2D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "get_navigation_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc getRegionRid*(self: NavigationRegion2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "get_region_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setEnterCost*(self: NavigationRegion2D; enterCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "set_enter_cost", 373806689)
  methodbind.ptrcall(self, [getPtr enterCost], void)

proc getEnterCost*(self: NavigationRegion2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "get_enter_cost", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTravelCost*(self: NavigationRegion2D; travelCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "set_travel_cost", 373806689)
  methodbind.ptrcall(self, [getPtr travelCost], void)

proc getTravelCost*(self: NavigationRegion2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "get_travel_cost", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc bakeNavigationPolygon*(self: NavigationRegion2D; onThread: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "bake_navigation_polygon", 3216645846)
  methodbind.ptrcall(self, [getPtr onThread], void)

proc isBaking*(self: NavigationRegion2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "is_baking", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getBounds*(self: NavigationRegion2D): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationRegion2D, "get_bounds", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

template navigationPolygon*(self: NavigationRegion2D): untyped = self.getNavigationPolygon()
template `navigationPolygon=`*(self: NavigationRegion2D; value) = self.setNavigationPolygon(value)

template enabled*(self: NavigationRegion2D): untyped = self.isEnabled()
template `enabled=`*(self: NavigationRegion2D; value) = self.setEnabled(value)

template useEdgeConnections*(self: NavigationRegion2D): untyped = self.getUseEdgeConnections()
template `useEdgeConnections=`*(self: NavigationRegion2D; value) = self.setUseEdgeConnections(value)

template navigationLayers*(self: NavigationRegion2D): untyped = self.getNavigationLayers()
template `navigationLayers=`*(self: NavigationRegion2D; value) = self.setNavigationLayers(value)

template enterCost*(self: NavigationRegion2D): untyped = self.getEnterCost()
template `enterCost=`*(self: NavigationRegion2D; value) = self.setEnterCost(value)

template travelCost*(self: NavigationRegion2D): untyped = self.getTravelCost()
template `travelCost=`*(self: NavigationRegion2D; value) = self.setTravelCost(value)

{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc getRid*(self: NavigationRegion2D): Rid =
  expandMethodBind(className NavigationRegion2D, "get_rid", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc setNavigationPolygon*(self: NavigationRegion2D; navigationPolygon: gdref NavigationPolygon): void =
  expandMethodBind(className NavigationRegion2D, "set_navigation_polygon", 1515040758)
  var `?param` = [getPtr navigationPolygon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationPolygon*(self: NavigationRegion2D): gdref NavigationPolygon =
  expandMethodBind(className NavigationRegion2D, "get_navigation_polygon", 1046532237)
  var ret: encoded gdref NavigationPolygon
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref NavigationPolygon)

proc setEnabled*(self: NavigationRegion2D; enabled: bool): void =
  expandMethodBind(className NavigationRegion2D, "set_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEnabled*(self: NavigationRegion2D): bool =
  expandMethodBind(className NavigationRegion2D, "is_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setNavigationMap*(self: NavigationRegion2D; navigationMap: Rid): void =
  expandMethodBind(className NavigationRegion2D, "set_navigation_map", 2722037293)
  var `?param` = [getPtr navigationMap]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationMap*(self: NavigationRegion2D): Rid =
  expandMethodBind(className NavigationRegion2D, "get_navigation_map", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc setUseEdgeConnections*(self: NavigationRegion2D; enabled: bool): void =
  expandMethodBind(className NavigationRegion2D, "set_use_edge_connections", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUseEdgeConnections*(self: NavigationRegion2D): bool =
  expandMethodBind(className NavigationRegion2D, "get_use_edge_connections", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setNavigationLayers*(self: NavigationRegion2D; navigationLayers: uint32): void =
  expandMethodBind(className NavigationRegion2D, "set_navigation_layers", 1286410249)
  var `?param` = [getPtr navigationLayers]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationLayers*(self: NavigationRegion2D): uint32 =
  expandMethodBind(className NavigationRegion2D, "get_navigation_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setNavigationLayerValue*(self: NavigationRegion2D; layerNumber: int32; value: bool): void =
  expandMethodBind(className NavigationRegion2D, "set_navigation_layer_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationLayerValue*(self: NavigationRegion2D; layerNumber: int32): bool =
  expandMethodBind(className NavigationRegion2D, "get_navigation_layer_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getRegionRid*(self: NavigationRegion2D): Rid =
  expandMethodBind(className NavigationRegion2D, "get_region_rid", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc setEnterCost*(self: NavigationRegion2D; enterCost: Float): void =
  expandMethodBind(className NavigationRegion2D, "set_enter_cost", 373806689)
  var `?param` = [getPtr enterCost]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnterCost*(self: NavigationRegion2D): Float =
  expandMethodBind(className NavigationRegion2D, "get_enter_cost", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTravelCost*(self: NavigationRegion2D; travelCost: Float): void =
  expandMethodBind(className NavigationRegion2D, "set_travel_cost", 373806689)
  var `?param` = [getPtr travelCost]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTravelCost*(self: NavigationRegion2D): Float =
  expandMethodBind(className NavigationRegion2D, "get_travel_cost", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc bakeNavigationPolygon*(self: NavigationRegion2D; onThread: bool = true): void =
  expandMethodBind(className NavigationRegion2D, "bake_navigation_polygon", 3216645846)
  var `?param` = [getPtr onThread]
  methodbind.ptrcall(self, addr `?param`[0])

proc isBaking*(self: NavigationRegion2D): bool =
  expandMethodBind(className NavigationRegion2D, "is_baking", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

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

const NavigationRegion2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationRegion2D]): Table[string, string] = NavigationRegion2D_vmap

proc navigationPolygonChanged*(self: NavigationRegion2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("navigation_polygon_changed")
  self.emitSignal(signalname)

proc bakeFinished*(self: NavigationRegion2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("bake_finished")
  self.emitSignal(signalname)
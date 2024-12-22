{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc getRid*(self: NavigationRegion3D): RID =
  expandMethodBind(className NavigationRegion3D, "get_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc setNavigationMesh*(self: NavigationRegion3D; navigationMesh: gdref NavigationMesh): void =
  expandMethodBind(className NavigationRegion3D, "set_navigation_mesh", 2923361153)
  var `?param` = [getPtr navigationMesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationMesh*(self: NavigationRegion3D): gdref NavigationMesh =
  expandMethodBind(className NavigationRegion3D, "get_navigation_mesh", 1468720886)
  var ret: encoded gdref NavigationMesh
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref NavigationMesh)

proc setEnabled*(self: NavigationRegion3D; enabled: bool): void =
  expandMethodBind(className NavigationRegion3D, "set_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEnabled*(self: NavigationRegion3D): bool =
  expandMethodBind(className NavigationRegion3D, "is_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setNavigationMap*(self: NavigationRegion3D; navigationMap: RID): void =
  expandMethodBind(className NavigationRegion3D, "set_navigation_map", 2722037293)
  var `?param` = [getPtr navigationMap]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationMap*(self: NavigationRegion3D): RID =
  expandMethodBind(className NavigationRegion3D, "get_navigation_map", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc setUseEdgeConnections*(self: NavigationRegion3D; enabled: bool): void =
  expandMethodBind(className NavigationRegion3D, "set_use_edge_connections", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUseEdgeConnections*(self: NavigationRegion3D): bool =
  expandMethodBind(className NavigationRegion3D, "get_use_edge_connections", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setNavigationLayers*(self: NavigationRegion3D; navigationLayers: uint32): void =
  expandMethodBind(className NavigationRegion3D, "set_navigation_layers", 1286410249)
  var `?param` = [getPtr navigationLayers]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationLayers*(self: NavigationRegion3D): uint32 =
  expandMethodBind(className NavigationRegion3D, "get_navigation_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setNavigationLayerValue*(self: NavigationRegion3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className NavigationRegion3D, "set_navigation_layer_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationLayerValue*(self: NavigationRegion3D; layerNumber: int32): bool =
  expandMethodBind(className NavigationRegion3D, "get_navigation_layer_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getRegionRid*(self: NavigationRegion3D): RID =
  expandMethodBind(className NavigationRegion3D, "get_region_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc setEnterCost*(self: NavigationRegion3D; enterCost: Float): void =
  expandMethodBind(className NavigationRegion3D, "set_enter_cost", 373806689)
  var `?param` = [getPtr enterCost]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnterCost*(self: NavigationRegion3D): Float =
  expandMethodBind(className NavigationRegion3D, "get_enter_cost", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTravelCost*(self: NavigationRegion3D; travelCost: Float): void =
  expandMethodBind(className NavigationRegion3D, "set_travel_cost", 373806689)
  var `?param` = [getPtr travelCost]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTravelCost*(self: NavigationRegion3D): Float =
  expandMethodBind(className NavigationRegion3D, "get_travel_cost", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc bakeNavigationMesh*(self: NavigationRegion3D; onThread: bool = true): void =
  expandMethodBind(className NavigationRegion3D, "bake_navigation_mesh", 3216645846)
  var `?param` = [getPtr onThread]
  methodbind.ptrcall(self, addr `?param`[0])

proc isBaking*(self: NavigationRegion3D): bool =
  expandMethodBind(className NavigationRegion3D, "is_baking", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

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

const NavigationRegion3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationRegion3D]): Table[string, string] = NavigationRegion3D_vmap

proc navigationMeshChanged*(self: NavigationRegion3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("navigation_mesh_changed")
  self.emitSignal(signalname)

proc bakeFinished*(self: NavigationRegion3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("bake_finished")
  self.emitSignal(signalname)
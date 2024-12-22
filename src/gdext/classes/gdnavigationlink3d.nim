{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc getRid*(self: NavigationLink3D): RID =
  expandMethodBind(className NavigationLink3D, "get_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc setEnabled*(self: NavigationLink3D; enabled: bool): void =
  expandMethodBind(className NavigationLink3D, "set_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEnabled*(self: NavigationLink3D): bool =
  expandMethodBind(className NavigationLink3D, "is_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setBidirectional*(self: NavigationLink3D; bidirectional: bool): void =
  expandMethodBind(className NavigationLink3D, "set_bidirectional", 2586408642)
  var `?param` = [getPtr bidirectional]
  methodbind.ptrcall(self, addr `?param`[0])

proc isBidirectional*(self: NavigationLink3D): bool =
  expandMethodBind(className NavigationLink3D, "is_bidirectional", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setNavigationLayers*(self: NavigationLink3D; navigationLayers: uint32): void =
  expandMethodBind(className NavigationLink3D, "set_navigation_layers", 1286410249)
  var `?param` = [getPtr navigationLayers]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationLayers*(self: NavigationLink3D): uint32 =
  expandMethodBind(className NavigationLink3D, "get_navigation_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setNavigationLayerValue*(self: NavigationLink3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className NavigationLink3D, "set_navigation_layer_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationLayerValue*(self: NavigationLink3D; layerNumber: int32): bool =
  expandMethodBind(className NavigationLink3D, "get_navigation_layer_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setStartPosition*(self: NavigationLink3D; position: Vector3): void =
  expandMethodBind(className NavigationLink3D, "set_start_position", 3460891852)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStartPosition*(self: NavigationLink3D): Vector3 =
  expandMethodBind(className NavigationLink3D, "get_start_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setEndPosition*(self: NavigationLink3D; position: Vector3): void =
  expandMethodBind(className NavigationLink3D, "set_end_position", 3460891852)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEndPosition*(self: NavigationLink3D): Vector3 =
  expandMethodBind(className NavigationLink3D, "get_end_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setGlobalStartPosition*(self: NavigationLink3D; position: Vector3): void =
  expandMethodBind(className NavigationLink3D, "set_global_start_position", 3460891852)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlobalStartPosition*(self: NavigationLink3D): Vector3 =
  expandMethodBind(className NavigationLink3D, "get_global_start_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setGlobalEndPosition*(self: NavigationLink3D; position: Vector3): void =
  expandMethodBind(className NavigationLink3D, "set_global_end_position", 3460891852)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlobalEndPosition*(self: NavigationLink3D): Vector3 =
  expandMethodBind(className NavigationLink3D, "get_global_end_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setEnterCost*(self: NavigationLink3D; enterCost: Float): void =
  expandMethodBind(className NavigationLink3D, "set_enter_cost", 373806689)
  var `?param` = [getPtr enterCost]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnterCost*(self: NavigationLink3D): Float =
  expandMethodBind(className NavigationLink3D, "get_enter_cost", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTravelCost*(self: NavigationLink3D; travelCost: Float): void =
  expandMethodBind(className NavigationLink3D, "set_travel_cost", 373806689)
  var `?param` = [getPtr travelCost]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTravelCost*(self: NavigationLink3D): Float =
  expandMethodBind(className NavigationLink3D, "get_travel_cost", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template enabled*(self: NavigationLink3D): untyped = self.isEnabled()
template `enabled=`*(self: NavigationLink3D; value) = self.setEnabled(value)

template bidirectional*(self: NavigationLink3D): untyped = self.isBidirectional()
template `bidirectional=`*(self: NavigationLink3D; value) = self.setBidirectional(value)

template navigationLayers*(self: NavigationLink3D): untyped = self.getNavigationLayers()
template `navigationLayers=`*(self: NavigationLink3D; value) = self.setNavigationLayers(value)

template startPosition*(self: NavigationLink3D): untyped = self.getStartPosition()
template `startPosition=`*(self: NavigationLink3D; value) = self.setStartPosition(value)

template endPosition*(self: NavigationLink3D): untyped = self.getEndPosition()
template `endPosition=`*(self: NavigationLink3D; value) = self.setEndPosition(value)

template enterCost*(self: NavigationLink3D): untyped = self.getEnterCost()
template `enterCost=`*(self: NavigationLink3D; value) = self.setEnterCost(value)

template travelCost*(self: NavigationLink3D): untyped = self.getTravelCost()
template `travelCost=`*(self: NavigationLink3D; value) = self.setTravelCost(value)

const NavigationLink3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationLink3D]): Table[string, string] = NavigationLink3D_vmap
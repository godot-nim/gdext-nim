{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc getRid*(self: NavigationLink2D): RID =
  expandMethodBind(className NavigationLink2D, "get_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setEnabled*(self: NavigationLink2D; enabled: bool): void =
  expandMethodBind(className NavigationLink2D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isEnabled*(self: NavigationLink2D): bool =
  expandMethodBind(className NavigationLink2D, "is_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setBidirectional*(self: NavigationLink2D; bidirectional: bool): void =
  expandMethodBind(className NavigationLink2D, "set_bidirectional", 2586408642)
  methodbind.ptrcall(self, [getPtr bidirectional])

proc isBidirectional*(self: NavigationLink2D): bool =
  expandMethodBind(className NavigationLink2D, "is_bidirectional", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setNavigationLayers*(self: NavigationLink2D; navigationLayers: uint32): void =
  expandMethodBind(className NavigationLink2D, "set_navigation_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr navigationLayers])

proc getNavigationLayers*(self: NavigationLink2D): uint32 =
  expandMethodBind(className NavigationLink2D, "get_navigation_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setNavigationLayerValue*(self: NavigationLink2D; layerNumber: int32; value: bool): void =
  expandMethodBind(className NavigationLink2D, "set_navigation_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value])

proc getNavigationLayerValue*(self: NavigationLink2D; layerNumber: int32): bool =
  expandMethodBind(className NavigationLink2D, "get_navigation_layer_value", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr layerNumber], addr ret)
  (addr ret).decode_result(bool)

proc setStartPosition*(self: NavigationLink2D; position: Vector2): void =
  expandMethodBind(className NavigationLink2D, "set_start_position", 743155724)
  methodbind.ptrcall(self, [getPtr position])

proc getStartPosition*(self: NavigationLink2D): Vector2 =
  expandMethodBind(className NavigationLink2D, "get_start_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setEndPosition*(self: NavigationLink2D; position: Vector2): void =
  expandMethodBind(className NavigationLink2D, "set_end_position", 743155724)
  methodbind.ptrcall(self, [getPtr position])

proc getEndPosition*(self: NavigationLink2D): Vector2 =
  expandMethodBind(className NavigationLink2D, "get_end_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setGlobalStartPosition*(self: NavigationLink2D; position: Vector2): void =
  expandMethodBind(className NavigationLink2D, "set_global_start_position", 743155724)
  methodbind.ptrcall(self, [getPtr position])

proc getGlobalStartPosition*(self: NavigationLink2D): Vector2 =
  expandMethodBind(className NavigationLink2D, "get_global_start_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setGlobalEndPosition*(self: NavigationLink2D; position: Vector2): void =
  expandMethodBind(className NavigationLink2D, "set_global_end_position", 743155724)
  methodbind.ptrcall(self, [getPtr position])

proc getGlobalEndPosition*(self: NavigationLink2D): Vector2 =
  expandMethodBind(className NavigationLink2D, "get_global_end_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setEnterCost*(self: NavigationLink2D; enterCost: Float): void =
  expandMethodBind(className NavigationLink2D, "set_enter_cost", 373806689)
  methodbind.ptrcall(self, [getPtr enterCost])

proc getEnterCost*(self: NavigationLink2D): Float =
  expandMethodBind(className NavigationLink2D, "get_enter_cost", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setTravelCost*(self: NavigationLink2D; travelCost: Float): void =
  expandMethodBind(className NavigationLink2D, "set_travel_cost", 373806689)
  methodbind.ptrcall(self, [getPtr travelCost])

proc getTravelCost*(self: NavigationLink2D): Float =
  expandMethodBind(className NavigationLink2D, "get_travel_cost", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template enabled*(self: NavigationLink2D): untyped = self.isEnabled()
template `enabled=`*(self: NavigationLink2D; value) = self.setEnabled(value)

template bidirectional*(self: NavigationLink2D): untyped = self.isBidirectional()
template `bidirectional=`*(self: NavigationLink2D; value) = self.setBidirectional(value)

template navigationLayers*(self: NavigationLink2D): untyped = self.getNavigationLayers()
template `navigationLayers=`*(self: NavigationLink2D; value) = self.setNavigationLayers(value)

template startPosition*(self: NavigationLink2D): untyped = self.getStartPosition()
template `startPosition=`*(self: NavigationLink2D; value) = self.setStartPosition(value)

template endPosition*(self: NavigationLink2D): untyped = self.getEndPosition()
template `endPosition=`*(self: NavigationLink2D; value) = self.setEndPosition(value)

template enterCost*(self: NavigationLink2D): untyped = self.getEnterCost()
template `enterCost=`*(self: NavigationLink2D; value) = self.setEnterCost(value)

template travelCost*(self: NavigationLink2D): untyped = self.getTravelCost()
template `travelCost=`*(self: NavigationLink2D; value) = self.setTravelCost(value)

const NavigationLink2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationLink2D]): Table[string, string] = NavigationLink2D_vmap
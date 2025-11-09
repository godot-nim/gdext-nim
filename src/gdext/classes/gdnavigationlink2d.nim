{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(NavigationLink2D, Node2D)

proc getRid*(self: NavigationLink2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setEnabled*(self: NavigationLink2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isEnabled*(self: NavigationLink2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "is_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNavigationMap*(self: NavigationLink2D; navigationMap: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "set_navigation_map", 2722037293)
  methodbind.ptrcall(self, [getPtr navigationMap], void)

proc getNavigationMap*(self: NavigationLink2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "get_navigation_map", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setBidirectional*(self: NavigationLink2D; bidirectional: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "set_bidirectional", 2586408642)
  methodbind.ptrcall(self, [getPtr bidirectional], void)

proc isBidirectional*(self: NavigationLink2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "is_bidirectional", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNavigationLayers*(self: NavigationLink2D; navigationLayers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "set_navigation_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr navigationLayers], void)

proc getNavigationLayers*(self: NavigationLink2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "get_navigation_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setNavigationLayerValue*(self: NavigationLink2D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "set_navigation_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getNavigationLayerValue*(self: NavigationLink2D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "get_navigation_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setStartPosition*(self: NavigationLink2D; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "set_start_position", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc getStartPosition*(self: NavigationLink2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "get_start_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setEndPosition*(self: NavigationLink2D; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "set_end_position", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc getEndPosition*(self: NavigationLink2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "get_end_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setGlobalStartPosition*(self: NavigationLink2D; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "set_global_start_position", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc getGlobalStartPosition*(self: NavigationLink2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "get_global_start_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setGlobalEndPosition*(self: NavigationLink2D; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "set_global_end_position", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc getGlobalEndPosition*(self: NavigationLink2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "get_global_end_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setEnterCost*(self: NavigationLink2D; enterCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "set_enter_cost", 373806689)
  methodbind.ptrcall(self, [getPtr enterCost], void)

proc getEnterCost*(self: NavigationLink2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "get_enter_cost", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTravelCost*(self: NavigationLink2D; travelCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "set_travel_cost", 373806689)
  methodbind.ptrcall(self, [getPtr travelCost], void)

proc getTravelCost*(self: NavigationLink2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink2D, "get_travel_cost", 1740695150)
  methodbind.ptrcall(self, [], Float)

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

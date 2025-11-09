{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(NavigationLink3D, Node3D)

proc getRid*(self: NavigationLink3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setEnabled*(self: NavigationLink3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isEnabled*(self: NavigationLink3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "is_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNavigationMap*(self: NavigationLink3D; navigationMap: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "set_navigation_map", 2722037293)
  methodbind.ptrcall(self, [getPtr navigationMap], void)

proc getNavigationMap*(self: NavigationLink3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "get_navigation_map", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setBidirectional*(self: NavigationLink3D; bidirectional: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "set_bidirectional", 2586408642)
  methodbind.ptrcall(self, [getPtr bidirectional], void)

proc isBidirectional*(self: NavigationLink3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "is_bidirectional", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNavigationLayers*(self: NavigationLink3D; navigationLayers: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "set_navigation_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr navigationLayers], void)

proc getNavigationLayers*(self: NavigationLink3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "get_navigation_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setNavigationLayerValue*(self: NavigationLink3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "set_navigation_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getNavigationLayerValue*(self: NavigationLink3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "get_navigation_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setStartPosition*(self: NavigationLink3D; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "set_start_position", 3460891852)
  methodbind.ptrcall(self, [getPtr position], void)

proc getStartPosition*(self: NavigationLink3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "get_start_position", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setEndPosition*(self: NavigationLink3D; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "set_end_position", 3460891852)
  methodbind.ptrcall(self, [getPtr position], void)

proc getEndPosition*(self: NavigationLink3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "get_end_position", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setGlobalStartPosition*(self: NavigationLink3D; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "set_global_start_position", 3460891852)
  methodbind.ptrcall(self, [getPtr position], void)

proc getGlobalStartPosition*(self: NavigationLink3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "get_global_start_position", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setGlobalEndPosition*(self: NavigationLink3D; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "set_global_end_position", 3460891852)
  methodbind.ptrcall(self, [getPtr position], void)

proc getGlobalEndPosition*(self: NavigationLink3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "get_global_end_position", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setEnterCost*(self: NavigationLink3D; enterCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "set_enter_cost", 373806689)
  methodbind.ptrcall(self, [getPtr enterCost], void)

proc getEnterCost*(self: NavigationLink3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "get_enter_cost", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTravelCost*(self: NavigationLink3D; travelCost: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "set_travel_cost", 373806689)
  methodbind.ptrcall(self, [getPtr travelCost], void)

proc getTravelCost*(self: NavigationLink3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationLink3D, "get_travel_cost", 1740695150)
  methodbind.ptrcall(self, [], Float)

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

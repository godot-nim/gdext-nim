{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setLayerViewport*(self: OpenXRCompositionLayer; viewport: SubViewport): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_layer_viewport", 3888077664)
  methodbind.ptrcall(self, [getPtr viewport])

proc getLayerViewport*(self: OpenXRCompositionLayer): SubViewport =
  expandMethodBind(className OpenXRCompositionLayer, "get_layer_viewport", 3750751911)
  var ret: encoded SubViewport
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(SubViewport)

proc setEnableHolePunch*(self: OpenXRCompositionLayer; enable: bool): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_enable_hole_punch", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getEnableHolePunch*(self: OpenXRCompositionLayer): bool =
  expandMethodBind(className OpenXRCompositionLayer, "get_enable_hole_punch", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setSortOrder*(self: OpenXRCompositionLayer; order: int32): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_sort_order", 1286410249)
  methodbind.ptrcall(self, [getPtr order])

proc getSortOrder*(self: OpenXRCompositionLayer): int32 =
  expandMethodBind(className OpenXRCompositionLayer, "get_sort_order", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setAlphaBlend*(self: OpenXRCompositionLayer; enabled: bool): void =
  expandMethodBind(className OpenXRCompositionLayer, "set_alpha_blend", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getAlphaBlend*(self: OpenXRCompositionLayer): bool =
  expandMethodBind(className OpenXRCompositionLayer, "get_alpha_blend", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isNativelySupported*(self: OpenXRCompositionLayer): bool =
  expandMethodBind(className OpenXRCompositionLayer, "is_natively_supported", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc intersectsRay*(self: OpenXRCompositionLayer; origin: Vector3; direction: Vector3): Vector2 =
  expandMethodBind(className OpenXRCompositionLayer, "intersects_ray", 1091262597)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr origin, getPtr direction], addr ret)
  (addr ret).decode_result(Vector2)

template layerViewport*(self: OpenXRCompositionLayer): untyped = self.getLayerViewport()
template `layerViewport=`*(self: OpenXRCompositionLayer; value) = self.setLayerViewport(value)

template sortOrder*(self: OpenXRCompositionLayer): untyped = self.getSortOrder()
template `sortOrder=`*(self: OpenXRCompositionLayer; value) = self.setSortOrder(value)

template alphaBlend*(self: OpenXRCompositionLayer): untyped = self.getAlphaBlend()
template `alphaBlend=`*(self: OpenXRCompositionLayer; value) = self.setAlphaBlend(value)

template enableHolePunch*(self: OpenXRCompositionLayer): untyped = self.getEnableHolePunch()
template `enableHolePunch=`*(self: OpenXRCompositionLayer; value) = self.setEnableHolePunch(value)

const OpenXRCompositionLayer_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRCompositionLayer]): Table[string, string] = OpenXRCompositionLayer_vmap
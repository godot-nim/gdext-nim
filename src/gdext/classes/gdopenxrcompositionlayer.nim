{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setLayerViewport*(self: OpenXrCompositionLayer; viewport: SubViewport): void =
  expandMethodBind(className OpenXrCompositionLayer, "set_layer_viewport", 3888077664)
  var `?param` = [getPtr viewport]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLayerViewport*(self: OpenXrCompositionLayer): SubViewport =
  expandMethodBind(className OpenXrCompositionLayer, "get_layer_viewport", 3750751911)
  var ret: encoded SubViewport
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(SubViewport)

proc setEnableHolePunch*(self: OpenXrCompositionLayer; enable: bool): void =
  expandMethodBind(className OpenXrCompositionLayer, "set_enable_hole_punch", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableHolePunch*(self: OpenXrCompositionLayer): bool =
  expandMethodBind(className OpenXrCompositionLayer, "get_enable_hole_punch", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSortOrder*(self: OpenXrCompositionLayer; order: int32): void =
  expandMethodBind(className OpenXrCompositionLayer, "set_sort_order", 1286410249)
  var `?param` = [getPtr order]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSortOrder*(self: OpenXrCompositionLayer): int32 =
  expandMethodBind(className OpenXrCompositionLayer, "get_sort_order", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setAlphaBlend*(self: OpenXrCompositionLayer; enabled: bool): void =
  expandMethodBind(className OpenXrCompositionLayer, "set_alpha_blend", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAlphaBlend*(self: OpenXrCompositionLayer): bool =
  expandMethodBind(className OpenXrCompositionLayer, "get_alpha_blend", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isNativelySupported*(self: OpenXrCompositionLayer): bool =
  expandMethodBind(className OpenXrCompositionLayer, "is_natively_supported", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc intersectsRay*(self: OpenXrCompositionLayer; origin: Vector3; direction: Vector3): Vector2 =
  expandMethodBind(className OpenXrCompositionLayer, "intersects_ray", 1091262597)
  var `?param` = [getPtr origin, getPtr direction]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

template layerViewport*(self: OpenXrCompositionLayer): untyped = self.getLayerViewport()
template `layerViewport=`*(self: OpenXrCompositionLayer; value) = self.setLayerViewport(value)

template sortOrder*(self: OpenXrCompositionLayer): untyped = self.getSortOrder()
template `sortOrder=`*(self: OpenXrCompositionLayer; value) = self.setSortOrder(value)

template alphaBlend*(self: OpenXrCompositionLayer): untyped = self.getAlphaBlend()
template `alphaBlend=`*(self: OpenXrCompositionLayer; value) = self.setAlphaBlend(value)

template enableHolePunch*(self: OpenXrCompositionLayer): untyped = self.getEnableHolePunch()
template `enableHolePunch=`*(self: OpenXrCompositionLayer; value) = self.setEnableHolePunch(value)

const OpenXrCompositionLayer_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXrCompositionLayer]): Table[string, string] = OpenXrCompositionLayer_vmap